# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::CognitoIdentity
  module Validators

    class CognitoIdentityProvider
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CognitoIdentityProvider, context: context)
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:server_side_token_check], ::TrueClass, ::FalseClass, context: "#{context}[:server_side_token_check]")
      end
    end

    class CognitoIdentityProviderList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CognitoIdentityProvider.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateIdentityPoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIdentityPoolInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_name], ::String, context: "#{context}[:identity_pool_name]")
        Hearth::Validator.validate!(input[:allow_unauthenticated_identities], ::TrueClass, ::FalseClass, context: "#{context}[:allow_unauthenticated_identities]")
        Hearth::Validator.validate!(input[:allow_classic_flow], ::TrueClass, ::FalseClass, context: "#{context}[:allow_classic_flow]")
        IdentityProviders.validate!(input[:supported_login_providers], context: "#{context}[:supported_login_providers]") unless input[:supported_login_providers].nil?
        Hearth::Validator.validate!(input[:developer_provider_name], ::String, context: "#{context}[:developer_provider_name]")
        OIDCProviderList.validate!(input[:open_id_connect_provider_ar_ns], context: "#{context}[:open_id_connect_provider_ar_ns]") unless input[:open_id_connect_provider_ar_ns].nil?
        CognitoIdentityProviderList.validate!(input[:cognito_identity_providers], context: "#{context}[:cognito_identity_providers]") unless input[:cognito_identity_providers].nil?
        SAMLProviderList.validate!(input[:saml_provider_ar_ns], context: "#{context}[:saml_provider_ar_ns]") unless input[:saml_provider_ar_ns].nil?
        IdentityPoolTagsType.validate!(input[:identity_pool_tags], context: "#{context}[:identity_pool_tags]") unless input[:identity_pool_tags].nil?
      end
    end

    class CreateIdentityPoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIdentityPoolOutput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:identity_pool_name], ::String, context: "#{context}[:identity_pool_name]")
        Hearth::Validator.validate!(input[:allow_unauthenticated_identities], ::TrueClass, ::FalseClass, context: "#{context}[:allow_unauthenticated_identities]")
        Hearth::Validator.validate!(input[:allow_classic_flow], ::TrueClass, ::FalseClass, context: "#{context}[:allow_classic_flow]")
        IdentityProviders.validate!(input[:supported_login_providers], context: "#{context}[:supported_login_providers]") unless input[:supported_login_providers].nil?
        Hearth::Validator.validate!(input[:developer_provider_name], ::String, context: "#{context}[:developer_provider_name]")
        OIDCProviderList.validate!(input[:open_id_connect_provider_ar_ns], context: "#{context}[:open_id_connect_provider_ar_ns]") unless input[:open_id_connect_provider_ar_ns].nil?
        CognitoIdentityProviderList.validate!(input[:cognito_identity_providers], context: "#{context}[:cognito_identity_providers]") unless input[:cognito_identity_providers].nil?
        SAMLProviderList.validate!(input[:saml_provider_ar_ns], context: "#{context}[:saml_provider_ar_ns]") unless input[:saml_provider_ar_ns].nil?
        IdentityPoolTagsType.validate!(input[:identity_pool_tags], context: "#{context}[:identity_pool_tags]") unless input[:identity_pool_tags].nil?
      end
    end

    class Credentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Credentials, context: context)
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate!(input[:secret_key], ::String, context: "#{context}[:secret_key]")
        Hearth::Validator.validate!(input[:session_token], ::String, context: "#{context}[:session_token]")
        Hearth::Validator.validate!(input[:expiration], ::Time, context: "#{context}[:expiration]")
      end
    end

    class DeleteIdentitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIdentitiesInput, context: context)
        IdentityIdList.validate!(input[:identity_ids_to_delete], context: "#{context}[:identity_ids_to_delete]") unless input[:identity_ids_to_delete].nil?
      end
    end

    class DeleteIdentitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIdentitiesOutput, context: context)
        UnprocessedIdentityIdList.validate!(input[:unprocessed_identity_ids], context: "#{context}[:unprocessed_identity_ids]") unless input[:unprocessed_identity_ids].nil?
      end
    end

    class DeleteIdentityPoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIdentityPoolInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
      end
    end

    class DeleteIdentityPoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIdentityPoolOutput, context: context)
      end
    end

    class DescribeIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIdentityInput, context: context)
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
      end
    end

    class DescribeIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIdentityOutput, context: context)
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        LoginsList.validate!(input[:logins], context: "#{context}[:logins]") unless input[:logins].nil?
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
      end
    end

    class DescribeIdentityPoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIdentityPoolInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
      end
    end

    class DescribeIdentityPoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIdentityPoolOutput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:identity_pool_name], ::String, context: "#{context}[:identity_pool_name]")
        Hearth::Validator.validate!(input[:allow_unauthenticated_identities], ::TrueClass, ::FalseClass, context: "#{context}[:allow_unauthenticated_identities]")
        Hearth::Validator.validate!(input[:allow_classic_flow], ::TrueClass, ::FalseClass, context: "#{context}[:allow_classic_flow]")
        IdentityProviders.validate!(input[:supported_login_providers], context: "#{context}[:supported_login_providers]") unless input[:supported_login_providers].nil?
        Hearth::Validator.validate!(input[:developer_provider_name], ::String, context: "#{context}[:developer_provider_name]")
        OIDCProviderList.validate!(input[:open_id_connect_provider_ar_ns], context: "#{context}[:open_id_connect_provider_ar_ns]") unless input[:open_id_connect_provider_ar_ns].nil?
        CognitoIdentityProviderList.validate!(input[:cognito_identity_providers], context: "#{context}[:cognito_identity_providers]") unless input[:cognito_identity_providers].nil?
        SAMLProviderList.validate!(input[:saml_provider_ar_ns], context: "#{context}[:saml_provider_ar_ns]") unless input[:saml_provider_ar_ns].nil?
        IdentityPoolTagsType.validate!(input[:identity_pool_tags], context: "#{context}[:identity_pool_tags]") unless input[:identity_pool_tags].nil?
      end
    end

    class DeveloperUserAlreadyRegisteredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeveloperUserAlreadyRegisteredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeveloperUserIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExternalServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExternalServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetCredentialsForIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCredentialsForIdentityInput, context: context)
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        LoginsMap.validate!(input[:logins], context: "#{context}[:logins]") unless input[:logins].nil?
        Hearth::Validator.validate!(input[:custom_role_arn], ::String, context: "#{context}[:custom_role_arn]")
      end
    end

    class GetCredentialsForIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCredentialsForIdentityOutput, context: context)
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Credentials.validate!(input[:credentials], context: "#{context}[:credentials]") unless input[:credentials].nil?
      end
    end

    class GetIdInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        LoginsMap.validate!(input[:logins], context: "#{context}[:logins]") unless input[:logins].nil?
      end
    end

    class GetIdOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdOutput, context: context)
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
      end
    end

    class GetIdentityPoolRolesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdentityPoolRolesInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
      end
    end

    class GetIdentityPoolRolesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdentityPoolRolesOutput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        RolesMap.validate!(input[:roles], context: "#{context}[:roles]") unless input[:roles].nil?
        RoleMappingMap.validate!(input[:role_mappings], context: "#{context}[:role_mappings]") unless input[:role_mappings].nil?
      end
    end

    class GetOpenIdTokenForDeveloperIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOpenIdTokenForDeveloperIdentityInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        LoginsMap.validate!(input[:logins], context: "#{context}[:logins]") unless input[:logins].nil?
        PrincipalTags.validate!(input[:principal_tags], context: "#{context}[:principal_tags]") unless input[:principal_tags].nil?
        Hearth::Validator.validate!(input[:token_duration], ::Integer, context: "#{context}[:token_duration]")
      end
    end

    class GetOpenIdTokenForDeveloperIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOpenIdTokenForDeveloperIdentityOutput, context: context)
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
      end
    end

    class GetOpenIdTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOpenIdTokenInput, context: context)
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        LoginsMap.validate!(input[:logins], context: "#{context}[:logins]") unless input[:logins].nil?
      end
    end

    class GetOpenIdTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOpenIdTokenOutput, context: context)
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
      end
    end

    class GetPrincipalTagAttributeMapInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPrincipalTagAttributeMapInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:identity_provider_name], ::String, context: "#{context}[:identity_provider_name]")
      end
    end

    class GetPrincipalTagAttributeMapOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPrincipalTagAttributeMapOutput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:identity_provider_name], ::String, context: "#{context}[:identity_provider_name]")
        Hearth::Validator.validate!(input[:use_defaults], ::TrueClass, ::FalseClass, context: "#{context}[:use_defaults]")
        PrincipalTags.validate!(input[:principal_tags], context: "#{context}[:principal_tags]") unless input[:principal_tags].nil?
      end
    end

    class IdentitiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IdentityDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IdentityDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentityDescription, context: context)
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        LoginsList.validate!(input[:logins], context: "#{context}[:logins]") unless input[:logins].nil?
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
      end
    end

    class IdentityIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IdentityPoolShortDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentityPoolShortDescription, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:identity_pool_name], ::String, context: "#{context}[:identity_pool_name]")
      end
    end

    class IdentityPoolTagsListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IdentityPoolTagsType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class IdentityPoolsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IdentityPoolShortDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IdentityProviders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class InternalErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidIdentityPoolConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidIdentityPoolConfigurationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListIdentitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIdentitiesInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:hide_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:hide_disabled]")
      end
    end

    class ListIdentitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIdentitiesOutput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        IdentitiesList.validate!(input[:identities], context: "#{context}[:identities]") unless input[:identities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIdentityPoolsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIdentityPoolsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIdentityPoolsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIdentityPoolsOutput, context: context)
        IdentityPoolsList.validate!(input[:identity_pools], context: "#{context}[:identity_pools]") unless input[:identity_pools].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        IdentityPoolTagsType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LoginsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LoginsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class LookupDeveloperIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LookupDeveloperIdentityInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:developer_user_identifier], ::String, context: "#{context}[:developer_user_identifier]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LookupDeveloperIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LookupDeveloperIdentityOutput, context: context)
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        DeveloperUserIdentifierList.validate!(input[:developer_user_identifier_list], context: "#{context}[:developer_user_identifier_list]") unless input[:developer_user_identifier_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MappingRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MappingRule, context: context)
        Hearth::Validator.validate!(input[:claim], ::String, context: "#{context}[:claim]")
        Hearth::Validator.validate!(input[:match_type], ::String, context: "#{context}[:match_type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class MappingRulesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MappingRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MergeDeveloperIdentitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergeDeveloperIdentitiesInput, context: context)
        Hearth::Validator.validate!(input[:source_user_identifier], ::String, context: "#{context}[:source_user_identifier]")
        Hearth::Validator.validate!(input[:destination_user_identifier], ::String, context: "#{context}[:destination_user_identifier]")
        Hearth::Validator.validate!(input[:developer_provider_name], ::String, context: "#{context}[:developer_provider_name]")
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
      end
    end

    class MergeDeveloperIdentitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergeDeveloperIdentitiesOutput, context: context)
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
      end
    end

    class NotAuthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotAuthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OIDCProviderList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PrincipalTags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ResourceConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RoleMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoleMapping, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:ambiguous_role_resolution], ::String, context: "#{context}[:ambiguous_role_resolution]")
        RulesConfigurationType.validate!(input[:rules_configuration], context: "#{context}[:rules_configuration]") unless input[:rules_configuration].nil?
      end
    end

    class RoleMappingMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          RoleMapping.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class RolesMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class RulesConfigurationType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RulesConfigurationType, context: context)
        MappingRulesList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class SAMLProviderList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SetIdentityPoolRolesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetIdentityPoolRolesInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        RolesMap.validate!(input[:roles], context: "#{context}[:roles]") unless input[:roles].nil?
        RoleMappingMap.validate!(input[:role_mappings], context: "#{context}[:role_mappings]") unless input[:role_mappings].nil?
      end
    end

    class SetIdentityPoolRolesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetIdentityPoolRolesOutput, context: context)
      end
    end

    class SetPrincipalTagAttributeMapInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetPrincipalTagAttributeMapInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:identity_provider_name], ::String, context: "#{context}[:identity_provider_name]")
        Hearth::Validator.validate!(input[:use_defaults], ::TrueClass, ::FalseClass, context: "#{context}[:use_defaults]")
        PrincipalTags.validate!(input[:principal_tags], context: "#{context}[:principal_tags]") unless input[:principal_tags].nil?
      end
    end

    class SetPrincipalTagAttributeMapOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetPrincipalTagAttributeMapOutput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:identity_provider_name], ::String, context: "#{context}[:identity_provider_name]")
        Hearth::Validator.validate!(input[:use_defaults], ::TrueClass, ::FalseClass, context: "#{context}[:use_defaults]")
        PrincipalTags.validate!(input[:principal_tags], context: "#{context}[:principal_tags]") unless input[:principal_tags].nil?
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        IdentityPoolTagsType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnlinkDeveloperIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnlinkDeveloperIdentityInput, context: context)
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:developer_provider_name], ::String, context: "#{context}[:developer_provider_name]")
        Hearth::Validator.validate!(input[:developer_user_identifier], ::String, context: "#{context}[:developer_user_identifier]")
      end
    end

    class UnlinkDeveloperIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnlinkDeveloperIdentityOutput, context: context)
      end
    end

    class UnlinkIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnlinkIdentityInput, context: context)
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        LoginsMap.validate!(input[:logins], context: "#{context}[:logins]") unless input[:logins].nil?
        LoginsList.validate!(input[:logins_to_remove], context: "#{context}[:logins_to_remove]") unless input[:logins_to_remove].nil?
      end
    end

    class UnlinkIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnlinkIdentityOutput, context: context)
      end
    end

    class UnprocessedIdentityId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnprocessedIdentityId, context: context)
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
      end
    end

    class UnprocessedIdentityIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UnprocessedIdentityId.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        IdentityPoolTagsListType.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateIdentityPoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIdentityPoolInput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:identity_pool_name], ::String, context: "#{context}[:identity_pool_name]")
        Hearth::Validator.validate!(input[:allow_unauthenticated_identities], ::TrueClass, ::FalseClass, context: "#{context}[:allow_unauthenticated_identities]")
        Hearth::Validator.validate!(input[:allow_classic_flow], ::TrueClass, ::FalseClass, context: "#{context}[:allow_classic_flow]")
        IdentityProviders.validate!(input[:supported_login_providers], context: "#{context}[:supported_login_providers]") unless input[:supported_login_providers].nil?
        Hearth::Validator.validate!(input[:developer_provider_name], ::String, context: "#{context}[:developer_provider_name]")
        OIDCProviderList.validate!(input[:open_id_connect_provider_ar_ns], context: "#{context}[:open_id_connect_provider_ar_ns]") unless input[:open_id_connect_provider_ar_ns].nil?
        CognitoIdentityProviderList.validate!(input[:cognito_identity_providers], context: "#{context}[:cognito_identity_providers]") unless input[:cognito_identity_providers].nil?
        SAMLProviderList.validate!(input[:saml_provider_ar_ns], context: "#{context}[:saml_provider_ar_ns]") unless input[:saml_provider_ar_ns].nil?
        IdentityPoolTagsType.validate!(input[:identity_pool_tags], context: "#{context}[:identity_pool_tags]") unless input[:identity_pool_tags].nil?
      end
    end

    class UpdateIdentityPoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIdentityPoolOutput, context: context)
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:identity_pool_name], ::String, context: "#{context}[:identity_pool_name]")
        Hearth::Validator.validate!(input[:allow_unauthenticated_identities], ::TrueClass, ::FalseClass, context: "#{context}[:allow_unauthenticated_identities]")
        Hearth::Validator.validate!(input[:allow_classic_flow], ::TrueClass, ::FalseClass, context: "#{context}[:allow_classic_flow]")
        IdentityProviders.validate!(input[:supported_login_providers], context: "#{context}[:supported_login_providers]") unless input[:supported_login_providers].nil?
        Hearth::Validator.validate!(input[:developer_provider_name], ::String, context: "#{context}[:developer_provider_name]")
        OIDCProviderList.validate!(input[:open_id_connect_provider_ar_ns], context: "#{context}[:open_id_connect_provider_ar_ns]") unless input[:open_id_connect_provider_ar_ns].nil?
        CognitoIdentityProviderList.validate!(input[:cognito_identity_providers], context: "#{context}[:cognito_identity_providers]") unless input[:cognito_identity_providers].nil?
        SAMLProviderList.validate!(input[:saml_provider_ar_ns], context: "#{context}[:saml_provider_ar_ns]") unless input[:saml_provider_ar_ns].nil?
        IdentityPoolTagsType.validate!(input[:identity_pool_tags], context: "#{context}[:identity_pool_tags]") unless input[:identity_pool_tags].nil?
      end
    end

  end
end
