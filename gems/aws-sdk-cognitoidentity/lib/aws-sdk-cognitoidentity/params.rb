# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CognitoIdentity
  module Params

    module CognitoIdentityProvider
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CognitoIdentityProvider, context: context)
        type = Types::CognitoIdentityProvider.new
        type.provider_name = params[:provider_name]
        type.client_id = params[:client_id]
        type.server_side_token_check = params[:server_side_token_check]
        type
      end
    end

    module CognitoIdentityProviderList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CognitoIdentityProvider.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module CreateIdentityPoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIdentityPoolInput, context: context)
        type = Types::CreateIdentityPoolInput.new
        type.identity_pool_name = params[:identity_pool_name]
        type.allow_unauthenticated_identities = params[:allow_unauthenticated_identities]
        type.allow_classic_flow = params[:allow_classic_flow]
        type.supported_login_providers = IdentityProviders.build(params[:supported_login_providers], context: "#{context}[:supported_login_providers]") unless params[:supported_login_providers].nil?
        type.developer_provider_name = params[:developer_provider_name]
        type.open_id_connect_provider_ar_ns = OIDCProviderList.build(params[:open_id_connect_provider_ar_ns], context: "#{context}[:open_id_connect_provider_ar_ns]") unless params[:open_id_connect_provider_ar_ns].nil?
        type.cognito_identity_providers = CognitoIdentityProviderList.build(params[:cognito_identity_providers], context: "#{context}[:cognito_identity_providers]") unless params[:cognito_identity_providers].nil?
        type.saml_provider_ar_ns = SAMLProviderList.build(params[:saml_provider_ar_ns], context: "#{context}[:saml_provider_ar_ns]") unless params[:saml_provider_ar_ns].nil?
        type.identity_pool_tags = IdentityPoolTagsType.build(params[:identity_pool_tags], context: "#{context}[:identity_pool_tags]") unless params[:identity_pool_tags].nil?
        type
      end
    end

    module CreateIdentityPoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIdentityPoolOutput, context: context)
        type = Types::CreateIdentityPoolOutput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identity_pool_name = params[:identity_pool_name]
        type.allow_unauthenticated_identities = params[:allow_unauthenticated_identities]
        type.allow_classic_flow = params[:allow_classic_flow]
        type.supported_login_providers = IdentityProviders.build(params[:supported_login_providers], context: "#{context}[:supported_login_providers]") unless params[:supported_login_providers].nil?
        type.developer_provider_name = params[:developer_provider_name]
        type.open_id_connect_provider_ar_ns = OIDCProviderList.build(params[:open_id_connect_provider_ar_ns], context: "#{context}[:open_id_connect_provider_ar_ns]") unless params[:open_id_connect_provider_ar_ns].nil?
        type.cognito_identity_providers = CognitoIdentityProviderList.build(params[:cognito_identity_providers], context: "#{context}[:cognito_identity_providers]") unless params[:cognito_identity_providers].nil?
        type.saml_provider_ar_ns = SAMLProviderList.build(params[:saml_provider_ar_ns], context: "#{context}[:saml_provider_ar_ns]") unless params[:saml_provider_ar_ns].nil?
        type.identity_pool_tags = IdentityPoolTagsType.build(params[:identity_pool_tags], context: "#{context}[:identity_pool_tags]") unless params[:identity_pool_tags].nil?
        type
      end
    end

    module Credentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Credentials, context: context)
        type = Types::Credentials.new
        type.access_key_id = params[:access_key_id]
        type.secret_key = params[:secret_key]
        type.session_token = params[:session_token]
        type.expiration = params[:expiration]
        type
      end
    end

    module DeleteIdentitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIdentitiesInput, context: context)
        type = Types::DeleteIdentitiesInput.new
        type.identity_ids_to_delete = IdentityIdList.build(params[:identity_ids_to_delete], context: "#{context}[:identity_ids_to_delete]") unless params[:identity_ids_to_delete].nil?
        type
      end
    end

    module DeleteIdentitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIdentitiesOutput, context: context)
        type = Types::DeleteIdentitiesOutput.new
        type.unprocessed_identity_ids = UnprocessedIdentityIdList.build(params[:unprocessed_identity_ids], context: "#{context}[:unprocessed_identity_ids]") unless params[:unprocessed_identity_ids].nil?
        type
      end
    end

    module DeleteIdentityPoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIdentityPoolInput, context: context)
        type = Types::DeleteIdentityPoolInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type
      end
    end

    module DeleteIdentityPoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIdentityPoolOutput, context: context)
        type = Types::DeleteIdentityPoolOutput.new
        type
      end
    end

    module DescribeIdentityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIdentityInput, context: context)
        type = Types::DescribeIdentityInput.new
        type.identity_id = params[:identity_id]
        type
      end
    end

    module DescribeIdentityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIdentityOutput, context: context)
        type = Types::DescribeIdentityOutput.new
        type.identity_id = params[:identity_id]
        type.logins = LoginsList.build(params[:logins], context: "#{context}[:logins]") unless params[:logins].nil?
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type
      end
    end

    module DescribeIdentityPoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIdentityPoolInput, context: context)
        type = Types::DescribeIdentityPoolInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type
      end
    end

    module DescribeIdentityPoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIdentityPoolOutput, context: context)
        type = Types::DescribeIdentityPoolOutput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identity_pool_name = params[:identity_pool_name]
        type.allow_unauthenticated_identities = params[:allow_unauthenticated_identities]
        type.allow_classic_flow = params[:allow_classic_flow]
        type.supported_login_providers = IdentityProviders.build(params[:supported_login_providers], context: "#{context}[:supported_login_providers]") unless params[:supported_login_providers].nil?
        type.developer_provider_name = params[:developer_provider_name]
        type.open_id_connect_provider_ar_ns = OIDCProviderList.build(params[:open_id_connect_provider_ar_ns], context: "#{context}[:open_id_connect_provider_ar_ns]") unless params[:open_id_connect_provider_ar_ns].nil?
        type.cognito_identity_providers = CognitoIdentityProviderList.build(params[:cognito_identity_providers], context: "#{context}[:cognito_identity_providers]") unless params[:cognito_identity_providers].nil?
        type.saml_provider_ar_ns = SAMLProviderList.build(params[:saml_provider_ar_ns], context: "#{context}[:saml_provider_ar_ns]") unless params[:saml_provider_ar_ns].nil?
        type.identity_pool_tags = IdentityPoolTagsType.build(params[:identity_pool_tags], context: "#{context}[:identity_pool_tags]") unless params[:identity_pool_tags].nil?
        type
      end
    end

    module DeveloperUserAlreadyRegisteredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeveloperUserAlreadyRegisteredException, context: context)
        type = Types::DeveloperUserAlreadyRegisteredException.new
        type.message = params[:message]
        type
      end
    end

    module DeveloperUserIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExternalServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExternalServiceException, context: context)
        type = Types::ExternalServiceException.new
        type.message = params[:message]
        type
      end
    end

    module GetCredentialsForIdentityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCredentialsForIdentityInput, context: context)
        type = Types::GetCredentialsForIdentityInput.new
        type.identity_id = params[:identity_id]
        type.logins = LoginsMap.build(params[:logins], context: "#{context}[:logins]") unless params[:logins].nil?
        type.custom_role_arn = params[:custom_role_arn]
        type
      end
    end

    module GetCredentialsForIdentityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCredentialsForIdentityOutput, context: context)
        type = Types::GetCredentialsForIdentityOutput.new
        type.identity_id = params[:identity_id]
        type.credentials = Credentials.build(params[:credentials], context: "#{context}[:credentials]") unless params[:credentials].nil?
        type
      end
    end

    module GetIdInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdInput, context: context)
        type = Types::GetIdInput.new
        type.account_id = params[:account_id]
        type.identity_pool_id = params[:identity_pool_id]
        type.logins = LoginsMap.build(params[:logins], context: "#{context}[:logins]") unless params[:logins].nil?
        type
      end
    end

    module GetIdOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdOutput, context: context)
        type = Types::GetIdOutput.new
        type.identity_id = params[:identity_id]
        type
      end
    end

    module GetIdentityPoolRolesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdentityPoolRolesInput, context: context)
        type = Types::GetIdentityPoolRolesInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type
      end
    end

    module GetIdentityPoolRolesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdentityPoolRolesOutput, context: context)
        type = Types::GetIdentityPoolRolesOutput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.roles = RolesMap.build(params[:roles], context: "#{context}[:roles]") unless params[:roles].nil?
        type.role_mappings = RoleMappingMap.build(params[:role_mappings], context: "#{context}[:role_mappings]") unless params[:role_mappings].nil?
        type
      end
    end

    module GetOpenIdTokenForDeveloperIdentityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOpenIdTokenForDeveloperIdentityInput, context: context)
        type = Types::GetOpenIdTokenForDeveloperIdentityInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identity_id = params[:identity_id]
        type.logins = LoginsMap.build(params[:logins], context: "#{context}[:logins]") unless params[:logins].nil?
        type.principal_tags = PrincipalTags.build(params[:principal_tags], context: "#{context}[:principal_tags]") unless params[:principal_tags].nil?
        type.token_duration = params[:token_duration]
        type
      end
    end

    module GetOpenIdTokenForDeveloperIdentityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOpenIdTokenForDeveloperIdentityOutput, context: context)
        type = Types::GetOpenIdTokenForDeveloperIdentityOutput.new
        type.identity_id = params[:identity_id]
        type.token = params[:token]
        type
      end
    end

    module GetOpenIdTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOpenIdTokenInput, context: context)
        type = Types::GetOpenIdTokenInput.new
        type.identity_id = params[:identity_id]
        type.logins = LoginsMap.build(params[:logins], context: "#{context}[:logins]") unless params[:logins].nil?
        type
      end
    end

    module GetOpenIdTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOpenIdTokenOutput, context: context)
        type = Types::GetOpenIdTokenOutput.new
        type.identity_id = params[:identity_id]
        type.token = params[:token]
        type
      end
    end

    module GetPrincipalTagAttributeMapInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPrincipalTagAttributeMapInput, context: context)
        type = Types::GetPrincipalTagAttributeMapInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identity_provider_name = params[:identity_provider_name]
        type
      end
    end

    module GetPrincipalTagAttributeMapOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPrincipalTagAttributeMapOutput, context: context)
        type = Types::GetPrincipalTagAttributeMapOutput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identity_provider_name = params[:identity_provider_name]
        type.use_defaults = params[:use_defaults]
        type.principal_tags = PrincipalTags.build(params[:principal_tags], context: "#{context}[:principal_tags]") unless params[:principal_tags].nil?
        type
      end
    end

    module IdentitiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IdentityDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IdentityDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentityDescription, context: context)
        type = Types::IdentityDescription.new
        type.identity_id = params[:identity_id]
        type.logins = LoginsList.build(params[:logins], context: "#{context}[:logins]") unless params[:logins].nil?
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type
      end
    end

    module IdentityIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IdentityPoolShortDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentityPoolShortDescription, context: context)
        type = Types::IdentityPoolShortDescription.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identity_pool_name = params[:identity_pool_name]
        type
      end
    end

    module IdentityPoolTagsListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IdentityPoolTagsType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module IdentityPoolsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IdentityPoolShortDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IdentityProviders
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module InternalErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalErrorException, context: context)
        type = Types::InternalErrorException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidIdentityPoolConfigurationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidIdentityPoolConfigurationException, context: context)
        type = Types::InvalidIdentityPoolConfigurationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListIdentitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIdentitiesInput, context: context)
        type = Types::ListIdentitiesInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.hide_disabled = params[:hide_disabled]
        type
      end
    end

    module ListIdentitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIdentitiesOutput, context: context)
        type = Types::ListIdentitiesOutput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identities = IdentitiesList.build(params[:identities], context: "#{context}[:identities]") unless params[:identities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIdentityPoolsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIdentityPoolsInput, context: context)
        type = Types::ListIdentityPoolsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIdentityPoolsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIdentityPoolsOutput, context: context)
        type = Types::ListIdentityPoolsOutput.new
        type.identity_pools = IdentityPoolsList.build(params[:identity_pools], context: "#{context}[:identity_pools]") unless params[:identity_pools].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = IdentityPoolTagsType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LoginsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LoginsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module LookupDeveloperIdentityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LookupDeveloperIdentityInput, context: context)
        type = Types::LookupDeveloperIdentityInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identity_id = params[:identity_id]
        type.developer_user_identifier = params[:developer_user_identifier]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module LookupDeveloperIdentityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LookupDeveloperIdentityOutput, context: context)
        type = Types::LookupDeveloperIdentityOutput.new
        type.identity_id = params[:identity_id]
        type.developer_user_identifier_list = DeveloperUserIdentifierList.build(params[:developer_user_identifier_list], context: "#{context}[:developer_user_identifier_list]") unless params[:developer_user_identifier_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MappingRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MappingRule, context: context)
        type = Types::MappingRule.new
        type.claim = params[:claim]
        type.match_type = params[:match_type]
        type.value = params[:value]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module MappingRulesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MappingRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MergeDeveloperIdentitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergeDeveloperIdentitiesInput, context: context)
        type = Types::MergeDeveloperIdentitiesInput.new
        type.source_user_identifier = params[:source_user_identifier]
        type.destination_user_identifier = params[:destination_user_identifier]
        type.developer_provider_name = params[:developer_provider_name]
        type.identity_pool_id = params[:identity_pool_id]
        type
      end
    end

    module MergeDeveloperIdentitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergeDeveloperIdentitiesOutput, context: context)
        type = Types::MergeDeveloperIdentitiesOutput.new
        type.identity_id = params[:identity_id]
        type
      end
    end

    module NotAuthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotAuthorizedException, context: context)
        type = Types::NotAuthorizedException.new
        type.message = params[:message]
        type
      end
    end

    module OIDCProviderList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PrincipalTags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ResourceConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceConflictException, context: context)
        type = Types::ResourceConflictException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module RoleMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoleMapping, context: context)
        type = Types::RoleMapping.new
        type.type = params[:type]
        type.ambiguous_role_resolution = params[:ambiguous_role_resolution]
        type.rules_configuration = RulesConfigurationType.build(params[:rules_configuration], context: "#{context}[:rules_configuration]") unless params[:rules_configuration].nil?
        type
      end
    end

    module RoleMappingMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = RoleMapping.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module RolesMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module RulesConfigurationType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RulesConfigurationType, context: context)
        type = Types::RulesConfigurationType.new
        type.rules = MappingRulesList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module SAMLProviderList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SetIdentityPoolRolesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetIdentityPoolRolesInput, context: context)
        type = Types::SetIdentityPoolRolesInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.roles = RolesMap.build(params[:roles], context: "#{context}[:roles]") unless params[:roles].nil?
        type.role_mappings = RoleMappingMap.build(params[:role_mappings], context: "#{context}[:role_mappings]") unless params[:role_mappings].nil?
        type
      end
    end

    module SetIdentityPoolRolesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetIdentityPoolRolesOutput, context: context)
        type = Types::SetIdentityPoolRolesOutput.new
        type
      end
    end

    module SetPrincipalTagAttributeMapInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetPrincipalTagAttributeMapInput, context: context)
        type = Types::SetPrincipalTagAttributeMapInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identity_provider_name = params[:identity_provider_name]
        type.use_defaults = params[:use_defaults]
        type.principal_tags = PrincipalTags.build(params[:principal_tags], context: "#{context}[:principal_tags]") unless params[:principal_tags].nil?
        type
      end
    end

    module SetPrincipalTagAttributeMapOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetPrincipalTagAttributeMapOutput, context: context)
        type = Types::SetPrincipalTagAttributeMapOutput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identity_provider_name = params[:identity_provider_name]
        type.use_defaults = params[:use_defaults]
        type.principal_tags = PrincipalTags.build(params[:principal_tags], context: "#{context}[:principal_tags]") unless params[:principal_tags].nil?
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = IdentityPoolTagsType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type
      end
    end

    module UnlinkDeveloperIdentityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnlinkDeveloperIdentityInput, context: context)
        type = Types::UnlinkDeveloperIdentityInput.new
        type.identity_id = params[:identity_id]
        type.identity_pool_id = params[:identity_pool_id]
        type.developer_provider_name = params[:developer_provider_name]
        type.developer_user_identifier = params[:developer_user_identifier]
        type
      end
    end

    module UnlinkDeveloperIdentityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnlinkDeveloperIdentityOutput, context: context)
        type = Types::UnlinkDeveloperIdentityOutput.new
        type
      end
    end

    module UnlinkIdentityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnlinkIdentityInput, context: context)
        type = Types::UnlinkIdentityInput.new
        type.identity_id = params[:identity_id]
        type.logins = LoginsMap.build(params[:logins], context: "#{context}[:logins]") unless params[:logins].nil?
        type.logins_to_remove = LoginsList.build(params[:logins_to_remove], context: "#{context}[:logins_to_remove]") unless params[:logins_to_remove].nil?
        type
      end
    end

    module UnlinkIdentityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnlinkIdentityOutput, context: context)
        type = Types::UnlinkIdentityOutput.new
        type
      end
    end

    module UnprocessedIdentityId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnprocessedIdentityId, context: context)
        type = Types::UnprocessedIdentityId.new
        type.identity_id = params[:identity_id]
        type.error_code = params[:error_code]
        type
      end
    end

    module UnprocessedIdentityIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UnprocessedIdentityId.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = IdentityPoolTagsListType.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateIdentityPoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIdentityPoolInput, context: context)
        type = Types::UpdateIdentityPoolInput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identity_pool_name = params[:identity_pool_name]
        type.allow_unauthenticated_identities = params[:allow_unauthenticated_identities]
        type.allow_classic_flow = params[:allow_classic_flow]
        type.supported_login_providers = IdentityProviders.build(params[:supported_login_providers], context: "#{context}[:supported_login_providers]") unless params[:supported_login_providers].nil?
        type.developer_provider_name = params[:developer_provider_name]
        type.open_id_connect_provider_ar_ns = OIDCProviderList.build(params[:open_id_connect_provider_ar_ns], context: "#{context}[:open_id_connect_provider_ar_ns]") unless params[:open_id_connect_provider_ar_ns].nil?
        type.cognito_identity_providers = CognitoIdentityProviderList.build(params[:cognito_identity_providers], context: "#{context}[:cognito_identity_providers]") unless params[:cognito_identity_providers].nil?
        type.saml_provider_ar_ns = SAMLProviderList.build(params[:saml_provider_ar_ns], context: "#{context}[:saml_provider_ar_ns]") unless params[:saml_provider_ar_ns].nil?
        type.identity_pool_tags = IdentityPoolTagsType.build(params[:identity_pool_tags], context: "#{context}[:identity_pool_tags]") unless params[:identity_pool_tags].nil?
        type
      end
    end

    module UpdateIdentityPoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIdentityPoolOutput, context: context)
        type = Types::UpdateIdentityPoolOutput.new
        type.identity_pool_id = params[:identity_pool_id]
        type.identity_pool_name = params[:identity_pool_name]
        type.allow_unauthenticated_identities = params[:allow_unauthenticated_identities]
        type.allow_classic_flow = params[:allow_classic_flow]
        type.supported_login_providers = IdentityProviders.build(params[:supported_login_providers], context: "#{context}[:supported_login_providers]") unless params[:supported_login_providers].nil?
        type.developer_provider_name = params[:developer_provider_name]
        type.open_id_connect_provider_ar_ns = OIDCProviderList.build(params[:open_id_connect_provider_ar_ns], context: "#{context}[:open_id_connect_provider_ar_ns]") unless params[:open_id_connect_provider_ar_ns].nil?
        type.cognito_identity_providers = CognitoIdentityProviderList.build(params[:cognito_identity_providers], context: "#{context}[:cognito_identity_providers]") unless params[:cognito_identity_providers].nil?
        type.saml_provider_ar_ns = SAMLProviderList.build(params[:saml_provider_ar_ns], context: "#{context}[:saml_provider_ar_ns]") unless params[:saml_provider_ar_ns].nil?
        type.identity_pool_tags = IdentityPoolTagsType.build(params[:identity_pool_tags], context: "#{context}[:identity_pool_tags]") unless params[:identity_pool_tags].nil?
        type
      end
    end

  end
end
