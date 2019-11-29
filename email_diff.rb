#!/usr/bin/env ruby
# frozen_string_literal: true

require 'json'
require 'mailgun'

require_relative 'lib/email_diff/mailgun'

# require 'htmldiff'

# # API for accessing HTMLDiff functions
# class Diff
#   extend HTMLDiff
# end

# class Playground
#   def initialize
#     file1 = ARGV[0]
#     file2 = ARGV[1]

#     before = File.read file1
#     after = File.read file2

#     puts <<~CSS
#       <style>
#         ins {
#             text-decoration: none;
#             background-color: #d4fcbc;
#         }

#         del {
#             text-decoration: line-through;
#             background-color: #fbb6c2;
#             color: #555;
#         }
#       </style>
#     CSS
#     puts Diff.diff(before, after)
#   end
# end

def call(event:, context:) # rubocop:disable Lint/UnusedMethodArgument
  {
    statusCode: 200,
    body: {
      message: 'Go Serverless v1.0! Your function executed successfully!',
      input: event
    }.to_json
  }
end
