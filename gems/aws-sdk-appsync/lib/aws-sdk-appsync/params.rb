# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::AppSync
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AdditionalAuthenticationProvider
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdditionalAuthenticationProvider, context: context)
        type = Types::AdditionalAuthenticationProvider.new
        type.authentication_type = params[:authentication_type]
        type.open_id_connect_config = OpenIDConnectConfig.build(params[:open_id_connect_config], context: "#{context}[:open_id_connect_config]") unless params[:open_id_connect_config].nil?
        type.user_pool_config = CognitoUserPoolConfig.build(params[:user_pool_config], context: "#{context}[:user_pool_config]") unless params[:user_pool_config].nil?
        type.lambda_authorizer_config = LambdaAuthorizerConfig.build(params[:lambda_authorizer_config], context: "#{context}[:lambda_authorizer_config]") unless params[:lambda_authorizer_config].nil?
        type
      end
    end

    module AdditionalAuthenticationProviders
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AdditionalAuthenticationProvider.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApiAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApiAssociation, context: context)
        type = Types::ApiAssociation.new
        type.domain_name = params[:domain_name]
        type.api_id = params[:api_id]
        type.association_status = params[:association_status]
        type.deployment_detail = params[:deployment_detail]
        type
      end
    end

    module ApiCache
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApiCache, context: context)
        type = Types::ApiCache.new
        type.ttl = params[:ttl]
        type.api_caching_behavior = params[:api_caching_behavior]
        type.transit_encryption_enabled = params[:transit_encryption_enabled]
        type.at_rest_encryption_enabled = params[:at_rest_encryption_enabled]
        type.type = params[:type]
        type.status = params[:status]
        type
      end
    end

    module ApiKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApiKey, context: context)
        type = Types::ApiKey.new
        type.id = params[:id]
        type.description = params[:description]
        type.expires = params[:expires]
        type.deletes = params[:deletes]
        type
      end
    end

    module ApiKeyLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApiKeyLimitExceededException, context: context)
        type = Types::ApiKeyLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ApiKeyValidityOutOfBoundsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApiKeyValidityOutOfBoundsException, context: context)
        type = Types::ApiKeyValidityOutOfBoundsException.new
        type.message = params[:message]
        type
      end
    end

    module ApiKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApiKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApiLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApiLimitExceededException, context: context)
        type = Types::ApiLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module AssociateApiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateApiInput, context: context)
        type = Types::AssociateApiInput.new
        type.domain_name = params[:domain_name]
        type.api_id = params[:api_id]
        type
      end
    end

    module AssociateApiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateApiOutput, context: context)
        type = Types::AssociateApiOutput.new
        type.api_association = ApiAssociation.build(params[:api_association], context: "#{context}[:api_association]") unless params[:api_association].nil?
        type
      end
    end

    module AuthorizationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizationConfig, context: context)
        type = Types::AuthorizationConfig.new
        type.authorization_type = params[:authorization_type]
        type.aws_iam_config = AwsIamConfig.build(params[:aws_iam_config], context: "#{context}[:aws_iam_config]") unless params[:aws_iam_config].nil?
        type
      end
    end

    module AwsIamConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsIamConfig, context: context)
        type = Types::AwsIamConfig.new
        type.signing_region = params[:signing_region]
        type.signing_service_name = params[:signing_service_name]
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module CachingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CachingConfig, context: context)
        type = Types::CachingConfig.new
        type.ttl = params[:ttl]
        type.caching_keys = CachingKeys.build(params[:caching_keys], context: "#{context}[:caching_keys]") unless params[:caching_keys].nil?
        type
      end
    end

    module CachingKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CognitoUserPoolConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CognitoUserPoolConfig, context: context)
        type = Types::CognitoUserPoolConfig.new
        type.user_pool_id = params[:user_pool_id]
        type.aws_region = params[:aws_region]
        type.app_id_client_regex = params[:app_id_client_regex]
        type
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

    module CreateApiCacheInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApiCacheInput, context: context)
        type = Types::CreateApiCacheInput.new
        type.api_id = params[:api_id]
        type.ttl = params[:ttl]
        type.transit_encryption_enabled = params[:transit_encryption_enabled]
        type.at_rest_encryption_enabled = params[:at_rest_encryption_enabled]
        type.api_caching_behavior = params[:api_caching_behavior]
        type.type = params[:type]
        type
      end
    end

    module CreateApiCacheOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApiCacheOutput, context: context)
        type = Types::CreateApiCacheOutput.new
        type.api_cache = ApiCache.build(params[:api_cache], context: "#{context}[:api_cache]") unless params[:api_cache].nil?
        type
      end
    end

    module CreateApiKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApiKeyInput, context: context)
        type = Types::CreateApiKeyInput.new
        type.api_id = params[:api_id]
        type.description = params[:description]
        type.expires = params[:expires]
        type
      end
    end

    module CreateApiKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApiKeyOutput, context: context)
        type = Types::CreateApiKeyOutput.new
        type.api_key = ApiKey.build(params[:api_key], context: "#{context}[:api_key]") unless params[:api_key].nil?
        type
      end
    end

    module CreateDataSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataSourceInput, context: context)
        type = Types::CreateDataSourceInput.new
        type.api_id = params[:api_id]
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type.service_role_arn = params[:service_role_arn]
        type.dynamodb_config = DynamodbDataSourceConfig.build(params[:dynamodb_config], context: "#{context}[:dynamodb_config]") unless params[:dynamodb_config].nil?
        type.lambda_config = LambdaDataSourceConfig.build(params[:lambda_config], context: "#{context}[:lambda_config]") unless params[:lambda_config].nil?
        type.elasticsearch_config = ElasticsearchDataSourceConfig.build(params[:elasticsearch_config], context: "#{context}[:elasticsearch_config]") unless params[:elasticsearch_config].nil?
        type.open_search_service_config = OpenSearchServiceDataSourceConfig.build(params[:open_search_service_config], context: "#{context}[:open_search_service_config]") unless params[:open_search_service_config].nil?
        type.http_config = HttpDataSourceConfig.build(params[:http_config], context: "#{context}[:http_config]") unless params[:http_config].nil?
        type.relational_database_config = RelationalDatabaseDataSourceConfig.build(params[:relational_database_config], context: "#{context}[:relational_database_config]") unless params[:relational_database_config].nil?
        type
      end
    end

    module CreateDataSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataSourceOutput, context: context)
        type = Types::CreateDataSourceOutput.new
        type.data_source = DataSource.build(params[:data_source], context: "#{context}[:data_source]") unless params[:data_source].nil?
        type
      end
    end

    module CreateDomainNameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainNameInput, context: context)
        type = Types::CreateDomainNameInput.new
        type.domain_name = params[:domain_name]
        type.certificate_arn = params[:certificate_arn]
        type.description = params[:description]
        type
      end
    end

    module CreateDomainNameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainNameOutput, context: context)
        type = Types::CreateDomainNameOutput.new
        type.domain_name_config = DomainNameConfig.build(params[:domain_name_config], context: "#{context}[:domain_name_config]") unless params[:domain_name_config].nil?
        type
      end
    end

    module CreateFunctionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFunctionInput, context: context)
        type = Types::CreateFunctionInput.new
        type.api_id = params[:api_id]
        type.name = params[:name]
        type.description = params[:description]
        type.data_source_name = params[:data_source_name]
        type.request_mapping_template = params[:request_mapping_template]
        type.response_mapping_template = params[:response_mapping_template]
        type.function_version = params[:function_version]
        type.sync_config = SyncConfig.build(params[:sync_config], context: "#{context}[:sync_config]") unless params[:sync_config].nil?
        type.max_batch_size = params[:max_batch_size]
        type
      end
    end

    module CreateFunctionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFunctionOutput, context: context)
        type = Types::CreateFunctionOutput.new
        type.function_configuration = FunctionConfiguration.build(params[:function_configuration], context: "#{context}[:function_configuration]") unless params[:function_configuration].nil?
        type
      end
    end

    module CreateGraphqlApiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGraphqlApiInput, context: context)
        type = Types::CreateGraphqlApiInput.new
        type.name = params[:name]
        type.log_config = LogConfig.build(params[:log_config], context: "#{context}[:log_config]") unless params[:log_config].nil?
        type.authentication_type = params[:authentication_type]
        type.user_pool_config = UserPoolConfig.build(params[:user_pool_config], context: "#{context}[:user_pool_config]") unless params[:user_pool_config].nil?
        type.open_id_connect_config = OpenIDConnectConfig.build(params[:open_id_connect_config], context: "#{context}[:open_id_connect_config]") unless params[:open_id_connect_config].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.additional_authentication_providers = AdditionalAuthenticationProviders.build(params[:additional_authentication_providers], context: "#{context}[:additional_authentication_providers]") unless params[:additional_authentication_providers].nil?
        type.xray_enabled = params[:xray_enabled]
        type.lambda_authorizer_config = LambdaAuthorizerConfig.build(params[:lambda_authorizer_config], context: "#{context}[:lambda_authorizer_config]") unless params[:lambda_authorizer_config].nil?
        type
      end
    end

    module CreateGraphqlApiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGraphqlApiOutput, context: context)
        type = Types::CreateGraphqlApiOutput.new
        type.graphql_api = GraphqlApi.build(params[:graphql_api], context: "#{context}[:graphql_api]") unless params[:graphql_api].nil?
        type
      end
    end

    module CreateResolverInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResolverInput, context: context)
        type = Types::CreateResolverInput.new
        type.api_id = params[:api_id]
        type.type_name = params[:type_name]
        type.field_name = params[:field_name]
        type.data_source_name = params[:data_source_name]
        type.request_mapping_template = params[:request_mapping_template]
        type.response_mapping_template = params[:response_mapping_template]
        type.kind = params[:kind]
        type.pipeline_config = PipelineConfig.build(params[:pipeline_config], context: "#{context}[:pipeline_config]") unless params[:pipeline_config].nil?
        type.sync_config = SyncConfig.build(params[:sync_config], context: "#{context}[:sync_config]") unless params[:sync_config].nil?
        type.caching_config = CachingConfig.build(params[:caching_config], context: "#{context}[:caching_config]") unless params[:caching_config].nil?
        type.max_batch_size = params[:max_batch_size]
        type
      end
    end

    module CreateResolverOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResolverOutput, context: context)
        type = Types::CreateResolverOutput.new
        type.resolver = Resolver.build(params[:resolver], context: "#{context}[:resolver]") unless params[:resolver].nil?
        type
      end
    end

    module CreateTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTypeInput, context: context)
        type = Types::CreateTypeInput.new
        type.api_id = params[:api_id]
        type.definition = params[:definition]
        type.format = params[:format]
        type
      end
    end

    module CreateTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTypeOutput, context: context)
        type = Types::CreateTypeOutput.new
        type.type = Type.build(params[:type], context: "#{context}[:type]") unless params[:type].nil?
        type
      end
    end

    module DataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSource, context: context)
        type = Types::DataSource.new
        type.data_source_arn = params[:data_source_arn]
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type.service_role_arn = params[:service_role_arn]
        type.dynamodb_config = DynamodbDataSourceConfig.build(params[:dynamodb_config], context: "#{context}[:dynamodb_config]") unless params[:dynamodb_config].nil?
        type.lambda_config = LambdaDataSourceConfig.build(params[:lambda_config], context: "#{context}[:lambda_config]") unless params[:lambda_config].nil?
        type.elasticsearch_config = ElasticsearchDataSourceConfig.build(params[:elasticsearch_config], context: "#{context}[:elasticsearch_config]") unless params[:elasticsearch_config].nil?
        type.open_search_service_config = OpenSearchServiceDataSourceConfig.build(params[:open_search_service_config], context: "#{context}[:open_search_service_config]") unless params[:open_search_service_config].nil?
        type.http_config = HttpDataSourceConfig.build(params[:http_config], context: "#{context}[:http_config]") unless params[:http_config].nil?
        type.relational_database_config = RelationalDatabaseDataSourceConfig.build(params[:relational_database_config], context: "#{context}[:relational_database_config]") unless params[:relational_database_config].nil?
        type
      end
    end

    module DataSources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteApiCacheInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApiCacheInput, context: context)
        type = Types::DeleteApiCacheInput.new
        type.api_id = params[:api_id]
        type
      end
    end

    module DeleteApiCacheOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApiCacheOutput, context: context)
        type = Types::DeleteApiCacheOutput.new
        type
      end
    end

    module DeleteApiKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApiKeyInput, context: context)
        type = Types::DeleteApiKeyInput.new
        type.api_id = params[:api_id]
        type.id = params[:id]
        type
      end
    end

    module DeleteApiKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApiKeyOutput, context: context)
        type = Types::DeleteApiKeyOutput.new
        type
      end
    end

    module DeleteDataSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataSourceInput, context: context)
        type = Types::DeleteDataSourceInput.new
        type.api_id = params[:api_id]
        type.name = params[:name]
        type
      end
    end

    module DeleteDataSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataSourceOutput, context: context)
        type = Types::DeleteDataSourceOutput.new
        type
      end
    end

    module DeleteDomainNameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainNameInput, context: context)
        type = Types::DeleteDomainNameInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DeleteDomainNameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainNameOutput, context: context)
        type = Types::DeleteDomainNameOutput.new
        type
      end
    end

    module DeleteFunctionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFunctionInput, context: context)
        type = Types::DeleteFunctionInput.new
        type.api_id = params[:api_id]
        type.function_id = params[:function_id]
        type
      end
    end

    module DeleteFunctionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFunctionOutput, context: context)
        type = Types::DeleteFunctionOutput.new
        type
      end
    end

    module DeleteGraphqlApiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGraphqlApiInput, context: context)
        type = Types::DeleteGraphqlApiInput.new
        type.api_id = params[:api_id]
        type
      end
    end

    module DeleteGraphqlApiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGraphqlApiOutput, context: context)
        type = Types::DeleteGraphqlApiOutput.new
        type
      end
    end

    module DeleteResolverInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResolverInput, context: context)
        type = Types::DeleteResolverInput.new
        type.api_id = params[:api_id]
        type.type_name = params[:type_name]
        type.field_name = params[:field_name]
        type
      end
    end

    module DeleteResolverOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResolverOutput, context: context)
        type = Types::DeleteResolverOutput.new
        type
      end
    end

    module DeleteTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTypeInput, context: context)
        type = Types::DeleteTypeInput.new
        type.api_id = params[:api_id]
        type.type_name = params[:type_name]
        type
      end
    end

    module DeleteTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTypeOutput, context: context)
        type = Types::DeleteTypeOutput.new
        type
      end
    end

    module DeltaSyncConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeltaSyncConfig, context: context)
        type = Types::DeltaSyncConfig.new
        type.base_table_ttl = params[:base_table_ttl]
        type.delta_sync_table_name = params[:delta_sync_table_name]
        type.delta_sync_table_ttl = params[:delta_sync_table_ttl]
        type
      end
    end

    module DisassociateApiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateApiInput, context: context)
        type = Types::DisassociateApiInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DisassociateApiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateApiOutput, context: context)
        type = Types::DisassociateApiOutput.new
        type
      end
    end

    module DomainNameConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainNameConfig, context: context)
        type = Types::DomainNameConfig.new
        type.domain_name = params[:domain_name]
        type.description = params[:description]
        type.certificate_arn = params[:certificate_arn]
        type.appsync_domain_name = params[:appsync_domain_name]
        type.hosted_zone_id = params[:hosted_zone_id]
        type
      end
    end

    module DomainNameConfigs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainNameConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DynamodbDataSourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DynamodbDataSourceConfig, context: context)
        type = Types::DynamodbDataSourceConfig.new
        type.table_name = params[:table_name]
        type.aws_region = params[:aws_region]
        type.use_caller_credentials = params[:use_caller_credentials]
        type.delta_sync_config = DeltaSyncConfig.build(params[:delta_sync_config], context: "#{context}[:delta_sync_config]") unless params[:delta_sync_config].nil?
        type.versioned = params[:versioned]
        type
      end
    end

    module ElasticsearchDataSourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticsearchDataSourceConfig, context: context)
        type = Types::ElasticsearchDataSourceConfig.new
        type.endpoint = params[:endpoint]
        type.aws_region = params[:aws_region]
        type
      end
    end

    module FlushApiCacheInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FlushApiCacheInput, context: context)
        type = Types::FlushApiCacheInput.new
        type.api_id = params[:api_id]
        type
      end
    end

    module FlushApiCacheOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FlushApiCacheOutput, context: context)
        type = Types::FlushApiCacheOutput.new
        type
      end
    end

    module FunctionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FunctionConfiguration, context: context)
        type = Types::FunctionConfiguration.new
        type.function_id = params[:function_id]
        type.function_arn = params[:function_arn]
        type.name = params[:name]
        type.description = params[:description]
        type.data_source_name = params[:data_source_name]
        type.request_mapping_template = params[:request_mapping_template]
        type.response_mapping_template = params[:response_mapping_template]
        type.function_version = params[:function_version]
        type.sync_config = SyncConfig.build(params[:sync_config], context: "#{context}[:sync_config]") unless params[:sync_config].nil?
        type.max_batch_size = params[:max_batch_size]
        type
      end
    end

    module Functions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FunctionConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FunctionsIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetApiAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApiAssociationInput, context: context)
        type = Types::GetApiAssociationInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module GetApiAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApiAssociationOutput, context: context)
        type = Types::GetApiAssociationOutput.new
        type.api_association = ApiAssociation.build(params[:api_association], context: "#{context}[:api_association]") unless params[:api_association].nil?
        type
      end
    end

    module GetApiCacheInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApiCacheInput, context: context)
        type = Types::GetApiCacheInput.new
        type.api_id = params[:api_id]
        type
      end
    end

    module GetApiCacheOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApiCacheOutput, context: context)
        type = Types::GetApiCacheOutput.new
        type.api_cache = ApiCache.build(params[:api_cache], context: "#{context}[:api_cache]") unless params[:api_cache].nil?
        type
      end
    end

    module GetDataSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataSourceInput, context: context)
        type = Types::GetDataSourceInput.new
        type.api_id = params[:api_id]
        type.name = params[:name]
        type
      end
    end

    module GetDataSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataSourceOutput, context: context)
        type = Types::GetDataSourceOutput.new
        type.data_source = DataSource.build(params[:data_source], context: "#{context}[:data_source]") unless params[:data_source].nil?
        type
      end
    end

    module GetDomainNameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainNameInput, context: context)
        type = Types::GetDomainNameInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module GetDomainNameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainNameOutput, context: context)
        type = Types::GetDomainNameOutput.new
        type.domain_name_config = DomainNameConfig.build(params[:domain_name_config], context: "#{context}[:domain_name_config]") unless params[:domain_name_config].nil?
        type
      end
    end

    module GetFunctionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFunctionInput, context: context)
        type = Types::GetFunctionInput.new
        type.api_id = params[:api_id]
        type.function_id = params[:function_id]
        type
      end
    end

    module GetFunctionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFunctionOutput, context: context)
        type = Types::GetFunctionOutput.new
        type.function_configuration = FunctionConfiguration.build(params[:function_configuration], context: "#{context}[:function_configuration]") unless params[:function_configuration].nil?
        type
      end
    end

    module GetGraphqlApiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGraphqlApiInput, context: context)
        type = Types::GetGraphqlApiInput.new
        type.api_id = params[:api_id]
        type
      end
    end

    module GetGraphqlApiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGraphqlApiOutput, context: context)
        type = Types::GetGraphqlApiOutput.new
        type.graphql_api = GraphqlApi.build(params[:graphql_api], context: "#{context}[:graphql_api]") unless params[:graphql_api].nil?
        type
      end
    end

    module GetIntrospectionSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntrospectionSchemaInput, context: context)
        type = Types::GetIntrospectionSchemaInput.new
        type.api_id = params[:api_id]
        type.format = params[:format]
        type.include_directives = params[:include_directives]
        type
      end
    end

    module GetIntrospectionSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntrospectionSchemaOutput, context: context)
        type = Types::GetIntrospectionSchemaOutput.new
        type.schema = params[:schema]
        type
      end
    end

    module GetResolverInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResolverInput, context: context)
        type = Types::GetResolverInput.new
        type.api_id = params[:api_id]
        type.type_name = params[:type_name]
        type.field_name = params[:field_name]
        type
      end
    end

    module GetResolverOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResolverOutput, context: context)
        type = Types::GetResolverOutput.new
        type.resolver = Resolver.build(params[:resolver], context: "#{context}[:resolver]") unless params[:resolver].nil?
        type
      end
    end

    module GetSchemaCreationStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSchemaCreationStatusInput, context: context)
        type = Types::GetSchemaCreationStatusInput.new
        type.api_id = params[:api_id]
        type
      end
    end

    module GetSchemaCreationStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSchemaCreationStatusOutput, context: context)
        type = Types::GetSchemaCreationStatusOutput.new
        type.status = params[:status]
        type.details = params[:details]
        type
      end
    end

    module GetTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTypeInput, context: context)
        type = Types::GetTypeInput.new
        type.api_id = params[:api_id]
        type.type_name = params[:type_name]
        type.format = params[:format]
        type
      end
    end

    module GetTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTypeOutput, context: context)
        type = Types::GetTypeOutput.new
        type.type = Type.build(params[:type], context: "#{context}[:type]") unless params[:type].nil?
        type
      end
    end

    module GraphQLSchemaException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GraphQLSchemaException, context: context)
        type = Types::GraphQLSchemaException.new
        type.message = params[:message]
        type
      end
    end

    module GraphqlApi
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GraphqlApi, context: context)
        type = Types::GraphqlApi.new
        type.name = params[:name]
        type.api_id = params[:api_id]
        type.authentication_type = params[:authentication_type]
        type.log_config = LogConfig.build(params[:log_config], context: "#{context}[:log_config]") unless params[:log_config].nil?
        type.user_pool_config = UserPoolConfig.build(params[:user_pool_config], context: "#{context}[:user_pool_config]") unless params[:user_pool_config].nil?
        type.open_id_connect_config = OpenIDConnectConfig.build(params[:open_id_connect_config], context: "#{context}[:open_id_connect_config]") unless params[:open_id_connect_config].nil?
        type.arn = params[:arn]
        type.uris = MapOfStringToString.build(params[:uris], context: "#{context}[:uris]") unless params[:uris].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.additional_authentication_providers = AdditionalAuthenticationProviders.build(params[:additional_authentication_providers], context: "#{context}[:additional_authentication_providers]") unless params[:additional_authentication_providers].nil?
        type.xray_enabled = params[:xray_enabled]
        type.waf_web_acl_arn = params[:waf_web_acl_arn]
        type.lambda_authorizer_config = LambdaAuthorizerConfig.build(params[:lambda_authorizer_config], context: "#{context}[:lambda_authorizer_config]") unless params[:lambda_authorizer_config].nil?
        type
      end
    end

    module GraphqlApis
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GraphqlApi.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HttpDataSourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpDataSourceConfig, context: context)
        type = Types::HttpDataSourceConfig.new
        type.endpoint = params[:endpoint]
        type.authorization_config = AuthorizationConfig.build(params[:authorization_config], context: "#{context}[:authorization_config]") unless params[:authorization_config].nil?
        type
      end
    end

    module InternalFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalFailureException, context: context)
        type = Types::InternalFailureException.new
        type.message = params[:message]
        type
      end
    end

    module LambdaAuthorizerConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaAuthorizerConfig, context: context)
        type = Types::LambdaAuthorizerConfig.new
        type.authorizer_result_ttl_in_seconds = params[:authorizer_result_ttl_in_seconds]
        type.authorizer_uri = params[:authorizer_uri]
        type.identity_validation_expression = params[:identity_validation_expression]
        type
      end
    end

    module LambdaConflictHandlerConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaConflictHandlerConfig, context: context)
        type = Types::LambdaConflictHandlerConfig.new
        type.lambda_conflict_handler_arn = params[:lambda_conflict_handler_arn]
        type
      end
    end

    module LambdaDataSourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaDataSourceConfig, context: context)
        type = Types::LambdaDataSourceConfig.new
        type.lambda_function_arn = params[:lambda_function_arn]
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

    module ListApiKeysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApiKeysInput, context: context)
        type = Types::ListApiKeysInput.new
        type.api_id = params[:api_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListApiKeysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApiKeysOutput, context: context)
        type = Types::ListApiKeysOutput.new
        type.api_keys = ApiKeys.build(params[:api_keys], context: "#{context}[:api_keys]") unless params[:api_keys].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDataSourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataSourcesInput, context: context)
        type = Types::ListDataSourcesInput.new
        type.api_id = params[:api_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDataSourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataSourcesOutput, context: context)
        type = Types::ListDataSourcesOutput.new
        type.data_sources = DataSources.build(params[:data_sources], context: "#{context}[:data_sources]") unless params[:data_sources].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDomainNamesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainNamesInput, context: context)
        type = Types::ListDomainNamesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDomainNamesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainNamesOutput, context: context)
        type = Types::ListDomainNamesOutput.new
        type.domain_name_configs = DomainNameConfigs.build(params[:domain_name_configs], context: "#{context}[:domain_name_configs]") unless params[:domain_name_configs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFunctionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFunctionsInput, context: context)
        type = Types::ListFunctionsInput.new
        type.api_id = params[:api_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListFunctionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFunctionsOutput, context: context)
        type = Types::ListFunctionsOutput.new
        type.functions = Functions.build(params[:functions], context: "#{context}[:functions]") unless params[:functions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGraphqlApisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGraphqlApisInput, context: context)
        type = Types::ListGraphqlApisInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListGraphqlApisOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGraphqlApisOutput, context: context)
        type = Types::ListGraphqlApisOutput.new
        type.graphql_apis = GraphqlApis.build(params[:graphql_apis], context: "#{context}[:graphql_apis]") unless params[:graphql_apis].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResolversByFunctionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResolversByFunctionInput, context: context)
        type = Types::ListResolversByFunctionInput.new
        type.api_id = params[:api_id]
        type.function_id = params[:function_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListResolversByFunctionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResolversByFunctionOutput, context: context)
        type = Types::ListResolversByFunctionOutput.new
        type.resolvers = Resolvers.build(params[:resolvers], context: "#{context}[:resolvers]") unless params[:resolvers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResolversInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResolversInput, context: context)
        type = Types::ListResolversInput.new
        type.api_id = params[:api_id]
        type.type_name = params[:type_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListResolversOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResolversOutput, context: context)
        type = Types::ListResolversOutput.new
        type.resolvers = Resolvers.build(params[:resolvers], context: "#{context}[:resolvers]") unless params[:resolvers].nil?
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
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTypesInput, context: context)
        type = Types::ListTypesInput.new
        type.api_id = params[:api_id]
        type.format = params[:format]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTypesOutput, context: context)
        type = Types::ListTypesOutput.new
        type.types = TypeList.build(params[:types], context: "#{context}[:types]") unless params[:types].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LogConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogConfig, context: context)
        type = Types::LogConfig.new
        type.field_log_level = params[:field_log_level]
        type.cloud_watch_logs_role_arn = params[:cloud_watch_logs_role_arn]
        type.exclude_verbose_content = params[:exclude_verbose_content]
        type
      end
    end

    module MapOfStringToString
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module OpenIDConnectConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpenIDConnectConfig, context: context)
        type = Types::OpenIDConnectConfig.new
        type.issuer = params[:issuer]
        type.client_id = params[:client_id]
        type.iat_ttl = params[:iat_ttl]
        type.auth_ttl = params[:auth_ttl]
        type
      end
    end

    module OpenSearchServiceDataSourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpenSearchServiceDataSourceConfig, context: context)
        type = Types::OpenSearchServiceDataSourceConfig.new
        type.endpoint = params[:endpoint]
        type.aws_region = params[:aws_region]
        type
      end
    end

    module PipelineConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineConfig, context: context)
        type = Types::PipelineConfig.new
        type.functions = FunctionsIds.build(params[:functions], context: "#{context}[:functions]") unless params[:functions].nil?
        type
      end
    end

    module RdsHttpEndpointConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RdsHttpEndpointConfig, context: context)
        type = Types::RdsHttpEndpointConfig.new
        type.aws_region = params[:aws_region]
        type.db_cluster_identifier = params[:db_cluster_identifier]
        type.database_name = params[:database_name]
        type.schema = params[:schema]
        type.aws_secret_store_arn = params[:aws_secret_store_arn]
        type
      end
    end

    module RelationalDatabaseDataSourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelationalDatabaseDataSourceConfig, context: context)
        type = Types::RelationalDatabaseDataSourceConfig.new
        type.relational_database_source_type = params[:relational_database_source_type]
        type.rds_http_endpoint_config = RdsHttpEndpointConfig.build(params[:rds_http_endpoint_config], context: "#{context}[:rds_http_endpoint_config]") unless params[:rds_http_endpoint_config].nil?
        type
      end
    end

    module Resolver
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Resolver, context: context)
        type = Types::Resolver.new
        type.type_name = params[:type_name]
        type.field_name = params[:field_name]
        type.data_source_name = params[:data_source_name]
        type.resolver_arn = params[:resolver_arn]
        type.request_mapping_template = params[:request_mapping_template]
        type.response_mapping_template = params[:response_mapping_template]
        type.kind = params[:kind]
        type.pipeline_config = PipelineConfig.build(params[:pipeline_config], context: "#{context}[:pipeline_config]") unless params[:pipeline_config].nil?
        type.sync_config = SyncConfig.build(params[:sync_config], context: "#{context}[:sync_config]") unless params[:sync_config].nil?
        type.caching_config = CachingConfig.build(params[:caching_config], context: "#{context}[:caching_config]") unless params[:caching_config].nil?
        type.max_batch_size = params[:max_batch_size]
        type
      end
    end

    module Resolvers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Resolver.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartSchemaCreationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSchemaCreationInput, context: context)
        type = Types::StartSchemaCreationInput.new
        type.api_id = params[:api_id]
        type.definition = params[:definition]
        type
      end
    end

    module StartSchemaCreationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSchemaCreationOutput, context: context)
        type = Types::StartSchemaCreationOutput.new
        type.status = params[:status]
        type
      end
    end

    module SyncConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SyncConfig, context: context)
        type = Types::SyncConfig.new
        type.conflict_handler = params[:conflict_handler]
        type.conflict_detection = params[:conflict_detection]
        type.lambda_conflict_handler_config = LambdaConflictHandlerConfig.build(params[:lambda_conflict_handler_config], context: "#{context}[:lambda_conflict_handler_config]") unless params[:lambda_conflict_handler_config].nil?
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Type
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Type, context: context)
        type = Types::Type.new
        type.name = params[:name]
        type.description = params[:description]
        type.arn = params[:arn]
        type.definition = params[:definition]
        type.format = params[:format]
        type
      end
    end

    module TypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Type.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UnauthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedException, context: context)
        type = Types::UnauthorizedException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateApiCacheInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApiCacheInput, context: context)
        type = Types::UpdateApiCacheInput.new
        type.api_id = params[:api_id]
        type.ttl = params[:ttl]
        type.api_caching_behavior = params[:api_caching_behavior]
        type.type = params[:type]
        type
      end
    end

    module UpdateApiCacheOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApiCacheOutput, context: context)
        type = Types::UpdateApiCacheOutput.new
        type.api_cache = ApiCache.build(params[:api_cache], context: "#{context}[:api_cache]") unless params[:api_cache].nil?
        type
      end
    end

    module UpdateApiKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApiKeyInput, context: context)
        type = Types::UpdateApiKeyInput.new
        type.api_id = params[:api_id]
        type.id = params[:id]
        type.description = params[:description]
        type.expires = params[:expires]
        type
      end
    end

    module UpdateApiKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApiKeyOutput, context: context)
        type = Types::UpdateApiKeyOutput.new
        type.api_key = ApiKey.build(params[:api_key], context: "#{context}[:api_key]") unless params[:api_key].nil?
        type
      end
    end

    module UpdateDataSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataSourceInput, context: context)
        type = Types::UpdateDataSourceInput.new
        type.api_id = params[:api_id]
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type.service_role_arn = params[:service_role_arn]
        type.dynamodb_config = DynamodbDataSourceConfig.build(params[:dynamodb_config], context: "#{context}[:dynamodb_config]") unless params[:dynamodb_config].nil?
        type.lambda_config = LambdaDataSourceConfig.build(params[:lambda_config], context: "#{context}[:lambda_config]") unless params[:lambda_config].nil?
        type.elasticsearch_config = ElasticsearchDataSourceConfig.build(params[:elasticsearch_config], context: "#{context}[:elasticsearch_config]") unless params[:elasticsearch_config].nil?
        type.open_search_service_config = OpenSearchServiceDataSourceConfig.build(params[:open_search_service_config], context: "#{context}[:open_search_service_config]") unless params[:open_search_service_config].nil?
        type.http_config = HttpDataSourceConfig.build(params[:http_config], context: "#{context}[:http_config]") unless params[:http_config].nil?
        type.relational_database_config = RelationalDatabaseDataSourceConfig.build(params[:relational_database_config], context: "#{context}[:relational_database_config]") unless params[:relational_database_config].nil?
        type
      end
    end

    module UpdateDataSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataSourceOutput, context: context)
        type = Types::UpdateDataSourceOutput.new
        type.data_source = DataSource.build(params[:data_source], context: "#{context}[:data_source]") unless params[:data_source].nil?
        type
      end
    end

    module UpdateDomainNameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainNameInput, context: context)
        type = Types::UpdateDomainNameInput.new
        type.domain_name = params[:domain_name]
        type.description = params[:description]
        type
      end
    end

    module UpdateDomainNameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainNameOutput, context: context)
        type = Types::UpdateDomainNameOutput.new
        type.domain_name_config = DomainNameConfig.build(params[:domain_name_config], context: "#{context}[:domain_name_config]") unless params[:domain_name_config].nil?
        type
      end
    end

    module UpdateFunctionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFunctionInput, context: context)
        type = Types::UpdateFunctionInput.new
        type.api_id = params[:api_id]
        type.name = params[:name]
        type.description = params[:description]
        type.function_id = params[:function_id]
        type.data_source_name = params[:data_source_name]
        type.request_mapping_template = params[:request_mapping_template]
        type.response_mapping_template = params[:response_mapping_template]
        type.function_version = params[:function_version]
        type.sync_config = SyncConfig.build(params[:sync_config], context: "#{context}[:sync_config]") unless params[:sync_config].nil?
        type.max_batch_size = params[:max_batch_size]
        type
      end
    end

    module UpdateFunctionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFunctionOutput, context: context)
        type = Types::UpdateFunctionOutput.new
        type.function_configuration = FunctionConfiguration.build(params[:function_configuration], context: "#{context}[:function_configuration]") unless params[:function_configuration].nil?
        type
      end
    end

    module UpdateGraphqlApiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGraphqlApiInput, context: context)
        type = Types::UpdateGraphqlApiInput.new
        type.api_id = params[:api_id]
        type.name = params[:name]
        type.log_config = LogConfig.build(params[:log_config], context: "#{context}[:log_config]") unless params[:log_config].nil?
        type.authentication_type = params[:authentication_type]
        type.user_pool_config = UserPoolConfig.build(params[:user_pool_config], context: "#{context}[:user_pool_config]") unless params[:user_pool_config].nil?
        type.open_id_connect_config = OpenIDConnectConfig.build(params[:open_id_connect_config], context: "#{context}[:open_id_connect_config]") unless params[:open_id_connect_config].nil?
        type.additional_authentication_providers = AdditionalAuthenticationProviders.build(params[:additional_authentication_providers], context: "#{context}[:additional_authentication_providers]") unless params[:additional_authentication_providers].nil?
        type.xray_enabled = params[:xray_enabled]
        type.lambda_authorizer_config = LambdaAuthorizerConfig.build(params[:lambda_authorizer_config], context: "#{context}[:lambda_authorizer_config]") unless params[:lambda_authorizer_config].nil?
        type
      end
    end

    module UpdateGraphqlApiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGraphqlApiOutput, context: context)
        type = Types::UpdateGraphqlApiOutput.new
        type.graphql_api = GraphqlApi.build(params[:graphql_api], context: "#{context}[:graphql_api]") unless params[:graphql_api].nil?
        type
      end
    end

    module UpdateResolverInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResolverInput, context: context)
        type = Types::UpdateResolverInput.new
        type.api_id = params[:api_id]
        type.type_name = params[:type_name]
        type.field_name = params[:field_name]
        type.data_source_name = params[:data_source_name]
        type.request_mapping_template = params[:request_mapping_template]
        type.response_mapping_template = params[:response_mapping_template]
        type.kind = params[:kind]
        type.pipeline_config = PipelineConfig.build(params[:pipeline_config], context: "#{context}[:pipeline_config]") unless params[:pipeline_config].nil?
        type.sync_config = SyncConfig.build(params[:sync_config], context: "#{context}[:sync_config]") unless params[:sync_config].nil?
        type.caching_config = CachingConfig.build(params[:caching_config], context: "#{context}[:caching_config]") unless params[:caching_config].nil?
        type.max_batch_size = params[:max_batch_size]
        type
      end
    end

    module UpdateResolverOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResolverOutput, context: context)
        type = Types::UpdateResolverOutput.new
        type.resolver = Resolver.build(params[:resolver], context: "#{context}[:resolver]") unless params[:resolver].nil?
        type
      end
    end

    module UpdateTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTypeInput, context: context)
        type = Types::UpdateTypeInput.new
        type.api_id = params[:api_id]
        type.type_name = params[:type_name]
        type.definition = params[:definition]
        type.format = params[:format]
        type
      end
    end

    module UpdateTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTypeOutput, context: context)
        type = Types::UpdateTypeOutput.new
        type.type = Type.build(params[:type], context: "#{context}[:type]") unless params[:type].nil?
        type
      end
    end

    module UserPoolConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserPoolConfig, context: context)
        type = Types::UserPoolConfig.new
        type.user_pool_id = params[:user_pool_id]
        type.aws_region = params[:aws_region]
        type.default_action = params[:default_action]
        type.app_id_client_regex = params[:app_id_client_regex]
        type
      end
    end

  end
end
