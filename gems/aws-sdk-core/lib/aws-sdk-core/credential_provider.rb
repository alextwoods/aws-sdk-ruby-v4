# frozen_string_literal: true

module AWS::SDK::Core
  # A module mixin for credential provider classes. It ensures a credentials
  # accessor method is available and can be used to check if a class is a
  # type of credential provider.
  module CredentialProvider
    # @return [Credentials]
    attr_reader :credentials
  end
end
