#!/usr/bin/env ruby
# frozen_string_literal: true

load 'vendor/bundle/bundler/setup.rb'

require 'addressable'
require 'json'
require 'rex/mime'

$LOAD_PATH.unshift(File.expand_path(__dir__))
require 'email_diff/db'
require 'email_diff/diff'
require 'email_diff/error_reporting'
require 'email_diff/mailer'

# Lambda function
class EmailDiff
  DEFAULT_EMAIL = 'email-diff@exampe.com'
  NoHTMLPartError = Class.new(StandardError)
  NoTextPartError = Class.new(StandardError)

  def self.call(event:, context: {})
    # Raven.extra_context(event: event.inspect[0,1000])
    instance = new
    instance.call(event: event, context: context)
  rescue StandardError => e
    raise e unless ENV['ENV'] == 'production'
    begin
      Raven.capture_exception(e)
      instance.error_response(e)
    rescue StandardError => e
      instance.send_email(text: "ERROR ERROR: #{e.class} #{e.message} #{e.backtrace.first}")
    end
  end

  def call(event:, context: {}) # rubocop:disable Methocs/MethodLength
    @event = event
    @context = context
    prior_html = db.last_email_html
    # Raven.extra_context(prior_html: prior_html.inspect[0,1000])
    current_html = incoming_email_html
    # Raven.extra_context(current_html: incoming_email_html.inspect[0,1000])
    diff = Diff.diff(prior_html, current_html)
    # Raven.extra_context(diff: diff.inspect[0,1000])
    send_email(html: diff)
    db.last_email_html = current_html
    success_response
  rescue NoHTMLPartError
    # Raven.extra_context(current_text: incoming_email_text.inspect[0,1000])
    send_email(text: incoming_email_text)
    success_response
  end

  def error_response(error)
    {
      statusCode: 500,
      body: {
        message: "Error: #{error.message}",
        event: @event
      }.to_json
    }
  end

  def send_email(options)
    from_address = ENV.fetch('FROM_EMAIL', DEFAULT_EMAIL)
    args = {
      from: %("#{email_name} diff" <#{from_address}>),
      to: ENV.fetch('RECIPIENTS', from_address),
      subject: "[diff] #{incoming_email_subject}"
    }
    EmailDiff::Mailer.send(**args.merge(options))
  end

  private

  def db
    @db ||= DB.new(email_name: email_name)
  end

  def email_name
    @event.dig('pathParameters', 'id')
  end

  def incoming_email_html
    result = callback_fields['body-html']
    raise NoHTMLPartError if result.nil?

    result
  end

  def incoming_email_text
    result = callback_fields['body-plain']
    raise NoTextPartError if result.nil?

    result
  end

  def incoming_email_subject
    callback_fields['subject']
  end

  def callback_fields
    @fields ||= begin
      content_type = headers['Content-Type']
      raise 'Missing content-type header' unless content_type

      result = case content_type
               when 'application/x-www-form-urlencoded'
                 Hash[Addressable::URI.form_unencode(post_body)]
               when %r{^multipart/form-data; boundary=}
                 parse_multipart(post_body, @event['headers'])
               else
                 raise "Unhandled Content-Type #{content_type}"
               end
      raise "Didn't get form-encoded email fields in callback" if result.nil?

      result
    end
  end

  def headers
    @event['headers']
  end

  def post_body
    result = @event['body']
    raise 'Received event with no body' if result.nil?

    result
  end

  def parse_multipart(body, headers)
    headers = headers.clone
    headers['Content-Type'] = headers['Content-Type'].sub('form-data', 'mixed')
    header_string = headers.each_with_object(String.new) { |(k,v), str| str << "#{k}: #{v}\n" }
    data = "#{header_string}\n#{body}"
    msg = Rex::MIME::Message.new(data)
    part_names = msg.parts.map do |part|
			part.header.to_s[/(?<=Content-Disposition: form-data; name=")[^"]+(?=".*)/]
    end
    Hash[part_names.zip(msg.parts.map(&:content))]
  end

  def success_response
    {
      statusCode: 200,
      body: {
        message: 'Message sent',
        event: @event
      }.to_json
    }
  end
end
