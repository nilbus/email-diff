require 'htmldiff'

class EmailDiff
  # API for accessing HTMLDiff functions
  class Diff
    extend HTMLDiff

    def self.diff(html_before, html_after)
      style(super)
    end

    def self.style(html)
      html.
        gsub('<ins', '<ins style="background-color: #ecfee2; text-decoration: none;"').
        gsub('<del', '<del style="background-color: #eee; text-decoration: line-through; color: #bfbfbf;"')
    end
  end
end
