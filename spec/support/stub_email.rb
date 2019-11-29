# frozen_string_literal: true

def stub_email
  allow(EmailDiff::Mailer).to receive(:send).and_return({})
end

def unstub_email
  allow(EmailDiff::Mailer).to receive(:send).and_call_original
end

def stub_db
  allow_any_instance_of(EmailDiff::DB).to receive(:last_email_html).and_return('<html/>')
  allow_any_instance_of(EmailDiff::DB).to receive(:last_email_html=)
end

def unstub_db
  allow_any_instance_of(EmailDiff::DB).to receive(:last_email_html).and_call_original
  allow_any_instance_of(EmailDiff::DB).to receive(:last_email_html=).and_call_original
end
