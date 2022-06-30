# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::CognitoIdentity
  module Builders

    # Operation Builder for CreateIdentityPool
    class CreateIdentityPool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.CreateIdentityPool'
        data = {}
        data['IdentityPoolName'] = input[:identity_pool_name] unless input[:identity_pool_name].nil?
        data['AllowUnauthenticatedIdentities'] = input[:allow_unauthenticated_identities] unless input[:allow_unauthenticated_identities].nil?
        data['AllowClassicFlow'] = input[:allow_classic_flow] unless input[:allow_classic_flow].nil?
        data['SupportedLoginProviders'] = Builders::IdentityProviders.build(input[:supported_login_providers]) unless input[:supported_login_providers].nil?
        data['DeveloperProviderName'] = input[:developer_provider_name] unless input[:developer_provider_name].nil?
        data['OpenIdConnectProviderARNs'] = Builders::OIDCProviderList.build(input[:open_id_connect_provider_ar_ns]) unless input[:open_id_connect_provider_ar_ns].nil?
        data['CognitoIdentityProviders'] = Builders::CognitoIdentityProviderList.build(input[:cognito_identity_providers]) unless input[:cognito_identity_providers].nil?
        data['SamlProviderARNs'] = Builders::SAMLProviderList.build(input[:saml_provider_ar_ns]) unless input[:saml_provider_ar_ns].nil?
        data['IdentityPoolTags'] = Builders::IdentityPoolTagsType.build(input[:identity_pool_tags]) unless input[:identity_pool_tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for IdentityPoolTagsType
    class IdentityPoolTagsType
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for SAMLProviderList
    class SAMLProviderList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CognitoIdentityProviderList
    class CognitoIdentityProviderList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CognitoIdentityProvider.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CognitoIdentityProvider
    class CognitoIdentityProvider
      def self.build(input)
        data = {}
        data['ProviderName'] = input[:provider_name] unless input[:provider_name].nil?
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        data['ServerSideTokenCheck'] = input[:server_side_token_check] unless input[:server_side_token_check].nil?
        data
      end
    end

    # List Builder for OIDCProviderList
    class OIDCProviderList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for IdentityProviders
    class IdentityProviders
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteIdentities
    class DeleteIdentities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.DeleteIdentities'
        data = {}
        data['IdentityIdsToDelete'] = Builders::IdentityIdList.build(input[:identity_ids_to_delete]) unless input[:identity_ids_to_delete].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for IdentityIdList
    class IdentityIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteIdentityPool
    class DeleteIdentityPool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.DeleteIdentityPool'
        data = {}
        data['IdentityPoolId'] = input[:identity_pool_id] unless input[:identity_pool_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeIdentity
    class DescribeIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.DescribeIdentity'
        data = {}
        data['IdentityId'] = input[:identity_id] unless input[:identity_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeIdentityPool
    class DescribeIdentityPool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.DescribeIdentityPool'
        data = {}
        data['IdentityPoolId'] = input[:identity_pool_id] unless input[:identity_pool_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCredentialsForIdentity
    class GetCredentialsForIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.GetCredentialsForIdentity'
        data = {}
        data['IdentityId'] = input[:identity_id] unless input[:identity_id].nil?
        data['Logins'] = Builders::LoginsMap.build(input[:logins]) unless input[:logins].nil?
        data['CustomRoleArn'] = input[:custom_role_arn] unless input[:custom_role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for LoginsMap
    class LoginsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for GetId
    class GetId
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.GetId'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['IdentityPoolId'] = input[:identity_pool_id] unless input[:identity_pool_id].nil?
        data['Logins'] = Builders::LoginsMap.build(input[:logins]) unless input[:logins].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetIdentityPoolRoles
    class GetIdentityPoolRoles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.GetIdentityPoolRoles'
        data = {}
        data['IdentityPoolId'] = input[:identity_pool_id] unless input[:identity_pool_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetOpenIdToken
    class GetOpenIdToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.GetOpenIdToken'
        data = {}
        data['IdentityId'] = input[:identity_id] unless input[:identity_id].nil?
        data['Logins'] = Builders::LoginsMap.build(input[:logins]) unless input[:logins].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetOpenIdTokenForDeveloperIdentity
    class GetOpenIdTokenForDeveloperIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.GetOpenIdTokenForDeveloperIdentity'
        data = {}
        data['IdentityPoolId'] = input[:identity_pool_id] unless input[:identity_pool_id].nil?
        data['IdentityId'] = input[:identity_id] unless input[:identity_id].nil?
        data['Logins'] = Builders::LoginsMap.build(input[:logins]) unless input[:logins].nil?
        data['PrincipalTags'] = Builders::PrincipalTags.build(input[:principal_tags]) unless input[:principal_tags].nil?
        data['TokenDuration'] = input[:token_duration] unless input[:token_duration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for PrincipalTags
    class PrincipalTags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for GetPrincipalTagAttributeMap
    class GetPrincipalTagAttributeMap
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.GetPrincipalTagAttributeMap'
        data = {}
        data['IdentityPoolId'] = input[:identity_pool_id] unless input[:identity_pool_id].nil?
        data['IdentityProviderName'] = input[:identity_provider_name] unless input[:identity_provider_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListIdentities
    class ListIdentities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.ListIdentities'
        data = {}
        data['IdentityPoolId'] = input[:identity_pool_id] unless input[:identity_pool_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['HideDisabled'] = input[:hide_disabled] unless input[:hide_disabled].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListIdentityPools
    class ListIdentityPools
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.ListIdentityPools'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for LookupDeveloperIdentity
    class LookupDeveloperIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.LookupDeveloperIdentity'
        data = {}
        data['IdentityPoolId'] = input[:identity_pool_id] unless input[:identity_pool_id].nil?
        data['IdentityId'] = input[:identity_id] unless input[:identity_id].nil?
        data['DeveloperUserIdentifier'] = input[:developer_user_identifier] unless input[:developer_user_identifier].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for MergeDeveloperIdentities
    class MergeDeveloperIdentities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.MergeDeveloperIdentities'
        data = {}
        data['SourceUserIdentifier'] = input[:source_user_identifier] unless input[:source_user_identifier].nil?
        data['DestinationUserIdentifier'] = input[:destination_user_identifier] unless input[:destination_user_identifier].nil?
        data['DeveloperProviderName'] = input[:developer_provider_name] unless input[:developer_provider_name].nil?
        data['IdentityPoolId'] = input[:identity_pool_id] unless input[:identity_pool_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetIdentityPoolRoles
    class SetIdentityPoolRoles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.SetIdentityPoolRoles'
        data = {}
        data['IdentityPoolId'] = input[:identity_pool_id] unless input[:identity_pool_id].nil?
        data['Roles'] = Builders::RolesMap.build(input[:roles]) unless input[:roles].nil?
        data['RoleMappings'] = Builders::RoleMappingMap.build(input[:role_mappings]) unless input[:role_mappings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for RoleMappingMap
    class RoleMappingMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::RoleMapping.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for RoleMapping
    class RoleMapping
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['AmbiguousRoleResolution'] = input[:ambiguous_role_resolution] unless input[:ambiguous_role_resolution].nil?
        data['RulesConfiguration'] = Builders::RulesConfigurationType.build(input[:rules_configuration]) unless input[:rules_configuration].nil?
        data
      end
    end

    # Structure Builder for RulesConfigurationType
    class RulesConfigurationType
      def self.build(input)
        data = {}
        data['Rules'] = Builders::MappingRulesList.build(input[:rules]) unless input[:rules].nil?
        data
      end
    end

    # List Builder for MappingRulesList
    class MappingRulesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MappingRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MappingRule
    class MappingRule
      def self.build(input)
        data = {}
        data['Claim'] = input[:claim] unless input[:claim].nil?
        data['MatchType'] = input[:match_type] unless input[:match_type].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Map Builder for RolesMap
    class RolesMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for SetPrincipalTagAttributeMap
    class SetPrincipalTagAttributeMap
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.SetPrincipalTagAttributeMap'
        data = {}
        data['IdentityPoolId'] = input[:identity_pool_id] unless input[:identity_pool_id].nil?
        data['IdentityProviderName'] = input[:identity_provider_name] unless input[:identity_provider_name].nil?
        data['UseDefaults'] = input[:use_defaults] unless input[:use_defaults].nil?
        data['PrincipalTags'] = Builders::PrincipalTags.build(input[:principal_tags]) unless input[:principal_tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::IdentityPoolTagsType.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UnlinkDeveloperIdentity
    class UnlinkDeveloperIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.UnlinkDeveloperIdentity'
        data = {}
        data['IdentityId'] = input[:identity_id] unless input[:identity_id].nil?
        data['IdentityPoolId'] = input[:identity_pool_id] unless input[:identity_pool_id].nil?
        data['DeveloperProviderName'] = input[:developer_provider_name] unless input[:developer_provider_name].nil?
        data['DeveloperUserIdentifier'] = input[:developer_user_identifier] unless input[:developer_user_identifier].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UnlinkIdentity
    class UnlinkIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.UnlinkIdentity'
        data = {}
        data['IdentityId'] = input[:identity_id] unless input[:identity_id].nil?
        data['Logins'] = Builders::LoginsMap.build(input[:logins]) unless input[:logins].nil?
        data['LoginsToRemove'] = Builders::LoginsList.build(input[:logins_to_remove]) unless input[:logins_to_remove].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for LoginsList
    class LoginsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::IdentityPoolTagsListType.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for IdentityPoolTagsListType
    class IdentityPoolTagsListType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateIdentityPool
    class UpdateIdentityPool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityService.UpdateIdentityPool'
        data = {}
        data['IdentityPoolId'] = input[:identity_pool_id] unless input[:identity_pool_id].nil?
        data['IdentityPoolName'] = input[:identity_pool_name] unless input[:identity_pool_name].nil?
        data['AllowUnauthenticatedIdentities'] = input[:allow_unauthenticated_identities] unless input[:allow_unauthenticated_identities].nil?
        data['AllowClassicFlow'] = input[:allow_classic_flow] unless input[:allow_classic_flow].nil?
        data['SupportedLoginProviders'] = Builders::IdentityProviders.build(input[:supported_login_providers]) unless input[:supported_login_providers].nil?
        data['DeveloperProviderName'] = input[:developer_provider_name] unless input[:developer_provider_name].nil?
        data['OpenIdConnectProviderARNs'] = Builders::OIDCProviderList.build(input[:open_id_connect_provider_ar_ns]) unless input[:open_id_connect_provider_ar_ns].nil?
        data['CognitoIdentityProviders'] = Builders::CognitoIdentityProviderList.build(input[:cognito_identity_providers]) unless input[:cognito_identity_providers].nil?
        data['SamlProviderARNs'] = Builders::SAMLProviderList.build(input[:saml_provider_ar_ns]) unless input[:saml_provider_ar_ns].nil?
        data['IdentityPoolTags'] = Builders::IdentityPoolTagsType.build(input[:identity_pool_tags]) unless input[:identity_pool_tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
