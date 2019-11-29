# frozen_string_literal: true

require 'spec_helper'

RSpec.describe EmailDiff do
  before do
    stub_email
    stub_db
  end

  describe '.call' do
    context 'with a multipart/form-data message' do
      let(:event) { eval(File.read('spec/data/email_event_02.rb')) }

      it 'sends the received email diff back as HTML' do
        html_ish = /\A\s*</

        described_class.call(event: event)

        expect(EmailDiff::Mailer).to have_received(:send).with(hash_including(html: html_ish))
      end

      it 'prepends [diff] to the original email subject' do
        described_class.call(event: event)

        expect(EmailDiff::Mailer).to have_received(:send).with(hash_including(subject: "[diff] Fwd: 12/1/2019 - Weekly Email"))
      end

      it 'sends the email from the ENV["FROM_EMAIL"] variable' do
        from_address = 'from@example.com'
        sender = %("ward-email diff" <#{from_address}>)
        allow(ENV).to receive(:fetch).and_call_original
        allow(ENV).to receive(:fetch).with('FROM_EMAIL', String).
          and_return(from_address)
        described_class.call(event: event)

        expect(EmailDiff::Mailer).to have_received(:send).with(hash_including(from: sender))
      end

      it 'uses the recipients from the ENV["RECIPIENTS"] variable' do
        recipients = 'a@a.com, b@b.com'
        allow(ENV).to receive(:fetch).and_call_original
        allow(ENV).to receive(:fetch).with('RECIPIENTS', String).
          and_return(recipients)
        described_class.call(event: event)

        expect(EmailDiff::Mailer).to have_received(:send).with(hash_including(to: recipients))
      end
    end

    context 'with a www-form-encoded message' do
      let(:event) { JSON.parse(File.read('spec/data/email_event_01.json')) }

      it 'sends the received email diff back as HTML' do
        html_ish = /\A\s*</

        described_class.call(event: event)

        expect(EmailDiff::Mailer).to have_received(:send).with(hash_including(html: html_ish))
      end
    end

    context 'with a text/plain message' do
      let(:event) { JSON.parse(File.read('spec/data/email_event_01.json').sub('body-html', 'body-plain')) }

      it 'sends the received email diff back as text' do
        described_class.call(event: event)

        expect(EmailDiff::Mailer).to have_received(:send).with(hash_including(text: //))
      end
    end
  end
end
