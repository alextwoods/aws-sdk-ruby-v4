# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::STS
  # @api private
  module Stubs

    class AssumeRole
      def self.build(params, context:)
        Params::AssumeRoleOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::AssumeRoleOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          credentials: Credentials.default(visited),
          assumed_role_user: AssumedRoleUser.default(visited),
          packed_policy_size: 1,
          source_identity: 'source_identity',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AssumeRoleResponse')
        response.attributes['xmlns'] = 'https://sts.amazonaws.com/doc/2011-06-15/'
        xml = Hearth::XML::Node.new('AssumeRoleResult')
        xml << Credentials.stub('Credentials', stub.credentials) unless stub.credentials.nil?
        xml << AssumedRoleUser.stub('AssumedRoleUser', stub.assumed_role_user) unless stub.assumed_role_user.nil?
        xml << Hearth::XML::Node.new('PackedPolicySize', stub.packed_policy_size.to_s) unless stub.packed_policy_size.nil?
        xml << Hearth::XML::Node.new('SourceIdentity', stub.source_identity.to_s) unless stub.source_identity.nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    class AssumeRoleWithSAML
      def self.build(params, context:)
        Params::AssumeRoleWithSAMLOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::AssumeRoleWithSAMLOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          credentials: Credentials.default(visited),
          assumed_role_user: AssumedRoleUser.default(visited),
          packed_policy_size: 1,
          subject: 'subject',
          subject_type: 'subject_type',
          issuer: 'issuer',
          audience: 'audience',
          name_qualifier: 'name_qualifier',
          source_identity: 'source_identity',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AssumeRoleWithSAMLResponse')
        response.attributes['xmlns'] = 'https://sts.amazonaws.com/doc/2011-06-15/'
        xml = Hearth::XML::Node.new('AssumeRoleWithSAMLResult')
        xml << Credentials.stub('Credentials', stub.credentials) unless stub.credentials.nil?
        xml << AssumedRoleUser.stub('AssumedRoleUser', stub.assumed_role_user) unless stub.assumed_role_user.nil?
        xml << Hearth::XML::Node.new('PackedPolicySize', stub.packed_policy_size.to_s) unless stub.packed_policy_size.nil?
        xml << Hearth::XML::Node.new('Subject', stub.subject.to_s) unless stub.subject.nil?
        xml << Hearth::XML::Node.new('SubjectType', stub.subject_type.to_s) unless stub.subject_type.nil?
        xml << Hearth::XML::Node.new('Issuer', stub.issuer.to_s) unless stub.issuer.nil?
        xml << Hearth::XML::Node.new('Audience', stub.audience.to_s) unless stub.audience.nil?
        xml << Hearth::XML::Node.new('NameQualifier', stub.name_qualifier.to_s) unless stub.name_qualifier.nil?
        xml << Hearth::XML::Node.new('SourceIdentity', stub.source_identity.to_s) unless stub.source_identity.nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    class AssumeRoleWithWebIdentity
      def self.build(params, context:)
        Params::AssumeRoleWithWebIdentityOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::AssumeRoleWithWebIdentityOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          credentials: Credentials.default(visited),
          subject_from_web_identity_token: 'subject_from_web_identity_token',
          assumed_role_user: AssumedRoleUser.default(visited),
          packed_policy_size: 1,
          provider: 'provider',
          audience: 'audience',
          source_identity: 'source_identity',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AssumeRoleWithWebIdentityResponse')
        response.attributes['xmlns'] = 'https://sts.amazonaws.com/doc/2011-06-15/'
        xml = Hearth::XML::Node.new('AssumeRoleWithWebIdentityResult')
        xml << Credentials.stub('Credentials', stub.credentials) unless stub.credentials.nil?
        xml << Hearth::XML::Node.new('SubjectFromWebIdentityToken', stub.subject_from_web_identity_token.to_s) unless stub.subject_from_web_identity_token.nil?
        xml << AssumedRoleUser.stub('AssumedRoleUser', stub.assumed_role_user) unless stub.assumed_role_user.nil?
        xml << Hearth::XML::Node.new('PackedPolicySize', stub.packed_policy_size.to_s) unless stub.packed_policy_size.nil?
        xml << Hearth::XML::Node.new('Provider', stub.provider.to_s) unless stub.provider.nil?
        xml << Hearth::XML::Node.new('Audience', stub.audience.to_s) unless stub.audience.nil?
        xml << Hearth::XML::Node.new('SourceIdentity', stub.source_identity.to_s) unless stub.source_identity.nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    class AssumedRoleUser
      def self.default(visited = [])
        return nil if visited.include?('AssumedRoleUser')
        visited = visited + ['AssumedRoleUser']
        {
          assumed_role_id: 'assumed_role_id',
          arn: 'arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AssumedRoleUser.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AssumedRoleId', stub.assumed_role_id.to_s) unless stub.assumed_role_id.nil?
        xml << Hearth::XML::Node.new('Arn', stub.arn.to_s) unless stub.arn.nil?
        xml
      end
    end

    class Credentials
      def self.default(visited = [])
        return nil if visited.include?('Credentials')
        visited = visited + ['Credentials']
        {
          access_key_id: 'access_key_id',
          secret_access_key: 'secret_access_key',
          session_token: 'session_token',
          expiration: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Credentials.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AccessKeyId', stub.access_key_id.to_s) unless stub.access_key_id.nil?
        xml << Hearth::XML::Node.new('SecretAccessKey', stub.secret_access_key.to_s) unless stub.secret_access_key.nil?
        xml << Hearth::XML::Node.new('SessionToken', stub.session_token.to_s) unless stub.session_token.nil?
        xml << Hearth::XML::Node.new('Expiration', Hearth::TimeHelper.to_date_time(stub.expiration)) unless stub.expiration.nil?
        xml
      end
    end

    class DecodeAuthorizationMessage
      def self.build(params, context:)
        Params::DecodeAuthorizationMessageOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::DecodeAuthorizationMessageOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          decoded_message: 'decoded_message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DecodeAuthorizationMessageResponse')
        response.attributes['xmlns'] = 'https://sts.amazonaws.com/doc/2011-06-15/'
        xml = Hearth::XML::Node.new('DecodeAuthorizationMessageResult')
        xml << Hearth::XML::Node.new('DecodedMessage', stub.decoded_message.to_s) unless stub.decoded_message.nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    class ExpiredTokenException
      def self.build(params, context:)
        Params::ExpiredTokenException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ExpiredTokenException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 400
        xml = Hearth::XML::Node.new('Error')
        xml << Hearth::XML::Node.new('Type', 'Sender')
        xml << Hearth::XML::Node.new('Code', 'ExpiredTokenException')
        xml << Hearth::XML::Node.new('message', stub.message.to_s) unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::XML::Node.new('ErrorResponse', xml).to_str) if xml
      end
    end

    class FederatedUser
      def self.default(visited = [])
        return nil if visited.include?('FederatedUser')
        visited = visited + ['FederatedUser']
        {
          federated_user_id: 'federated_user_id',
          arn: 'arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::FederatedUser.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('FederatedUserId', stub.federated_user_id.to_s) unless stub.federated_user_id.nil?
        xml << Hearth::XML::Node.new('Arn', stub.arn.to_s) unless stub.arn.nil?
        xml
      end
    end

    class GetAccessKeyInfo
      def self.build(params, context:)
        Params::GetAccessKeyInfoOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetAccessKeyInfoOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          account: 'account',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetAccessKeyInfoResponse')
        response.attributes['xmlns'] = 'https://sts.amazonaws.com/doc/2011-06-15/'
        xml = Hearth::XML::Node.new('GetAccessKeyInfoResult')
        xml << Hearth::XML::Node.new('Account', stub.account.to_s) unless stub.account.nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    class GetCallerIdentity
      def self.build(params, context:)
        Params::GetCallerIdentityOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetCallerIdentityOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          user_id: 'user_id',
          account: 'account',
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetCallerIdentityResponse')
        response.attributes['xmlns'] = 'https://sts.amazonaws.com/doc/2011-06-15/'
        xml = Hearth::XML::Node.new('GetCallerIdentityResult')
        xml << Hearth::XML::Node.new('UserId', stub.user_id.to_s) unless stub.user_id.nil?
        xml << Hearth::XML::Node.new('Account', stub.account.to_s) unless stub.account.nil?
        xml << Hearth::XML::Node.new('Arn', stub.arn.to_s) unless stub.arn.nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    class GetFederationToken
      def self.build(params, context:)
        Params::GetFederationTokenOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetFederationTokenOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          credentials: Credentials.default(visited),
          federated_user: FederatedUser.default(visited),
          packed_policy_size: 1,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetFederationTokenResponse')
        response.attributes['xmlns'] = 'https://sts.amazonaws.com/doc/2011-06-15/'
        xml = Hearth::XML::Node.new('GetFederationTokenResult')
        xml << Credentials.stub('Credentials', stub.credentials) unless stub.credentials.nil?
        xml << FederatedUser.stub('FederatedUser', stub.federated_user) unless stub.federated_user.nil?
        xml << Hearth::XML::Node.new('PackedPolicySize', stub.packed_policy_size.to_s) unless stub.packed_policy_size.nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    class GetSessionToken
      def self.build(params, context:)
        Params::GetSessionTokenOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::GetSessionTokenOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          credentials: Credentials.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetSessionTokenResponse')
        response.attributes['xmlns'] = 'https://sts.amazonaws.com/doc/2011-06-15/'
        xml = Hearth::XML::Node.new('GetSessionTokenResult')
        xml << Credentials.stub('Credentials', stub.credentials) unless stub.credentials.nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    class IDPCommunicationErrorException
      def self.build(params, context:)
        Params::IDPCommunicationErrorException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::IDPCommunicationErrorException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 400
        xml = Hearth::XML::Node.new('Error')
        xml << Hearth::XML::Node.new('Type', 'Sender')
        xml << Hearth::XML::Node.new('Code', 'IDPCommunicationError')
        xml << Hearth::XML::Node.new('message', stub.message.to_s) unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::XML::Node.new('ErrorResponse', xml).to_str) if xml
      end
    end

    class IDPRejectedClaimException
      def self.build(params, context:)
        Params::IDPRejectedClaimException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::IDPRejectedClaimException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 403
        xml = Hearth::XML::Node.new('Error')
        xml << Hearth::XML::Node.new('Type', 'Sender')
        xml << Hearth::XML::Node.new('Code', 'IDPRejectedClaim')
        xml << Hearth::XML::Node.new('message', stub.message.to_s) unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::XML::Node.new('ErrorResponse', xml).to_str) if xml
      end
    end

    class InvalidAuthorizationMessageException
      def self.build(params, context:)
        Params::InvalidAuthorizationMessageException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidAuthorizationMessageException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 400
        xml = Hearth::XML::Node.new('Error')
        xml << Hearth::XML::Node.new('Type', 'Sender')
        xml << Hearth::XML::Node.new('Code', 'InvalidAuthorizationMessageException')
        xml << Hearth::XML::Node.new('message', stub.message.to_s) unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::XML::Node.new('ErrorResponse', xml).to_str) if xml
      end
    end

    class InvalidIdentityTokenException
      def self.build(params, context:)
        Params::InvalidIdentityTokenException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InvalidIdentityTokenException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 400
        xml = Hearth::XML::Node.new('Error')
        xml << Hearth::XML::Node.new('Type', 'Sender')
        xml << Hearth::XML::Node.new('Code', 'InvalidIdentityToken')
        xml << Hearth::XML::Node.new('message', stub.message.to_s) unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::XML::Node.new('ErrorResponse', xml).to_str) if xml
      end
    end

    class MalformedPolicyDocumentException
      def self.build(params, context:)
        Params::MalformedPolicyDocumentException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::MalformedPolicyDocumentException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 400
        xml = Hearth::XML::Node.new('Error')
        xml << Hearth::XML::Node.new('Type', 'Sender')
        xml << Hearth::XML::Node.new('Code', 'MalformedPolicyDocument')
        xml << Hearth::XML::Node.new('message', stub.message.to_s) unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::XML::Node.new('ErrorResponse', xml).to_str) if xml
      end
    end

    class PackedPolicyTooLargeException
      def self.build(params, context:)
        Params::PackedPolicyTooLargeException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::PackedPolicyTooLargeException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 400
        xml = Hearth::XML::Node.new('Error')
        xml << Hearth::XML::Node.new('Type', 'Sender')
        xml << Hearth::XML::Node.new('Code', 'PackedPolicyTooLarge')
        xml << Hearth::XML::Node.new('message', stub.message.to_s) unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::XML::Node.new('ErrorResponse', xml).to_str) if xml
      end
    end

    class RegionDisabledException
      def self.build(params, context:)
        Params::RegionDisabledException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::RegionDisabledException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 403
        xml = Hearth::XML::Node.new('Error')
        xml << Hearth::XML::Node.new('Type', 'Sender')
        xml << Hearth::XML::Node.new('Code', 'RegionDisabledException')
        xml << Hearth::XML::Node.new('message', stub.message.to_s) unless stub.message.nil?
        http_resp.body = ::StringIO.new(Hearth::XML::Node.new('ErrorResponse', xml).to_str) if xml
      end
    end
  end
end
