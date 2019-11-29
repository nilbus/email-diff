# frozen_string_literal: true

require 'mailgun'
require 'net/http'

Mailgun.configure do |config|
  config.api_key = ENV.fetch('MAILGUN_API_KEY')
  config.domain  = ENV.fetch('MAILGUN_DOMAIN')
end

class EmailDiff
  # Sends email
  class Mailer
    def self.send(**kwargs)
      new.send(**kwargs)
    end

    def initialize
      @mailgun = Mailgun()
    end

    def send(from:, to:, subject:, html: nil, text: nil)
      @mailgun.messages.send_email(
        from: from,
        to: from,
        bcc: to,
        subject: subject,
        html: html,
        text: text
      )
    end
  end
end
