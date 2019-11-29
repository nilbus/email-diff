require 'sentry-raven'

Raven.configure do |config|
  environment = ENV.fetch('ENV', 'development')
  config.current_environment = environment
  config.environments = %w[development production]
  config.silence_ready = (environment == 'test')
end
