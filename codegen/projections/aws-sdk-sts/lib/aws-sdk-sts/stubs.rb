# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Sts
  module Stubs

    # Operation Stubber for AssumeRole
    class AssumeRole
      def self.default(visited=[])
        {
          credentials: Stubs::Credentials.default(visited),
          assumed_role_user: Stubs::AssumedRoleUser.default(visited),
          packed_policy_size: 1,
          source_identity: 'source_identity',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AssumeRoleResponse')
        response.attributes['xmlns'] = 'https://sts.amazonaws.com/doc/2011-06-15/'
        xml = Hearth::XML::Node.new('AssumeRoleResult')
        xml << Stubs::Credentials.stub('Credentials', stub[:credentials]) unless stub[:credentials].nil?
        xml << Stubs::AssumedRoleUser.stub('AssumedRoleUser', stub[:assumed_role_user]) unless stub[:assumed_role_user].nil?
        xml << Hearth::XML::Node.new('PackedPolicySize', stub[:packed_policy_size].to_s) unless stub[:packed_policy_size].nil?
        xml << Hearth::XML::Node.new('SourceIdentity', stub[:source_identity].to_s) unless stub[:source_identity].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
      end
    end

    # Structure Stubber for AssumedRoleUser
    class AssumedRoleUser
      def self.default(visited=[])
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
        xml << Hearth::XML::Node.new('AssumedRoleId', stub[:assumed_role_id].to_s) unless stub[:assumed_role_id].nil?
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml
      end
    end

    # Structure Stubber for Credentials
    class Credentials
      def self.default(visited=[])
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
        xml << Hearth::XML::Node.new('AccessKeyId', stub[:access_key_id].to_s) unless stub[:access_key_id].nil?
        xml << Hearth::XML::Node.new('SecretAccessKey', stub[:secret_access_key].to_s) unless stub[:secret_access_key].nil?
        xml << Hearth::XML::Node.new('SessionToken', stub[:session_token].to_s) unless stub[:session_token].nil?
        xml << Hearth::XML::Node.new('Expiration', Hearth::TimeHelper.to_date_time(stub[:expiration])) unless stub[:expiration].nil?
        xml
      end
    end

    # Operation Stubber for AssumeRoleWithSAML
    class AssumeRoleWithSAML
      def self.default(visited=[])
        {
          credentials: Stubs::Credentials.default(visited),
          assumed_role_user: Stubs::AssumedRoleUser.default(visited),
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
        xml << Stubs::Credentials.stub('Credentials', stub[:credentials]) unless stub[:credentials].nil?
        xml << Stubs::AssumedRoleUser.stub('AssumedRoleUser', stub[:assumed_role_user]) unless stub[:assumed_role_user].nil?
        xml << Hearth::XML::Node.new('PackedPolicySize', stub[:packed_policy_size].to_s) unless stub[:packed_policy_size].nil?
        xml << Hearth::XML::Node.new('Subject', stub[:subject].to_s) unless stub[:subject].nil?
        xml << Hearth::XML::Node.new('SubjectType', stub[:subject_type].to_s) unless stub[:subject_type].nil?
        xml << Hearth::XML::Node.new('Issuer', stub[:issuer].to_s) unless stub[:issuer].nil?
        xml << Hearth::XML::Node.new('Audience', stub[:audience].to_s) unless stub[:audience].nil?
        xml << Hearth::XML::Node.new('NameQualifier', stub[:name_qualifier].to_s) unless stub[:name_qualifier].nil?
        xml << Hearth::XML::Node.new('SourceIdentity', stub[:source_identity].to_s) unless stub[:source_identity].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
      end
    end

    # Operation Stubber for AssumeRoleWithWebIdentity
    class AssumeRoleWithWebIdentity
      def self.default(visited=[])
        {
          credentials: Stubs::Credentials.default(visited),
          subject_from_web_identity_token: 'subject_from_web_identity_token',
          assumed_role_user: Stubs::AssumedRoleUser.default(visited),
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
        xml << Stubs::Credentials.stub('Credentials', stub[:credentials]) unless stub[:credentials].nil?
        xml << Hearth::XML::Node.new('SubjectFromWebIdentityToken', stub[:subject_from_web_identity_token].to_s) unless stub[:subject_from_web_identity_token].nil?
        xml << Stubs::AssumedRoleUser.stub('AssumedRoleUser', stub[:assumed_role_user]) unless stub[:assumed_role_user].nil?
        xml << Hearth::XML::Node.new('PackedPolicySize', stub[:packed_policy_size].to_s) unless stub[:packed_policy_size].nil?
        xml << Hearth::XML::Node.new('Provider', stub[:provider].to_s) unless stub[:provider].nil?
        xml << Hearth::XML::Node.new('Audience', stub[:audience].to_s) unless stub[:audience].nil?
        xml << Hearth::XML::Node.new('SourceIdentity', stub[:source_identity].to_s) unless stub[:source_identity].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
      end
    end

    # Operation Stubber for DecodeAuthorizationMessage
    class DecodeAuthorizationMessage
      def self.default(visited=[])
        {
          decoded_message: 'decoded_message',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DecodeAuthorizationMessageResponse')
        response.attributes['xmlns'] = 'https://sts.amazonaws.com/doc/2011-06-15/'
        xml = Hearth::XML::Node.new('DecodeAuthorizationMessageResult')
        xml << Hearth::XML::Node.new('DecodedMessage', stub[:decoded_message].to_s) unless stub[:decoded_message].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
      end
    end

    # Operation Stubber for GetAccessKeyInfo
    class GetAccessKeyInfo
      def self.default(visited=[])
        {
          account: 'account',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetAccessKeyInfoResponse')
        response.attributes['xmlns'] = 'https://sts.amazonaws.com/doc/2011-06-15/'
        xml = Hearth::XML::Node.new('GetAccessKeyInfoResult')
        xml << Hearth::XML::Node.new('Account', stub[:account].to_s) unless stub[:account].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
      end
    end

    # Operation Stubber for GetCallerIdentity
    class GetCallerIdentity
      def self.default(visited=[])
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
        xml << Hearth::XML::Node.new('UserId', stub[:user_id].to_s) unless stub[:user_id].nil?
        xml << Hearth::XML::Node.new('Account', stub[:account].to_s) unless stub[:account].nil?
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
      end
    end

    # Operation Stubber for GetFederationToken
    class GetFederationToken
      def self.default(visited=[])
        {
          credentials: Stubs::Credentials.default(visited),
          federated_user: Stubs::FederatedUser.default(visited),
          packed_policy_size: 1,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetFederationTokenResponse')
        response.attributes['xmlns'] = 'https://sts.amazonaws.com/doc/2011-06-15/'
        xml = Hearth::XML::Node.new('GetFederationTokenResult')
        xml << Stubs::Credentials.stub('Credentials', stub[:credentials]) unless stub[:credentials].nil?
        xml << Stubs::FederatedUser.stub('FederatedUser', stub[:federated_user]) unless stub[:federated_user].nil?
        xml << Hearth::XML::Node.new('PackedPolicySize', stub[:packed_policy_size].to_s) unless stub[:packed_policy_size].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
      end
    end

    # Structure Stubber for FederatedUser
    class FederatedUser
      def self.default(visited=[])
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
        xml << Hearth::XML::Node.new('FederatedUserId', stub[:federated_user_id].to_s) unless stub[:federated_user_id].nil?
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml
      end
    end

    # Operation Stubber for GetSessionToken
    class GetSessionToken
      def self.default(visited=[])
        {
          credentials: Stubs::Credentials.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetSessionTokenResponse')
        response.attributes['xmlns'] = 'https://sts.amazonaws.com/doc/2011-06-15/'
        xml = Hearth::XML::Node.new('GetSessionTokenResult')
        xml << Stubs::Credentials.stub('Credentials', stub[:credentials]) unless stub[:credentials].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
      end
    end
  end
end
