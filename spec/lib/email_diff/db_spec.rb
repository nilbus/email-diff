# frozen_string_literal: true

require 'spec_helper'

RSpec.describe EmailDiff::DB do
  describe '#last_email_html{,=}' do
    it "fetches the last email's HTML body for a given key" do
      html = '<html>'
      db = described_class.new(email_name: 'test-name')

      db.last_email_html = html
      fetched = db.last_email_html

      expect(fetched).to eq html
    end
  end
end
