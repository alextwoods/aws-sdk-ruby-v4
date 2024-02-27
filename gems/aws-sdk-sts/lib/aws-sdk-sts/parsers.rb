# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::STS
  # @api private
  module Parsers

    # Operation Parser for AssumeRole
    class AssumeRole
      def self.parse(http_resp)
        data = Types::AssumeRoleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AssumeRoleResult')
        xml.at('Credentials') do |node|
          data.credentials = Credentials.parse(node)
        end
        xml.at('AssumedRoleUser') do |node|
          data.assumed_role_user = AssumedRoleUser.parse(node)
        end
        xml.at('PackedPolicySize') do |node|
          data.packed_policy_size = node.text&.to_i
        end
        xml.at('SourceIdentity') do |node|
          data.source_identity = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AssumeRoleWithSAML
    class AssumeRoleWithSAML
      def self.parse(http_resp)
        data = Types::AssumeRoleWithSAMLOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AssumeRoleWithSAMLResult')
        xml.at('Credentials') do |node|
          data.credentials = Credentials.parse(node)
        end
        xml.at('AssumedRoleUser') do |node|
          data.assumed_role_user = AssumedRoleUser.parse(node)
        end
        xml.at('PackedPolicySize') do |node|
          data.packed_policy_size = node.text&.to_i
        end
        xml.at('Subject') do |node|
          data.subject = (node.text || '')
        end
        xml.at('SubjectType') do |node|
          data.subject_type = (node.text || '')
        end
        xml.at('Issuer') do |node|
          data.issuer = (node.text || '')
        end
        xml.at('Audience') do |node|
          data.audience = (node.text || '')
        end
        xml.at('NameQualifier') do |node|
          data.name_qualifier = (node.text || '')
        end
        xml.at('SourceIdentity') do |node|
          data.source_identity = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AssumeRoleWithWebIdentity
    class AssumeRoleWithWebIdentity
      def self.parse(http_resp)
        data = Types::AssumeRoleWithWebIdentityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AssumeRoleWithWebIdentityResult')
        xml.at('Credentials') do |node|
          data.credentials = Credentials.parse(node)
        end
        xml.at('SubjectFromWebIdentityToken') do |node|
          data.subject_from_web_identity_token = (node.text || '')
        end
        xml.at('AssumedRoleUser') do |node|
          data.assumed_role_user = AssumedRoleUser.parse(node)
        end
        xml.at('PackedPolicySize') do |node|
          data.packed_policy_size = node.text&.to_i
        end
        xml.at('Provider') do |node|
          data.provider = (node.text || '')
        end
        xml.at('Audience') do |node|
          data.audience = (node.text || '')
        end
        xml.at('SourceIdentity') do |node|
          data.source_identity = (node.text || '')
        end
        data
      end
    end

    class AssumedRoleUser
      def self.parse(xml)
        data = Types::AssumedRoleUser.new
        xml.at('AssumedRoleId') do |node|
          data.assumed_role_id = (node.text || '')
        end
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        return data
      end
    end

    class Credentials
      def self.parse(xml)
        data = Types::Credentials.new
        xml.at('AccessKeyId') do |node|
          data.access_key_id = (node.text || '')
        end
        xml.at('SecretAccessKey') do |node|
          data.secret_access_key = (node.text || '')
        end
        xml.at('SessionToken') do |node|
          data.session_token = (node.text || '')
        end
        xml.at('Expiration') do |node|
          data.expiration = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for DecodeAuthorizationMessage
    class DecodeAuthorizationMessage
      def self.parse(http_resp)
        data = Types::DecodeAuthorizationMessageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DecodeAuthorizationMessageResult')
        xml.at('DecodedMessage') do |node|
          data.decoded_message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ExpiredTokenException
    class ExpiredTokenException
      def self.parse(http_resp)
        data = Types::ExpiredTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    class FederatedUser
      def self.parse(xml)
        data = Types::FederatedUser.new
        xml.at('FederatedUserId') do |node|
          data.federated_user_id = (node.text || '')
        end
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetAccessKeyInfo
    class GetAccessKeyInfo
      def self.parse(http_resp)
        data = Types::GetAccessKeyInfoOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetAccessKeyInfoResult')
        xml.at('Account') do |node|
          data.account = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetCallerIdentity
    class GetCallerIdentity
      def self.parse(http_resp)
        data = Types::GetCallerIdentityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetCallerIdentityResult')
        xml.at('UserId') do |node|
          data.user_id = (node.text || '')
        end
        xml.at('Account') do |node|
          data.account = (node.text || '')
        end
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetFederationToken
    class GetFederationToken
      def self.parse(http_resp)
        data = Types::GetFederationTokenOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetFederationTokenResult')
        xml.at('Credentials') do |node|
          data.credentials = Credentials.parse(node)
        end
        xml.at('FederatedUser') do |node|
          data.federated_user = FederatedUser.parse(node)
        end
        xml.at('PackedPolicySize') do |node|
          data.packed_policy_size = node.text&.to_i
        end
        data
      end
    end

    # Operation Parser for GetSessionToken
    class GetSessionToken
      def self.parse(http_resp)
        data = Types::GetSessionTokenOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetSessionTokenResult')
        xml.at('Credentials') do |node|
          data.credentials = Credentials.parse(node)
        end
        data
      end
    end

    # Error Parser for IDPCommunicationErrorException
    class IDPCommunicationErrorException
      def self.parse(http_resp)
        data = Types::IDPCommunicationErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for IDPRejectedClaimException
    class IDPRejectedClaimException
      def self.parse(http_resp)
        data = Types::IDPRejectedClaimException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidAuthorizationMessageException
    class InvalidAuthorizationMessageException
      def self.parse(http_resp)
        data = Types::InvalidAuthorizationMessageException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidIdentityTokenException
    class InvalidIdentityTokenException
      def self.parse(http_resp)
        data = Types::InvalidIdentityTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for MalformedPolicyDocumentException
    class MalformedPolicyDocumentException
      def self.parse(http_resp)
        data = Types::MalformedPolicyDocumentException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for PackedPolicyTooLargeException
    class PackedPolicyTooLargeException
      def self.parse(http_resp)
        data = Types::PackedPolicyTooLargeException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for RegionDisabledException
    class RegionDisabledException
      def self.parse(http_resp)
        data = Types::RegionDisabledException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end
  end
end
