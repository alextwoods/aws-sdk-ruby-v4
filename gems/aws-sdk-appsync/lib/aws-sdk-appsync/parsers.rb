# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppSync
  module Parsers

    # Operation Parser for AssociateApi
    class AssociateApi
      def self.parse(http_resp)
        data = Types::AssociateApiOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_association = (Parsers::ApiAssociation.parse(map['apiAssociation']) unless map['apiAssociation'].nil?)
        data
      end
    end

    class ApiAssociation
      def self.parse(map)
        data = Types::ApiAssociation.new
        data.domain_name = map['domainName']
        data.api_id = map['apiId']
        data.association_status = map['associationStatus']
        data.deployment_detail = map['deploymentDetail']
        return data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalFailureException
    class InternalFailureException
      def self.parse(http_resp)
        data = Types::InternalFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateApiCache
    class CreateApiCache
      def self.parse(http_resp)
        data = Types::CreateApiCacheOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_cache = (Parsers::ApiCache.parse(map['apiCache']) unless map['apiCache'].nil?)
        data
      end
    end

    class ApiCache
      def self.parse(map)
        data = Types::ApiCache.new
        data.ttl = map['ttl']
        data.api_caching_behavior = map['apiCachingBehavior']
        data.transit_encryption_enabled = map['transitEncryptionEnabled']
        data.at_rest_encryption_enabled = map['atRestEncryptionEnabled']
        data.type = map['type']
        data.status = map['status']
        return data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for UnauthorizedException
    class UnauthorizedException
      def self.parse(http_resp)
        data = Types::UnauthorizedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateApiKey
    class CreateApiKey
      def self.parse(http_resp)
        data = Types::CreateApiKeyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_key = (Parsers::ApiKey.parse(map['apiKey']) unless map['apiKey'].nil?)
        data
      end
    end

    class ApiKey
      def self.parse(map)
        data = Types::ApiKey.new
        data.id = map['id']
        data.description = map['description']
        data.expires = map['expires']
        data.deletes = map['deletes']
        return data
      end
    end

    # Error Parser for ApiKeyLimitExceededException
    class ApiKeyLimitExceededException
      def self.parse(http_resp)
        data = Types::ApiKeyLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ApiKeyValidityOutOfBoundsException
    class ApiKeyValidityOutOfBoundsException
      def self.parse(http_resp)
        data = Types::ApiKeyValidityOutOfBoundsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateDataSource
    class CreateDataSource
      def self.parse(http_resp)
        data = Types::CreateDataSourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.data_source = (Parsers::DataSource.parse(map['dataSource']) unless map['dataSource'].nil?)
        data
      end
    end

    class DataSource
      def self.parse(map)
        data = Types::DataSource.new
        data.data_source_arn = map['dataSourceArn']
        data.name = map['name']
        data.description = map['description']
        data.type = map['type']
        data.service_role_arn = map['serviceRoleArn']
        data.dynamodb_config = (Parsers::DynamodbDataSourceConfig.parse(map['dynamodbConfig']) unless map['dynamodbConfig'].nil?)
        data.lambda_config = (Parsers::LambdaDataSourceConfig.parse(map['lambdaConfig']) unless map['lambdaConfig'].nil?)
        data.elasticsearch_config = (Parsers::ElasticsearchDataSourceConfig.parse(map['elasticsearchConfig']) unless map['elasticsearchConfig'].nil?)
        data.open_search_service_config = (Parsers::OpenSearchServiceDataSourceConfig.parse(map['openSearchServiceConfig']) unless map['openSearchServiceConfig'].nil?)
        data.http_config = (Parsers::HttpDataSourceConfig.parse(map['httpConfig']) unless map['httpConfig'].nil?)
        data.relational_database_config = (Parsers::RelationalDatabaseDataSourceConfig.parse(map['relationalDatabaseConfig']) unless map['relationalDatabaseConfig'].nil?)
        return data
      end
    end

    class RelationalDatabaseDataSourceConfig
      def self.parse(map)
        data = Types::RelationalDatabaseDataSourceConfig.new
        data.relational_database_source_type = map['relationalDatabaseSourceType']
        data.rds_http_endpoint_config = (Parsers::RdsHttpEndpointConfig.parse(map['rdsHttpEndpointConfig']) unless map['rdsHttpEndpointConfig'].nil?)
        return data
      end
    end

    class RdsHttpEndpointConfig
      def self.parse(map)
        data = Types::RdsHttpEndpointConfig.new
        data.aws_region = map['awsRegion']
        data.db_cluster_identifier = map['dbClusterIdentifier']
        data.database_name = map['databaseName']
        data.schema = map['schema']
        data.aws_secret_store_arn = map['awsSecretStoreArn']
        return data
      end
    end

    class HttpDataSourceConfig
      def self.parse(map)
        data = Types::HttpDataSourceConfig.new
        data.endpoint = map['endpoint']
        data.authorization_config = (Parsers::AuthorizationConfig.parse(map['authorizationConfig']) unless map['authorizationConfig'].nil?)
        return data
      end
    end

    class AuthorizationConfig
      def self.parse(map)
        data = Types::AuthorizationConfig.new
        data.authorization_type = map['authorizationType']
        data.aws_iam_config = (Parsers::AwsIamConfig.parse(map['awsIamConfig']) unless map['awsIamConfig'].nil?)
        return data
      end
    end

    class AwsIamConfig
      def self.parse(map)
        data = Types::AwsIamConfig.new
        data.signing_region = map['signingRegion']
        data.signing_service_name = map['signingServiceName']
        return data
      end
    end

    class OpenSearchServiceDataSourceConfig
      def self.parse(map)
        data = Types::OpenSearchServiceDataSourceConfig.new
        data.endpoint = map['endpoint']
        data.aws_region = map['awsRegion']
        return data
      end
    end

    class ElasticsearchDataSourceConfig
      def self.parse(map)
        data = Types::ElasticsearchDataSourceConfig.new
        data.endpoint = map['endpoint']
        data.aws_region = map['awsRegion']
        return data
      end
    end

    class LambdaDataSourceConfig
      def self.parse(map)
        data = Types::LambdaDataSourceConfig.new
        data.lambda_function_arn = map['lambdaFunctionArn']
        return data
      end
    end

    class DynamodbDataSourceConfig
      def self.parse(map)
        data = Types::DynamodbDataSourceConfig.new
        data.table_name = map['tableName']
        data.aws_region = map['awsRegion']
        data.use_caller_credentials = map['useCallerCredentials']
        data.delta_sync_config = (Parsers::DeltaSyncConfig.parse(map['deltaSyncConfig']) unless map['deltaSyncConfig'].nil?)
        data.versioned = map['versioned']
        return data
      end
    end

    class DeltaSyncConfig
      def self.parse(map)
        data = Types::DeltaSyncConfig.new
        data.base_table_ttl = map['baseTableTTL']
        data.delta_sync_table_name = map['deltaSyncTableName']
        data.delta_sync_table_ttl = map['deltaSyncTableTTL']
        return data
      end
    end

    # Operation Parser for CreateDomainName
    class CreateDomainName
      def self.parse(http_resp)
        data = Types::CreateDomainNameOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_name_config = (Parsers::DomainNameConfig.parse(map['domainNameConfig']) unless map['domainNameConfig'].nil?)
        data
      end
    end

    class DomainNameConfig
      def self.parse(map)
        data = Types::DomainNameConfig.new
        data.domain_name = map['domainName']
        data.description = map['description']
        data.certificate_arn = map['certificateArn']
        data.appsync_domain_name = map['appsyncDomainName']
        data.hosted_zone_id = map['hostedZoneId']
        return data
      end
    end

    # Operation Parser for CreateFunction
    class CreateFunction
      def self.parse(http_resp)
        data = Types::CreateFunctionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.function_configuration = (Parsers::FunctionConfiguration.parse(map['functionConfiguration']) unless map['functionConfiguration'].nil?)
        data
      end
    end

    class FunctionConfiguration
      def self.parse(map)
        data = Types::FunctionConfiguration.new
        data.function_id = map['functionId']
        data.function_arn = map['functionArn']
        data.name = map['name']
        data.description = map['description']
        data.data_source_name = map['dataSourceName']
        data.request_mapping_template = map['requestMappingTemplate']
        data.response_mapping_template = map['responseMappingTemplate']
        data.function_version = map['functionVersion']
        data.sync_config = (Parsers::SyncConfig.parse(map['syncConfig']) unless map['syncConfig'].nil?)
        data.max_batch_size = map['maxBatchSize']
        return data
      end
    end

    class SyncConfig
      def self.parse(map)
        data = Types::SyncConfig.new
        data.conflict_handler = map['conflictHandler']
        data.conflict_detection = map['conflictDetection']
        data.lambda_conflict_handler_config = (Parsers::LambdaConflictHandlerConfig.parse(map['lambdaConflictHandlerConfig']) unless map['lambdaConflictHandlerConfig'].nil?)
        return data
      end
    end

    class LambdaConflictHandlerConfig
      def self.parse(map)
        data = Types::LambdaConflictHandlerConfig.new
        data.lambda_conflict_handler_arn = map['lambdaConflictHandlerArn']
        return data
      end
    end

    # Operation Parser for CreateGraphqlApi
    class CreateGraphqlApi
      def self.parse(http_resp)
        data = Types::CreateGraphqlApiOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.graphql_api = (Parsers::GraphqlApi.parse(map['graphqlApi']) unless map['graphqlApi'].nil?)
        data
      end
    end

    class GraphqlApi
      def self.parse(map)
        data = Types::GraphqlApi.new
        data.name = map['name']
        data.api_id = map['apiId']
        data.authentication_type = map['authenticationType']
        data.log_config = (Parsers::LogConfig.parse(map['logConfig']) unless map['logConfig'].nil?)
        data.user_pool_config = (Parsers::UserPoolConfig.parse(map['userPoolConfig']) unless map['userPoolConfig'].nil?)
        data.open_id_connect_config = (Parsers::OpenIDConnectConfig.parse(map['openIDConnectConfig']) unless map['openIDConnectConfig'].nil?)
        data.arn = map['arn']
        data.uris = (Parsers::MapOfStringToString.parse(map['uris']) unless map['uris'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.additional_authentication_providers = (Parsers::AdditionalAuthenticationProviders.parse(map['additionalAuthenticationProviders']) unless map['additionalAuthenticationProviders'].nil?)
        data.xray_enabled = map['xrayEnabled']
        data.waf_web_acl_arn = map['wafWebAclArn']
        data.lambda_authorizer_config = (Parsers::LambdaAuthorizerConfig.parse(map['lambdaAuthorizerConfig']) unless map['lambdaAuthorizerConfig'].nil?)
        return data
      end
    end

    class LambdaAuthorizerConfig
      def self.parse(map)
        data = Types::LambdaAuthorizerConfig.new
        data.authorizer_result_ttl_in_seconds = map['authorizerResultTtlInSeconds']
        data.authorizer_uri = map['authorizerUri']
        data.identity_validation_expression = map['identityValidationExpression']
        return data
      end
    end

    class AdditionalAuthenticationProviders
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AdditionalAuthenticationProvider.parse(value) unless value.nil?
        end
        data
      end
    end

    class AdditionalAuthenticationProvider
      def self.parse(map)
        data = Types::AdditionalAuthenticationProvider.new
        data.authentication_type = map['authenticationType']
        data.open_id_connect_config = (Parsers::OpenIDConnectConfig.parse(map['openIDConnectConfig']) unless map['openIDConnectConfig'].nil?)
        data.user_pool_config = (Parsers::CognitoUserPoolConfig.parse(map['userPoolConfig']) unless map['userPoolConfig'].nil?)
        data.lambda_authorizer_config = (Parsers::LambdaAuthorizerConfig.parse(map['lambdaAuthorizerConfig']) unless map['lambdaAuthorizerConfig'].nil?)
        return data
      end
    end

    class CognitoUserPoolConfig
      def self.parse(map)
        data = Types::CognitoUserPoolConfig.new
        data.user_pool_id = map['userPoolId']
        data.aws_region = map['awsRegion']
        data.app_id_client_regex = map['appIdClientRegex']
        return data
      end
    end

    class OpenIDConnectConfig
      def self.parse(map)
        data = Types::OpenIDConnectConfig.new
        data.issuer = map['issuer']
        data.client_id = map['clientId']
        data.iat_ttl = map['iatTTL']
        data.auth_ttl = map['authTTL']
        return data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class MapOfStringToString
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class UserPoolConfig
      def self.parse(map)
        data = Types::UserPoolConfig.new
        data.user_pool_id = map['userPoolId']
        data.aws_region = map['awsRegion']
        data.default_action = map['defaultAction']
        data.app_id_client_regex = map['appIdClientRegex']
        return data
      end
    end

    class LogConfig
      def self.parse(map)
        data = Types::LogConfig.new
        data.field_log_level = map['fieldLogLevel']
        data.cloud_watch_logs_role_arn = map['cloudWatchLogsRoleArn']
        data.exclude_verbose_content = map['excludeVerboseContent']
        return data
      end
    end

    # Error Parser for ApiLimitExceededException
    class ApiLimitExceededException
      def self.parse(http_resp)
        data = Types::ApiLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateResolver
    class CreateResolver
      def self.parse(http_resp)
        data = Types::CreateResolverOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resolver = (Parsers::Resolver.parse(map['resolver']) unless map['resolver'].nil?)
        data
      end
    end

    class Resolver
      def self.parse(map)
        data = Types::Resolver.new
        data.type_name = map['typeName']
        data.field_name = map['fieldName']
        data.data_source_name = map['dataSourceName']
        data.resolver_arn = map['resolverArn']
        data.request_mapping_template = map['requestMappingTemplate']
        data.response_mapping_template = map['responseMappingTemplate']
        data.kind = map['kind']
        data.pipeline_config = (Parsers::PipelineConfig.parse(map['pipelineConfig']) unless map['pipelineConfig'].nil?)
        data.sync_config = (Parsers::SyncConfig.parse(map['syncConfig']) unless map['syncConfig'].nil?)
        data.caching_config = (Parsers::CachingConfig.parse(map['cachingConfig']) unless map['cachingConfig'].nil?)
        data.max_batch_size = map['maxBatchSize']
        return data
      end
    end

    class CachingConfig
      def self.parse(map)
        data = Types::CachingConfig.new
        data.ttl = map['ttl']
        data.caching_keys = (Parsers::CachingKeys.parse(map['cachingKeys']) unless map['cachingKeys'].nil?)
        return data
      end
    end

    class CachingKeys
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class PipelineConfig
      def self.parse(map)
        data = Types::PipelineConfig.new
        data.functions = (Parsers::FunctionsIds.parse(map['functions']) unless map['functions'].nil?)
        return data
      end
    end

    class FunctionsIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateType
    class CreateType
      def self.parse(http_resp)
        data = Types::CreateTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = (Parsers::Type.parse(map['type']) unless map['type'].nil?)
        data
      end
    end

    class Type
      def self.parse(map)
        data = Types::Type.new
        data.name = map['name']
        data.description = map['description']
        data.arn = map['arn']
        data.definition = map['definition']
        data.format = map['format']
        return data
      end
    end

    # Operation Parser for DeleteApiCache
    class DeleteApiCache
      def self.parse(http_resp)
        data = Types::DeleteApiCacheOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteApiKey
    class DeleteApiKey
      def self.parse(http_resp)
        data = Types::DeleteApiKeyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteDataSource
    class DeleteDataSource
      def self.parse(http_resp)
        data = Types::DeleteDataSourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteDomainName
    class DeleteDomainName
      def self.parse(http_resp)
        data = Types::DeleteDomainNameOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteFunction
    class DeleteFunction
      def self.parse(http_resp)
        data = Types::DeleteFunctionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteGraphqlApi
    class DeleteGraphqlApi
      def self.parse(http_resp)
        data = Types::DeleteGraphqlApiOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteResolver
    class DeleteResolver
      def self.parse(http_resp)
        data = Types::DeleteResolverOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteType
    class DeleteType
      def self.parse(http_resp)
        data = Types::DeleteTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateApi
    class DisassociateApi
      def self.parse(http_resp)
        data = Types::DisassociateApiOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for FlushApiCache
    class FlushApiCache
      def self.parse(http_resp)
        data = Types::FlushApiCacheOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetApiAssociation
    class GetApiAssociation
      def self.parse(http_resp)
        data = Types::GetApiAssociationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_association = (Parsers::ApiAssociation.parse(map['apiAssociation']) unless map['apiAssociation'].nil?)
        data
      end
    end

    # Operation Parser for GetApiCache
    class GetApiCache
      def self.parse(http_resp)
        data = Types::GetApiCacheOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_cache = (Parsers::ApiCache.parse(map['apiCache']) unless map['apiCache'].nil?)
        data
      end
    end

    # Operation Parser for GetDataSource
    class GetDataSource
      def self.parse(http_resp)
        data = Types::GetDataSourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.data_source = (Parsers::DataSource.parse(map['dataSource']) unless map['dataSource'].nil?)
        data
      end
    end

    # Operation Parser for GetDomainName
    class GetDomainName
      def self.parse(http_resp)
        data = Types::GetDomainNameOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_name_config = (Parsers::DomainNameConfig.parse(map['domainNameConfig']) unless map['domainNameConfig'].nil?)
        data
      end
    end

    # Operation Parser for GetFunction
    class GetFunction
      def self.parse(http_resp)
        data = Types::GetFunctionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.function_configuration = (Parsers::FunctionConfiguration.parse(map['functionConfiguration']) unless map['functionConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for GetGraphqlApi
    class GetGraphqlApi
      def self.parse(http_resp)
        data = Types::GetGraphqlApiOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.graphql_api = (Parsers::GraphqlApi.parse(map['graphqlApi']) unless map['graphqlApi'].nil?)
        data
      end
    end

    # Operation Parser for GetIntrospectionSchema
    class GetIntrospectionSchema
      def self.parse(http_resp)
        data = Types::GetIntrospectionSchemaOutput.new
        payload = http_resp.body.read
        data.schema = payload unless payload.empty?
        data
      end
    end

    # Error Parser for GraphQLSchemaException
    class GraphQLSchemaException
      def self.parse(http_resp)
        data = Types::GraphQLSchemaException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for GetResolver
    class GetResolver
      def self.parse(http_resp)
        data = Types::GetResolverOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resolver = (Parsers::Resolver.parse(map['resolver']) unless map['resolver'].nil?)
        data
      end
    end

    # Operation Parser for GetSchemaCreationStatus
    class GetSchemaCreationStatus
      def self.parse(http_resp)
        data = Types::GetSchemaCreationStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = map['status']
        data.details = map['details']
        data
      end
    end

    # Operation Parser for GetType
    class GetType
      def self.parse(http_resp)
        data = Types::GetTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = (Parsers::Type.parse(map['type']) unless map['type'].nil?)
        data
      end
    end

    # Operation Parser for ListApiKeys
    class ListApiKeys
      def self.parse(http_resp)
        data = Types::ListApiKeysOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_keys = (Parsers::ApiKeys.parse(map['apiKeys']) unless map['apiKeys'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ApiKeys
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ApiKey.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListDataSources
    class ListDataSources
      def self.parse(http_resp)
        data = Types::ListDataSourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.data_sources = (Parsers::DataSources.parse(map['dataSources']) unless map['dataSources'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DataSources
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DataSource.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListDomainNames
    class ListDomainNames
      def self.parse(http_resp)
        data = Types::ListDomainNamesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_name_configs = (Parsers::DomainNameConfigs.parse(map['domainNameConfigs']) unless map['domainNameConfigs'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DomainNameConfigs
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DomainNameConfig.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListFunctions
    class ListFunctions
      def self.parse(http_resp)
        data = Types::ListFunctionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.functions = (Parsers::Functions.parse(map['functions']) unless map['functions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Functions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FunctionConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListGraphqlApis
    class ListGraphqlApis
      def self.parse(http_resp)
        data = Types::ListGraphqlApisOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.graphql_apis = (Parsers::GraphqlApis.parse(map['graphqlApis']) unless map['graphqlApis'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class GraphqlApis
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::GraphqlApi.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListResolvers
    class ListResolvers
      def self.parse(http_resp)
        data = Types::ListResolversOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resolvers = (Parsers::Resolvers.parse(map['resolvers']) unless map['resolvers'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Resolvers
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Resolver.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListResolversByFunction
    class ListResolversByFunction
      def self.parse(http_resp)
        data = Types::ListResolversByFunctionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resolvers = (Parsers::Resolvers.parse(map['resolvers']) unless map['resolvers'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for ListTypes
    class ListTypes
      def self.parse(http_resp)
        data = Types::ListTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.types = (Parsers::TypeList.parse(map['types']) unless map['types'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Type.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for StartSchemaCreation
    class StartSchemaCreation
      def self.parse(http_resp)
        data = Types::StartSchemaCreationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = map['status']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateApiCache
    class UpdateApiCache
      def self.parse(http_resp)
        data = Types::UpdateApiCacheOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_cache = (Parsers::ApiCache.parse(map['apiCache']) unless map['apiCache'].nil?)
        data
      end
    end

    # Operation Parser for UpdateApiKey
    class UpdateApiKey
      def self.parse(http_resp)
        data = Types::UpdateApiKeyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_key = (Parsers::ApiKey.parse(map['apiKey']) unless map['apiKey'].nil?)
        data
      end
    end

    # Operation Parser for UpdateDataSource
    class UpdateDataSource
      def self.parse(http_resp)
        data = Types::UpdateDataSourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.data_source = (Parsers::DataSource.parse(map['dataSource']) unless map['dataSource'].nil?)
        data
      end
    end

    # Operation Parser for UpdateDomainName
    class UpdateDomainName
      def self.parse(http_resp)
        data = Types::UpdateDomainNameOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_name_config = (Parsers::DomainNameConfig.parse(map['domainNameConfig']) unless map['domainNameConfig'].nil?)
        data
      end
    end

    # Operation Parser for UpdateFunction
    class UpdateFunction
      def self.parse(http_resp)
        data = Types::UpdateFunctionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.function_configuration = (Parsers::FunctionConfiguration.parse(map['functionConfiguration']) unless map['functionConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for UpdateGraphqlApi
    class UpdateGraphqlApi
      def self.parse(http_resp)
        data = Types::UpdateGraphqlApiOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.graphql_api = (Parsers::GraphqlApi.parse(map['graphqlApi']) unless map['graphqlApi'].nil?)
        data
      end
    end

    # Operation Parser for UpdateResolver
    class UpdateResolver
      def self.parse(http_resp)
        data = Types::UpdateResolverOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resolver = (Parsers::Resolver.parse(map['resolver']) unless map['resolver'].nil?)
        data
      end
    end

    # Operation Parser for UpdateType
    class UpdateType
      def self.parse(http_resp)
        data = Types::UpdateTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = (Parsers::Type.parse(map['type']) unless map['type'].nil?)
        data
      end
    end
  end
end
