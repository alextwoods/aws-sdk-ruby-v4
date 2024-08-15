# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('../lib', __dir__))
$LOAD_PATH.unshift(File.expand_path('../../aws-sigv4/lib', __dir__))
# $LOAD_PATH.unshift(File.expand_path('../../aws-eventstream/lib',  __FILE__))

require 'simplecov'
require 'webmock/rspec'
require 'aws-sdk-core'

require_relative 'support/credentials_provider'
require_relative 'support/refreshing_credentials_provider'

# Use in a context block to set the ENV for the duration of a test.
def let_env(mock_env = {})
  before do
    mock_env(mock_env)
  end
end

# Use in an example block to set the ENV for the duration of a test.
def mock_env(mock_env = {})
  allow(ENV).to receive(:[]).and_call_original
  allow(ENV).to receive(:fetch).and_call_original
  mock_env.each_pair do |k, v|
    allow(ENV).to receive(:[]).with(k).and_return(v)
    allow(ENV).to receive(:fetch).with(k).and_return(v)
    allow(ENV).to receive(:fetch).with(k, anything) do |_, default|
      v || default
    end
  end
end

# Use in a context block to set the shared config for the duration of a test.
def let_shared_config(config_contents = '', credentials_contents = '')
  before do
    mock_shared_config(config_contents, credentials_contents)
  end
end

# Use in an example block to set the shared config for the duration of a test.
def mock_shared_config(config_contents = '', credentials_contents = '')
  parsed_config = AWS::SDK::Core::SharedConfigFileParser.new(config_contents).parse
  parsed_credentials = AWS::SDK::Core::SharedConfigFileParser.new(
    credentials_contents
  ).parse

  config_profiles, sso_sessions = AWS::SDK::Core::SharedConfigFileStandardizer.new(
    parsed_config,
    :config
  ).standardize
  credentials_profiles = AWS::SDK::Core::SharedConfigFileStandardizer.new(
    parsed_credentials,
    :credentials
  ).standardize

  config = AWS::SDK::Core::SharedConfigFile.new(
    config_profiles: config_profiles,
    credentials_profiles: credentials_profiles,
    sso_sessions: sso_sessions
  )
  allow(AWS::SDK::Core::SharedConfig).to receive(:load).and_return(config)
end

RSpec.configure do |config|
  config.before(:each) do
    # Default all shared config to be empty
    AWS::SDK::Core.instance_variable_set(:@shared_config, nil)
    mock_shared_config
  end
end

## Necessary to run for aws-sdk-core tests on their own
# rubocop:disable Lint/MissingSuper
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
# rubocop:enable Lint/MissingSuper

module Aws
  module Crt
    module Checksums
    end
  end
end
##
