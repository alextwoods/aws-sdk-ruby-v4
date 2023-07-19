# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('../../aws-sigv4/lib', __dir__))

require 'simplecov'
SimpleCov.start do
  add_filter %r{^/spec/}
end
require 'webmock/rspec'

require 'aws-sdk-core'

require_relative 'support/credential_provider'
require_relative 'support/refreshing_credential_provider'

module AWS::SDK::STS
  class Client
    def initialize(_config = Config.new, _options = {})
      nil
    end
  end
  Config = Struct.new(
    :region, :profile, :credential_provider, keyword_init: true
  )
end

module AWS::SDK::SSO
  class Client
    def initialize(_config = Config.new, _options = {})
      nil
    end
  end
  Config = Struct.new(:region, keyword_init: true)
end

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
