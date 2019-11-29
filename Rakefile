# frozen_string_literal: true

task :default do
  system `rake -T`
end

desc 'Run a pry session with the app loaded'
task :console do
  require 'pry-moves'
  require_relative './lib/email_diff.rb'
  pry
end

namespace :test do
  task default: :integrated

  desc 'Execute the email_diff function locally, integrated with DB and mail'
  task :integrated do
    require_relative 'lib/email_diff'

    result = EmailDiff.call(
      event: { message: 'Hello from rake test:integrated' }, context: {}
    )
    puts result.inspect
  end
end
