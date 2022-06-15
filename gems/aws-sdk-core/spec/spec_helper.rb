# frozen_string_literal: true

require 'webmock/rspec'

require 'simplecov'
SimpleCov.start do
  add_filter %r{^/spec/}
end

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

# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# The generated `.rspec` file contains `--require spec_helper` which will cause
# this file to always be loaded, without a need to explicitly require it in any
# files.
#
# Given that it is always loaded, you are encouraged to keep this file as
# light-weight as possible. Requiring heavyweight dependencies from this file
# will add to the boot time of your test suite on EVERY test run, even for an
# individual file that may not need all of that loaded. Instead, consider making
# a separate helper file that requires the additional dependencies and performs
# the additional setup, and require it from the spec files that actually need
# it.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  # rspec-expectations config goes here. You can use an alternate
  # assertion/expectation library such as wrong or the stdlib/minitest
  # assertions if you prefer.
  config.expect_with :rspec do |expectations|
    # This option will default to `true` in RSpec 4. It makes the `description`
    # and `failure_message` of custom matchers include text for helper methods
    # defined using `chain`, e.g.:
    #     be_bigger_than(2).and_smaller_than(4).description
    #     # => "be bigger than 2 and smaller than 4"
    # ...rather than:
    #     # => "be bigger than 2"
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  # rspec-mocks config goes here. You can use an alternate test double
  # library (such as bogus or mocha) by changing the `mock_with` option here.
  config.mock_with :rspec do |mocks|
    # Prevents you from mocking or stubbing a method that does not exist on
    # a real object. This is generally recommended, and will default to
    # `true` in RSpec 4.
    mocks.verify_partial_doubles = true
  end

  # This option will default to `:apply_to_host_groups` in RSpec 4 (and will
  # have no way to turn it off -- the option exists only for backwards
  # compatibility in RSpec 3). It causes shared context metadata to be
  # inherited by the metadata hash of host groups and examples, rather than
  # triggering implicit auto-inclusion in groups with matching metadata.
  config.shared_context_metadata_behavior = :apply_to_host_groups
end
