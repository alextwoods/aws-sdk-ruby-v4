# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppSync
  module Stubs

    # Operation Stubber for AssociateApi
    class AssociateApi
      def self.default(visited=[])
        {
          api_association: ApiAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiAssociation'] = Stubs::ApiAssociation.stub(stub[:api_association]) unless stub[:api_association].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ApiAssociation
    class ApiAssociation
      def self.default(visited=[])
        return nil if visited.include?('ApiAssociation')
        visited = visited + ['ApiAssociation']
        {
          domain_name: 'domain_name',
          api_id: 'api_id',
          association_status: 'association_status',
          deployment_detail: 'deployment_detail',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApiAssociation.new
        data = {}
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['apiId'] = stub[:api_id] unless stub[:api_id].nil?
        data['associationStatus'] = stub[:association_status] unless stub[:association_status].nil?
        data['deploymentDetail'] = stub[:deployment_detail] unless stub[:deployment_detail].nil?
        data
      end
    end

    # Operation Stubber for CreateApiCache
    class CreateApiCache
      def self.default(visited=[])
        {
          api_cache: ApiCache.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiCache'] = Stubs::ApiCache.stub(stub[:api_cache]) unless stub[:api_cache].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ApiCache
    class ApiCache
      def self.default(visited=[])
        return nil if visited.include?('ApiCache')
        visited = visited + ['ApiCache']
        {
          ttl: 1,
          api_caching_behavior: 'api_caching_behavior',
          transit_encryption_enabled: false,
          at_rest_encryption_enabled: false,
          type: 'type',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApiCache.new
        data = {}
        data['ttl'] = stub[:ttl] unless stub[:ttl].nil?
        data['apiCachingBehavior'] = stub[:api_caching_behavior] unless stub[:api_caching_behavior].nil?
        data['transitEncryptionEnabled'] = stub[:transit_encryption_enabled] unless stub[:transit_encryption_enabled].nil?
        data['atRestEncryptionEnabled'] = stub[:at_rest_encryption_enabled] unless stub[:at_rest_encryption_enabled].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for CreateApiKey
    class CreateApiKey
      def self.default(visited=[])
        {
          api_key: ApiKey.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiKey'] = Stubs::ApiKey.stub(stub[:api_key]) unless stub[:api_key].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ApiKey
    class ApiKey
      def self.default(visited=[])
        return nil if visited.include?('ApiKey')
        visited = visited + ['ApiKey']
        {
          id: 'id',
          description: 'description',
          expires: 1,
          deletes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ApiKey.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['expires'] = stub[:expires] unless stub[:expires].nil?
        data['deletes'] = stub[:deletes] unless stub[:deletes].nil?
        data
      end
    end

    # Operation Stubber for CreateDataSource
    class CreateDataSource
      def self.default(visited=[])
        {
          data_source: DataSource.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['dataSource'] = Stubs::DataSource.stub(stub[:data_source]) unless stub[:data_source].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DataSource
    class DataSource
      def self.default(visited=[])
        return nil if visited.include?('DataSource')
        visited = visited + ['DataSource']
        {
          data_source_arn: 'data_source_arn',
          name: 'name',
          description: 'description',
          type: 'type',
          service_role_arn: 'service_role_arn',
          dynamodb_config: DynamodbDataSourceConfig.default(visited),
          lambda_config: LambdaDataSourceConfig.default(visited),
          elasticsearch_config: ElasticsearchDataSourceConfig.default(visited),
          open_search_service_config: OpenSearchServiceDataSourceConfig.default(visited),
          http_config: HttpDataSourceConfig.default(visited),
          relational_database_config: RelationalDatabaseDataSourceConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSource.new
        data = {}
        data['dataSourceArn'] = stub[:data_source_arn] unless stub[:data_source_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['serviceRoleArn'] = stub[:service_role_arn] unless stub[:service_role_arn].nil?
        data['dynamodbConfig'] = Stubs::DynamodbDataSourceConfig.stub(stub[:dynamodb_config]) unless stub[:dynamodb_config].nil?
        data['lambdaConfig'] = Stubs::LambdaDataSourceConfig.stub(stub[:lambda_config]) unless stub[:lambda_config].nil?
        data['elasticsearchConfig'] = Stubs::ElasticsearchDataSourceConfig.stub(stub[:elasticsearch_config]) unless stub[:elasticsearch_config].nil?
        data['openSearchServiceConfig'] = Stubs::OpenSearchServiceDataSourceConfig.stub(stub[:open_search_service_config]) unless stub[:open_search_service_config].nil?
        data['httpConfig'] = Stubs::HttpDataSourceConfig.stub(stub[:http_config]) unless stub[:http_config].nil?
        data['relationalDatabaseConfig'] = Stubs::RelationalDatabaseDataSourceConfig.stub(stub[:relational_database_config]) unless stub[:relational_database_config].nil?
        data
      end
    end

    # Structure Stubber for RelationalDatabaseDataSourceConfig
    class RelationalDatabaseDataSourceConfig
      def self.default(visited=[])
        return nil if visited.include?('RelationalDatabaseDataSourceConfig')
        visited = visited + ['RelationalDatabaseDataSourceConfig']
        {
          relational_database_source_type: 'relational_database_source_type',
          rds_http_endpoint_config: RdsHttpEndpointConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RelationalDatabaseDataSourceConfig.new
        data = {}
        data['relationalDatabaseSourceType'] = stub[:relational_database_source_type] unless stub[:relational_database_source_type].nil?
        data['rdsHttpEndpointConfig'] = Stubs::RdsHttpEndpointConfig.stub(stub[:rds_http_endpoint_config]) unless stub[:rds_http_endpoint_config].nil?
        data
      end
    end

    # Structure Stubber for RdsHttpEndpointConfig
    class RdsHttpEndpointConfig
      def self.default(visited=[])
        return nil if visited.include?('RdsHttpEndpointConfig')
        visited = visited + ['RdsHttpEndpointConfig']
        {
          aws_region: 'aws_region',
          db_cluster_identifier: 'db_cluster_identifier',
          database_name: 'database_name',
          schema: 'schema',
          aws_secret_store_arn: 'aws_secret_store_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::RdsHttpEndpointConfig.new
        data = {}
        data['awsRegion'] = stub[:aws_region] unless stub[:aws_region].nil?
        data['dbClusterIdentifier'] = stub[:db_cluster_identifier] unless stub[:db_cluster_identifier].nil?
        data['databaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['schema'] = stub[:schema] unless stub[:schema].nil?
        data['awsSecretStoreArn'] = stub[:aws_secret_store_arn] unless stub[:aws_secret_store_arn].nil?
        data
      end
    end

    # Structure Stubber for HttpDataSourceConfig
    class HttpDataSourceConfig
      def self.default(visited=[])
        return nil if visited.include?('HttpDataSourceConfig')
        visited = visited + ['HttpDataSourceConfig']
        {
          endpoint: 'endpoint',
          authorization_config: AuthorizationConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HttpDataSourceConfig.new
        data = {}
        data['endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['authorizationConfig'] = Stubs::AuthorizationConfig.stub(stub[:authorization_config]) unless stub[:authorization_config].nil?
        data
      end
    end

    # Structure Stubber for AuthorizationConfig
    class AuthorizationConfig
      def self.default(visited=[])
        return nil if visited.include?('AuthorizationConfig')
        visited = visited + ['AuthorizationConfig']
        {
          authorization_type: 'authorization_type',
          aws_iam_config: AwsIamConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AuthorizationConfig.new
        data = {}
        data['authorizationType'] = stub[:authorization_type] unless stub[:authorization_type].nil?
        data['awsIamConfig'] = Stubs::AwsIamConfig.stub(stub[:aws_iam_config]) unless stub[:aws_iam_config].nil?
        data
      end
    end

    # Structure Stubber for AwsIamConfig
    class AwsIamConfig
      def self.default(visited=[])
        return nil if visited.include?('AwsIamConfig')
        visited = visited + ['AwsIamConfig']
        {
          signing_region: 'signing_region',
          signing_service_name: 'signing_service_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsIamConfig.new
        data = {}
        data['signingRegion'] = stub[:signing_region] unless stub[:signing_region].nil?
        data['signingServiceName'] = stub[:signing_service_name] unless stub[:signing_service_name].nil?
        data
      end
    end

    # Structure Stubber for OpenSearchServiceDataSourceConfig
    class OpenSearchServiceDataSourceConfig
      def self.default(visited=[])
        return nil if visited.include?('OpenSearchServiceDataSourceConfig')
        visited = visited + ['OpenSearchServiceDataSourceConfig']
        {
          endpoint: 'endpoint',
          aws_region: 'aws_region',
        }
      end

      def self.stub(stub)
        stub ||= Types::OpenSearchServiceDataSourceConfig.new
        data = {}
        data['endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['awsRegion'] = stub[:aws_region] unless stub[:aws_region].nil?
        data
      end
    end

    # Structure Stubber for ElasticsearchDataSourceConfig
    class ElasticsearchDataSourceConfig
      def self.default(visited=[])
        return nil if visited.include?('ElasticsearchDataSourceConfig')
        visited = visited + ['ElasticsearchDataSourceConfig']
        {
          endpoint: 'endpoint',
          aws_region: 'aws_region',
        }
      end

      def self.stub(stub)
        stub ||= Types::ElasticsearchDataSourceConfig.new
        data = {}
        data['endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['awsRegion'] = stub[:aws_region] unless stub[:aws_region].nil?
        data
      end
    end

    # Structure Stubber for LambdaDataSourceConfig
    class LambdaDataSourceConfig
      def self.default(visited=[])
        return nil if visited.include?('LambdaDataSourceConfig')
        visited = visited + ['LambdaDataSourceConfig']
        {
          lambda_function_arn: 'lambda_function_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaDataSourceConfig.new
        data = {}
        data['lambdaFunctionArn'] = stub[:lambda_function_arn] unless stub[:lambda_function_arn].nil?
        data
      end
    end

    # Structure Stubber for DynamodbDataSourceConfig
    class DynamodbDataSourceConfig
      def self.default(visited=[])
        return nil if visited.include?('DynamodbDataSourceConfig')
        visited = visited + ['DynamodbDataSourceConfig']
        {
          table_name: 'table_name',
          aws_region: 'aws_region',
          use_caller_credentials: false,
          delta_sync_config: DeltaSyncConfig.default(visited),
          versioned: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DynamodbDataSourceConfig.new
        data = {}
        data['tableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['awsRegion'] = stub[:aws_region] unless stub[:aws_region].nil?
        data['useCallerCredentials'] = stub[:use_caller_credentials] unless stub[:use_caller_credentials].nil?
        data['deltaSyncConfig'] = Stubs::DeltaSyncConfig.stub(stub[:delta_sync_config]) unless stub[:delta_sync_config].nil?
        data['versioned'] = stub[:versioned] unless stub[:versioned].nil?
        data
      end
    end

    # Structure Stubber for DeltaSyncConfig
    class DeltaSyncConfig
      def self.default(visited=[])
        return nil if visited.include?('DeltaSyncConfig')
        visited = visited + ['DeltaSyncConfig']
        {
          base_table_ttl: 1,
          delta_sync_table_name: 'delta_sync_table_name',
          delta_sync_table_ttl: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeltaSyncConfig.new
        data = {}
        data['baseTableTTL'] = stub[:base_table_ttl] unless stub[:base_table_ttl].nil?
        data['deltaSyncTableName'] = stub[:delta_sync_table_name] unless stub[:delta_sync_table_name].nil?
        data['deltaSyncTableTTL'] = stub[:delta_sync_table_ttl] unless stub[:delta_sync_table_ttl].nil?
        data
      end
    end

    # Operation Stubber for CreateDomainName
    class CreateDomainName
      def self.default(visited=[])
        {
          domain_name_config: DomainNameConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['domainNameConfig'] = Stubs::DomainNameConfig.stub(stub[:domain_name_config]) unless stub[:domain_name_config].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DomainNameConfig
    class DomainNameConfig
      def self.default(visited=[])
        return nil if visited.include?('DomainNameConfig')
        visited = visited + ['DomainNameConfig']
        {
          domain_name: 'domain_name',
          description: 'description',
          certificate_arn: 'certificate_arn',
          appsync_domain_name: 'appsync_domain_name',
          hosted_zone_id: 'hosted_zone_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainNameConfig.new
        data = {}
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['appsyncDomainName'] = stub[:appsync_domain_name] unless stub[:appsync_domain_name].nil?
        data['hostedZoneId'] = stub[:hosted_zone_id] unless stub[:hosted_zone_id].nil?
        data
      end
    end

    # Operation Stubber for CreateFunction
    class CreateFunction
      def self.default(visited=[])
        {
          function_configuration: FunctionConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['functionConfiguration'] = Stubs::FunctionConfiguration.stub(stub[:function_configuration]) unless stub[:function_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for FunctionConfiguration
    class FunctionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('FunctionConfiguration')
        visited = visited + ['FunctionConfiguration']
        {
          function_id: 'function_id',
          function_arn: 'function_arn',
          name: 'name',
          description: 'description',
          data_source_name: 'data_source_name',
          request_mapping_template: 'request_mapping_template',
          response_mapping_template: 'response_mapping_template',
          function_version: 'function_version',
          sync_config: SyncConfig.default(visited),
          max_batch_size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FunctionConfiguration.new
        data = {}
        data['functionId'] = stub[:function_id] unless stub[:function_id].nil?
        data['functionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['dataSourceName'] = stub[:data_source_name] unless stub[:data_source_name].nil?
        data['requestMappingTemplate'] = stub[:request_mapping_template] unless stub[:request_mapping_template].nil?
        data['responseMappingTemplate'] = stub[:response_mapping_template] unless stub[:response_mapping_template].nil?
        data['functionVersion'] = stub[:function_version] unless stub[:function_version].nil?
        data['syncConfig'] = Stubs::SyncConfig.stub(stub[:sync_config]) unless stub[:sync_config].nil?
        data['maxBatchSize'] = stub[:max_batch_size] unless stub[:max_batch_size].nil?
        data
      end
    end

    # Structure Stubber for SyncConfig
    class SyncConfig
      def self.default(visited=[])
        return nil if visited.include?('SyncConfig')
        visited = visited + ['SyncConfig']
        {
          conflict_handler: 'conflict_handler',
          conflict_detection: 'conflict_detection',
          lambda_conflict_handler_config: LambdaConflictHandlerConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SyncConfig.new
        data = {}
        data['conflictHandler'] = stub[:conflict_handler] unless stub[:conflict_handler].nil?
        data['conflictDetection'] = stub[:conflict_detection] unless stub[:conflict_detection].nil?
        data['lambdaConflictHandlerConfig'] = Stubs::LambdaConflictHandlerConfig.stub(stub[:lambda_conflict_handler_config]) unless stub[:lambda_conflict_handler_config].nil?
        data
      end
    end

    # Structure Stubber for LambdaConflictHandlerConfig
    class LambdaConflictHandlerConfig
      def self.default(visited=[])
        return nil if visited.include?('LambdaConflictHandlerConfig')
        visited = visited + ['LambdaConflictHandlerConfig']
        {
          lambda_conflict_handler_arn: 'lambda_conflict_handler_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaConflictHandlerConfig.new
        data = {}
        data['lambdaConflictHandlerArn'] = stub[:lambda_conflict_handler_arn] unless stub[:lambda_conflict_handler_arn].nil?
        data
      end
    end

    # Operation Stubber for CreateGraphqlApi
    class CreateGraphqlApi
      def self.default(visited=[])
        {
          graphql_api: GraphqlApi.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['graphqlApi'] = Stubs::GraphqlApi.stub(stub[:graphql_api]) unless stub[:graphql_api].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for GraphqlApi
    class GraphqlApi
      def self.default(visited=[])
        return nil if visited.include?('GraphqlApi')
        visited = visited + ['GraphqlApi']
        {
          name: 'name',
          api_id: 'api_id',
          authentication_type: 'authentication_type',
          log_config: LogConfig.default(visited),
          user_pool_config: UserPoolConfig.default(visited),
          open_id_connect_config: OpenIDConnectConfig.default(visited),
          arn: 'arn',
          uris: MapOfStringToString.default(visited),
          tags: TagMap.default(visited),
          additional_authentication_providers: AdditionalAuthenticationProviders.default(visited),
          xray_enabled: false,
          waf_web_acl_arn: 'waf_web_acl_arn',
          lambda_authorizer_config: LambdaAuthorizerConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GraphqlApi.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['apiId'] = stub[:api_id] unless stub[:api_id].nil?
        data['authenticationType'] = stub[:authentication_type] unless stub[:authentication_type].nil?
        data['logConfig'] = Stubs::LogConfig.stub(stub[:log_config]) unless stub[:log_config].nil?
        data['userPoolConfig'] = Stubs::UserPoolConfig.stub(stub[:user_pool_config]) unless stub[:user_pool_config].nil?
        data['openIDConnectConfig'] = Stubs::OpenIDConnectConfig.stub(stub[:open_id_connect_config]) unless stub[:open_id_connect_config].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['uris'] = Stubs::MapOfStringToString.stub(stub[:uris]) unless stub[:uris].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['additionalAuthenticationProviders'] = Stubs::AdditionalAuthenticationProviders.stub(stub[:additional_authentication_providers]) unless stub[:additional_authentication_providers].nil?
        data['xrayEnabled'] = stub[:xray_enabled] unless stub[:xray_enabled].nil?
        data['wafWebAclArn'] = stub[:waf_web_acl_arn] unless stub[:waf_web_acl_arn].nil?
        data['lambdaAuthorizerConfig'] = Stubs::LambdaAuthorizerConfig.stub(stub[:lambda_authorizer_config]) unless stub[:lambda_authorizer_config].nil?
        data
      end
    end

    # Structure Stubber for LambdaAuthorizerConfig
    class LambdaAuthorizerConfig
      def self.default(visited=[])
        return nil if visited.include?('LambdaAuthorizerConfig')
        visited = visited + ['LambdaAuthorizerConfig']
        {
          authorizer_result_ttl_in_seconds: 1,
          authorizer_uri: 'authorizer_uri',
          identity_validation_expression: 'identity_validation_expression',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaAuthorizerConfig.new
        data = {}
        data['authorizerResultTtlInSeconds'] = stub[:authorizer_result_ttl_in_seconds] unless stub[:authorizer_result_ttl_in_seconds].nil?
        data['authorizerUri'] = stub[:authorizer_uri] unless stub[:authorizer_uri].nil?
        data['identityValidationExpression'] = stub[:identity_validation_expression] unless stub[:identity_validation_expression].nil?
        data
      end
    end

    # List Stubber for AdditionalAuthenticationProviders
    class AdditionalAuthenticationProviders
      def self.default(visited=[])
        return nil if visited.include?('AdditionalAuthenticationProviders')
        visited = visited + ['AdditionalAuthenticationProviders']
        [
          AdditionalAuthenticationProvider.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AdditionalAuthenticationProvider.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AdditionalAuthenticationProvider
    class AdditionalAuthenticationProvider
      def self.default(visited=[])
        return nil if visited.include?('AdditionalAuthenticationProvider')
        visited = visited + ['AdditionalAuthenticationProvider']
        {
          authentication_type: 'authentication_type',
          open_id_connect_config: OpenIDConnectConfig.default(visited),
          user_pool_config: CognitoUserPoolConfig.default(visited),
          lambda_authorizer_config: LambdaAuthorizerConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AdditionalAuthenticationProvider.new
        data = {}
        data['authenticationType'] = stub[:authentication_type] unless stub[:authentication_type].nil?
        data['openIDConnectConfig'] = Stubs::OpenIDConnectConfig.stub(stub[:open_id_connect_config]) unless stub[:open_id_connect_config].nil?
        data['userPoolConfig'] = Stubs::CognitoUserPoolConfig.stub(stub[:user_pool_config]) unless stub[:user_pool_config].nil?
        data['lambdaAuthorizerConfig'] = Stubs::LambdaAuthorizerConfig.stub(stub[:lambda_authorizer_config]) unless stub[:lambda_authorizer_config].nil?
        data
      end
    end

    # Structure Stubber for CognitoUserPoolConfig
    class CognitoUserPoolConfig
      def self.default(visited=[])
        return nil if visited.include?('CognitoUserPoolConfig')
        visited = visited + ['CognitoUserPoolConfig']
        {
          user_pool_id: 'user_pool_id',
          aws_region: 'aws_region',
          app_id_client_regex: 'app_id_client_regex',
        }
      end

      def self.stub(stub)
        stub ||= Types::CognitoUserPoolConfig.new
        data = {}
        data['userPoolId'] = stub[:user_pool_id] unless stub[:user_pool_id].nil?
        data['awsRegion'] = stub[:aws_region] unless stub[:aws_region].nil?
        data['appIdClientRegex'] = stub[:app_id_client_regex] unless stub[:app_id_client_regex].nil?
        data
      end
    end

    # Structure Stubber for OpenIDConnectConfig
    class OpenIDConnectConfig
      def self.default(visited=[])
        return nil if visited.include?('OpenIDConnectConfig')
        visited = visited + ['OpenIDConnectConfig']
        {
          issuer: 'issuer',
          client_id: 'client_id',
          iat_ttl: 1,
          auth_ttl: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::OpenIDConnectConfig.new
        data = {}
        data['issuer'] = stub[:issuer] unless stub[:issuer].nil?
        data['clientId'] = stub[:client_id] unless stub[:client_id].nil?
        data['iatTTL'] = stub[:iat_ttl] unless stub[:iat_ttl].nil?
        data['authTTL'] = stub[:auth_ttl] unless stub[:auth_ttl].nil?
        data
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
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

    # Map Stubber for MapOfStringToString
    class MapOfStringToString
      def self.default(visited=[])
        return nil if visited.include?('MapOfStringToString')
        visited = visited + ['MapOfStringToString']
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

    # Structure Stubber for UserPoolConfig
    class UserPoolConfig
      def self.default(visited=[])
        return nil if visited.include?('UserPoolConfig')
        visited = visited + ['UserPoolConfig']
        {
          user_pool_id: 'user_pool_id',
          aws_region: 'aws_region',
          default_action: 'default_action',
          app_id_client_regex: 'app_id_client_regex',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserPoolConfig.new
        data = {}
        data['userPoolId'] = stub[:user_pool_id] unless stub[:user_pool_id].nil?
        data['awsRegion'] = stub[:aws_region] unless stub[:aws_region].nil?
        data['defaultAction'] = stub[:default_action] unless stub[:default_action].nil?
        data['appIdClientRegex'] = stub[:app_id_client_regex] unless stub[:app_id_client_regex].nil?
        data
      end
    end

    # Structure Stubber for LogConfig
    class LogConfig
      def self.default(visited=[])
        return nil if visited.include?('LogConfig')
        visited = visited + ['LogConfig']
        {
          field_log_level: 'field_log_level',
          cloud_watch_logs_role_arn: 'cloud_watch_logs_role_arn',
          exclude_verbose_content: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::LogConfig.new
        data = {}
        data['fieldLogLevel'] = stub[:field_log_level] unless stub[:field_log_level].nil?
        data['cloudWatchLogsRoleArn'] = stub[:cloud_watch_logs_role_arn] unless stub[:cloud_watch_logs_role_arn].nil?
        data['excludeVerboseContent'] = stub[:exclude_verbose_content] unless stub[:exclude_verbose_content].nil?
        data
      end
    end

    # Operation Stubber for CreateResolver
    class CreateResolver
      def self.default(visited=[])
        {
          resolver: Resolver.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resolver'] = Stubs::Resolver.stub(stub[:resolver]) unless stub[:resolver].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Resolver
    class Resolver
      def self.default(visited=[])
        return nil if visited.include?('Resolver')
        visited = visited + ['Resolver']
        {
          type_name: 'type_name',
          field_name: 'field_name',
          data_source_name: 'data_source_name',
          resolver_arn: 'resolver_arn',
          request_mapping_template: 'request_mapping_template',
          response_mapping_template: 'response_mapping_template',
          kind: 'kind',
          pipeline_config: PipelineConfig.default(visited),
          sync_config: SyncConfig.default(visited),
          caching_config: CachingConfig.default(visited),
          max_batch_size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Resolver.new
        data = {}
        data['typeName'] = stub[:type_name] unless stub[:type_name].nil?
        data['fieldName'] = stub[:field_name] unless stub[:field_name].nil?
        data['dataSourceName'] = stub[:data_source_name] unless stub[:data_source_name].nil?
        data['resolverArn'] = stub[:resolver_arn] unless stub[:resolver_arn].nil?
        data['requestMappingTemplate'] = stub[:request_mapping_template] unless stub[:request_mapping_template].nil?
        data['responseMappingTemplate'] = stub[:response_mapping_template] unless stub[:response_mapping_template].nil?
        data['kind'] = stub[:kind] unless stub[:kind].nil?
        data['pipelineConfig'] = Stubs::PipelineConfig.stub(stub[:pipeline_config]) unless stub[:pipeline_config].nil?
        data['syncConfig'] = Stubs::SyncConfig.stub(stub[:sync_config]) unless stub[:sync_config].nil?
        data['cachingConfig'] = Stubs::CachingConfig.stub(stub[:caching_config]) unless stub[:caching_config].nil?
        data['maxBatchSize'] = stub[:max_batch_size] unless stub[:max_batch_size].nil?
        data
      end
    end

    # Structure Stubber for CachingConfig
    class CachingConfig
      def self.default(visited=[])
        return nil if visited.include?('CachingConfig')
        visited = visited + ['CachingConfig']
        {
          ttl: 1,
          caching_keys: CachingKeys.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CachingConfig.new
        data = {}
        data['ttl'] = stub[:ttl] unless stub[:ttl].nil?
        data['cachingKeys'] = Stubs::CachingKeys.stub(stub[:caching_keys]) unless stub[:caching_keys].nil?
        data
      end
    end

    # List Stubber for CachingKeys
    class CachingKeys
      def self.default(visited=[])
        return nil if visited.include?('CachingKeys')
        visited = visited + ['CachingKeys']
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

    # Structure Stubber for PipelineConfig
    class PipelineConfig
      def self.default(visited=[])
        return nil if visited.include?('PipelineConfig')
        visited = visited + ['PipelineConfig']
        {
          functions: FunctionsIds.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelineConfig.new
        data = {}
        data['functions'] = Stubs::FunctionsIds.stub(stub[:functions]) unless stub[:functions].nil?
        data
      end
    end

    # List Stubber for FunctionsIds
    class FunctionsIds
      def self.default(visited=[])
        return nil if visited.include?('FunctionsIds')
        visited = visited + ['FunctionsIds']
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

    # Operation Stubber for CreateType
    class CreateType
      def self.default(visited=[])
        {
          type: Type.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['type'] = Stubs::Type.stub(stub[:type]) unless stub[:type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Type
    class Type
      def self.default(visited=[])
        return nil if visited.include?('Type')
        visited = visited + ['Type']
        {
          name: 'name',
          description: 'description',
          arn: 'arn',
          definition: 'definition',
          format: 'format',
        }
      end

      def self.stub(stub)
        stub ||= Types::Type.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['definition'] = stub[:definition] unless stub[:definition].nil?
        data['format'] = stub[:format] unless stub[:format].nil?
        data
      end
    end

    # Operation Stubber for DeleteApiCache
    class DeleteApiCache
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApiKey
    class DeleteApiKey
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDataSource
    class DeleteDataSource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDomainName
    class DeleteDomainName
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFunction
    class DeleteFunction
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteGraphqlApi
    class DeleteGraphqlApi
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteResolver
    class DeleteResolver
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteType
    class DeleteType
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateApi
    class DisassociateApi
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for FlushApiCache
    class FlushApiCache
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetApiAssociation
    class GetApiAssociation
      def self.default(visited=[])
        {
          api_association: ApiAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiAssociation'] = Stubs::ApiAssociation.stub(stub[:api_association]) unless stub[:api_association].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetApiCache
    class GetApiCache
      def self.default(visited=[])
        {
          api_cache: ApiCache.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiCache'] = Stubs::ApiCache.stub(stub[:api_cache]) unless stub[:api_cache].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDataSource
    class GetDataSource
      def self.default(visited=[])
        {
          data_source: DataSource.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['dataSource'] = Stubs::DataSource.stub(stub[:data_source]) unless stub[:data_source].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDomainName
    class GetDomainName
      def self.default(visited=[])
        {
          domain_name_config: DomainNameConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['domainNameConfig'] = Stubs::DomainNameConfig.stub(stub[:domain_name_config]) unless stub[:domain_name_config].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetFunction
    class GetFunction
      def self.default(visited=[])
        {
          function_configuration: FunctionConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['functionConfiguration'] = Stubs::FunctionConfiguration.stub(stub[:function_configuration]) unless stub[:function_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetGraphqlApi
    class GetGraphqlApi
      def self.default(visited=[])
        {
          graphql_api: GraphqlApi.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['graphqlApi'] = Stubs::GraphqlApi.stub(stub[:graphql_api]) unless stub[:graphql_api].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetIntrospectionSchema
    class GetIntrospectionSchema
      def self.default(visited=[])
        {
          schema: 'schema',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/octet-stream'
        http_resp.body = StringIO.new(stub[:schema] || '')
      end
    end

    # Operation Stubber for GetResolver
    class GetResolver
      def self.default(visited=[])
        {
          resolver: Resolver.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resolver'] = Stubs::Resolver.stub(stub[:resolver]) unless stub[:resolver].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSchemaCreationStatus
    class GetSchemaCreationStatus
      def self.default(visited=[])
        {
          status: 'status',
          details: 'details',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['status'] = stub[:status] unless stub[:status].nil?
        data['details'] = stub[:details] unless stub[:details].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetType
    class GetType
      def self.default(visited=[])
        {
          type: Type.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['type'] = Stubs::Type.stub(stub[:type]) unless stub[:type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListApiKeys
    class ListApiKeys
      def self.default(visited=[])
        {
          api_keys: ApiKeys.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiKeys'] = Stubs::ApiKeys.stub(stub[:api_keys]) unless stub[:api_keys].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ApiKeys
    class ApiKeys
      def self.default(visited=[])
        return nil if visited.include?('ApiKeys')
        visited = visited + ['ApiKeys']
        [
          ApiKey.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ApiKey.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDataSources
    class ListDataSources
      def self.default(visited=[])
        {
          data_sources: DataSources.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['dataSources'] = Stubs::DataSources.stub(stub[:data_sources]) unless stub[:data_sources].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DataSources
    class DataSources
      def self.default(visited=[])
        return nil if visited.include?('DataSources')
        visited = visited + ['DataSources']
        [
          DataSource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataSource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDomainNames
    class ListDomainNames
      def self.default(visited=[])
        {
          domain_name_configs: DomainNameConfigs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['domainNameConfigs'] = Stubs::DomainNameConfigs.stub(stub[:domain_name_configs]) unless stub[:domain_name_configs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DomainNameConfigs
    class DomainNameConfigs
      def self.default(visited=[])
        return nil if visited.include?('DomainNameConfigs')
        visited = visited + ['DomainNameConfigs']
        [
          DomainNameConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DomainNameConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListFunctions
    class ListFunctions
      def self.default(visited=[])
        {
          functions: Functions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['functions'] = Stubs::Functions.stub(stub[:functions]) unless stub[:functions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Functions
    class Functions
      def self.default(visited=[])
        return nil if visited.include?('Functions')
        visited = visited + ['Functions']
        [
          FunctionConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FunctionConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListGraphqlApis
    class ListGraphqlApis
      def self.default(visited=[])
        {
          graphql_apis: GraphqlApis.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['graphqlApis'] = Stubs::GraphqlApis.stub(stub[:graphql_apis]) unless stub[:graphql_apis].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for GraphqlApis
    class GraphqlApis
      def self.default(visited=[])
        return nil if visited.include?('GraphqlApis')
        visited = visited + ['GraphqlApis']
        [
          GraphqlApi.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GraphqlApi.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListResolvers
    class ListResolvers
      def self.default(visited=[])
        {
          resolvers: Resolvers.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resolvers'] = Stubs::Resolvers.stub(stub[:resolvers]) unless stub[:resolvers].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Resolvers
    class Resolvers
      def self.default(visited=[])
        return nil if visited.include?('Resolvers')
        visited = visited + ['Resolvers']
        [
          Resolver.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Resolver.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListResolversByFunction
    class ListResolversByFunction
      def self.default(visited=[])
        {
          resolvers: Resolvers.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resolvers'] = Stubs::Resolvers.stub(stub[:resolvers]) unless stub[:resolvers].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListTypes
    class ListTypes
      def self.default(visited=[])
        {
          types: TypeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['types'] = Stubs::TypeList.stub(stub[:types]) unless stub[:types].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TypeList
    class TypeList
      def self.default(visited=[])
        return nil if visited.include?('TypeList')
        visited = visited + ['TypeList']
        [
          Type.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Type.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for StartSchemaCreation
    class StartSchemaCreation
      def self.default(visited=[])
        {
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateApiCache
    class UpdateApiCache
      def self.default(visited=[])
        {
          api_cache: ApiCache.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiCache'] = Stubs::ApiCache.stub(stub[:api_cache]) unless stub[:api_cache].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateApiKey
    class UpdateApiKey
      def self.default(visited=[])
        {
          api_key: ApiKey.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiKey'] = Stubs::ApiKey.stub(stub[:api_key]) unless stub[:api_key].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDataSource
    class UpdateDataSource
      def self.default(visited=[])
        {
          data_source: DataSource.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['dataSource'] = Stubs::DataSource.stub(stub[:data_source]) unless stub[:data_source].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDomainName
    class UpdateDomainName
      def self.default(visited=[])
        {
          domain_name_config: DomainNameConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['domainNameConfig'] = Stubs::DomainNameConfig.stub(stub[:domain_name_config]) unless stub[:domain_name_config].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateFunction
    class UpdateFunction
      def self.default(visited=[])
        {
          function_configuration: FunctionConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['functionConfiguration'] = Stubs::FunctionConfiguration.stub(stub[:function_configuration]) unless stub[:function_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateGraphqlApi
    class UpdateGraphqlApi
      def self.default(visited=[])
        {
          graphql_api: GraphqlApi.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['graphqlApi'] = Stubs::GraphqlApi.stub(stub[:graphql_api]) unless stub[:graphql_api].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateResolver
    class UpdateResolver
      def self.default(visited=[])
        {
          resolver: Resolver.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resolver'] = Stubs::Resolver.stub(stub[:resolver]) unless stub[:resolver].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateType
    class UpdateType
      def self.default(visited=[])
        {
          type: Type.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['type'] = Stubs::Type.stub(stub[:type]) unless stub[:type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
