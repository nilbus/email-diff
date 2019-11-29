# frozen_string_literal: true

require 'spec_helper'

RSpec.describe EmailDiff::Diff do
  describe '.diff' do
    it 'diffs the HTML markup' do
      output = described_class.diff('<p>Hello, friend.</p>',
                                    '<p>Goodbye, friend.</p>')

      expect(output).to match(
        %r{<p><del[^>]*>Hello,</del><ins[^>]*>Goodbye,</ins> friend.</p>}
      )
    end

    it 'inlines CSS styling' do
      output = described_class.diff('<p>Hello, friend.</p>',
                                    '<p>Goodbye, friend.</p>')

      expect(output).to include('<ins style=')
      expect(output).to include('<del style=')
    end
  end
end
