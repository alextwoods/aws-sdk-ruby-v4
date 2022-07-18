# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppSync
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AdditionalAuthenticationProvider
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdditionalAuthenticationProvider, context: context)
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
        OpenIDConnectConfig.validate!(input[:open_id_connect_config], context: "#{context}[:open_id_connect_config]") unless input[:open_id_connect_config].nil?
        CognitoUserPoolConfig.validate!(input[:user_pool_config], context: "#{context}[:user_pool_config]") unless input[:user_pool_config].nil?
        LambdaAuthorizerConfig.validate!(input[:lambda_authorizer_config], context: "#{context}[:lambda_authorizer_config]") unless input[:lambda_authorizer_config].nil?
      end
    end

    class AdditionalAuthenticationProviders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AdditionalAuthenticationProvider.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApiAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApiAssociation, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:association_status], ::String, context: "#{context}[:association_status]")
        Hearth::Validator.validate!(input[:deployment_detail], ::String, context: "#{context}[:deployment_detail]")
      end
    end

    class ApiCache
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApiCache, context: context)
        Hearth::Validator.validate!(input[:ttl], ::Integer, context: "#{context}[:ttl]")
        Hearth::Validator.validate!(input[:api_caching_behavior], ::String, context: "#{context}[:api_caching_behavior]")
        Hearth::Validator.validate!(input[:transit_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:transit_encryption_enabled]")
        Hearth::Validator.validate!(input[:at_rest_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:at_rest_encryption_enabled]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ApiKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApiKey, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:expires], ::Integer, context: "#{context}[:expires]")
        Hearth::Validator.validate!(input[:deletes], ::Integer, context: "#{context}[:deletes]")
      end
    end

    class ApiKeyLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApiKeyLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApiKeyValidityOutOfBoundsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApiKeyValidityOutOfBoundsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApiKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ApiKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApiLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApiLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AssociateApiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateApiInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
      end
    end

    class AssociateApiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateApiOutput, context: context)
        ApiAssociation.validate!(input[:api_association], context: "#{context}[:api_association]") unless input[:api_association].nil?
      end
    end

    class AuthorizationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizationConfig, context: context)
        Hearth::Validator.validate!(input[:authorization_type], ::String, context: "#{context}[:authorization_type]")
        AwsIamConfig.validate!(input[:aws_iam_config], context: "#{context}[:aws_iam_config]") unless input[:aws_iam_config].nil?
      end
    end

    class AwsIamConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsIamConfig, context: context)
        Hearth::Validator.validate!(input[:signing_region], ::String, context: "#{context}[:signing_region]")
        Hearth::Validator.validate!(input[:signing_service_name], ::String, context: "#{context}[:signing_service_name]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CachingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CachingConfig, context: context)
        Hearth::Validator.validate!(input[:ttl], ::Integer, context: "#{context}[:ttl]")
        CachingKeys.validate!(input[:caching_keys], context: "#{context}[:caching_keys]") unless input[:caching_keys].nil?
      end
    end

    class CachingKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CognitoUserPoolConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CognitoUserPoolConfig, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:app_id_client_regex], ::String, context: "#{context}[:app_id_client_regex]")
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateApiCacheInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApiCacheInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:ttl], ::Integer, context: "#{context}[:ttl]")
        Hearth::Validator.validate!(input[:transit_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:transit_encryption_enabled]")
        Hearth::Validator.validate!(input[:at_rest_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:at_rest_encryption_enabled]")
        Hearth::Validator.validate!(input[:api_caching_behavior], ::String, context: "#{context}[:api_caching_behavior]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class CreateApiCacheOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApiCacheOutput, context: context)
        ApiCache.validate!(input[:api_cache], context: "#{context}[:api_cache]") unless input[:api_cache].nil?
      end
    end

    class CreateApiKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApiKeyInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:expires], ::Integer, context: "#{context}[:expires]")
      end
    end

    class CreateApiKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApiKeyOutput, context: context)
        ApiKey.validate!(input[:api_key], context: "#{context}[:api_key]") unless input[:api_key].nil?
      end
    end

    class CreateDataSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataSourceInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        DynamodbDataSourceConfig.validate!(input[:dynamodb_config], context: "#{context}[:dynamodb_config]") unless input[:dynamodb_config].nil?
        LambdaDataSourceConfig.validate!(input[:lambda_config], context: "#{context}[:lambda_config]") unless input[:lambda_config].nil?
        ElasticsearchDataSourceConfig.validate!(input[:elasticsearch_config], context: "#{context}[:elasticsearch_config]") unless input[:elasticsearch_config].nil?
        OpenSearchServiceDataSourceConfig.validate!(input[:open_search_service_config], context: "#{context}[:open_search_service_config]") unless input[:open_search_service_config].nil?
        HttpDataSourceConfig.validate!(input[:http_config], context: "#{context}[:http_config]") unless input[:http_config].nil?
        RelationalDatabaseDataSourceConfig.validate!(input[:relational_database_config], context: "#{context}[:relational_database_config]") unless input[:relational_database_config].nil?
      end
    end

    class CreateDataSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataSourceOutput, context: context)
        DataSource.validate!(input[:data_source], context: "#{context}[:data_source]") unless input[:data_source].nil?
      end
    end

    class CreateDomainNameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainNameInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class CreateDomainNameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainNameOutput, context: context)
        DomainNameConfig.validate!(input[:domain_name_config], context: "#{context}[:domain_name_config]") unless input[:domain_name_config].nil?
      end
    end

    class CreateFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFunctionInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:data_source_name], ::String, context: "#{context}[:data_source_name]")
        Hearth::Validator.validate!(input[:request_mapping_template], ::String, context: "#{context}[:request_mapping_template]")
        Hearth::Validator.validate!(input[:response_mapping_template], ::String, context: "#{context}[:response_mapping_template]")
        Hearth::Validator.validate!(input[:function_version], ::String, context: "#{context}[:function_version]")
        SyncConfig.validate!(input[:sync_config], context: "#{context}[:sync_config]") unless input[:sync_config].nil?
        Hearth::Validator.validate!(input[:max_batch_size], ::Integer, context: "#{context}[:max_batch_size]")
      end
    end

    class CreateFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFunctionOutput, context: context)
        FunctionConfiguration.validate!(input[:function_configuration], context: "#{context}[:function_configuration]") unless input[:function_configuration].nil?
      end
    end

    class CreateGraphqlApiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGraphqlApiInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        LogConfig.validate!(input[:log_config], context: "#{context}[:log_config]") unless input[:log_config].nil?
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
        UserPoolConfig.validate!(input[:user_pool_config], context: "#{context}[:user_pool_config]") unless input[:user_pool_config].nil?
        OpenIDConnectConfig.validate!(input[:open_id_connect_config], context: "#{context}[:open_id_connect_config]") unless input[:open_id_connect_config].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        AdditionalAuthenticationProviders.validate!(input[:additional_authentication_providers], context: "#{context}[:additional_authentication_providers]") unless input[:additional_authentication_providers].nil?
        Hearth::Validator.validate!(input[:xray_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:xray_enabled]")
        LambdaAuthorizerConfig.validate!(input[:lambda_authorizer_config], context: "#{context}[:lambda_authorizer_config]") unless input[:lambda_authorizer_config].nil?
      end
    end

    class CreateGraphqlApiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGraphqlApiOutput, context: context)
        GraphqlApi.validate!(input[:graphql_api], context: "#{context}[:graphql_api]") unless input[:graphql_api].nil?
      end
    end

    class CreateResolverInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResolverInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:field_name], ::String, context: "#{context}[:field_name]")
        Hearth::Validator.validate!(input[:data_source_name], ::String, context: "#{context}[:data_source_name]")
        Hearth::Validator.validate!(input[:request_mapping_template], ::String, context: "#{context}[:request_mapping_template]")
        Hearth::Validator.validate!(input[:response_mapping_template], ::String, context: "#{context}[:response_mapping_template]")
        Hearth::Validator.validate!(input[:kind], ::String, context: "#{context}[:kind]")
        PipelineConfig.validate!(input[:pipeline_config], context: "#{context}[:pipeline_config]") unless input[:pipeline_config].nil?
        SyncConfig.validate!(input[:sync_config], context: "#{context}[:sync_config]") unless input[:sync_config].nil?
        CachingConfig.validate!(input[:caching_config], context: "#{context}[:caching_config]") unless input[:caching_config].nil?
        Hearth::Validator.validate!(input[:max_batch_size], ::Integer, context: "#{context}[:max_batch_size]")
      end
    end

    class CreateResolverOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResolverOutput, context: context)
        Resolver.validate!(input[:resolver], context: "#{context}[:resolver]") unless input[:resolver].nil?
      end
    end

    class CreateTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTypeInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:definition], ::String, context: "#{context}[:definition]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
      end
    end

    class CreateTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTypeOutput, context: context)
        Type.validate!(input[:type], context: "#{context}[:type]") unless input[:type].nil?
      end
    end

    class DataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSource, context: context)
        Hearth::Validator.validate!(input[:data_source_arn], ::String, context: "#{context}[:data_source_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        DynamodbDataSourceConfig.validate!(input[:dynamodb_config], context: "#{context}[:dynamodb_config]") unless input[:dynamodb_config].nil?
        LambdaDataSourceConfig.validate!(input[:lambda_config], context: "#{context}[:lambda_config]") unless input[:lambda_config].nil?
        ElasticsearchDataSourceConfig.validate!(input[:elasticsearch_config], context: "#{context}[:elasticsearch_config]") unless input[:elasticsearch_config].nil?
        OpenSearchServiceDataSourceConfig.validate!(input[:open_search_service_config], context: "#{context}[:open_search_service_config]") unless input[:open_search_service_config].nil?
        HttpDataSourceConfig.validate!(input[:http_config], context: "#{context}[:http_config]") unless input[:http_config].nil?
        RelationalDatabaseDataSourceConfig.validate!(input[:relational_database_config], context: "#{context}[:relational_database_config]") unless input[:relational_database_config].nil?
      end
    end

    class DataSources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DataSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteApiCacheInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApiCacheInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
      end
    end

    class DeleteApiCacheOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApiCacheOutput, context: context)
      end
    end

    class DeleteApiKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApiKeyInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteApiKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApiKeyOutput, context: context)
      end
    end

    class DeleteDataSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataSourceInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteDataSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataSourceOutput, context: context)
      end
    end

    class DeleteDomainNameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainNameInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DeleteDomainNameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainNameOutput, context: context)
      end
    end

    class DeleteFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:function_id], ::String, context: "#{context}[:function_id]")
      end
    end

    class DeleteFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionOutput, context: context)
      end
    end

    class DeleteGraphqlApiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGraphqlApiInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
      end
    end

    class DeleteGraphqlApiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGraphqlApiOutput, context: context)
      end
    end

    class DeleteResolverInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResolverInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:field_name], ::String, context: "#{context}[:field_name]")
      end
    end

    class DeleteResolverOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResolverOutput, context: context)
      end
    end

    class DeleteTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTypeInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
      end
    end

    class DeleteTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTypeOutput, context: context)
      end
    end

    class DeltaSyncConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeltaSyncConfig, context: context)
        Hearth::Validator.validate!(input[:base_table_ttl], ::Integer, context: "#{context}[:base_table_ttl]")
        Hearth::Validator.validate!(input[:delta_sync_table_name], ::String, context: "#{context}[:delta_sync_table_name]")
        Hearth::Validator.validate!(input[:delta_sync_table_ttl], ::Integer, context: "#{context}[:delta_sync_table_ttl]")
      end
    end

    class DisassociateApiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateApiInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DisassociateApiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateApiOutput, context: context)
      end
    end

    class DomainNameConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainNameConfig, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:appsync_domain_name], ::String, context: "#{context}[:appsync_domain_name]")
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
      end
    end

    class DomainNameConfigs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainNameConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DynamodbDataSourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DynamodbDataSourceConfig, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:use_caller_credentials], ::TrueClass, ::FalseClass, context: "#{context}[:use_caller_credentials]")
        DeltaSyncConfig.validate!(input[:delta_sync_config], context: "#{context}[:delta_sync_config]") unless input[:delta_sync_config].nil?
        Hearth::Validator.validate!(input[:versioned], ::TrueClass, ::FalseClass, context: "#{context}[:versioned]")
      end
    end

    class ElasticsearchDataSourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticsearchDataSourceConfig, context: context)
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
      end
    end

    class FlushApiCacheInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FlushApiCacheInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
      end
    end

    class FlushApiCacheOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FlushApiCacheOutput, context: context)
      end
    end

    class FunctionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionConfiguration, context: context)
        Hearth::Validator.validate!(input[:function_id], ::String, context: "#{context}[:function_id]")
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:data_source_name], ::String, context: "#{context}[:data_source_name]")
        Hearth::Validator.validate!(input[:request_mapping_template], ::String, context: "#{context}[:request_mapping_template]")
        Hearth::Validator.validate!(input[:response_mapping_template], ::String, context: "#{context}[:response_mapping_template]")
        Hearth::Validator.validate!(input[:function_version], ::String, context: "#{context}[:function_version]")
        SyncConfig.validate!(input[:sync_config], context: "#{context}[:sync_config]") unless input[:sync_config].nil?
        Hearth::Validator.validate!(input[:max_batch_size], ::Integer, context: "#{context}[:max_batch_size]")
      end
    end

    class Functions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FunctionConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FunctionsIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetApiAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApiAssociationInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class GetApiAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApiAssociationOutput, context: context)
        ApiAssociation.validate!(input[:api_association], context: "#{context}[:api_association]") unless input[:api_association].nil?
      end
    end

    class GetApiCacheInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApiCacheInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
      end
    end

    class GetApiCacheOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApiCacheOutput, context: context)
        ApiCache.validate!(input[:api_cache], context: "#{context}[:api_cache]") unless input[:api_cache].nil?
      end
    end

    class GetDataSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataSourceInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetDataSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataSourceOutput, context: context)
        DataSource.validate!(input[:data_source], context: "#{context}[:data_source]") unless input[:data_source].nil?
      end
    end

    class GetDomainNameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainNameInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class GetDomainNameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainNameOutput, context: context)
        DomainNameConfig.validate!(input[:domain_name_config], context: "#{context}[:domain_name_config]") unless input[:domain_name_config].nil?
      end
    end

    class GetFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:function_id], ::String, context: "#{context}[:function_id]")
      end
    end

    class GetFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionOutput, context: context)
        FunctionConfiguration.validate!(input[:function_configuration], context: "#{context}[:function_configuration]") unless input[:function_configuration].nil?
      end
    end

    class GetGraphqlApiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGraphqlApiInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
      end
    end

    class GetGraphqlApiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGraphqlApiOutput, context: context)
        GraphqlApi.validate!(input[:graphql_api], context: "#{context}[:graphql_api]") unless input[:graphql_api].nil?
      end
    end

    class GetIntrospectionSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntrospectionSchemaInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:include_directives], ::TrueClass, ::FalseClass, context: "#{context}[:include_directives]")
      end
    end

    class GetIntrospectionSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntrospectionSchemaOutput, context: context)
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
      end
    end

    class GetResolverInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResolverInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:field_name], ::String, context: "#{context}[:field_name]")
      end
    end

    class GetResolverOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResolverOutput, context: context)
        Resolver.validate!(input[:resolver], context: "#{context}[:resolver]") unless input[:resolver].nil?
      end
    end

    class GetSchemaCreationStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSchemaCreationStatusInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
      end
    end

    class GetSchemaCreationStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSchemaCreationStatusOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
      end
    end

    class GetTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTypeInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
      end
    end

    class GetTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTypeOutput, context: context)
        Type.validate!(input[:type], context: "#{context}[:type]") unless input[:type].nil?
      end
    end

    class GraphQLSchemaException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GraphQLSchemaException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GraphqlApi
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GraphqlApi, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
        LogConfig.validate!(input[:log_config], context: "#{context}[:log_config]") unless input[:log_config].nil?
        UserPoolConfig.validate!(input[:user_pool_config], context: "#{context}[:user_pool_config]") unless input[:user_pool_config].nil?
        OpenIDConnectConfig.validate!(input[:open_id_connect_config], context: "#{context}[:open_id_connect_config]") unless input[:open_id_connect_config].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        MapOfStringToString.validate!(input[:uris], context: "#{context}[:uris]") unless input[:uris].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        AdditionalAuthenticationProviders.validate!(input[:additional_authentication_providers], context: "#{context}[:additional_authentication_providers]") unless input[:additional_authentication_providers].nil?
        Hearth::Validator.validate!(input[:xray_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:xray_enabled]")
        Hearth::Validator.validate!(input[:waf_web_acl_arn], ::String, context: "#{context}[:waf_web_acl_arn]")
        LambdaAuthorizerConfig.validate!(input[:lambda_authorizer_config], context: "#{context}[:lambda_authorizer_config]") unless input[:lambda_authorizer_config].nil?
      end
    end

    class GraphqlApis
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GraphqlApi.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HttpDataSourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpDataSourceConfig, context: context)
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        AuthorizationConfig.validate!(input[:authorization_config], context: "#{context}[:authorization_config]") unless input[:authorization_config].nil?
      end
    end

    class InternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LambdaAuthorizerConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaAuthorizerConfig, context: context)
        Hearth::Validator.validate!(input[:authorizer_result_ttl_in_seconds], ::Integer, context: "#{context}[:authorizer_result_ttl_in_seconds]")
        Hearth::Validator.validate!(input[:authorizer_uri], ::String, context: "#{context}[:authorizer_uri]")
        Hearth::Validator.validate!(input[:identity_validation_expression], ::String, context: "#{context}[:identity_validation_expression]")
      end
    end

    class LambdaConflictHandlerConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaConflictHandlerConfig, context: context)
        Hearth::Validator.validate!(input[:lambda_conflict_handler_arn], ::String, context: "#{context}[:lambda_conflict_handler_arn]")
      end
    end

    class LambdaDataSourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaDataSourceConfig, context: context)
        Hearth::Validator.validate!(input[:lambda_function_arn], ::String, context: "#{context}[:lambda_function_arn]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListApiKeysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApiKeysInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListApiKeysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApiKeysOutput, context: context)
        ApiKeys.validate!(input[:api_keys], context: "#{context}[:api_keys]") unless input[:api_keys].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDataSourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataSourcesInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDataSourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataSourcesOutput, context: context)
        DataSources.validate!(input[:data_sources], context: "#{context}[:data_sources]") unless input[:data_sources].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDomainNamesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainNamesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDomainNamesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainNamesOutput, context: context)
        DomainNameConfigs.validate!(input[:domain_name_configs], context: "#{context}[:domain_name_configs]") unless input[:domain_name_configs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFunctionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFunctionsInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListFunctionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFunctionsOutput, context: context)
        Functions.validate!(input[:functions], context: "#{context}[:functions]") unless input[:functions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGraphqlApisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGraphqlApisInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListGraphqlApisOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGraphqlApisOutput, context: context)
        GraphqlApis.validate!(input[:graphql_apis], context: "#{context}[:graphql_apis]") unless input[:graphql_apis].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResolversByFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResolversByFunctionInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:function_id], ::String, context: "#{context}[:function_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListResolversByFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResolversByFunctionOutput, context: context)
        Resolvers.validate!(input[:resolvers], context: "#{context}[:resolvers]") unless input[:resolvers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResolversInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResolversInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListResolversOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResolversOutput, context: context)
        Resolvers.validate!(input[:resolvers], context: "#{context}[:resolvers]") unless input[:resolvers].nil?
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
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTypesInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTypesOutput, context: context)
        TypeList.validate!(input[:types], context: "#{context}[:types]") unless input[:types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LogConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogConfig, context: context)
        Hearth::Validator.validate!(input[:field_log_level], ::String, context: "#{context}[:field_log_level]")
        Hearth::Validator.validate!(input[:cloud_watch_logs_role_arn], ::String, context: "#{context}[:cloud_watch_logs_role_arn]")
        Hearth::Validator.validate!(input[:exclude_verbose_content], ::TrueClass, ::FalseClass, context: "#{context}[:exclude_verbose_content]")
      end
    end

    class MapOfStringToString
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OpenIDConnectConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpenIDConnectConfig, context: context)
        Hearth::Validator.validate!(input[:issuer], ::String, context: "#{context}[:issuer]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:iat_ttl], ::Integer, context: "#{context}[:iat_ttl]")
        Hearth::Validator.validate!(input[:auth_ttl], ::Integer, context: "#{context}[:auth_ttl]")
      end
    end

    class OpenSearchServiceDataSourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpenSearchServiceDataSourceConfig, context: context)
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
      end
    end

    class PipelineConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineConfig, context: context)
        FunctionsIds.validate!(input[:functions], context: "#{context}[:functions]") unless input[:functions].nil?
      end
    end

    class RdsHttpEndpointConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RdsHttpEndpointConfig, context: context)
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:db_cluster_identifier], ::String, context: "#{context}[:db_cluster_identifier]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
        Hearth::Validator.validate!(input[:aws_secret_store_arn], ::String, context: "#{context}[:aws_secret_store_arn]")
      end
    end

    class RelationalDatabaseDataSourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelationalDatabaseDataSourceConfig, context: context)
        Hearth::Validator.validate!(input[:relational_database_source_type], ::String, context: "#{context}[:relational_database_source_type]")
        RdsHttpEndpointConfig.validate!(input[:rds_http_endpoint_config], context: "#{context}[:rds_http_endpoint_config]") unless input[:rds_http_endpoint_config].nil?
      end
    end

    class Resolver
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Resolver, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:field_name], ::String, context: "#{context}[:field_name]")
        Hearth::Validator.validate!(input[:data_source_name], ::String, context: "#{context}[:data_source_name]")
        Hearth::Validator.validate!(input[:resolver_arn], ::String, context: "#{context}[:resolver_arn]")
        Hearth::Validator.validate!(input[:request_mapping_template], ::String, context: "#{context}[:request_mapping_template]")
        Hearth::Validator.validate!(input[:response_mapping_template], ::String, context: "#{context}[:response_mapping_template]")
        Hearth::Validator.validate!(input[:kind], ::String, context: "#{context}[:kind]")
        PipelineConfig.validate!(input[:pipeline_config], context: "#{context}[:pipeline_config]") unless input[:pipeline_config].nil?
        SyncConfig.validate!(input[:sync_config], context: "#{context}[:sync_config]") unless input[:sync_config].nil?
        CachingConfig.validate!(input[:caching_config], context: "#{context}[:caching_config]") unless input[:caching_config].nil?
        Hearth::Validator.validate!(input[:max_batch_size], ::Integer, context: "#{context}[:max_batch_size]")
      end
    end

    class Resolvers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Resolver.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartSchemaCreationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSchemaCreationInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:definition], ::String, context: "#{context}[:definition]")
      end
    end

    class StartSchemaCreationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSchemaCreationOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class SyncConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SyncConfig, context: context)
        Hearth::Validator.validate!(input[:conflict_handler], ::String, context: "#{context}[:conflict_handler]")
        Hearth::Validator.validate!(input[:conflict_detection], ::String, context: "#{context}[:conflict_detection]")
        LambdaConflictHandlerConfig.validate!(input[:lambda_conflict_handler_config], context: "#{context}[:lambda_conflict_handler_config]") unless input[:lambda_conflict_handler_config].nil?
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Type
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Type, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:definition], ::String, context: "#{context}[:definition]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
      end
    end

    class TypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Type.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UnauthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateApiCacheInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApiCacheInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:ttl], ::Integer, context: "#{context}[:ttl]")
        Hearth::Validator.validate!(input[:api_caching_behavior], ::String, context: "#{context}[:api_caching_behavior]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class UpdateApiCacheOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApiCacheOutput, context: context)
        ApiCache.validate!(input[:api_cache], context: "#{context}[:api_cache]") unless input[:api_cache].nil?
      end
    end

    class UpdateApiKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApiKeyInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:expires], ::Integer, context: "#{context}[:expires]")
      end
    end

    class UpdateApiKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApiKeyOutput, context: context)
        ApiKey.validate!(input[:api_key], context: "#{context}[:api_key]") unless input[:api_key].nil?
      end
    end

    class UpdateDataSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataSourceInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        DynamodbDataSourceConfig.validate!(input[:dynamodb_config], context: "#{context}[:dynamodb_config]") unless input[:dynamodb_config].nil?
        LambdaDataSourceConfig.validate!(input[:lambda_config], context: "#{context}[:lambda_config]") unless input[:lambda_config].nil?
        ElasticsearchDataSourceConfig.validate!(input[:elasticsearch_config], context: "#{context}[:elasticsearch_config]") unless input[:elasticsearch_config].nil?
        OpenSearchServiceDataSourceConfig.validate!(input[:open_search_service_config], context: "#{context}[:open_search_service_config]") unless input[:open_search_service_config].nil?
        HttpDataSourceConfig.validate!(input[:http_config], context: "#{context}[:http_config]") unless input[:http_config].nil?
        RelationalDatabaseDataSourceConfig.validate!(input[:relational_database_config], context: "#{context}[:relational_database_config]") unless input[:relational_database_config].nil?
      end
    end

    class UpdateDataSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataSourceOutput, context: context)
        DataSource.validate!(input[:data_source], context: "#{context}[:data_source]") unless input[:data_source].nil?
      end
    end

    class UpdateDomainNameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainNameInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateDomainNameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainNameOutput, context: context)
        DomainNameConfig.validate!(input[:domain_name_config], context: "#{context}[:domain_name_config]") unless input[:domain_name_config].nil?
      end
    end

    class UpdateFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFunctionInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:function_id], ::String, context: "#{context}[:function_id]")
        Hearth::Validator.validate!(input[:data_source_name], ::String, context: "#{context}[:data_source_name]")
        Hearth::Validator.validate!(input[:request_mapping_template], ::String, context: "#{context}[:request_mapping_template]")
        Hearth::Validator.validate!(input[:response_mapping_template], ::String, context: "#{context}[:response_mapping_template]")
        Hearth::Validator.validate!(input[:function_version], ::String, context: "#{context}[:function_version]")
        SyncConfig.validate!(input[:sync_config], context: "#{context}[:sync_config]") unless input[:sync_config].nil?
        Hearth::Validator.validate!(input[:max_batch_size], ::Integer, context: "#{context}[:max_batch_size]")
      end
    end

    class UpdateFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFunctionOutput, context: context)
        FunctionConfiguration.validate!(input[:function_configuration], context: "#{context}[:function_configuration]") unless input[:function_configuration].nil?
      end
    end

    class UpdateGraphqlApiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGraphqlApiInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        LogConfig.validate!(input[:log_config], context: "#{context}[:log_config]") unless input[:log_config].nil?
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
        UserPoolConfig.validate!(input[:user_pool_config], context: "#{context}[:user_pool_config]") unless input[:user_pool_config].nil?
        OpenIDConnectConfig.validate!(input[:open_id_connect_config], context: "#{context}[:open_id_connect_config]") unless input[:open_id_connect_config].nil?
        AdditionalAuthenticationProviders.validate!(input[:additional_authentication_providers], context: "#{context}[:additional_authentication_providers]") unless input[:additional_authentication_providers].nil?
        Hearth::Validator.validate!(input[:xray_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:xray_enabled]")
        LambdaAuthorizerConfig.validate!(input[:lambda_authorizer_config], context: "#{context}[:lambda_authorizer_config]") unless input[:lambda_authorizer_config].nil?
      end
    end

    class UpdateGraphqlApiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGraphqlApiOutput, context: context)
        GraphqlApi.validate!(input[:graphql_api], context: "#{context}[:graphql_api]") unless input[:graphql_api].nil?
      end
    end

    class UpdateResolverInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResolverInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:field_name], ::String, context: "#{context}[:field_name]")
        Hearth::Validator.validate!(input[:data_source_name], ::String, context: "#{context}[:data_source_name]")
        Hearth::Validator.validate!(input[:request_mapping_template], ::String, context: "#{context}[:request_mapping_template]")
        Hearth::Validator.validate!(input[:response_mapping_template], ::String, context: "#{context}[:response_mapping_template]")
        Hearth::Validator.validate!(input[:kind], ::String, context: "#{context}[:kind]")
        PipelineConfig.validate!(input[:pipeline_config], context: "#{context}[:pipeline_config]") unless input[:pipeline_config].nil?
        SyncConfig.validate!(input[:sync_config], context: "#{context}[:sync_config]") unless input[:sync_config].nil?
        CachingConfig.validate!(input[:caching_config], context: "#{context}[:caching_config]") unless input[:caching_config].nil?
        Hearth::Validator.validate!(input[:max_batch_size], ::Integer, context: "#{context}[:max_batch_size]")
      end
    end

    class UpdateResolverOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResolverOutput, context: context)
        Resolver.validate!(input[:resolver], context: "#{context}[:resolver]") unless input[:resolver].nil?
      end
    end

    class UpdateTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTypeInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:definition], ::String, context: "#{context}[:definition]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
      end
    end

    class UpdateTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTypeOutput, context: context)
        Type.validate!(input[:type], context: "#{context}[:type]") unless input[:type].nil?
      end
    end

    class UserPoolConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserPoolConfig, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:default_action], ::String, context: "#{context}[:default_action]")
        Hearth::Validator.validate!(input[:app_id_client_regex], ::String, context: "#{context}[:app_id_client_regex]")
      end
    end

  end
end
