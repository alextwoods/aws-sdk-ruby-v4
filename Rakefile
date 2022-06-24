# frozen_string_literal: true

ROOT = File.dirname(__FILE__)
GEMS_DIR = "#{ROOT}/gems"

$LOAD_PATH.unshift("#{GEMS_DIR}/aws-sdk-core/lib")
$LOAD_PATH.unshift("#{GEMS_DIR}/aws-sigv4/lib")

require 'aws-sdk-core'

desc 'Execute aws-sdk-core specs'
task 'test' do
  sh("bundle exec rspec #{GEMS_DIR}/aws-sdk-core")
end