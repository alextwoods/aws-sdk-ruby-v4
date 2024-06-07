# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('../lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('../../aws-sigv4/lib', __dir__))
# $LOAD_PATH.unshift(File.expand_path('../../aws-eventstream/lib',  __FILE__))

require 'simplecov'
require 'webmock/rspec'
require 'aws-sdk-core'

require_relative 'support/credentials_provider'
require_relative 'support/refreshing_credentials_provider'

module Aws
  module Crt
    module Checksums
    end
  end
end

# Use in a context block to set the ENV for the duration of a test.
# Preserves contents of ENV outside of the test.
# and ensures that no other ENV variables are set for the duration.
def let_env(mock_env = {})
  before do
    @orig_env = ENV.to_h
    ENV.clear
    mock_env.each_pair { |k, v| ENV[k] = v }
  end

  after do
    ENV.clear
    @orig_env.each_pair { |k, v| ENV[k] = v }
  end
end
