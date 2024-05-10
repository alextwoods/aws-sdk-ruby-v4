# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('../lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('../../aws-sigv4/lib', __dir__))
# $LOAD_PATH.unshift(File.expand_path('../../aws-eventstream/lib',  __FILE__))

require 'simplecov'
require 'webmock/rspec'

require 'aws-sdk-core'

require_relative 'support/credentials_provider'
require_relative 'support/refreshing_credentials_provider'

RSpec.configure do |config|
  config.before(:each) do
    # Clear the current ENV to avoid loading credentials.
    # This was previously mocked with stub_const but was provided a hash.
    ENV.clear

    # disable loading credentials from shared file
    allow(Dir).to receive(:home).and_raise(ArgumentError)

    # disable instance profile credentials
    token_path = '/latest/api/token'
    path = '/latest/meta-data/iam/security-credentials/'
    stub_request(:get, "http://169.254.169.254#{path}").to_raise(SocketError)
    stub_request(:put, "http://169.254.169.254#{token_path}").to_raise(SocketError)
    allow_any_instance_of(AWS::SDK::Core::EC2CredentialsProvider)
      .to receive(:warn)
  end
end

# rubocop:disable Lint/MissingSuper
module AWS::SDK::STS
  class Client < Hearth::Client
    def initialize(_config = Config.new, _options = {})
      nil
    end
  end
  Config = Struct.new(
    :region, :profile, :credentials_provider, keyword_init: true
  )
end

module AWS::SDK::SSO
  class Client < Hearth::Client
    def initialize(_config = Config.new, _options = {})
      nil
    end
  end
  Config = Struct.new(:region, keyword_init: true)
end

module AWS::SDK::SSOOIDC
  class Client < Hearth::Client
    def initialize(_config = Config.new, _options = {})
      nil
    end
  end
  Config = Struct.new(:region, keyword_init: true)
end
# rubocop:enable Lint/MissingSuper

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
