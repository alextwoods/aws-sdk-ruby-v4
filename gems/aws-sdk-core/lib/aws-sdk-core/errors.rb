# frozen_string_literal: true

module AWS::SDK::Core
  module Errors
    # Raised when a client is constructed, where Assume Role credentials are
    # expected, and there is no source profile specified.
    class NoSourceProfileError < RuntimeError; end

    # Raised when a client is constructed with Assume Role credentials using
    # a credential_source, and that source type is unsupported.
    class InvalidCredentialSourceError < RuntimeError; end

    # Raised when a client is constructed with Assume Role credentials, but
    # the profile has both source_profile and credential_source.
    class CredentialSourceConflictError < RuntimeError; end

    # Raised when a client is constructed with Assume Role credentials using
    # a credential_source, and that source doesn't provide credentials.
    class NoSourceCredentialsError < RuntimeError; end
  end
end