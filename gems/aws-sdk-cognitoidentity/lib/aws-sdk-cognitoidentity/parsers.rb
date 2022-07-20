# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CognitoIdentity
  module Parsers

    # Operation Parser for CreateIdentityPool
    class CreateIdentityPool
      def self.parse(http_resp)
        data = Types::CreateIdentityPoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identity_pool_id = map['IdentityPoolId']
        data.identity_pool_name = map['IdentityPoolName']
        data.allow_unauthenticated_identities = map['AllowUnauthenticatedIdentities']
        data.allow_classic_flow = map['AllowClassicFlow']
        data.supported_login_providers = (IdentityProviders.parse(map['SupportedLoginProviders']) unless map['SupportedLoginProviders'].nil?)
        data.developer_provider_name = map['DeveloperProviderName']
        data.open_id_connect_provider_ar_ns = (OIDCProviderList.parse(map['OpenIdConnectProviderARNs']) unless map['OpenIdConnectProviderARNs'].nil?)
        data.cognito_identity_providers = (CognitoIdentityProviderList.parse(map['CognitoIdentityProviders']) unless map['CognitoIdentityProviders'].nil?)
        data.saml_provider_ar_ns = (SAMLProviderList.parse(map['SamlProviderARNs']) unless map['SamlProviderARNs'].nil?)
        data.identity_pool_tags = (IdentityPoolTagsType.parse(map['IdentityPoolTags']) unless map['IdentityPoolTags'].nil?)
        data
      end
    end

    class IdentityPoolTagsType
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class SAMLProviderList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CognitoIdentityProviderList
      def self.parse(list)
        list.map do |value|
          CognitoIdentityProvider.parse(value) unless value.nil?
        end
      end
    end

    class CognitoIdentityProvider
      def self.parse(map)
        data = Types::CognitoIdentityProvider.new
        data.provider_name = map['ProviderName']
        data.client_id = map['ClientId']
        data.server_side_token_check = map['ServerSideTokenCheck']
        return data
      end
    end

    class OIDCProviderList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class IdentityProviders
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceConflictException
    class ResourceConflictException
      def self.parse(http_resp)
        data = Types::ResourceConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InternalErrorException
    class InternalErrorException
      def self.parse(http_resp)
        data = Types::InternalErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for NotAuthorizedException
    class NotAuthorizedException
      def self.parse(http_resp)
        data = Types::NotAuthorizedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteIdentities
    class DeleteIdentities
      def self.parse(http_resp)
        data = Types::DeleteIdentitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.unprocessed_identity_ids = (UnprocessedIdentityIdList.parse(map['UnprocessedIdentityIds']) unless map['UnprocessedIdentityIds'].nil?)
        data
      end
    end

    class UnprocessedIdentityIdList
      def self.parse(list)
        list.map do |value|
          UnprocessedIdentityId.parse(value) unless value.nil?
        end
      end
    end

    class UnprocessedIdentityId
      def self.parse(map)
        data = Types::UnprocessedIdentityId.new
        data.identity_id = map['IdentityId']
        data.error_code = map['ErrorCode']
        return data
      end
    end

    # Operation Parser for DeleteIdentityPool
    class DeleteIdentityPool
      def self.parse(http_resp)
        data = Types::DeleteIdentityPoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeIdentity
    class DescribeIdentity
      def self.parse(http_resp)
        data = Types::DescribeIdentityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identity_id = map['IdentityId']
        data.logins = (LoginsList.parse(map['Logins']) unless map['Logins'].nil?)
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data
      end
    end

    class LoginsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeIdentityPool
    class DescribeIdentityPool
      def self.parse(http_resp)
        data = Types::DescribeIdentityPoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identity_pool_id = map['IdentityPoolId']
        data.identity_pool_name = map['IdentityPoolName']
        data.allow_unauthenticated_identities = map['AllowUnauthenticatedIdentities']
        data.allow_classic_flow = map['AllowClassicFlow']
        data.supported_login_providers = (IdentityProviders.parse(map['SupportedLoginProviders']) unless map['SupportedLoginProviders'].nil?)
        data.developer_provider_name = map['DeveloperProviderName']
        data.open_id_connect_provider_ar_ns = (OIDCProviderList.parse(map['OpenIdConnectProviderARNs']) unless map['OpenIdConnectProviderARNs'].nil?)
        data.cognito_identity_providers = (CognitoIdentityProviderList.parse(map['CognitoIdentityProviders']) unless map['CognitoIdentityProviders'].nil?)
        data.saml_provider_ar_ns = (SAMLProviderList.parse(map['SamlProviderARNs']) unless map['SamlProviderARNs'].nil?)
        data.identity_pool_tags = (IdentityPoolTagsType.parse(map['IdentityPoolTags']) unless map['IdentityPoolTags'].nil?)
        data
      end
    end

    # Operation Parser for GetCredentialsForIdentity
    class GetCredentialsForIdentity
      def self.parse(http_resp)
        data = Types::GetCredentialsForIdentityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identity_id = map['IdentityId']
        data.credentials = (Credentials.parse(map['Credentials']) unless map['Credentials'].nil?)
        data
      end
    end

    class Credentials
      def self.parse(map)
        data = Types::Credentials.new
        data.access_key_id = map['AccessKeyId']
        data.secret_key = map['SecretKey']
        data.session_token = map['SessionToken']
        data.expiration = Time.at(map['Expiration'].to_i) if map['Expiration']
        return data
      end
    end

    # Error Parser for ExternalServiceException
    class ExternalServiceException
      def self.parse(http_resp)
        data = Types::ExternalServiceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidIdentityPoolConfigurationException
    class InvalidIdentityPoolConfigurationException
      def self.parse(http_resp)
        data = Types::InvalidIdentityPoolConfigurationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetId
    class GetId
      def self.parse(http_resp)
        data = Types::GetIdOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identity_id = map['IdentityId']
        data
      end
    end

    # Operation Parser for GetIdentityPoolRoles
    class GetIdentityPoolRoles
      def self.parse(http_resp)
        data = Types::GetIdentityPoolRolesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identity_pool_id = map['IdentityPoolId']
        data.roles = (RolesMap.parse(map['Roles']) unless map['Roles'].nil?)
        data.role_mappings = (RoleMappingMap.parse(map['RoleMappings']) unless map['RoleMappings'].nil?)
        data
      end
    end

    class RoleMappingMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = RoleMapping.parse(value) unless value.nil?
        end
        data
      end
    end

    class RoleMapping
      def self.parse(map)
        data = Types::RoleMapping.new
        data.type = map['Type']
        data.ambiguous_role_resolution = map['AmbiguousRoleResolution']
        data.rules_configuration = (RulesConfigurationType.parse(map['RulesConfiguration']) unless map['RulesConfiguration'].nil?)
        return data
      end
    end

    class RulesConfigurationType
      def self.parse(map)
        data = Types::RulesConfigurationType.new
        data.rules = (MappingRulesList.parse(map['Rules']) unless map['Rules'].nil?)
        return data
      end
    end

    class MappingRulesList
      def self.parse(list)
        list.map do |value|
          MappingRule.parse(value) unless value.nil?
        end
      end
    end

    class MappingRule
      def self.parse(map)
        data = Types::MappingRule.new
        data.claim = map['Claim']
        data.match_type = map['MatchType']
        data.value = map['Value']
        data.role_arn = map['RoleARN']
        return data
      end
    end

    class RolesMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetOpenIdToken
    class GetOpenIdToken
      def self.parse(http_resp)
        data = Types::GetOpenIdTokenOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identity_id = map['IdentityId']
        data.token = map['Token']
        data
      end
    end

    # Operation Parser for GetOpenIdTokenForDeveloperIdentity
    class GetOpenIdTokenForDeveloperIdentity
      def self.parse(http_resp)
        data = Types::GetOpenIdTokenForDeveloperIdentityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identity_id = map['IdentityId']
        data.token = map['Token']
        data
      end
    end

    # Error Parser for DeveloperUserAlreadyRegisteredException
    class DeveloperUserAlreadyRegisteredException
      def self.parse(http_resp)
        data = Types::DeveloperUserAlreadyRegisteredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetPrincipalTagAttributeMap
    class GetPrincipalTagAttributeMap
      def self.parse(http_resp)
        data = Types::GetPrincipalTagAttributeMapOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identity_pool_id = map['IdentityPoolId']
        data.identity_provider_name = map['IdentityProviderName']
        data.use_defaults = map['UseDefaults']
        data.principal_tags = (PrincipalTags.parse(map['PrincipalTags']) unless map['PrincipalTags'].nil?)
        data
      end
    end

    class PrincipalTags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListIdentities
    class ListIdentities
      def self.parse(http_resp)
        data = Types::ListIdentitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identity_pool_id = map['IdentityPoolId']
        data.identities = (IdentitiesList.parse(map['Identities']) unless map['Identities'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class IdentitiesList
      def self.parse(list)
        list.map do |value|
          IdentityDescription.parse(value) unless value.nil?
        end
      end
    end

    class IdentityDescription
      def self.parse(map)
        data = Types::IdentityDescription.new
        data.identity_id = map['IdentityId']
        data.logins = (LoginsList.parse(map['Logins']) unless map['Logins'].nil?)
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        return data
      end
    end

    # Operation Parser for ListIdentityPools
    class ListIdentityPools
      def self.parse(http_resp)
        data = Types::ListIdentityPoolsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identity_pools = (IdentityPoolsList.parse(map['IdentityPools']) unless map['IdentityPools'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class IdentityPoolsList
      def self.parse(list)
        list.map do |value|
          IdentityPoolShortDescription.parse(value) unless value.nil?
        end
      end
    end

    class IdentityPoolShortDescription
      def self.parse(map)
        data = Types::IdentityPoolShortDescription.new
        data.identity_pool_id = map['IdentityPoolId']
        data.identity_pool_name = map['IdentityPoolName']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (IdentityPoolTagsType.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for LookupDeveloperIdentity
    class LookupDeveloperIdentity
      def self.parse(http_resp)
        data = Types::LookupDeveloperIdentityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identity_id = map['IdentityId']
        data.developer_user_identifier_list = (DeveloperUserIdentifierList.parse(map['DeveloperUserIdentifierList']) unless map['DeveloperUserIdentifierList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DeveloperUserIdentifierList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for MergeDeveloperIdentities
    class MergeDeveloperIdentities
      def self.parse(http_resp)
        data = Types::MergeDeveloperIdentitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identity_id = map['IdentityId']
        data
      end
    end

    # Operation Parser for SetIdentityPoolRoles
    class SetIdentityPoolRoles
      def self.parse(http_resp)
        data = Types::SetIdentityPoolRolesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for SetPrincipalTagAttributeMap
    class SetPrincipalTagAttributeMap
      def self.parse(http_resp)
        data = Types::SetPrincipalTagAttributeMapOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identity_pool_id = map['IdentityPoolId']
        data.identity_provider_name = map['IdentityProviderName']
        data.use_defaults = map['UseDefaults']
        data.principal_tags = (PrincipalTags.parse(map['PrincipalTags']) unless map['PrincipalTags'].nil?)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UnlinkDeveloperIdentity
    class UnlinkDeveloperIdentity
      def self.parse(http_resp)
        data = Types::UnlinkDeveloperIdentityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UnlinkIdentity
    class UnlinkIdentity
      def self.parse(http_resp)
        data = Types::UnlinkIdentityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateIdentityPool
    class UpdateIdentityPool
      def self.parse(http_resp)
        data = Types::UpdateIdentityPoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identity_pool_id = map['IdentityPoolId']
        data.identity_pool_name = map['IdentityPoolName']
        data.allow_unauthenticated_identities = map['AllowUnauthenticatedIdentities']
        data.allow_classic_flow = map['AllowClassicFlow']
        data.supported_login_providers = (IdentityProviders.parse(map['SupportedLoginProviders']) unless map['SupportedLoginProviders'].nil?)
        data.developer_provider_name = map['DeveloperProviderName']
        data.open_id_connect_provider_ar_ns = (OIDCProviderList.parse(map['OpenIdConnectProviderARNs']) unless map['OpenIdConnectProviderARNs'].nil?)
        data.cognito_identity_providers = (CognitoIdentityProviderList.parse(map['CognitoIdentityProviders']) unless map['CognitoIdentityProviders'].nil?)
        data.saml_provider_ar_ns = (SAMLProviderList.parse(map['SamlProviderARNs']) unless map['SamlProviderARNs'].nil?)
        data.identity_pool_tags = (IdentityPoolTagsType.parse(map['IdentityPoolTags']) unless map['IdentityPoolTags'].nil?)
        data
      end
    end
  end
end
