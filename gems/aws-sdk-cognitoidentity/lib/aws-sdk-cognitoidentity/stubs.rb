# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::CognitoIdentity
  module Stubs

    # Operation Stubber for CreateIdentityPool
    class CreateIdentityPool
      def self.default(visited=[])
        {
          identity_pool_id: 'identity_pool_id',
          identity_pool_name: 'identity_pool_name',
          allow_unauthenticated_identities: false,
          allow_classic_flow: false,
          supported_login_providers: IdentityProviders.default(visited),
          developer_provider_name: 'developer_provider_name',
          open_id_connect_provider_ar_ns: OIDCProviderList.default(visited),
          cognito_identity_providers: CognitoIdentityProviderList.default(visited),
          saml_provider_ar_ns: SAMLProviderList.default(visited),
          identity_pool_tags: IdentityPoolTagsType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IdentityPoolId'] = stub[:identity_pool_id] unless stub[:identity_pool_id].nil?
        data['IdentityPoolName'] = stub[:identity_pool_name] unless stub[:identity_pool_name].nil?
        data['AllowUnauthenticatedIdentities'] = stub[:allow_unauthenticated_identities] unless stub[:allow_unauthenticated_identities].nil?
        data['AllowClassicFlow'] = stub[:allow_classic_flow] unless stub[:allow_classic_flow].nil?
        data['SupportedLoginProviders'] = IdentityProviders.stub(stub[:supported_login_providers]) unless stub[:supported_login_providers].nil?
        data['DeveloperProviderName'] = stub[:developer_provider_name] unless stub[:developer_provider_name].nil?
        data['OpenIdConnectProviderARNs'] = OIDCProviderList.stub(stub[:open_id_connect_provider_ar_ns]) unless stub[:open_id_connect_provider_ar_ns].nil?
        data['CognitoIdentityProviders'] = CognitoIdentityProviderList.stub(stub[:cognito_identity_providers]) unless stub[:cognito_identity_providers].nil?
        data['SamlProviderARNs'] = SAMLProviderList.stub(stub[:saml_provider_ar_ns]) unless stub[:saml_provider_ar_ns].nil?
        data['IdentityPoolTags'] = IdentityPoolTagsType.stub(stub[:identity_pool_tags]) unless stub[:identity_pool_tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for IdentityPoolTagsType
    class IdentityPoolTagsType
      def self.default(visited=[])
        return nil if visited.include?('IdentityPoolTagsType')
        visited = visited + ['IdentityPoolTagsType']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for SAMLProviderList
    class SAMLProviderList
      def self.default(visited=[])
        return nil if visited.include?('SAMLProviderList')
        visited = visited + ['SAMLProviderList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for CognitoIdentityProviderList
    class CognitoIdentityProviderList
      def self.default(visited=[])
        return nil if visited.include?('CognitoIdentityProviderList')
        visited = visited + ['CognitoIdentityProviderList']
        [
          CognitoIdentityProvider.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CognitoIdentityProvider.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CognitoIdentityProvider
    class CognitoIdentityProvider
      def self.default(visited=[])
        return nil if visited.include?('CognitoIdentityProvider')
        visited = visited + ['CognitoIdentityProvider']
        {
          provider_name: 'provider_name',
          client_id: 'client_id',
          server_side_token_check: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::CognitoIdentityProvider.new
        data = {}
        data['ProviderName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data['ClientId'] = stub[:client_id] unless stub[:client_id].nil?
        data['ServerSideTokenCheck'] = stub[:server_side_token_check] unless stub[:server_side_token_check].nil?
        data
      end
    end

    # List Stubber for OIDCProviderList
    class OIDCProviderList
      def self.default(visited=[])
        return nil if visited.include?('OIDCProviderList')
        visited = visited + ['OIDCProviderList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Stubber for IdentityProviders
    class IdentityProviders
      def self.default(visited=[])
        return nil if visited.include?('IdentityProviders')
        visited = visited + ['IdentityProviders']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DeleteIdentities
    class DeleteIdentities
      def self.default(visited=[])
        {
          unprocessed_identity_ids: UnprocessedIdentityIdList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UnprocessedIdentityIds'] = UnprocessedIdentityIdList.stub(stub[:unprocessed_identity_ids]) unless stub[:unprocessed_identity_ids].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UnprocessedIdentityIdList
    class UnprocessedIdentityIdList
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedIdentityIdList')
        visited = visited + ['UnprocessedIdentityIdList']
        [
          UnprocessedIdentityId.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UnprocessedIdentityId.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UnprocessedIdentityId
    class UnprocessedIdentityId
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedIdentityId')
        visited = visited + ['UnprocessedIdentityId']
        {
          identity_id: 'identity_id',
          error_code: 'error_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::UnprocessedIdentityId.new
        data = {}
        data['IdentityId'] = stub[:identity_id] unless stub[:identity_id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data
      end
    end

    # Operation Stubber for DeleteIdentityPool
    class DeleteIdentityPool
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeIdentity
    class DescribeIdentity
      def self.default(visited=[])
        {
          identity_id: 'identity_id',
          logins: LoginsList.default(visited),
          creation_date: Time.now,
          last_modified_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IdentityId'] = stub[:identity_id] unless stub[:identity_id].nil?
        data['Logins'] = LoginsList.stub(stub[:logins]) unless stub[:logins].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LoginsList
    class LoginsList
      def self.default(visited=[])
        return nil if visited.include?('LoginsList')
        visited = visited + ['LoginsList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeIdentityPool
    class DescribeIdentityPool
      def self.default(visited=[])
        {
          identity_pool_id: 'identity_pool_id',
          identity_pool_name: 'identity_pool_name',
          allow_unauthenticated_identities: false,
          allow_classic_flow: false,
          supported_login_providers: IdentityProviders.default(visited),
          developer_provider_name: 'developer_provider_name',
          open_id_connect_provider_ar_ns: OIDCProviderList.default(visited),
          cognito_identity_providers: CognitoIdentityProviderList.default(visited),
          saml_provider_ar_ns: SAMLProviderList.default(visited),
          identity_pool_tags: IdentityPoolTagsType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IdentityPoolId'] = stub[:identity_pool_id] unless stub[:identity_pool_id].nil?
        data['IdentityPoolName'] = stub[:identity_pool_name] unless stub[:identity_pool_name].nil?
        data['AllowUnauthenticatedIdentities'] = stub[:allow_unauthenticated_identities] unless stub[:allow_unauthenticated_identities].nil?
        data['AllowClassicFlow'] = stub[:allow_classic_flow] unless stub[:allow_classic_flow].nil?
        data['SupportedLoginProviders'] = IdentityProviders.stub(stub[:supported_login_providers]) unless stub[:supported_login_providers].nil?
        data['DeveloperProviderName'] = stub[:developer_provider_name] unless stub[:developer_provider_name].nil?
        data['OpenIdConnectProviderARNs'] = OIDCProviderList.stub(stub[:open_id_connect_provider_ar_ns]) unless stub[:open_id_connect_provider_ar_ns].nil?
        data['CognitoIdentityProviders'] = CognitoIdentityProviderList.stub(stub[:cognito_identity_providers]) unless stub[:cognito_identity_providers].nil?
        data['SamlProviderARNs'] = SAMLProviderList.stub(stub[:saml_provider_ar_ns]) unless stub[:saml_provider_ar_ns].nil?
        data['IdentityPoolTags'] = IdentityPoolTagsType.stub(stub[:identity_pool_tags]) unless stub[:identity_pool_tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetCredentialsForIdentity
    class GetCredentialsForIdentity
      def self.default(visited=[])
        {
          identity_id: 'identity_id',
          credentials: Credentials.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IdentityId'] = stub[:identity_id] unless stub[:identity_id].nil?
        data['Credentials'] = Credentials.stub(stub[:credentials]) unless stub[:credentials].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Credentials
    class Credentials
      def self.default(visited=[])
        return nil if visited.include?('Credentials')
        visited = visited + ['Credentials']
        {
          access_key_id: 'access_key_id',
          secret_key: 'secret_key',
          session_token: 'session_token',
          expiration: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Credentials.new
        data = {}
        data['AccessKeyId'] = stub[:access_key_id] unless stub[:access_key_id].nil?
        data['SecretKey'] = stub[:secret_key] unless stub[:secret_key].nil?
        data['SessionToken'] = stub[:session_token] unless stub[:session_token].nil?
        data['Expiration'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration]).to_i unless stub[:expiration].nil?
        data
      end
    end

    # Operation Stubber for GetId
    class GetId
      def self.default(visited=[])
        {
          identity_id: 'identity_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IdentityId'] = stub[:identity_id] unless stub[:identity_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetIdentityPoolRoles
    class GetIdentityPoolRoles
      def self.default(visited=[])
        {
          identity_pool_id: 'identity_pool_id',
          roles: RolesMap.default(visited),
          role_mappings: RoleMappingMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IdentityPoolId'] = stub[:identity_pool_id] unless stub[:identity_pool_id].nil?
        data['Roles'] = RolesMap.stub(stub[:roles]) unless stub[:roles].nil?
        data['RoleMappings'] = RoleMappingMap.stub(stub[:role_mappings]) unless stub[:role_mappings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for RoleMappingMap
    class RoleMappingMap
      def self.default(visited=[])
        return nil if visited.include?('RoleMappingMap')
        visited = visited + ['RoleMappingMap']
        {
          test_key: RoleMapping.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = RoleMapping.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for RoleMapping
    class RoleMapping
      def self.default(visited=[])
        return nil if visited.include?('RoleMapping')
        visited = visited + ['RoleMapping']
        {
          type: 'type',
          ambiguous_role_resolution: 'ambiguous_role_resolution',
          rules_configuration: RulesConfigurationType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RoleMapping.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['AmbiguousRoleResolution'] = stub[:ambiguous_role_resolution] unless stub[:ambiguous_role_resolution].nil?
        data['RulesConfiguration'] = RulesConfigurationType.stub(stub[:rules_configuration]) unless stub[:rules_configuration].nil?
        data
      end
    end

    # Structure Stubber for RulesConfigurationType
    class RulesConfigurationType
      def self.default(visited=[])
        return nil if visited.include?('RulesConfigurationType')
        visited = visited + ['RulesConfigurationType']
        {
          rules: MappingRulesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RulesConfigurationType.new
        data = {}
        data['Rules'] = MappingRulesList.stub(stub[:rules]) unless stub[:rules].nil?
        data
      end
    end

    # List Stubber for MappingRulesList
    class MappingRulesList
      def self.default(visited=[])
        return nil if visited.include?('MappingRulesList')
        visited = visited + ['MappingRulesList']
        [
          MappingRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MappingRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MappingRule
    class MappingRule
      def self.default(visited=[])
        return nil if visited.include?('MappingRule')
        visited = visited + ['MappingRule']
        {
          claim: 'claim',
          match_type: 'match_type',
          value: 'value',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::MappingRule.new
        data = {}
        data['Claim'] = stub[:claim] unless stub[:claim].nil?
        data['MatchType'] = stub[:match_type] unless stub[:match_type].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Map Stubber for RolesMap
    class RolesMap
      def self.default(visited=[])
        return nil if visited.include?('RolesMap')
        visited = visited + ['RolesMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for GetOpenIdToken
    class GetOpenIdToken
      def self.default(visited=[])
        {
          identity_id: 'identity_id',
          token: 'token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IdentityId'] = stub[:identity_id] unless stub[:identity_id].nil?
        data['Token'] = stub[:token] unless stub[:token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetOpenIdTokenForDeveloperIdentity
    class GetOpenIdTokenForDeveloperIdentity
      def self.default(visited=[])
        {
          identity_id: 'identity_id',
          token: 'token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IdentityId'] = stub[:identity_id] unless stub[:identity_id].nil?
        data['Token'] = stub[:token] unless stub[:token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetPrincipalTagAttributeMap
    class GetPrincipalTagAttributeMap
      def self.default(visited=[])
        {
          identity_pool_id: 'identity_pool_id',
          identity_provider_name: 'identity_provider_name',
          use_defaults: false,
          principal_tags: PrincipalTags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IdentityPoolId'] = stub[:identity_pool_id] unless stub[:identity_pool_id].nil?
        data['IdentityProviderName'] = stub[:identity_provider_name] unless stub[:identity_provider_name].nil?
        data['UseDefaults'] = stub[:use_defaults] unless stub[:use_defaults].nil?
        data['PrincipalTags'] = PrincipalTags.stub(stub[:principal_tags]) unless stub[:principal_tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for PrincipalTags
    class PrincipalTags
      def self.default(visited=[])
        return nil if visited.include?('PrincipalTags')
        visited = visited + ['PrincipalTags']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for ListIdentities
    class ListIdentities
      def self.default(visited=[])
        {
          identity_pool_id: 'identity_pool_id',
          identities: IdentitiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IdentityPoolId'] = stub[:identity_pool_id] unless stub[:identity_pool_id].nil?
        data['Identities'] = IdentitiesList.stub(stub[:identities]) unless stub[:identities].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for IdentitiesList
    class IdentitiesList
      def self.default(visited=[])
        return nil if visited.include?('IdentitiesList')
        visited = visited + ['IdentitiesList']
        [
          IdentityDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << IdentityDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IdentityDescription
    class IdentityDescription
      def self.default(visited=[])
        return nil if visited.include?('IdentityDescription')
        visited = visited + ['IdentityDescription']
        {
          identity_id: 'identity_id',
          logins: LoginsList.default(visited),
          creation_date: Time.now,
          last_modified_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::IdentityDescription.new
        data = {}
        data['IdentityId'] = stub[:identity_id] unless stub[:identity_id].nil?
        data['Logins'] = LoginsList.stub(stub[:logins]) unless stub[:logins].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data
      end
    end

    # Operation Stubber for ListIdentityPools
    class ListIdentityPools
      def self.default(visited=[])
        {
          identity_pools: IdentityPoolsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IdentityPools'] = IdentityPoolsList.stub(stub[:identity_pools]) unless stub[:identity_pools].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for IdentityPoolsList
    class IdentityPoolsList
      def self.default(visited=[])
        return nil if visited.include?('IdentityPoolsList')
        visited = visited + ['IdentityPoolsList']
        [
          IdentityPoolShortDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << IdentityPoolShortDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IdentityPoolShortDescription
    class IdentityPoolShortDescription
      def self.default(visited=[])
        return nil if visited.include?('IdentityPoolShortDescription')
        visited = visited + ['IdentityPoolShortDescription']
        {
          identity_pool_id: 'identity_pool_id',
          identity_pool_name: 'identity_pool_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::IdentityPoolShortDescription.new
        data = {}
        data['IdentityPoolId'] = stub[:identity_pool_id] unless stub[:identity_pool_id].nil?
        data['IdentityPoolName'] = stub[:identity_pool_name] unless stub[:identity_pool_name].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: IdentityPoolTagsType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = IdentityPoolTagsType.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for LookupDeveloperIdentity
    class LookupDeveloperIdentity
      def self.default(visited=[])
        {
          identity_id: 'identity_id',
          developer_user_identifier_list: DeveloperUserIdentifierList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IdentityId'] = stub[:identity_id] unless stub[:identity_id].nil?
        data['DeveloperUserIdentifierList'] = DeveloperUserIdentifierList.stub(stub[:developer_user_identifier_list]) unless stub[:developer_user_identifier_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DeveloperUserIdentifierList
    class DeveloperUserIdentifierList
      def self.default(visited=[])
        return nil if visited.include?('DeveloperUserIdentifierList')
        visited = visited + ['DeveloperUserIdentifierList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for MergeDeveloperIdentities
    class MergeDeveloperIdentities
      def self.default(visited=[])
        {
          identity_id: 'identity_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IdentityId'] = stub[:identity_id] unless stub[:identity_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetIdentityPoolRoles
    class SetIdentityPoolRoles
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetPrincipalTagAttributeMap
    class SetPrincipalTagAttributeMap
      def self.default(visited=[])
        {
          identity_pool_id: 'identity_pool_id',
          identity_provider_name: 'identity_provider_name',
          use_defaults: false,
          principal_tags: PrincipalTags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IdentityPoolId'] = stub[:identity_pool_id] unless stub[:identity_pool_id].nil?
        data['IdentityProviderName'] = stub[:identity_provider_name] unless stub[:identity_provider_name].nil?
        data['UseDefaults'] = stub[:use_defaults] unless stub[:use_defaults].nil?
        data['PrincipalTags'] = PrincipalTags.stub(stub[:principal_tags]) unless stub[:principal_tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UnlinkDeveloperIdentity
    class UnlinkDeveloperIdentity
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UnlinkIdentity
    class UnlinkIdentity
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateIdentityPool
    class UpdateIdentityPool
      def self.default(visited=[])
        {
          identity_pool_id: 'identity_pool_id',
          identity_pool_name: 'identity_pool_name',
          allow_unauthenticated_identities: false,
          allow_classic_flow: false,
          supported_login_providers: IdentityProviders.default(visited),
          developer_provider_name: 'developer_provider_name',
          open_id_connect_provider_ar_ns: OIDCProviderList.default(visited),
          cognito_identity_providers: CognitoIdentityProviderList.default(visited),
          saml_provider_ar_ns: SAMLProviderList.default(visited),
          identity_pool_tags: IdentityPoolTagsType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IdentityPoolId'] = stub[:identity_pool_id] unless stub[:identity_pool_id].nil?
        data['IdentityPoolName'] = stub[:identity_pool_name] unless stub[:identity_pool_name].nil?
        data['AllowUnauthenticatedIdentities'] = stub[:allow_unauthenticated_identities] unless stub[:allow_unauthenticated_identities].nil?
        data['AllowClassicFlow'] = stub[:allow_classic_flow] unless stub[:allow_classic_flow].nil?
        data['SupportedLoginProviders'] = IdentityProviders.stub(stub[:supported_login_providers]) unless stub[:supported_login_providers].nil?
        data['DeveloperProviderName'] = stub[:developer_provider_name] unless stub[:developer_provider_name].nil?
        data['OpenIdConnectProviderARNs'] = OIDCProviderList.stub(stub[:open_id_connect_provider_ar_ns]) unless stub[:open_id_connect_provider_ar_ns].nil?
        data['CognitoIdentityProviders'] = CognitoIdentityProviderList.stub(stub[:cognito_identity_providers]) unless stub[:cognito_identity_providers].nil?
        data['SamlProviderARNs'] = SAMLProviderList.stub(stub[:saml_provider_ar_ns]) unless stub[:saml_provider_ar_ns].nil?
        data['IdentityPoolTags'] = IdentityPoolTagsType.stub(stub[:identity_pool_tags]) unless stub[:identity_pool_tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
