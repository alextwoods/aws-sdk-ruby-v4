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

    end

    # Operation Stubber for DecodeAuthorizationMessage
    class DecodeAuthorizationMessage
      def self.default(visited=[])
        {
          decoded_message: 'decoded_message',
        }
      end

    end

    # Operation Stubber for GetAccessKeyInfo
    class GetAccessKeyInfo
      def self.default(visited=[])
        {
          account: 'account',
        }
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

    end

    # Operation Stubber for GetSessionToken
    class GetSessionToken
      def self.default(visited=[])
        {
          credentials: Stubs::Credentials.default(visited),
        }
      end

    end
  end
end
