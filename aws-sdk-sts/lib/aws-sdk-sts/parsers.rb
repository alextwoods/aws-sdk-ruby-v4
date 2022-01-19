# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::Sts
  module Parsers

    # Operation Parser for AssumeRole
    class AssumeRole
      def self.parse(http_resp)
        data = Types::AssumeRoleOutput.new
        data
      end
    end

    class AssumedRoleUser
      def self.parse(map)
        data = Types::AssumedRoleUser.new
        return data
      end
    end

    class Credentials
      def self.parse(map)
        data = Types::Credentials.new
        return data
      end
    end

    # Error Parser for MalformedPolicyDocumentException
    class MalformedPolicyDocumentException
      def self.parse(http_resp)
        data = Types::MalformedPolicyDocumentException.new
        data
      end
    end

    # Error Parser for ExpiredTokenException
    class ExpiredTokenException
      def self.parse(http_resp)
        data = Types::ExpiredTokenException.new
        data
      end
    end

    # Error Parser for RegionDisabledException
    class RegionDisabledException
      def self.parse(http_resp)
        data = Types::RegionDisabledException.new
        data
      end
    end

    # Error Parser for PackedPolicyTooLargeException
    class PackedPolicyTooLargeException
      def self.parse(http_resp)
        data = Types::PackedPolicyTooLargeException.new
        data
      end
    end

    # Operation Parser for AssumeRoleWithSAML
    class AssumeRoleWithSAML
      def self.parse(http_resp)
        data = Types::AssumeRoleWithSAMLOutput.new
        data
      end
    end

    # Error Parser for IDPRejectedClaimException
    class IDPRejectedClaimException
      def self.parse(http_resp)
        data = Types::IDPRejectedClaimException.new
        data
      end
    end

    # Error Parser for InvalidIdentityTokenException
    class InvalidIdentityTokenException
      def self.parse(http_resp)
        data = Types::InvalidIdentityTokenException.new
        data
      end
    end

    # Operation Parser for AssumeRoleWithWebIdentity
    class AssumeRoleWithWebIdentity
      def self.parse(http_resp)
        data = Types::AssumeRoleWithWebIdentityOutput.new
        data
      end
    end

    # Error Parser for IDPCommunicationErrorException
    class IDPCommunicationErrorException
      def self.parse(http_resp)
        data = Types::IDPCommunicationErrorException.new
        data
      end
    end

    # Operation Parser for DecodeAuthorizationMessage
    class DecodeAuthorizationMessage
      def self.parse(http_resp)
        data = Types::DecodeAuthorizationMessageOutput.new
        data
      end
    end

    # Error Parser for InvalidAuthorizationMessageException
    class InvalidAuthorizationMessageException
      def self.parse(http_resp)
        data = Types::InvalidAuthorizationMessageException.new
        data
      end
    end

    # Operation Parser for GetAccessKeyInfo
    class GetAccessKeyInfo
      def self.parse(http_resp)
        data = Types::GetAccessKeyInfoOutput.new
        data
      end
    end

    # Operation Parser for GetCallerIdentity
    class GetCallerIdentity
      def self.parse(http_resp)
        data = Types::GetCallerIdentityOutput.new
        data
      end
    end

    # Operation Parser for GetFederationToken
    class GetFederationToken
      def self.parse(http_resp)
        data = Types::GetFederationTokenOutput.new
        data
      end
    end

    class FederatedUser
      def self.parse(map)
        data = Types::FederatedUser.new
        return data
      end
    end

    # Operation Parser for GetSessionToken
    class GetSessionToken
      def self.parse(http_resp)
        data = Types::GetSessionTokenOutput.new
        data
      end
    end
  end
end
