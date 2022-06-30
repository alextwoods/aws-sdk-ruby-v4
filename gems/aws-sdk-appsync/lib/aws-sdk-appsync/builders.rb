# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::AppSync
  module Builders

    # Operation Builder for AssociateApi
    class AssociateApi
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domainnames/%<domainName>s/apiassociation',
            domainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['apiId'] = input[:api_id] unless input[:api_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateApiCache
    class CreateApiCache
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/ApiCaches',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ttl'] = input[:ttl] unless input[:ttl].nil?
        data['transitEncryptionEnabled'] = input[:transit_encryption_enabled] unless input[:transit_encryption_enabled].nil?
        data['atRestEncryptionEnabled'] = input[:at_rest_encryption_enabled] unless input[:at_rest_encryption_enabled].nil?
        data['apiCachingBehavior'] = input[:api_caching_behavior] unless input[:api_caching_behavior].nil?
        data['type'] = input[:type] unless input[:type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateApiKey
    class CreateApiKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/apikeys',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['expires'] = input[:expires] unless input[:expires].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDataSource
    class CreateDataSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/datasources',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['serviceRoleArn'] = input[:service_role_arn] unless input[:service_role_arn].nil?
        data['dynamodbConfig'] = Builders::DynamodbDataSourceConfig.build(input[:dynamodb_config]) unless input[:dynamodb_config].nil?
        data['lambdaConfig'] = Builders::LambdaDataSourceConfig.build(input[:lambda_config]) unless input[:lambda_config].nil?
        data['elasticsearchConfig'] = Builders::ElasticsearchDataSourceConfig.build(input[:elasticsearch_config]) unless input[:elasticsearch_config].nil?
        data['openSearchServiceConfig'] = Builders::OpenSearchServiceDataSourceConfig.build(input[:open_search_service_config]) unless input[:open_search_service_config].nil?
        data['httpConfig'] = Builders::HttpDataSourceConfig.build(input[:http_config]) unless input[:http_config].nil?
        data['relationalDatabaseConfig'] = Builders::RelationalDatabaseDataSourceConfig.build(input[:relational_database_config]) unless input[:relational_database_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RelationalDatabaseDataSourceConfig
    class RelationalDatabaseDataSourceConfig
      def self.build(input)
        data = {}
        data['relationalDatabaseSourceType'] = input[:relational_database_source_type] unless input[:relational_database_source_type].nil?
        data['rdsHttpEndpointConfig'] = Builders::RdsHttpEndpointConfig.build(input[:rds_http_endpoint_config]) unless input[:rds_http_endpoint_config].nil?
        data
      end
    end

    # Structure Builder for RdsHttpEndpointConfig
    class RdsHttpEndpointConfig
      def self.build(input)
        data = {}
        data['awsRegion'] = input[:aws_region] unless input[:aws_region].nil?
        data['dbClusterIdentifier'] = input[:db_cluster_identifier] unless input[:db_cluster_identifier].nil?
        data['databaseName'] = input[:database_name] unless input[:database_name].nil?
        data['schema'] = input[:schema] unless input[:schema].nil?
        data['awsSecretStoreArn'] = input[:aws_secret_store_arn] unless input[:aws_secret_store_arn].nil?
        data
      end
    end

    # Structure Builder for HttpDataSourceConfig
    class HttpDataSourceConfig
      def self.build(input)
        data = {}
        data['endpoint'] = input[:endpoint] unless input[:endpoint].nil?
        data['authorizationConfig'] = Builders::AuthorizationConfig.build(input[:authorization_config]) unless input[:authorization_config].nil?
        data
      end
    end

    # Structure Builder for AuthorizationConfig
    class AuthorizationConfig
      def self.build(input)
        data = {}
        data['authorizationType'] = input[:authorization_type] unless input[:authorization_type].nil?
        data['awsIamConfig'] = Builders::AwsIamConfig.build(input[:aws_iam_config]) unless input[:aws_iam_config].nil?
        data
      end
    end

    # Structure Builder for AwsIamConfig
    class AwsIamConfig
      def self.build(input)
        data = {}
        data['signingRegion'] = input[:signing_region] unless input[:signing_region].nil?
        data['signingServiceName'] = input[:signing_service_name] unless input[:signing_service_name].nil?
        data
      end
    end

    # Structure Builder for OpenSearchServiceDataSourceConfig
    class OpenSearchServiceDataSourceConfig
      def self.build(input)
        data = {}
        data['endpoint'] = input[:endpoint] unless input[:endpoint].nil?
        data['awsRegion'] = input[:aws_region] unless input[:aws_region].nil?
        data
      end
    end

    # Structure Builder for ElasticsearchDataSourceConfig
    class ElasticsearchDataSourceConfig
      def self.build(input)
        data = {}
        data['endpoint'] = input[:endpoint] unless input[:endpoint].nil?
        data['awsRegion'] = input[:aws_region] unless input[:aws_region].nil?
        data
      end
    end

    # Structure Builder for LambdaDataSourceConfig
    class LambdaDataSourceConfig
      def self.build(input)
        data = {}
        data['lambdaFunctionArn'] = input[:lambda_function_arn] unless input[:lambda_function_arn].nil?
        data
      end
    end

    # Structure Builder for DynamodbDataSourceConfig
    class DynamodbDataSourceConfig
      def self.build(input)
        data = {}
        data['tableName'] = input[:table_name] unless input[:table_name].nil?
        data['awsRegion'] = input[:aws_region] unless input[:aws_region].nil?
        data['useCallerCredentials'] = input[:use_caller_credentials] unless input[:use_caller_credentials].nil?
        data['deltaSyncConfig'] = Builders::DeltaSyncConfig.build(input[:delta_sync_config]) unless input[:delta_sync_config].nil?
        data['versioned'] = input[:versioned] unless input[:versioned].nil?
        data
      end
    end

    # Structure Builder for DeltaSyncConfig
    class DeltaSyncConfig
      def self.build(input)
        data = {}
        data['baseTableTTL'] = input[:base_table_ttl] unless input[:base_table_ttl].nil?
        data['deltaSyncTableName'] = input[:delta_sync_table_name] unless input[:delta_sync_table_name].nil?
        data['deltaSyncTableTTL'] = input[:delta_sync_table_ttl] unless input[:delta_sync_table_ttl].nil?
        data
      end
    end

    # Operation Builder for CreateDomainName
    class CreateDomainName
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/domainnames')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['domainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['certificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateFunction
    class CreateFunction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/functions',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['dataSourceName'] = input[:data_source_name] unless input[:data_source_name].nil?
        data['requestMappingTemplate'] = input[:request_mapping_template] unless input[:request_mapping_template].nil?
        data['responseMappingTemplate'] = input[:response_mapping_template] unless input[:response_mapping_template].nil?
        data['functionVersion'] = input[:function_version] unless input[:function_version].nil?
        data['syncConfig'] = Builders::SyncConfig.build(input[:sync_config]) unless input[:sync_config].nil?
        data['maxBatchSize'] = input[:max_batch_size] unless input[:max_batch_size].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SyncConfig
    class SyncConfig
      def self.build(input)
        data = {}
        data['conflictHandler'] = input[:conflict_handler] unless input[:conflict_handler].nil?
        data['conflictDetection'] = input[:conflict_detection] unless input[:conflict_detection].nil?
        data['lambdaConflictHandlerConfig'] = Builders::LambdaConflictHandlerConfig.build(input[:lambda_conflict_handler_config]) unless input[:lambda_conflict_handler_config].nil?
        data
      end
    end

    # Structure Builder for LambdaConflictHandlerConfig
    class LambdaConflictHandlerConfig
      def self.build(input)
        data = {}
        data['lambdaConflictHandlerArn'] = input[:lambda_conflict_handler_arn] unless input[:lambda_conflict_handler_arn].nil?
        data
      end
    end

    # Operation Builder for CreateGraphqlApi
    class CreateGraphqlApi
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/apis')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['logConfig'] = Builders::LogConfig.build(input[:log_config]) unless input[:log_config].nil?
        data['authenticationType'] = input[:authentication_type] unless input[:authentication_type].nil?
        data['userPoolConfig'] = Builders::UserPoolConfig.build(input[:user_pool_config]) unless input[:user_pool_config].nil?
        data['openIDConnectConfig'] = Builders::OpenIDConnectConfig.build(input[:open_id_connect_config]) unless input[:open_id_connect_config].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['additionalAuthenticationProviders'] = Builders::AdditionalAuthenticationProviders.build(input[:additional_authentication_providers]) unless input[:additional_authentication_providers].nil?
        data['xrayEnabled'] = input[:xray_enabled] unless input[:xray_enabled].nil?
        data['lambdaAuthorizerConfig'] = Builders::LambdaAuthorizerConfig.build(input[:lambda_authorizer_config]) unless input[:lambda_authorizer_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LambdaAuthorizerConfig
    class LambdaAuthorizerConfig
      def self.build(input)
        data = {}
        data['authorizerResultTtlInSeconds'] = input[:authorizer_result_ttl_in_seconds] unless input[:authorizer_result_ttl_in_seconds].nil?
        data['authorizerUri'] = input[:authorizer_uri] unless input[:authorizer_uri].nil?
        data['identityValidationExpression'] = input[:identity_validation_expression] unless input[:identity_validation_expression].nil?
        data
      end
    end

    # List Builder for AdditionalAuthenticationProviders
    class AdditionalAuthenticationProviders
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AdditionalAuthenticationProvider.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AdditionalAuthenticationProvider
    class AdditionalAuthenticationProvider
      def self.build(input)
        data = {}
        data['authenticationType'] = input[:authentication_type] unless input[:authentication_type].nil?
        data['openIDConnectConfig'] = Builders::OpenIDConnectConfig.build(input[:open_id_connect_config]) unless input[:open_id_connect_config].nil?
        data['userPoolConfig'] = Builders::CognitoUserPoolConfig.build(input[:user_pool_config]) unless input[:user_pool_config].nil?
        data['lambdaAuthorizerConfig'] = Builders::LambdaAuthorizerConfig.build(input[:lambda_authorizer_config]) unless input[:lambda_authorizer_config].nil?
        data
      end
    end

    # Structure Builder for CognitoUserPoolConfig
    class CognitoUserPoolConfig
      def self.build(input)
        data = {}
        data['userPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['awsRegion'] = input[:aws_region] unless input[:aws_region].nil?
        data['appIdClientRegex'] = input[:app_id_client_regex] unless input[:app_id_client_regex].nil?
        data
      end
    end

    # Structure Builder for OpenIDConnectConfig
    class OpenIDConnectConfig
      def self.build(input)
        data = {}
        data['issuer'] = input[:issuer] unless input[:issuer].nil?
        data['clientId'] = input[:client_id] unless input[:client_id].nil?
        data['iatTTL'] = input[:iat_ttl] unless input[:iat_ttl].nil?
        data['authTTL'] = input[:auth_ttl] unless input[:auth_ttl].nil?
        data
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for UserPoolConfig
    class UserPoolConfig
      def self.build(input)
        data = {}
        data['userPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['awsRegion'] = input[:aws_region] unless input[:aws_region].nil?
        data['defaultAction'] = input[:default_action] unless input[:default_action].nil?
        data['appIdClientRegex'] = input[:app_id_client_regex] unless input[:app_id_client_regex].nil?
        data
      end
    end

    # Structure Builder for LogConfig
    class LogConfig
      def self.build(input)
        data = {}
        data['fieldLogLevel'] = input[:field_log_level] unless input[:field_log_level].nil?
        data['cloudWatchLogsRoleArn'] = input[:cloud_watch_logs_role_arn] unless input[:cloud_watch_logs_role_arn].nil?
        data['excludeVerboseContent'] = input[:exclude_verbose_content] unless input[:exclude_verbose_content].nil?
        data
      end
    end

    # Operation Builder for CreateResolver
    class CreateResolver
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:type_name].to_s.empty?
          raise ArgumentError, "HTTP label :type_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/types/%<typeName>s/resolvers',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            typeName: Hearth::HTTP.uri_escape(input[:type_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['fieldName'] = input[:field_name] unless input[:field_name].nil?
        data['dataSourceName'] = input[:data_source_name] unless input[:data_source_name].nil?
        data['requestMappingTemplate'] = input[:request_mapping_template] unless input[:request_mapping_template].nil?
        data['responseMappingTemplate'] = input[:response_mapping_template] unless input[:response_mapping_template].nil?
        data['kind'] = input[:kind] unless input[:kind].nil?
        data['pipelineConfig'] = Builders::PipelineConfig.build(input[:pipeline_config]) unless input[:pipeline_config].nil?
        data['syncConfig'] = Builders::SyncConfig.build(input[:sync_config]) unless input[:sync_config].nil?
        data['cachingConfig'] = Builders::CachingConfig.build(input[:caching_config]) unless input[:caching_config].nil?
        data['maxBatchSize'] = input[:max_batch_size] unless input[:max_batch_size].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CachingConfig
    class CachingConfig
      def self.build(input)
        data = {}
        data['ttl'] = input[:ttl] unless input[:ttl].nil?
        data['cachingKeys'] = Builders::CachingKeys.build(input[:caching_keys]) unless input[:caching_keys].nil?
        data
      end
    end

    # List Builder for CachingKeys
    class CachingKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PipelineConfig
    class PipelineConfig
      def self.build(input)
        data = {}
        data['functions'] = Builders::FunctionsIds.build(input[:functions]) unless input[:functions].nil?
        data
      end
    end

    # List Builder for FunctionsIds
    class FunctionsIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateType
    class CreateType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/types',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['definition'] = input[:definition] unless input[:definition].nil?
        data['format'] = input[:format] unless input[:format].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApiCache
    class DeleteApiCache
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/ApiCaches',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteApiKey
    class DeleteApiKey
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/apikeys/%<id>s',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDataSource
    class DeleteDataSource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/datasources/%<name>s',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDomainName
    class DeleteDomainName
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domainnames/%<domainName>s',
            domainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteFunction
    class DeleteFunction
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:function_id].to_s.empty?
          raise ArgumentError, "HTTP label :function_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/functions/%<functionId>s',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            functionId: Hearth::HTTP.uri_escape(input[:function_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteGraphqlApi
    class DeleteGraphqlApi
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteResolver
    class DeleteResolver
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:type_name].to_s.empty?
          raise ArgumentError, "HTTP label :type_name cannot be nil or empty."
        end
        if input[:field_name].to_s.empty?
          raise ArgumentError, "HTTP label :field_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/types/%<typeName>s/resolvers/%<fieldName>s',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            typeName: Hearth::HTTP.uri_escape(input[:type_name].to_s),
            fieldName: Hearth::HTTP.uri_escape(input[:field_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteType
    class DeleteType
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:type_name].to_s.empty?
          raise ArgumentError, "HTTP label :type_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/types/%<typeName>s',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            typeName: Hearth::HTTP.uri_escape(input[:type_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateApi
    class DisassociateApi
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domainnames/%<domainName>s/apiassociation',
            domainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for FlushApiCache
    class FlushApiCache
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/FlushCache',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApiAssociation
    class GetApiAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domainnames/%<domainName>s/apiassociation',
            domainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApiCache
    class GetApiCache
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/ApiCaches',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDataSource
    class GetDataSource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/datasources/%<name>s',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDomainName
    class GetDomainName
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domainnames/%<domainName>s',
            domainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetFunction
    class GetFunction
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:function_id].to_s.empty?
          raise ArgumentError, "HTTP label :function_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/functions/%<functionId>s',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            functionId: Hearth::HTTP.uri_escape(input[:function_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetGraphqlApi
    class GetGraphqlApi
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetIntrospectionSchema
    class GetIntrospectionSchema
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/schema',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['format'] = input[:format].to_s unless input[:format].nil?
        params['includeDirectives'] = input[:include_directives].to_s unless input[:include_directives].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetResolver
    class GetResolver
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:type_name].to_s.empty?
          raise ArgumentError, "HTTP label :type_name cannot be nil or empty."
        end
        if input[:field_name].to_s.empty?
          raise ArgumentError, "HTTP label :field_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/types/%<typeName>s/resolvers/%<fieldName>s',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            typeName: Hearth::HTTP.uri_escape(input[:type_name].to_s),
            fieldName: Hearth::HTTP.uri_escape(input[:field_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSchemaCreationStatus
    class GetSchemaCreationStatus
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/schemacreation',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetType
    class GetType
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:type_name].to_s.empty?
          raise ArgumentError, "HTTP label :type_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/types/%<typeName>s',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            typeName: Hearth::HTTP.uri_escape(input[:type_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['format'] = input[:format].to_s unless input[:format].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListApiKeys
    class ListApiKeys
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/apikeys',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDataSources
    class ListDataSources
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/datasources',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDomainNames
    class ListDomainNames
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/domainnames')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListFunctions
    class ListFunctions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/functions',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListGraphqlApis
    class ListGraphqlApis
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/apis')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListResolvers
    class ListResolvers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:type_name].to_s.empty?
          raise ArgumentError, "HTTP label :type_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/types/%<typeName>s/resolvers',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            typeName: Hearth::HTTP.uri_escape(input[:type_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListResolversByFunction
    class ListResolversByFunction
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:function_id].to_s.empty?
          raise ArgumentError, "HTTP label :function_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/functions/%<functionId>s/resolvers',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            functionId: Hearth::HTTP.uri_escape(input[:function_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTypes
    class ListTypes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/types',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['format'] = input[:format].to_s unless input[:format].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartSchemaCreation
    class StartSchemaCreation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/schemacreation',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['definition'] = Base64::encode64(input[:definition]).strip unless input[:definition].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateApiCache
    class UpdateApiCache
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/ApiCaches/update',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ttl'] = input[:ttl] unless input[:ttl].nil?
        data['apiCachingBehavior'] = input[:api_caching_behavior] unless input[:api_caching_behavior].nil?
        data['type'] = input[:type] unless input[:type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateApiKey
    class UpdateApiKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/apikeys/%<id>s',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['expires'] = input[:expires] unless input[:expires].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDataSource
    class UpdateDataSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/datasources/%<name>s',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['serviceRoleArn'] = input[:service_role_arn] unless input[:service_role_arn].nil?
        data['dynamodbConfig'] = Builders::DynamodbDataSourceConfig.build(input[:dynamodb_config]) unless input[:dynamodb_config].nil?
        data['lambdaConfig'] = Builders::LambdaDataSourceConfig.build(input[:lambda_config]) unless input[:lambda_config].nil?
        data['elasticsearchConfig'] = Builders::ElasticsearchDataSourceConfig.build(input[:elasticsearch_config]) unless input[:elasticsearch_config].nil?
        data['openSearchServiceConfig'] = Builders::OpenSearchServiceDataSourceConfig.build(input[:open_search_service_config]) unless input[:open_search_service_config].nil?
        data['httpConfig'] = Builders::HttpDataSourceConfig.build(input[:http_config]) unless input[:http_config].nil?
        data['relationalDatabaseConfig'] = Builders::RelationalDatabaseDataSourceConfig.build(input[:relational_database_config]) unless input[:relational_database_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDomainName
    class UpdateDomainName
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domainnames/%<domainName>s',
            domainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFunction
    class UpdateFunction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:function_id].to_s.empty?
          raise ArgumentError, "HTTP label :function_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/functions/%<functionId>s',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            functionId: Hearth::HTTP.uri_escape(input[:function_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['dataSourceName'] = input[:data_source_name] unless input[:data_source_name].nil?
        data['requestMappingTemplate'] = input[:request_mapping_template] unless input[:request_mapping_template].nil?
        data['responseMappingTemplate'] = input[:response_mapping_template] unless input[:response_mapping_template].nil?
        data['functionVersion'] = input[:function_version] unless input[:function_version].nil?
        data['syncConfig'] = Builders::SyncConfig.build(input[:sync_config]) unless input[:sync_config].nil?
        data['maxBatchSize'] = input[:max_batch_size] unless input[:max_batch_size].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGraphqlApi
    class UpdateGraphqlApi
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['logConfig'] = Builders::LogConfig.build(input[:log_config]) unless input[:log_config].nil?
        data['authenticationType'] = input[:authentication_type] unless input[:authentication_type].nil?
        data['userPoolConfig'] = Builders::UserPoolConfig.build(input[:user_pool_config]) unless input[:user_pool_config].nil?
        data['openIDConnectConfig'] = Builders::OpenIDConnectConfig.build(input[:open_id_connect_config]) unless input[:open_id_connect_config].nil?
        data['additionalAuthenticationProviders'] = Builders::AdditionalAuthenticationProviders.build(input[:additional_authentication_providers]) unless input[:additional_authentication_providers].nil?
        data['xrayEnabled'] = input[:xray_enabled] unless input[:xray_enabled].nil?
        data['lambdaAuthorizerConfig'] = Builders::LambdaAuthorizerConfig.build(input[:lambda_authorizer_config]) unless input[:lambda_authorizer_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateResolver
    class UpdateResolver
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:type_name].to_s.empty?
          raise ArgumentError, "HTTP label :type_name cannot be nil or empty."
        end
        if input[:field_name].to_s.empty?
          raise ArgumentError, "HTTP label :field_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/types/%<typeName>s/resolvers/%<fieldName>s',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            typeName: Hearth::HTTP.uri_escape(input[:type_name].to_s),
            fieldName: Hearth::HTTP.uri_escape(input[:field_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['dataSourceName'] = input[:data_source_name] unless input[:data_source_name].nil?
        data['requestMappingTemplate'] = input[:request_mapping_template] unless input[:request_mapping_template].nil?
        data['responseMappingTemplate'] = input[:response_mapping_template] unless input[:response_mapping_template].nil?
        data['kind'] = input[:kind] unless input[:kind].nil?
        data['pipelineConfig'] = Builders::PipelineConfig.build(input[:pipeline_config]) unless input[:pipeline_config].nil?
        data['syncConfig'] = Builders::SyncConfig.build(input[:sync_config]) unless input[:sync_config].nil?
        data['cachingConfig'] = Builders::CachingConfig.build(input[:caching_config]) unless input[:caching_config].nil?
        data['maxBatchSize'] = input[:max_batch_size] unless input[:max_batch_size].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateType
    class UpdateType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:type_name].to_s.empty?
          raise ArgumentError, "HTTP label :type_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/apis/%<apiId>s/types/%<typeName>s',
            apiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            typeName: Hearth::HTTP.uri_escape(input[:type_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['definition'] = input[:definition] unless input[:definition].nil?
        data['format'] = input[:format] unless input[:format].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
