# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rake', require: false
gem 'rexml'

gem 'hearth',
    git: 'https://github.com/smithy-lang/smithy-ruby',
    glob: 'hearth/hearth.gemspec'

if defined?(JRUBY_VERSION)
  # get the latest jruby-openssl to support sigv4a
  # see: https://github.com/jruby/jruby-openssl/issues/30
  gem 'jruby-openssl'
end

group :benchmark do
  gem 'memory_profiler'

  # required for uploading archive/metrics
  gem 'aws-sdk-cloudwatch'
  gem 'aws-sdk-s3'
end

group :development do
  gem 'byebug'
  gem 'rubocop'
  gem 'rubocop-rake'
end

group :rbs do
  gem 'rbs', platforms: :ruby
  gem 'steep', platforms: :ruby
end

group :repl do
  gem 'pry'
end

group :test do
  gem 'rspec'
  gem 'simplecov'
  gem 'webmock'
  gem 'opentelemetry-sdk'
  gem 'opentelemetry-exporter-otlp'
end
