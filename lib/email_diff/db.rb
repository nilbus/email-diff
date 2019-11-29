# frozen_string_literal: true

require 'fauna'

class EmailDiff
  # App-wide single database model
  class DB
    def initialize(email_name:, secret: ENV.fetch('FAUNA_DB_KEY'))
      @email_name = email_name
      @fauna = Fauna::Client.new(secret: secret)
    end

    def last_email_html
      @fauna.query do
        select(%w[data html], get(match(index('email_by_name'), @email_name)))
      end
    rescue Fauna::NotFound
      nil
    end

    def last_email_html=(value)
      begin
        @fauna.query do
          delete(select('ref', get(match(index('email_by_name'), @email_name))))
        end
      rescue Fauna::NotFound
        nil
      end
      @fauna.query do
        create(class_('emails'), data: { name: @email_name, html: value })
      end
    end
  end
end
