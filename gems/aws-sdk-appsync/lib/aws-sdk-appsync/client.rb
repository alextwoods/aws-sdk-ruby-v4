# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::AppSync
  # An API client for AWSDeepdishControlPlaneService
  # See {#initialize} for a full list of supported configuration options
  # <p>AppSync provides API actions for creating and interacting with data
  #          sources using GraphQL from your application.</p>
  #
  class Client
    include Hearth::ClientStubs

    @middleware = Hearth::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::AppSync::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Maps an endpoint to your custom domain.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateApiInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @return [Types::AssociateApiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_api(
    #     domain_name: 'domainName', # required
    #     api_id: 'apiId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateApiOutput
    #   resp.data.api_association #=> Types::ApiAssociation
    #   resp.data.api_association.domain_name #=> String
    #   resp.data.api_association.api_id #=> String
    #   resp.data.api_association.association_status #=> String, one of ["PROCESSING", "FAILED", "SUCCESS"]
    #   resp.data.api_association.deployment_detail #=> String
    #
    def associate_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateApiInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateApiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateApi
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::AccessDeniedException]),
        data_parser: Parsers::AssociateApi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateApi,
        stubs: @stubs,
        params_class: Params::AssociateApiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a cache for the GraphQL API.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApiCacheInput}.
    #
    # @option params [String] :api_id
    #   <p>The GraphQL API ID.</p>
    #
    # @option params [Integer] :ttl
    #   <p>TTL in seconds for cache entries.</p>
    #            <p>Valid values are 1–3,600 seconds.</p>
    #
    # @option params [Boolean] :transit_encryption_enabled
    #   <p>Transit encryption flag when connecting to cache. You cannot update this setting after
    #            creation.</p>
    #
    # @option params [Boolean] :at_rest_encryption_enabled
    #   <p>At-rest encryption flag for cache. You cannot update this setting after creation.</p>
    #
    # @option params [String] :api_caching_behavior
    #   <p>Caching behavior.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>FULL_REQUEST_CACHING</b>: All requests are fully
    #                  cached.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PER_RESOLVER_CACHING</b>: Individual resolvers
    #                  that you specify are cached.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :type
    #   <p>The cache instance type. Valid values are </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SMALL</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MEDIUM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XLARGE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_2X</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_4X</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_8X</code> (not available in all regions)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_12X</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used.</p>
    #            <p>The following legacy instance types are available, but their use is discouraged:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>T2_SMALL</b>: A t2.small instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>T2_MEDIUM</b>: A t2.medium instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_LARGE</b>: A r4.large instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_XLARGE</b>: A r4.xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_2XLARGE</b>: A r4.2xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_4XLARGE</b>: A r4.4xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_8XLARGE</b>: A r4.8xlarge instance type.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateApiCacheOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_api_cache(
    #     api_id: 'apiId', # required
    #     ttl: 1, # required
    #     transit_encryption_enabled: false,
    #     at_rest_encryption_enabled: false,
    #     api_caching_behavior: 'FULL_REQUEST_CACHING', # required - accepts ["FULL_REQUEST_CACHING", "PER_RESOLVER_CACHING"]
    #     type: 'T2_SMALL' # required - accepts ["T2_SMALL", "T2_MEDIUM", "R4_LARGE", "R4_XLARGE", "R4_2XLARGE", "R4_4XLARGE", "R4_8XLARGE", "SMALL", "MEDIUM", "LARGE", "XLARGE", "LARGE_2X", "LARGE_4X", "LARGE_8X", "LARGE_12X"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApiCacheOutput
    #   resp.data.api_cache #=> Types::ApiCache
    #   resp.data.api_cache.ttl #=> Integer
    #   resp.data.api_cache.api_caching_behavior #=> String, one of ["FULL_REQUEST_CACHING", "PER_RESOLVER_CACHING"]
    #   resp.data.api_cache.transit_encryption_enabled #=> Boolean
    #   resp.data.api_cache.at_rest_encryption_enabled #=> Boolean
    #   resp.data.api_cache.type #=> String, one of ["T2_SMALL", "T2_MEDIUM", "R4_LARGE", "R4_XLARGE", "R4_2XLARGE", "R4_4XLARGE", "R4_8XLARGE", "SMALL", "MEDIUM", "LARGE", "XLARGE", "LARGE_2X", "LARGE_4X", "LARGE_8X", "LARGE_12X"]
    #   resp.data.api_cache.status #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "MODIFYING", "FAILED"]
    #
    def create_api_cache(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApiCacheInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateApiCacheInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApiCache
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateApiCache
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApiCache,
        stubs: @stubs,
        params_class: Params::CreateApiCacheOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_api_cache
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a unique key that you can distribute to clients who invoke your API.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApiKeyInput}.
    #
    # @option params [String] :api_id
    #   <p>The ID for your GraphQL API.</p>
    #
    # @option params [String] :description
    #   <p>A description of the purpose of the API key.</p>
    #
    # @option params [Integer] :expires
    #   <p>From the creation time, the time after which the API key expires. The date is
    #            represented as seconds since the epoch, rounded down to the nearest hour. The default value
    #            for this parameter is 7 days from creation time. For more information, see .</p>
    #
    # @return [Types::CreateApiKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_api_key(
    #     api_id: 'apiId', # required
    #     description: 'description',
    #     expires: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApiKeyOutput
    #   resp.data.api_key #=> Types::ApiKey
    #   resp.data.api_key.id #=> String
    #   resp.data.api_key.description #=> String
    #   resp.data.api_key.expires #=> Integer
    #   resp.data.api_key.deletes #=> Integer
    #
    def create_api_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApiKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateApiKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApiKey
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ApiKeyLimitExceededException, Errors::LimitExceededException, Errors::InternalFailureException, Errors::ApiKeyValidityOutOfBoundsException, Errors::BadRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateApiKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApiKey,
        stubs: @stubs,
        params_class: Params::CreateApiKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_api_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a <code>DataSource</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDataSourceInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID for the GraphQL API for the <code>DataSource</code>.</p>
    #
    # @option params [String] :name
    #   <p>A user-supplied name for the <code>DataSource</code>.</p>
    #
    # @option params [String] :description
    #   <p>A description of the <code>DataSource</code>.</p>
    #
    # @option params [String] :type
    #   <p>The type of the <code>DataSource</code>.</p>
    #
    # @option params [String] :service_role_arn
    #   <p>The Identity and Access Management (IAM) service role Amazon Resource Name (ARN)
    #            for the data source. The system assumes this role when accessing the data source.</p>
    #
    # @option params [DynamodbDataSourceConfig] :dynamodb_config
    #   <p>Amazon DynamoDB settings.</p>
    #
    # @option params [LambdaDataSourceConfig] :lambda_config
    #   <p>Lambda settings.</p>
    #
    # @option params [ElasticsearchDataSourceConfig] :elasticsearch_config
    #   <p>Amazon OpenSearch Service settings.</p>
    #            <p>As of September 2021, Amazon Elasticsearch service is Amazon OpenSearch Service. This
    #            configuration is deprecated. For new data sources, use <a>CreateDataSourceRequest$openSearchServiceConfig</a> to create an OpenSearch data source.</p>
    #
    # @option params [OpenSearchServiceDataSourceConfig] :open_search_service_config
    #   <p>Amazon OpenSearch Service settings.</p>
    #
    # @option params [HttpDataSourceConfig] :http_config
    #   <p>HTTP endpoint settings.</p>
    #
    # @option params [RelationalDatabaseDataSourceConfig] :relational_database_config
    #   <p>Relational database settings.</p>
    #
    # @return [Types::CreateDataSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_source(
    #     api_id: 'apiId', # required
    #     name: 'name', # required
    #     description: 'description',
    #     type: 'AWS_LAMBDA', # required - accepts ["AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP", "RELATIONAL_DATABASE", "AMAZON_OPENSEARCH_SERVICE"]
    #     service_role_arn: 'serviceRoleArn',
    #     dynamodb_config: {
    #       table_name: 'tableName', # required
    #       aws_region: 'awsRegion', # required
    #       use_caller_credentials: false,
    #       delta_sync_config: {
    #         base_table_ttl: 1,
    #         delta_sync_table_name: 'deltaSyncTableName',
    #         delta_sync_table_ttl: 1
    #       },
    #       versioned: false
    #     },
    #     lambda_config: {
    #       lambda_function_arn: 'lambdaFunctionArn' # required
    #     },
    #     elasticsearch_config: {
    #       endpoint: 'endpoint', # required
    #       aws_region: 'awsRegion' # required
    #     },
    #     open_search_service_config: {
    #       endpoint: 'endpoint', # required
    #       aws_region: 'awsRegion' # required
    #     },
    #     http_config: {
    #       endpoint: 'endpoint',
    #       authorization_config: {
    #         authorization_type: 'AWS_IAM', # required - accepts ["AWS_IAM"]
    #         aws_iam_config: {
    #           signing_region: 'signingRegion',
    #           signing_service_name: 'signingServiceName'
    #         }
    #       }
    #     },
    #     relational_database_config: {
    #       relational_database_source_type: 'RDS_HTTP_ENDPOINT', # accepts ["RDS_HTTP_ENDPOINT"]
    #       rds_http_endpoint_config: {
    #         aws_region: 'awsRegion',
    #         db_cluster_identifier: 'dbClusterIdentifier',
    #         database_name: 'databaseName',
    #         schema: 'schema',
    #         aws_secret_store_arn: 'awsSecretStoreArn'
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDataSourceOutput
    #   resp.data.data_source #=> Types::DataSource
    #   resp.data.data_source.data_source_arn #=> String
    #   resp.data.data_source.name #=> String
    #   resp.data.data_source.description #=> String
    #   resp.data.data_source.type #=> String, one of ["AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP", "RELATIONAL_DATABASE", "AMAZON_OPENSEARCH_SERVICE"]
    #   resp.data.data_source.service_role_arn #=> String
    #   resp.data.data_source.dynamodb_config #=> Types::DynamodbDataSourceConfig
    #   resp.data.data_source.dynamodb_config.table_name #=> String
    #   resp.data.data_source.dynamodb_config.aws_region #=> String
    #   resp.data.data_source.dynamodb_config.use_caller_credentials #=> Boolean
    #   resp.data.data_source.dynamodb_config.delta_sync_config #=> Types::DeltaSyncConfig
    #   resp.data.data_source.dynamodb_config.delta_sync_config.base_table_ttl #=> Integer
    #   resp.data.data_source.dynamodb_config.delta_sync_config.delta_sync_table_name #=> String
    #   resp.data.data_source.dynamodb_config.delta_sync_config.delta_sync_table_ttl #=> Integer
    #   resp.data.data_source.dynamodb_config.versioned #=> Boolean
    #   resp.data.data_source.lambda_config #=> Types::LambdaDataSourceConfig
    #   resp.data.data_source.lambda_config.lambda_function_arn #=> String
    #   resp.data.data_source.elasticsearch_config #=> Types::ElasticsearchDataSourceConfig
    #   resp.data.data_source.elasticsearch_config.endpoint #=> String
    #   resp.data.data_source.elasticsearch_config.aws_region #=> String
    #   resp.data.data_source.open_search_service_config #=> Types::OpenSearchServiceDataSourceConfig
    #   resp.data.data_source.open_search_service_config.endpoint #=> String
    #   resp.data.data_source.open_search_service_config.aws_region #=> String
    #   resp.data.data_source.http_config #=> Types::HttpDataSourceConfig
    #   resp.data.data_source.http_config.endpoint #=> String
    #   resp.data.data_source.http_config.authorization_config #=> Types::AuthorizationConfig
    #   resp.data.data_source.http_config.authorization_config.authorization_type #=> String, one of ["AWS_IAM"]
    #   resp.data.data_source.http_config.authorization_config.aws_iam_config #=> Types::AwsIamConfig
    #   resp.data.data_source.http_config.authorization_config.aws_iam_config.signing_region #=> String
    #   resp.data.data_source.http_config.authorization_config.aws_iam_config.signing_service_name #=> String
    #   resp.data.data_source.relational_database_config #=> Types::RelationalDatabaseDataSourceConfig
    #   resp.data.data_source.relational_database_config.relational_database_source_type #=> String, one of ["RDS_HTTP_ENDPOINT"]
    #   resp.data.data_source.relational_database_config.rds_http_endpoint_config #=> Types::RdsHttpEndpointConfig
    #   resp.data.data_source.relational_database_config.rds_http_endpoint_config.aws_region #=> String
    #   resp.data.data_source.relational_database_config.rds_http_endpoint_config.db_cluster_identifier #=> String
    #   resp.data.data_source.relational_database_config.rds_http_endpoint_config.database_name #=> String
    #   resp.data.data_source.relational_database_config.rds_http_endpoint_config.schema #=> String
    #   resp.data.data_source.relational_database_config.rds_http_endpoint_config.aws_secret_store_arn #=> String
    #
    def create_data_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDataSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDataSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataSource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateDataSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataSource,
        stubs: @stubs,
        params_class: Params::CreateDataSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_data_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a custom <code>DomainName</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDomainNameInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    #
    # @option params [String] :certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate. This can be an Certificate Manager
    #               (ACM) certificate or an Identity and Access Management (IAM)
    #            server certificate.</p>
    #
    # @option params [String] :description
    #   <p>A description of the <code>DomainName</code>.</p>
    #
    # @return [Types::CreateDomainNameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain_name(
    #     domain_name: 'domainName', # required
    #     certificate_arn: 'certificateArn', # required
    #     description: 'description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDomainNameOutput
    #   resp.data.domain_name_config #=> Types::DomainNameConfig
    #   resp.data.domain_name_config.domain_name #=> String
    #   resp.data.domain_name_config.description #=> String
    #   resp.data.domain_name_config.certificate_arn #=> String
    #   resp.data.domain_name_config.appsync_domain_name #=> String
    #   resp.data.domain_name_config.hosted_zone_id #=> String
    #
    def create_domain_name(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDomainNameInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDomainNameInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDomainName
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::BadRequestException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateDomainName
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDomainName,
        stubs: @stubs,
        params_class: Params::CreateDomainNameOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_domain_name
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a <code>Function</code> object.</p>
    #          <p>A function is a reusable entity. You can use multiple functions to compose the resolver
    #          logic.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFunctionInput}.
    #
    # @option params [String] :api_id
    #   <p>The GraphQL API ID.</p>
    #
    # @option params [String] :name
    #   <p>The <code>Function</code> name. The function name does not have to be unique.</p>
    #
    # @option params [String] :description
    #   <p>The <code>Function</code> description.</p>
    #
    # @option params [String] :data_source_name
    #   <p>The <code>Function</code>
    #               <code>DataSource</code> name.</p>
    #
    # @option params [String] :request_mapping_template
    #   <p>The <code>Function</code> request mapping template. Functions support only the
    #            2018-05-29 version of the request mapping template.</p>
    #
    # @option params [String] :response_mapping_template
    #   <p>The <code>Function</code> response mapping template.</p>
    #
    # @option params [String] :function_version
    #   <p>The <code>version</code> of the request mapping template. Currently, the supported value
    #            is 2018-05-29.</p>
    #
    # @option params [SyncConfig] :sync_config
    #   <p>Describes a Sync configuration for a resolver.</p>
    #            <p>Specifies which Conflict Detection strategy and Resolution strategy to use when the
    #            resolver is invoked.</p>
    #
    # @option params [Integer] :max_batch_size
    #   <p>The maximum batching size for a resolver.</p>
    #
    # @return [Types::CreateFunctionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_function(
    #     api_id: 'apiId', # required
    #     name: 'name', # required
    #     description: 'description',
    #     data_source_name: 'dataSourceName', # required
    #     request_mapping_template: 'requestMappingTemplate',
    #     response_mapping_template: 'responseMappingTemplate',
    #     function_version: 'functionVersion', # required
    #     sync_config: {
    #       conflict_handler: 'OPTIMISTIC_CONCURRENCY', # accepts ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #       conflict_detection: 'VERSION', # accepts ["VERSION", "NONE"]
    #       lambda_conflict_handler_config: {
    #         lambda_conflict_handler_arn: 'lambdaConflictHandlerArn'
    #       }
    #     },
    #     max_batch_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFunctionOutput
    #   resp.data.function_configuration #=> Types::FunctionConfiguration
    #   resp.data.function_configuration.function_id #=> String
    #   resp.data.function_configuration.function_arn #=> String
    #   resp.data.function_configuration.name #=> String
    #   resp.data.function_configuration.description #=> String
    #   resp.data.function_configuration.data_source_name #=> String
    #   resp.data.function_configuration.request_mapping_template #=> String
    #   resp.data.function_configuration.response_mapping_template #=> String
    #   resp.data.function_configuration.function_version #=> String
    #   resp.data.function_configuration.sync_config #=> Types::SyncConfig
    #   resp.data.function_configuration.sync_config.conflict_handler #=> String, one of ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #   resp.data.function_configuration.sync_config.conflict_detection #=> String, one of ["VERSION", "NONE"]
    #   resp.data.function_configuration.sync_config.lambda_conflict_handler_config #=> Types::LambdaConflictHandlerConfig
    #   resp.data.function_configuration.sync_config.lambda_conflict_handler_config.lambda_conflict_handler_arn #=> String
    #   resp.data.function_configuration.max_batch_size #=> Integer
    #
    def create_function(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFunctionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFunctionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFunction
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateFunction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFunction,
        stubs: @stubs,
        params_class: Params::CreateFunctionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_function
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a <code>GraphqlApi</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateGraphqlApiInput}.
    #
    # @option params [String] :name
    #   <p>A user-supplied name for the <code>GraphqlApi</code>.</p>
    #
    # @option params [LogConfig] :log_config
    #   <p>The Amazon CloudWatch Logs configuration.</p>
    #
    # @option params [String] :authentication_type
    #   <p>The authentication type: API key, Identity and Access Management (IAM), OpenID
    #            Connect (OIDC), Amazon Cognito user pools, or Lambda.</p>
    #
    # @option params [UserPoolConfig] :user_pool_config
    #   <p>The Amazon Cognito user pool configuration.</p>
    #
    # @option params [OpenIDConnectConfig] :open_id_connect_config
    #   <p>The OIDC configuration.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A <code>TagMap</code> object.</p>
    #
    # @option params [Array<AdditionalAuthenticationProvider>] :additional_authentication_providers
    #   <p>A list of additional authentication providers for the <code>GraphqlApi</code>
    #            API.</p>
    #
    # @option params [Boolean] :xray_enabled
    #   <p>A flag indicating whether to use X-Ray tracing for the
    #               <code>GraphqlApi</code>.</p>
    #
    # @option params [LambdaAuthorizerConfig] :lambda_authorizer_config
    #   <p>Configuration for Lambda function authorization.</p>
    #
    # @return [Types::CreateGraphqlApiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_graphql_api(
    #     name: 'name', # required
    #     log_config: {
    #       field_log_level: 'NONE', # required - accepts ["NONE", "ERROR", "ALL"]
    #       cloud_watch_logs_role_arn: 'cloudWatchLogsRoleArn', # required
    #       exclude_verbose_content: false
    #     },
    #     authentication_type: 'API_KEY', # required - accepts ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"]
    #     user_pool_config: {
    #       user_pool_id: 'userPoolId', # required
    #       aws_region: 'awsRegion', # required
    #       default_action: 'ALLOW', # required - accepts ["ALLOW", "DENY"]
    #       app_id_client_regex: 'appIdClientRegex'
    #     },
    #     open_id_connect_config: {
    #       issuer: 'issuer', # required
    #       client_id: 'clientId',
    #       iat_ttl: 1,
    #       auth_ttl: 1
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     additional_authentication_providers: [
    #       {
    #         authentication_type: 'API_KEY', # accepts ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"]
    #         user_pool_config: {
    #           user_pool_id: 'userPoolId', # required
    #           aws_region: 'awsRegion', # required
    #           app_id_client_regex: 'appIdClientRegex'
    #         },
    #         lambda_authorizer_config: {
    #           authorizer_result_ttl_in_seconds: 1,
    #           authorizer_uri: 'authorizerUri', # required
    #           identity_validation_expression: 'identityValidationExpression'
    #         }
    #       }
    #     ],
    #     xray_enabled: false,
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGraphqlApiOutput
    #   resp.data.graphql_api #=> Types::GraphqlApi
    #   resp.data.graphql_api.name #=> String
    #   resp.data.graphql_api.api_id #=> String
    #   resp.data.graphql_api.authentication_type #=> String, one of ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"]
    #   resp.data.graphql_api.log_config #=> Types::LogConfig
    #   resp.data.graphql_api.log_config.field_log_level #=> String, one of ["NONE", "ERROR", "ALL"]
    #   resp.data.graphql_api.log_config.cloud_watch_logs_role_arn #=> String
    #   resp.data.graphql_api.log_config.exclude_verbose_content #=> Boolean
    #   resp.data.graphql_api.user_pool_config #=> Types::UserPoolConfig
    #   resp.data.graphql_api.user_pool_config.user_pool_id #=> String
    #   resp.data.graphql_api.user_pool_config.aws_region #=> String
    #   resp.data.graphql_api.user_pool_config.default_action #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.graphql_api.user_pool_config.app_id_client_regex #=> String
    #   resp.data.graphql_api.open_id_connect_config #=> Types::OpenIDConnectConfig
    #   resp.data.graphql_api.open_id_connect_config.issuer #=> String
    #   resp.data.graphql_api.open_id_connect_config.client_id #=> String
    #   resp.data.graphql_api.open_id_connect_config.iat_ttl #=> Integer
    #   resp.data.graphql_api.open_id_connect_config.auth_ttl #=> Integer
    #   resp.data.graphql_api.arn #=> String
    #   resp.data.graphql_api.uris #=> Hash<String, String>
    #   resp.data.graphql_api.uris['key'] #=> String
    #   resp.data.graphql_api.tags #=> Hash<String, String>
    #   resp.data.graphql_api.tags['key'] #=> String
    #   resp.data.graphql_api.additional_authentication_providers #=> Array<AdditionalAuthenticationProvider>
    #   resp.data.graphql_api.additional_authentication_providers[0] #=> Types::AdditionalAuthenticationProvider
    #   resp.data.graphql_api.additional_authentication_providers[0].authentication_type #=> String, one of ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"]
    #   resp.data.graphql_api.additional_authentication_providers[0].open_id_connect_config #=> Types::OpenIDConnectConfig
    #   resp.data.graphql_api.additional_authentication_providers[0].user_pool_config #=> Types::CognitoUserPoolConfig
    #   resp.data.graphql_api.additional_authentication_providers[0].user_pool_config.user_pool_id #=> String
    #   resp.data.graphql_api.additional_authentication_providers[0].user_pool_config.aws_region #=> String
    #   resp.data.graphql_api.additional_authentication_providers[0].user_pool_config.app_id_client_regex #=> String
    #   resp.data.graphql_api.additional_authentication_providers[0].lambda_authorizer_config #=> Types::LambdaAuthorizerConfig
    #   resp.data.graphql_api.additional_authentication_providers[0].lambda_authorizer_config.authorizer_result_ttl_in_seconds #=> Integer
    #   resp.data.graphql_api.additional_authentication_providers[0].lambda_authorizer_config.authorizer_uri #=> String
    #   resp.data.graphql_api.additional_authentication_providers[0].lambda_authorizer_config.identity_validation_expression #=> String
    #   resp.data.graphql_api.xray_enabled #=> Boolean
    #   resp.data.graphql_api.waf_web_acl_arn #=> String
    #   resp.data.graphql_api.lambda_authorizer_config #=> Types::LambdaAuthorizerConfig
    #
    def create_graphql_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGraphqlApiInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGraphqlApiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGraphqlApi
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ApiLimitExceededException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateGraphqlApi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGraphqlApi,
        stubs: @stubs,
        params_class: Params::CreateGraphqlApiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_graphql_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a <code>Resolver</code> object.</p>
    #          <p>A resolver converts incoming requests into a format that a data source can understand,
    #          and converts the data source's responses into GraphQL.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateResolverInput}.
    #
    # @option params [String] :api_id
    #   <p>The ID for the GraphQL API for which the resolver is being created.</p>
    #
    # @option params [String] :type_name
    #   <p>The name of the <code>Type</code>.</p>
    #
    # @option params [String] :field_name
    #   <p>The name of the field to attach the resolver to.</p>
    #
    # @option params [String] :data_source_name
    #   <p>The name of the data source for which the resolver is being created.</p>
    #
    # @option params [String] :request_mapping_template
    #   <p>The mapping template to use for requests.</p>
    #            <p>A resolver uses a request mapping template to convert a GraphQL expression into a format
    #            that a data source can understand. Mapping templates are written in Apache Velocity
    #            Template Language (VTL).</p>
    #            <p>VTL request mapping templates are optional when using an Lambda data
    #            source. For all other data sources, VTL request and response mapping templates are
    #            required.</p>
    #
    # @option params [String] :response_mapping_template
    #   <p>The mapping template to use for responses from the data source.</p>
    #
    # @option params [String] :kind
    #   <p>The resolver type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>UNIT</b>: A UNIT resolver type. A UNIT resolver is
    #                  the default resolver type. You can use a UNIT resolver to run a GraphQL query against
    #                  a single data source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PIPELINE</b>: A PIPELINE resolver type. You can
    #                  use a PIPELINE resolver to invoke a series of <code>Function</code> objects in a
    #                  serial manner. You can use a pipeline resolver to run a GraphQL query against
    #                  multiple data sources.</p>
    #               </li>
    #            </ul>
    #
    # @option params [PipelineConfig] :pipeline_config
    #   <p>The <code>PipelineConfig</code>.</p>
    #
    # @option params [SyncConfig] :sync_config
    #   <p>The <code>SyncConfig</code> for a resolver attached to a versioned data source.</p>
    #
    # @option params [CachingConfig] :caching_config
    #   <p>The caching configuration for the resolver.</p>
    #
    # @option params [Integer] :max_batch_size
    #   <p>The maximum batching size for a resolver.</p>
    #
    # @return [Types::CreateResolverOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resolver(
    #     api_id: 'apiId', # required
    #     type_name: 'typeName', # required
    #     field_name: 'fieldName', # required
    #     data_source_name: 'dataSourceName',
    #     request_mapping_template: 'requestMappingTemplate',
    #     response_mapping_template: 'responseMappingTemplate',
    #     kind: 'UNIT', # accepts ["UNIT", "PIPELINE"]
    #     pipeline_config: {
    #       functions: [
    #         'member'
    #       ]
    #     },
    #     sync_config: {
    #       conflict_handler: 'OPTIMISTIC_CONCURRENCY', # accepts ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #       conflict_detection: 'VERSION', # accepts ["VERSION", "NONE"]
    #       lambda_conflict_handler_config: {
    #         lambda_conflict_handler_arn: 'lambdaConflictHandlerArn'
    #       }
    #     },
    #     caching_config: {
    #       ttl: 1,
    #       caching_keys: [
    #         'member'
    #       ]
    #     },
    #     max_batch_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateResolverOutput
    #   resp.data.resolver #=> Types::Resolver
    #   resp.data.resolver.type_name #=> String
    #   resp.data.resolver.field_name #=> String
    #   resp.data.resolver.data_source_name #=> String
    #   resp.data.resolver.resolver_arn #=> String
    #   resp.data.resolver.request_mapping_template #=> String
    #   resp.data.resolver.response_mapping_template #=> String
    #   resp.data.resolver.kind #=> String, one of ["UNIT", "PIPELINE"]
    #   resp.data.resolver.pipeline_config #=> Types::PipelineConfig
    #   resp.data.resolver.pipeline_config.functions #=> Array<String>
    #   resp.data.resolver.pipeline_config.functions[0] #=> String
    #   resp.data.resolver.sync_config #=> Types::SyncConfig
    #   resp.data.resolver.sync_config.conflict_handler #=> String, one of ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #   resp.data.resolver.sync_config.conflict_detection #=> String, one of ["VERSION", "NONE"]
    #   resp.data.resolver.sync_config.lambda_conflict_handler_config #=> Types::LambdaConflictHandlerConfig
    #   resp.data.resolver.sync_config.lambda_conflict_handler_config.lambda_conflict_handler_arn #=> String
    #   resp.data.resolver.caching_config #=> Types::CachingConfig
    #   resp.data.resolver.caching_config.ttl #=> Integer
    #   resp.data.resolver.caching_config.caching_keys #=> Array<String>
    #   resp.data.resolver.caching_config.caching_keys[0] #=> String
    #   resp.data.resolver.max_batch_size #=> Integer
    #
    def create_resolver(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateResolverInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateResolverInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateResolver
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateResolver
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateResolver,
        stubs: @stubs,
        params_class: Params::CreateResolverOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_resolver
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a <code>Type</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTypeInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @option params [String] :definition
    #   <p>The type definition, in GraphQL Schema Definition Language (SDL) format.</p>
    #            <p>For more information, see the <a href="http://graphql.org/learn/schema/">GraphQL SDL
    #               documentation</a>.</p>
    #
    # @option params [String] :format
    #   <p>The type format: SDL or JSON.</p>
    #
    # @return [Types::CreateTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_type(
    #     api_id: 'apiId', # required
    #     definition: 'definition', # required
    #     format: 'SDL' # required - accepts ["SDL", "JSON"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTypeOutput
    #   resp.data.type #=> Types::Type
    #   resp.data.type.name #=> String
    #   resp.data.type.description #=> String
    #   resp.data.type.arn #=> String
    #   resp.data.type.definition #=> String
    #   resp.data.type.format #=> String, one of ["SDL", "JSON"]
    #
    def create_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateType
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateType,
        stubs: @stubs,
        params_class: Params::CreateTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an <code>ApiCache</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApiCacheInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @return [Types::DeleteApiCacheOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_api_cache(
    #     api_id: 'apiId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApiCacheOutput
    #
    def delete_api_cache(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApiCacheInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApiCacheInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApiCache
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteApiCache
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApiCache,
        stubs: @stubs,
        params_class: Params::DeleteApiCacheOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_api_cache
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an API key.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApiKeyInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @option params [String] :id
    #   <p>The ID for the API key.</p>
    #
    # @return [Types::DeleteApiKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_api_key(
    #     api_id: 'apiId', # required
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApiKeyOutput
    #
    def delete_api_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApiKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApiKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApiKey
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteApiKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApiKey,
        stubs: @stubs,
        params_class: Params::DeleteApiKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_api_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a <code>DataSource</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDataSourceInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @option params [String] :name
    #   <p>The name of the data source.</p>
    #
    # @return [Types::DeleteDataSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_source(
    #     api_id: 'apiId', # required
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDataSourceOutput
    #
    def delete_data_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDataSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDataSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDataSource
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteDataSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDataSource,
        stubs: @stubs,
        params_class: Params::DeleteDataSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_data_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a custom <code>DomainName</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDomainNameInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    #
    # @return [Types::DeleteDomainNameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain_name(
    #     domain_name: 'domainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDomainNameOutput
    #
    def delete_domain_name(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDomainNameInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDomainNameInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDomainName
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::AccessDeniedException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::DeleteDomainName
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDomainName,
        stubs: @stubs,
        params_class: Params::DeleteDomainNameOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_domain_name
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a <code>Function</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFunctionInput}.
    #
    # @option params [String] :api_id
    #   <p>The GraphQL API ID.</p>
    #
    # @option params [String] :function_id
    #   <p>The <code>Function</code> ID.</p>
    #
    # @return [Types::DeleteFunctionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function(
    #     api_id: 'apiId', # required
    #     function_id: 'functionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFunctionOutput
    #
    def delete_function(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFunctionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFunctionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFunction
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteFunction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFunction,
        stubs: @stubs,
        params_class: Params::DeleteFunctionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_function
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a <code>GraphqlApi</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGraphqlApiInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @return [Types::DeleteGraphqlApiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_graphql_api(
    #     api_id: 'apiId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGraphqlApiOutput
    #
    def delete_graphql_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGraphqlApiInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGraphqlApiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGraphqlApi
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteGraphqlApi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGraphqlApi,
        stubs: @stubs,
        params_class: Params::DeleteGraphqlApiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_graphql_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a <code>Resolver</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResolverInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @option params [String] :type_name
    #   <p>The name of the resolver type.</p>
    #
    # @option params [String] :field_name
    #   <p>The resolver field name.</p>
    #
    # @return [Types::DeleteResolverOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resolver(
    #     api_id: 'apiId', # required
    #     type_name: 'typeName', # required
    #     field_name: 'fieldName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResolverOutput
    #
    def delete_resolver(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResolverInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResolverInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResolver
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteResolver
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResolver,
        stubs: @stubs,
        params_class: Params::DeleteResolverOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resolver
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a <code>Type</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTypeInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @option params [String] :type_name
    #   <p>The type name.</p>
    #
    # @return [Types::DeleteTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_type(
    #     api_id: 'apiId', # required
    #     type_name: 'typeName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTypeOutput
    #
    def delete_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteType
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteType,
        stubs: @stubs,
        params_class: Params::DeleteTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes an <code>ApiAssociation</code> object from a custom domain.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateApiInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    #
    # @return [Types::DisassociateApiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_api(
    #     domain_name: 'domainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateApiOutput
    #
    def disassociate_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateApiInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateApiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateApi
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::AccessDeniedException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::DisassociateApi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateApi,
        stubs: @stubs,
        params_class: Params::DisassociateApiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Flushes an <code>ApiCache</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::FlushApiCacheInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @return [Types::FlushApiCacheOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.flush_api_cache(
    #     api_id: 'apiId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::FlushApiCacheOutput
    #
    def flush_api_cache(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::FlushApiCacheInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::FlushApiCacheInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::FlushApiCache
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::FlushApiCache
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::FlushApiCache,
        stubs: @stubs,
        params_class: Params::FlushApiCacheOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :flush_api_cache
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves an <code>ApiAssociation</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApiAssociationInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    #
    # @return [Types::GetApiAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_api_association(
    #     domain_name: 'domainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApiAssociationOutput
    #   resp.data.api_association #=> Types::ApiAssociation
    #   resp.data.api_association.domain_name #=> String
    #   resp.data.api_association.api_id #=> String
    #   resp.data.api_association.association_status #=> String, one of ["PROCESSING", "FAILED", "SUCCESS"]
    #   resp.data.api_association.deployment_detail #=> String
    #
    def get_api_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApiAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApiAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApiAssociation
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetApiAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApiAssociation,
        stubs: @stubs,
        params_class: Params::GetApiAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_api_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves an <code>ApiCache</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApiCacheInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @return [Types::GetApiCacheOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_api_cache(
    #     api_id: 'apiId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApiCacheOutput
    #   resp.data.api_cache #=> Types::ApiCache
    #   resp.data.api_cache.ttl #=> Integer
    #   resp.data.api_cache.api_caching_behavior #=> String, one of ["FULL_REQUEST_CACHING", "PER_RESOLVER_CACHING"]
    #   resp.data.api_cache.transit_encryption_enabled #=> Boolean
    #   resp.data.api_cache.at_rest_encryption_enabled #=> Boolean
    #   resp.data.api_cache.type #=> String, one of ["T2_SMALL", "T2_MEDIUM", "R4_LARGE", "R4_XLARGE", "R4_2XLARGE", "R4_4XLARGE", "R4_8XLARGE", "SMALL", "MEDIUM", "LARGE", "XLARGE", "LARGE_2X", "LARGE_4X", "LARGE_8X", "LARGE_12X"]
    #   resp.data.api_cache.status #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "MODIFYING", "FAILED"]
    #
    def get_api_cache(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApiCacheInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApiCacheInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApiCache
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetApiCache
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApiCache,
        stubs: @stubs,
        params_class: Params::GetApiCacheOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_api_cache
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a <code>DataSource</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDataSourceInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @option params [String] :name
    #   <p>The name of the data source.</p>
    #
    # @return [Types::GetDataSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_source(
    #     api_id: 'apiId', # required
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDataSourceOutput
    #   resp.data.data_source #=> Types::DataSource
    #   resp.data.data_source.data_source_arn #=> String
    #   resp.data.data_source.name #=> String
    #   resp.data.data_source.description #=> String
    #   resp.data.data_source.type #=> String, one of ["AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP", "RELATIONAL_DATABASE", "AMAZON_OPENSEARCH_SERVICE"]
    #   resp.data.data_source.service_role_arn #=> String
    #   resp.data.data_source.dynamodb_config #=> Types::DynamodbDataSourceConfig
    #   resp.data.data_source.dynamodb_config.table_name #=> String
    #   resp.data.data_source.dynamodb_config.aws_region #=> String
    #   resp.data.data_source.dynamodb_config.use_caller_credentials #=> Boolean
    #   resp.data.data_source.dynamodb_config.delta_sync_config #=> Types::DeltaSyncConfig
    #   resp.data.data_source.dynamodb_config.delta_sync_config.base_table_ttl #=> Integer
    #   resp.data.data_source.dynamodb_config.delta_sync_config.delta_sync_table_name #=> String
    #   resp.data.data_source.dynamodb_config.delta_sync_config.delta_sync_table_ttl #=> Integer
    #   resp.data.data_source.dynamodb_config.versioned #=> Boolean
    #   resp.data.data_source.lambda_config #=> Types::LambdaDataSourceConfig
    #   resp.data.data_source.lambda_config.lambda_function_arn #=> String
    #   resp.data.data_source.elasticsearch_config #=> Types::ElasticsearchDataSourceConfig
    #   resp.data.data_source.elasticsearch_config.endpoint #=> String
    #   resp.data.data_source.elasticsearch_config.aws_region #=> String
    #   resp.data.data_source.open_search_service_config #=> Types::OpenSearchServiceDataSourceConfig
    #   resp.data.data_source.open_search_service_config.endpoint #=> String
    #   resp.data.data_source.open_search_service_config.aws_region #=> String
    #   resp.data.data_source.http_config #=> Types::HttpDataSourceConfig
    #   resp.data.data_source.http_config.endpoint #=> String
    #   resp.data.data_source.http_config.authorization_config #=> Types::AuthorizationConfig
    #   resp.data.data_source.http_config.authorization_config.authorization_type #=> String, one of ["AWS_IAM"]
    #   resp.data.data_source.http_config.authorization_config.aws_iam_config #=> Types::AwsIamConfig
    #   resp.data.data_source.http_config.authorization_config.aws_iam_config.signing_region #=> String
    #   resp.data.data_source.http_config.authorization_config.aws_iam_config.signing_service_name #=> String
    #   resp.data.data_source.relational_database_config #=> Types::RelationalDatabaseDataSourceConfig
    #   resp.data.data_source.relational_database_config.relational_database_source_type #=> String, one of ["RDS_HTTP_ENDPOINT"]
    #   resp.data.data_source.relational_database_config.rds_http_endpoint_config #=> Types::RdsHttpEndpointConfig
    #   resp.data.data_source.relational_database_config.rds_http_endpoint_config.aws_region #=> String
    #   resp.data.data_source.relational_database_config.rds_http_endpoint_config.db_cluster_identifier #=> String
    #   resp.data.data_source.relational_database_config.rds_http_endpoint_config.database_name #=> String
    #   resp.data.data_source.relational_database_config.rds_http_endpoint_config.schema #=> String
    #   resp.data.data_source.relational_database_config.rds_http_endpoint_config.aws_secret_store_arn #=> String
    #
    def get_data_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDataSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDataSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDataSource
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetDataSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDataSource,
        stubs: @stubs,
        params_class: Params::GetDataSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_data_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a custom <code>DomainName</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDomainNameInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    #
    # @return [Types::GetDomainNameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_name(
    #     domain_name: 'domainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDomainNameOutput
    #   resp.data.domain_name_config #=> Types::DomainNameConfig
    #   resp.data.domain_name_config.domain_name #=> String
    #   resp.data.domain_name_config.description #=> String
    #   resp.data.domain_name_config.certificate_arn #=> String
    #   resp.data.domain_name_config.appsync_domain_name #=> String
    #   resp.data.domain_name_config.hosted_zone_id #=> String
    #
    def get_domain_name(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDomainNameInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDomainNameInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDomainName
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetDomainName
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDomainName,
        stubs: @stubs,
        params_class: Params::GetDomainNameOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_domain_name
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get a <code>Function</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFunctionInput}.
    #
    # @option params [String] :api_id
    #   <p>The GraphQL API ID.</p>
    #
    # @option params [String] :function_id
    #   <p>The <code>Function</code> ID.</p>
    #
    # @return [Types::GetFunctionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function(
    #     api_id: 'apiId', # required
    #     function_id: 'functionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFunctionOutput
    #   resp.data.function_configuration #=> Types::FunctionConfiguration
    #   resp.data.function_configuration.function_id #=> String
    #   resp.data.function_configuration.function_arn #=> String
    #   resp.data.function_configuration.name #=> String
    #   resp.data.function_configuration.description #=> String
    #   resp.data.function_configuration.data_source_name #=> String
    #   resp.data.function_configuration.request_mapping_template #=> String
    #   resp.data.function_configuration.response_mapping_template #=> String
    #   resp.data.function_configuration.function_version #=> String
    #   resp.data.function_configuration.sync_config #=> Types::SyncConfig
    #   resp.data.function_configuration.sync_config.conflict_handler #=> String, one of ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #   resp.data.function_configuration.sync_config.conflict_detection #=> String, one of ["VERSION", "NONE"]
    #   resp.data.function_configuration.sync_config.lambda_conflict_handler_config #=> Types::LambdaConflictHandlerConfig
    #   resp.data.function_configuration.sync_config.lambda_conflict_handler_config.lambda_conflict_handler_arn #=> String
    #   resp.data.function_configuration.max_batch_size #=> Integer
    #
    def get_function(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFunctionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFunctionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFunction
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetFunction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFunction,
        stubs: @stubs,
        params_class: Params::GetFunctionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_function
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a <code>GraphqlApi</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::GetGraphqlApiInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID for the GraphQL API.</p>
    #
    # @return [Types::GetGraphqlApiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_graphql_api(
    #     api_id: 'apiId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGraphqlApiOutput
    #   resp.data.graphql_api #=> Types::GraphqlApi
    #   resp.data.graphql_api.name #=> String
    #   resp.data.graphql_api.api_id #=> String
    #   resp.data.graphql_api.authentication_type #=> String, one of ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"]
    #   resp.data.graphql_api.log_config #=> Types::LogConfig
    #   resp.data.graphql_api.log_config.field_log_level #=> String, one of ["NONE", "ERROR", "ALL"]
    #   resp.data.graphql_api.log_config.cloud_watch_logs_role_arn #=> String
    #   resp.data.graphql_api.log_config.exclude_verbose_content #=> Boolean
    #   resp.data.graphql_api.user_pool_config #=> Types::UserPoolConfig
    #   resp.data.graphql_api.user_pool_config.user_pool_id #=> String
    #   resp.data.graphql_api.user_pool_config.aws_region #=> String
    #   resp.data.graphql_api.user_pool_config.default_action #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.graphql_api.user_pool_config.app_id_client_regex #=> String
    #   resp.data.graphql_api.open_id_connect_config #=> Types::OpenIDConnectConfig
    #   resp.data.graphql_api.open_id_connect_config.issuer #=> String
    #   resp.data.graphql_api.open_id_connect_config.client_id #=> String
    #   resp.data.graphql_api.open_id_connect_config.iat_ttl #=> Integer
    #   resp.data.graphql_api.open_id_connect_config.auth_ttl #=> Integer
    #   resp.data.graphql_api.arn #=> String
    #   resp.data.graphql_api.uris #=> Hash<String, String>
    #   resp.data.graphql_api.uris['key'] #=> String
    #   resp.data.graphql_api.tags #=> Hash<String, String>
    #   resp.data.graphql_api.tags['key'] #=> String
    #   resp.data.graphql_api.additional_authentication_providers #=> Array<AdditionalAuthenticationProvider>
    #   resp.data.graphql_api.additional_authentication_providers[0] #=> Types::AdditionalAuthenticationProvider
    #   resp.data.graphql_api.additional_authentication_providers[0].authentication_type #=> String, one of ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"]
    #   resp.data.graphql_api.additional_authentication_providers[0].open_id_connect_config #=> Types::OpenIDConnectConfig
    #   resp.data.graphql_api.additional_authentication_providers[0].user_pool_config #=> Types::CognitoUserPoolConfig
    #   resp.data.graphql_api.additional_authentication_providers[0].user_pool_config.user_pool_id #=> String
    #   resp.data.graphql_api.additional_authentication_providers[0].user_pool_config.aws_region #=> String
    #   resp.data.graphql_api.additional_authentication_providers[0].user_pool_config.app_id_client_regex #=> String
    #   resp.data.graphql_api.additional_authentication_providers[0].lambda_authorizer_config #=> Types::LambdaAuthorizerConfig
    #   resp.data.graphql_api.additional_authentication_providers[0].lambda_authorizer_config.authorizer_result_ttl_in_seconds #=> Integer
    #   resp.data.graphql_api.additional_authentication_providers[0].lambda_authorizer_config.authorizer_uri #=> String
    #   resp.data.graphql_api.additional_authentication_providers[0].lambda_authorizer_config.identity_validation_expression #=> String
    #   resp.data.graphql_api.xray_enabled #=> Boolean
    #   resp.data.graphql_api.waf_web_acl_arn #=> String
    #   resp.data.graphql_api.lambda_authorizer_config #=> Types::LambdaAuthorizerConfig
    #
    def get_graphql_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGraphqlApiInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGraphqlApiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGraphqlApi
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::AccessDeniedException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetGraphqlApi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGraphqlApi,
        stubs: @stubs,
        params_class: Params::GetGraphqlApiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_graphql_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the introspection schema for a GraphQL API.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIntrospectionSchemaInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @option params [String] :format
    #   <p>The schema format: SDL or JSON.</p>
    #
    # @option params [Boolean] :include_directives
    #   <p>A flag that specifies whether the schema introspection should contain directives.</p>
    #
    # @return [Types::GetIntrospectionSchemaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_introspection_schema(
    #     api_id: 'apiId', # required
    #     format: 'SDL', # required - accepts ["SDL", "JSON"]
    #     include_directives: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIntrospectionSchemaOutput
    #   resp.data.schema #=> String
    #
    def get_introspection_schema(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIntrospectionSchemaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIntrospectionSchemaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIntrospectionSchema
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::UnauthorizedException, Errors::GraphQLSchemaException]),
        data_parser: Parsers::GetIntrospectionSchema
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIntrospectionSchema,
        stubs: @stubs,
        params_class: Params::GetIntrospectionSchemaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_introspection_schema
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a <code>Resolver</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResolverInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @option params [String] :type_name
    #   <p>The resolver type name.</p>
    #
    # @option params [String] :field_name
    #   <p>The resolver field name.</p>
    #
    # @return [Types::GetResolverOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resolver(
    #     api_id: 'apiId', # required
    #     type_name: 'typeName', # required
    #     field_name: 'fieldName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResolverOutput
    #   resp.data.resolver #=> Types::Resolver
    #   resp.data.resolver.type_name #=> String
    #   resp.data.resolver.field_name #=> String
    #   resp.data.resolver.data_source_name #=> String
    #   resp.data.resolver.resolver_arn #=> String
    #   resp.data.resolver.request_mapping_template #=> String
    #   resp.data.resolver.response_mapping_template #=> String
    #   resp.data.resolver.kind #=> String, one of ["UNIT", "PIPELINE"]
    #   resp.data.resolver.pipeline_config #=> Types::PipelineConfig
    #   resp.data.resolver.pipeline_config.functions #=> Array<String>
    #   resp.data.resolver.pipeline_config.functions[0] #=> String
    #   resp.data.resolver.sync_config #=> Types::SyncConfig
    #   resp.data.resolver.sync_config.conflict_handler #=> String, one of ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #   resp.data.resolver.sync_config.conflict_detection #=> String, one of ["VERSION", "NONE"]
    #   resp.data.resolver.sync_config.lambda_conflict_handler_config #=> Types::LambdaConflictHandlerConfig
    #   resp.data.resolver.sync_config.lambda_conflict_handler_config.lambda_conflict_handler_arn #=> String
    #   resp.data.resolver.caching_config #=> Types::CachingConfig
    #   resp.data.resolver.caching_config.ttl #=> Integer
    #   resp.data.resolver.caching_config.caching_keys #=> Array<String>
    #   resp.data.resolver.caching_config.caching_keys[0] #=> String
    #   resp.data.resolver.max_batch_size #=> Integer
    #
    def get_resolver(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResolverInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResolverInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResolver
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetResolver
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResolver,
        stubs: @stubs,
        params_class: Params::GetResolverOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resolver
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the current status of a schema creation operation.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSchemaCreationStatusInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @return [Types::GetSchemaCreationStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_schema_creation_status(
    #     api_id: 'apiId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSchemaCreationStatusOutput
    #   resp.data.status #=> String, one of ["PROCESSING", "ACTIVE", "DELETING", "FAILED", "SUCCESS", "NOT_APPLICABLE"]
    #   resp.data.details #=> String
    #
    def get_schema_creation_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSchemaCreationStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSchemaCreationStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSchemaCreationStatus
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetSchemaCreationStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSchemaCreationStatus,
        stubs: @stubs,
        params_class: Params::GetSchemaCreationStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_schema_creation_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a <code>Type</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTypeInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @option params [String] :type_name
    #   <p>The type name.</p>
    #
    # @option params [String] :format
    #   <p>The type format: SDL or JSON.</p>
    #
    # @return [Types::GetTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_type(
    #     api_id: 'apiId', # required
    #     type_name: 'typeName', # required
    #     format: 'SDL' # required - accepts ["SDL", "JSON"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTypeOutput
    #   resp.data.type #=> Types::Type
    #   resp.data.type.name #=> String
    #   resp.data.type.description #=> String
    #   resp.data.type.arn #=> String
    #   resp.data.type.definition #=> String
    #   resp.data.type.format #=> String, one of ["SDL", "JSON"]
    #
    def get_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetType
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetType,
        stubs: @stubs,
        params_class: Params::GetTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the API keys for a given API.</p>
    #          <note>
    #             <p>API keys are deleted automatically 60 days after they expire. However, they may still
    #             be included in the response until they have actually been deleted. You can safely call
    #                <code>DeleteApiKey</code> to manually delete a key before it's automatically
    #             deleted.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListApiKeysInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #
    # @return [Types::ListApiKeysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_api_keys(
    #     api_id: 'apiId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApiKeysOutput
    #   resp.data.api_keys #=> Array<ApiKey>
    #   resp.data.api_keys[0] #=> Types::ApiKey
    #   resp.data.api_keys[0].id #=> String
    #   resp.data.api_keys[0].description #=> String
    #   resp.data.api_keys[0].expires #=> Integer
    #   resp.data.api_keys[0].deletes #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_api_keys(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApiKeysInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApiKeysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApiKeys
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListApiKeys
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApiKeys,
        stubs: @stubs,
        params_class: Params::ListApiKeysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_api_keys
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the data sources for a given API.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDataSourcesInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #
    # @return [Types::ListDataSourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sources(
    #     api_id: 'apiId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDataSourcesOutput
    #   resp.data.data_sources #=> Array<DataSource>
    #   resp.data.data_sources[0] #=> Types::DataSource
    #   resp.data.data_sources[0].data_source_arn #=> String
    #   resp.data.data_sources[0].name #=> String
    #   resp.data.data_sources[0].description #=> String
    #   resp.data.data_sources[0].type #=> String, one of ["AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP", "RELATIONAL_DATABASE", "AMAZON_OPENSEARCH_SERVICE"]
    #   resp.data.data_sources[0].service_role_arn #=> String
    #   resp.data.data_sources[0].dynamodb_config #=> Types::DynamodbDataSourceConfig
    #   resp.data.data_sources[0].dynamodb_config.table_name #=> String
    #   resp.data.data_sources[0].dynamodb_config.aws_region #=> String
    #   resp.data.data_sources[0].dynamodb_config.use_caller_credentials #=> Boolean
    #   resp.data.data_sources[0].dynamodb_config.delta_sync_config #=> Types::DeltaSyncConfig
    #   resp.data.data_sources[0].dynamodb_config.delta_sync_config.base_table_ttl #=> Integer
    #   resp.data.data_sources[0].dynamodb_config.delta_sync_config.delta_sync_table_name #=> String
    #   resp.data.data_sources[0].dynamodb_config.delta_sync_config.delta_sync_table_ttl #=> Integer
    #   resp.data.data_sources[0].dynamodb_config.versioned #=> Boolean
    #   resp.data.data_sources[0].lambda_config #=> Types::LambdaDataSourceConfig
    #   resp.data.data_sources[0].lambda_config.lambda_function_arn #=> String
    #   resp.data.data_sources[0].elasticsearch_config #=> Types::ElasticsearchDataSourceConfig
    #   resp.data.data_sources[0].elasticsearch_config.endpoint #=> String
    #   resp.data.data_sources[0].elasticsearch_config.aws_region #=> String
    #   resp.data.data_sources[0].open_search_service_config #=> Types::OpenSearchServiceDataSourceConfig
    #   resp.data.data_sources[0].open_search_service_config.endpoint #=> String
    #   resp.data.data_sources[0].open_search_service_config.aws_region #=> String
    #   resp.data.data_sources[0].http_config #=> Types::HttpDataSourceConfig
    #   resp.data.data_sources[0].http_config.endpoint #=> String
    #   resp.data.data_sources[0].http_config.authorization_config #=> Types::AuthorizationConfig
    #   resp.data.data_sources[0].http_config.authorization_config.authorization_type #=> String, one of ["AWS_IAM"]
    #   resp.data.data_sources[0].http_config.authorization_config.aws_iam_config #=> Types::AwsIamConfig
    #   resp.data.data_sources[0].http_config.authorization_config.aws_iam_config.signing_region #=> String
    #   resp.data.data_sources[0].http_config.authorization_config.aws_iam_config.signing_service_name #=> String
    #   resp.data.data_sources[0].relational_database_config #=> Types::RelationalDatabaseDataSourceConfig
    #   resp.data.data_sources[0].relational_database_config.relational_database_source_type #=> String, one of ["RDS_HTTP_ENDPOINT"]
    #   resp.data.data_sources[0].relational_database_config.rds_http_endpoint_config #=> Types::RdsHttpEndpointConfig
    #   resp.data.data_sources[0].relational_database_config.rds_http_endpoint_config.aws_region #=> String
    #   resp.data.data_sources[0].relational_database_config.rds_http_endpoint_config.db_cluster_identifier #=> String
    #   resp.data.data_sources[0].relational_database_config.rds_http_endpoint_config.database_name #=> String
    #   resp.data.data_sources[0].relational_database_config.rds_http_endpoint_config.schema #=> String
    #   resp.data.data_sources[0].relational_database_config.rds_http_endpoint_config.aws_secret_store_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_data_sources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDataSourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDataSourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDataSources
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListDataSources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDataSources,
        stubs: @stubs,
        params_class: Params::ListDataSourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_data_sources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists multiple custom domain names.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDomainNamesInput}.
    #
    # @option params [String] :next_token
    #   <p>The API token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #
    # @return [Types::ListDomainNamesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domain_names(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDomainNamesOutput
    #   resp.data.domain_name_configs #=> Array<DomainNameConfig>
    #   resp.data.domain_name_configs[0] #=> Types::DomainNameConfig
    #   resp.data.domain_name_configs[0].domain_name #=> String
    #   resp.data.domain_name_configs[0].description #=> String
    #   resp.data.domain_name_configs[0].certificate_arn #=> String
    #   resp.data.domain_name_configs[0].appsync_domain_name #=> String
    #   resp.data.domain_name_configs[0].hosted_zone_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_domain_names(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDomainNamesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDomainNamesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDomainNames
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::BadRequestException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListDomainNames
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDomainNames,
        stubs: @stubs,
        params_class: Params::ListDomainNamesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_domain_names
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List multiple functions.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFunctionsInput}.
    #
    # @option params [String] :api_id
    #   <p>The GraphQL API ID.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #
    # @return [Types::ListFunctionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_functions(
    #     api_id: 'apiId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFunctionsOutput
    #   resp.data.functions #=> Array<FunctionConfiguration>
    #   resp.data.functions[0] #=> Types::FunctionConfiguration
    #   resp.data.functions[0].function_id #=> String
    #   resp.data.functions[0].function_arn #=> String
    #   resp.data.functions[0].name #=> String
    #   resp.data.functions[0].description #=> String
    #   resp.data.functions[0].data_source_name #=> String
    #   resp.data.functions[0].request_mapping_template #=> String
    #   resp.data.functions[0].response_mapping_template #=> String
    #   resp.data.functions[0].function_version #=> String
    #   resp.data.functions[0].sync_config #=> Types::SyncConfig
    #   resp.data.functions[0].sync_config.conflict_handler #=> String, one of ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #   resp.data.functions[0].sync_config.conflict_detection #=> String, one of ["VERSION", "NONE"]
    #   resp.data.functions[0].sync_config.lambda_conflict_handler_config #=> Types::LambdaConflictHandlerConfig
    #   resp.data.functions[0].sync_config.lambda_conflict_handler_config.lambda_conflict_handler_arn #=> String
    #   resp.data.functions[0].max_batch_size #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_functions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFunctionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFunctionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFunctions
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListFunctions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFunctions,
        stubs: @stubs,
        params_class: Params::ListFunctionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_functions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists your GraphQL APIs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGraphqlApisInput}.
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #
    # @return [Types::ListGraphqlApisOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_graphql_apis(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGraphqlApisOutput
    #   resp.data.graphql_apis #=> Array<GraphqlApi>
    #   resp.data.graphql_apis[0] #=> Types::GraphqlApi
    #   resp.data.graphql_apis[0].name #=> String
    #   resp.data.graphql_apis[0].api_id #=> String
    #   resp.data.graphql_apis[0].authentication_type #=> String, one of ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"]
    #   resp.data.graphql_apis[0].log_config #=> Types::LogConfig
    #   resp.data.graphql_apis[0].log_config.field_log_level #=> String, one of ["NONE", "ERROR", "ALL"]
    #   resp.data.graphql_apis[0].log_config.cloud_watch_logs_role_arn #=> String
    #   resp.data.graphql_apis[0].log_config.exclude_verbose_content #=> Boolean
    #   resp.data.graphql_apis[0].user_pool_config #=> Types::UserPoolConfig
    #   resp.data.graphql_apis[0].user_pool_config.user_pool_id #=> String
    #   resp.data.graphql_apis[0].user_pool_config.aws_region #=> String
    #   resp.data.graphql_apis[0].user_pool_config.default_action #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.graphql_apis[0].user_pool_config.app_id_client_regex #=> String
    #   resp.data.graphql_apis[0].open_id_connect_config #=> Types::OpenIDConnectConfig
    #   resp.data.graphql_apis[0].open_id_connect_config.issuer #=> String
    #   resp.data.graphql_apis[0].open_id_connect_config.client_id #=> String
    #   resp.data.graphql_apis[0].open_id_connect_config.iat_ttl #=> Integer
    #   resp.data.graphql_apis[0].open_id_connect_config.auth_ttl #=> Integer
    #   resp.data.graphql_apis[0].arn #=> String
    #   resp.data.graphql_apis[0].uris #=> Hash<String, String>
    #   resp.data.graphql_apis[0].uris['key'] #=> String
    #   resp.data.graphql_apis[0].tags #=> Hash<String, String>
    #   resp.data.graphql_apis[0].tags['key'] #=> String
    #   resp.data.graphql_apis[0].additional_authentication_providers #=> Array<AdditionalAuthenticationProvider>
    #   resp.data.graphql_apis[0].additional_authentication_providers[0] #=> Types::AdditionalAuthenticationProvider
    #   resp.data.graphql_apis[0].additional_authentication_providers[0].authentication_type #=> String, one of ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"]
    #   resp.data.graphql_apis[0].additional_authentication_providers[0].open_id_connect_config #=> Types::OpenIDConnectConfig
    #   resp.data.graphql_apis[0].additional_authentication_providers[0].user_pool_config #=> Types::CognitoUserPoolConfig
    #   resp.data.graphql_apis[0].additional_authentication_providers[0].user_pool_config.user_pool_id #=> String
    #   resp.data.graphql_apis[0].additional_authentication_providers[0].user_pool_config.aws_region #=> String
    #   resp.data.graphql_apis[0].additional_authentication_providers[0].user_pool_config.app_id_client_regex #=> String
    #   resp.data.graphql_apis[0].additional_authentication_providers[0].lambda_authorizer_config #=> Types::LambdaAuthorizerConfig
    #   resp.data.graphql_apis[0].additional_authentication_providers[0].lambda_authorizer_config.authorizer_result_ttl_in_seconds #=> Integer
    #   resp.data.graphql_apis[0].additional_authentication_providers[0].lambda_authorizer_config.authorizer_uri #=> String
    #   resp.data.graphql_apis[0].additional_authentication_providers[0].lambda_authorizer_config.identity_validation_expression #=> String
    #   resp.data.graphql_apis[0].xray_enabled #=> Boolean
    #   resp.data.graphql_apis[0].waf_web_acl_arn #=> String
    #   resp.data.graphql_apis[0].lambda_authorizer_config #=> Types::LambdaAuthorizerConfig
    #   resp.data.next_token #=> String
    #
    def list_graphql_apis(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGraphqlApisInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGraphqlApisInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGraphqlApis
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::BadRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListGraphqlApis
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGraphqlApis,
        stubs: @stubs,
        params_class: Params::ListGraphqlApisOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_graphql_apis
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the resolvers for a given API and type.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResolversInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @option params [String] :type_name
    #   <p>The type name.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #
    # @return [Types::ListResolversOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolvers(
    #     api_id: 'apiId', # required
    #     type_name: 'typeName', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResolversOutput
    #   resp.data.resolvers #=> Array<Resolver>
    #   resp.data.resolvers[0] #=> Types::Resolver
    #   resp.data.resolvers[0].type_name #=> String
    #   resp.data.resolvers[0].field_name #=> String
    #   resp.data.resolvers[0].data_source_name #=> String
    #   resp.data.resolvers[0].resolver_arn #=> String
    #   resp.data.resolvers[0].request_mapping_template #=> String
    #   resp.data.resolvers[0].response_mapping_template #=> String
    #   resp.data.resolvers[0].kind #=> String, one of ["UNIT", "PIPELINE"]
    #   resp.data.resolvers[0].pipeline_config #=> Types::PipelineConfig
    #   resp.data.resolvers[0].pipeline_config.functions #=> Array<String>
    #   resp.data.resolvers[0].pipeline_config.functions[0] #=> String
    #   resp.data.resolvers[0].sync_config #=> Types::SyncConfig
    #   resp.data.resolvers[0].sync_config.conflict_handler #=> String, one of ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #   resp.data.resolvers[0].sync_config.conflict_detection #=> String, one of ["VERSION", "NONE"]
    #   resp.data.resolvers[0].sync_config.lambda_conflict_handler_config #=> Types::LambdaConflictHandlerConfig
    #   resp.data.resolvers[0].sync_config.lambda_conflict_handler_config.lambda_conflict_handler_arn #=> String
    #   resp.data.resolvers[0].caching_config #=> Types::CachingConfig
    #   resp.data.resolvers[0].caching_config.ttl #=> Integer
    #   resp.data.resolvers[0].caching_config.caching_keys #=> Array<String>
    #   resp.data.resolvers[0].caching_config.caching_keys[0] #=> String
    #   resp.data.resolvers[0].max_batch_size #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_resolvers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResolversInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResolversInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResolvers
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListResolvers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResolvers,
        stubs: @stubs,
        params_class: Params::ListResolversOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resolvers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the resolvers that are associated with a specific function.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResolversByFunctionInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @option params [String] :function_id
    #   <p>The function ID.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #
    # @return [Types::ListResolversByFunctionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolvers_by_function(
    #     api_id: 'apiId', # required
    #     function_id: 'functionId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResolversByFunctionOutput
    #   resp.data.resolvers #=> Array<Resolver>
    #   resp.data.resolvers[0] #=> Types::Resolver
    #   resp.data.resolvers[0].type_name #=> String
    #   resp.data.resolvers[0].field_name #=> String
    #   resp.data.resolvers[0].data_source_name #=> String
    #   resp.data.resolvers[0].resolver_arn #=> String
    #   resp.data.resolvers[0].request_mapping_template #=> String
    #   resp.data.resolvers[0].response_mapping_template #=> String
    #   resp.data.resolvers[0].kind #=> String, one of ["UNIT", "PIPELINE"]
    #   resp.data.resolvers[0].pipeline_config #=> Types::PipelineConfig
    #   resp.data.resolvers[0].pipeline_config.functions #=> Array<String>
    #   resp.data.resolvers[0].pipeline_config.functions[0] #=> String
    #   resp.data.resolvers[0].sync_config #=> Types::SyncConfig
    #   resp.data.resolvers[0].sync_config.conflict_handler #=> String, one of ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #   resp.data.resolvers[0].sync_config.conflict_detection #=> String, one of ["VERSION", "NONE"]
    #   resp.data.resolvers[0].sync_config.lambda_conflict_handler_config #=> Types::LambdaConflictHandlerConfig
    #   resp.data.resolvers[0].sync_config.lambda_conflict_handler_config.lambda_conflict_handler_arn #=> String
    #   resp.data.resolvers[0].caching_config #=> Types::CachingConfig
    #   resp.data.resolvers[0].caching_config.ttl #=> Integer
    #   resp.data.resolvers[0].caching_config.caching_keys #=> Array<String>
    #   resp.data.resolvers[0].caching_config.caching_keys[0] #=> String
    #   resp.data.resolvers[0].max_batch_size #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_resolvers_by_function(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResolversByFunctionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResolversByFunctionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResolversByFunction
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListResolversByFunction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResolversByFunction,
        stubs: @stubs,
        params_class: Params::ListResolversByFunctionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resolvers_by_function
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags for a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The <code>GraphqlApi</code> Amazon Resource Name (ARN).</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException, Errors::AccessDeniedException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForResource,
        stubs: @stubs,
        params_class: Params::ListTagsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the types for a given API.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTypesInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @option params [String] :format
    #   <p>The type format: SDL or JSON.</p>
    #
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #
    # @return [Types::ListTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_types(
    #     api_id: 'apiId', # required
    #     format: 'SDL', # required - accepts ["SDL", "JSON"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTypesOutput
    #   resp.data.types #=> Array<Type>
    #   resp.data.types[0] #=> Types::Type
    #   resp.data.types[0].name #=> String
    #   resp.data.types[0].description #=> String
    #   resp.data.types[0].arn #=> String
    #   resp.data.types[0].definition #=> String
    #   resp.data.types[0].format #=> String, one of ["SDL", "JSON"]
    #   resp.data.next_token #=> String
    #
    def list_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTypes
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTypes,
        stubs: @stubs,
        params_class: Params::ListTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a new schema to your GraphQL API.</p>
    #          <p>This operation is asynchronous. Use  to
    #          determine when it has completed.</p>
    #
    # @param [Hash] params
    #   See {Types::StartSchemaCreationInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @option params [String] :definition
    #   <p>The schema definition, in GraphQL schema language format.</p>
    #
    # @return [Types::StartSchemaCreationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_schema_creation(
    #     api_id: 'apiId', # required
    #     definition: 'definition' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartSchemaCreationOutput
    #   resp.data.status #=> String, one of ["PROCESSING", "ACTIVE", "DELETING", "FAILED", "SUCCESS", "NOT_APPLICABLE"]
    #
    def start_schema_creation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartSchemaCreationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartSchemaCreationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartSchemaCreation
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::StartSchemaCreation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartSchemaCreation,
        stubs: @stubs,
        params_class: Params::StartSchemaCreationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_schema_creation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Tags a resource with user-supplied tags.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The <code>GraphqlApi</code> Amazon Resource Name (ARN).</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A <code>TagMap</code> object.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException, Errors::AccessDeniedException, Errors::UnauthorizedException]),
        data_parser: Parsers::TagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagResource,
        stubs: @stubs,
        params_class: Params::TagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Untags a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The <code>GraphqlApi</code> Amazon Resource Name (ARN).</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of <code>TagKey</code> objects.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagResourceOutput
    #
    def untag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::InternalFailureException, Errors::BadRequestException, Errors::AccessDeniedException, Errors::UnauthorizedException]),
        data_parser: Parsers::UntagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagResource,
        stubs: @stubs,
        params_class: Params::UntagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the cache for the GraphQL API.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApiCacheInput}.
    #
    # @option params [String] :api_id
    #   <p>The GraphQL API ID.</p>
    #
    # @option params [Integer] :ttl
    #   <p>TTL in seconds for cache entries.</p>
    #            <p>Valid values are 1–3,600 seconds.</p>
    #
    # @option params [String] :api_caching_behavior
    #   <p>Caching behavior.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>FULL_REQUEST_CACHING</b>: All requests are fully
    #                  cached.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PER_RESOLVER_CACHING</b>: Individual resolvers
    #                  that you specify are cached.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :type
    #   <p>The cache instance type. Valid values are </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SMALL</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MEDIUM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XLARGE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_2X</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_4X</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_8X</code> (not available in all regions)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_12X</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used.</p>
    #            <p>The following legacy instance types are available, but their use is discouraged:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>T2_SMALL</b>: A t2.small instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>T2_MEDIUM</b>: A t2.medium instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_LARGE</b>: A r4.large instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_XLARGE</b>: A r4.xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_2XLARGE</b>: A r4.2xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_4XLARGE</b>: A r4.4xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_8XLARGE</b>: A r4.8xlarge instance type.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateApiCacheOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_api_cache(
    #     api_id: 'apiId', # required
    #     ttl: 1, # required
    #     api_caching_behavior: 'FULL_REQUEST_CACHING', # required - accepts ["FULL_REQUEST_CACHING", "PER_RESOLVER_CACHING"]
    #     type: 'T2_SMALL' # required - accepts ["T2_SMALL", "T2_MEDIUM", "R4_LARGE", "R4_XLARGE", "R4_2XLARGE", "R4_4XLARGE", "R4_8XLARGE", "SMALL", "MEDIUM", "LARGE", "XLARGE", "LARGE_2X", "LARGE_4X", "LARGE_8X", "LARGE_12X"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApiCacheOutput
    #   resp.data.api_cache #=> Types::ApiCache
    #   resp.data.api_cache.ttl #=> Integer
    #   resp.data.api_cache.api_caching_behavior #=> String, one of ["FULL_REQUEST_CACHING", "PER_RESOLVER_CACHING"]
    #   resp.data.api_cache.transit_encryption_enabled #=> Boolean
    #   resp.data.api_cache.at_rest_encryption_enabled #=> Boolean
    #   resp.data.api_cache.type #=> String, one of ["T2_SMALL", "T2_MEDIUM", "R4_LARGE", "R4_XLARGE", "R4_2XLARGE", "R4_4XLARGE", "R4_8XLARGE", "SMALL", "MEDIUM", "LARGE", "XLARGE", "LARGE_2X", "LARGE_4X", "LARGE_8X", "LARGE_12X"]
    #   resp.data.api_cache.status #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "MODIFYING", "FAILED"]
    #
    def update_api_cache(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApiCacheInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApiCacheInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApiCache
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateApiCache
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApiCache,
        stubs: @stubs,
        params_class: Params::UpdateApiCacheOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_api_cache
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an API key. You can update the key as long as it's not deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApiKeyInput}.
    #
    # @option params [String] :api_id
    #   <p>The ID for the GraphQL API.</p>
    #
    # @option params [String] :id
    #   <p>The API key ID.</p>
    #
    # @option params [String] :description
    #   <p>A description of the purpose of the API key.</p>
    #
    # @option params [Integer] :expires
    #   <p>From the update time, the time after which the API key expires. The date is represented
    #            as seconds since the epoch. For more information, see .</p>
    #
    # @return [Types::UpdateApiKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_api_key(
    #     api_id: 'apiId', # required
    #     id: 'id', # required
    #     description: 'description',
    #     expires: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApiKeyOutput
    #   resp.data.api_key #=> Types::ApiKey
    #   resp.data.api_key.id #=> String
    #   resp.data.api_key.description #=> String
    #   resp.data.api_key.expires #=> Integer
    #   resp.data.api_key.deletes #=> Integer
    #
    def update_api_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApiKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApiKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApiKey
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::LimitExceededException, Errors::InternalFailureException, Errors::ApiKeyValidityOutOfBoundsException, Errors::BadRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateApiKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApiKey,
        stubs: @stubs,
        params_class: Params::UpdateApiKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_api_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a <code>DataSource</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDataSourceInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @option params [String] :name
    #   <p>The new name for the data source.</p>
    #
    # @option params [String] :description
    #   <p>The new description for the data source.</p>
    #
    # @option params [String] :type
    #   <p>The new data source type.</p>
    #
    # @option params [String] :service_role_arn
    #   <p>The new service role Amazon Resource Name (ARN) for the data source.</p>
    #
    # @option params [DynamodbDataSourceConfig] :dynamodb_config
    #   <p>The new Amazon DynamoDB configuration.</p>
    #
    # @option params [LambdaDataSourceConfig] :lambda_config
    #   <p>The new Lambda configuration.</p>
    #
    # @option params [ElasticsearchDataSourceConfig] :elasticsearch_config
    #   <p>The new OpenSearch configuration.</p>
    #            <p>As of September 2021, Amazon Elasticsearch service is Amazon OpenSearch Service. This
    #            configuration is deprecated. Instead, use <a>UpdateDataSourceRequest$openSearchServiceConfig</a> to update an OpenSearch data source.</p>
    #
    # @option params [OpenSearchServiceDataSourceConfig] :open_search_service_config
    #   <p>The new OpenSearch configuration.</p>
    #
    # @option params [HttpDataSourceConfig] :http_config
    #   <p>The new HTTP endpoint configuration.</p>
    #
    # @option params [RelationalDatabaseDataSourceConfig] :relational_database_config
    #   <p>The new relational database configuration.</p>
    #
    # @return [Types::UpdateDataSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source(
    #     api_id: 'apiId', # required
    #     name: 'name', # required
    #     description: 'description',
    #     type: 'AWS_LAMBDA', # required - accepts ["AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP", "RELATIONAL_DATABASE", "AMAZON_OPENSEARCH_SERVICE"]
    #     service_role_arn: 'serviceRoleArn',
    #     dynamodb_config: {
    #       table_name: 'tableName', # required
    #       aws_region: 'awsRegion', # required
    #       use_caller_credentials: false,
    #       delta_sync_config: {
    #         base_table_ttl: 1,
    #         delta_sync_table_name: 'deltaSyncTableName',
    #         delta_sync_table_ttl: 1
    #       },
    #       versioned: false
    #     },
    #     lambda_config: {
    #       lambda_function_arn: 'lambdaFunctionArn' # required
    #     },
    #     elasticsearch_config: {
    #       endpoint: 'endpoint', # required
    #       aws_region: 'awsRegion' # required
    #     },
    #     open_search_service_config: {
    #       endpoint: 'endpoint', # required
    #       aws_region: 'awsRegion' # required
    #     },
    #     http_config: {
    #       endpoint: 'endpoint',
    #       authorization_config: {
    #         authorization_type: 'AWS_IAM', # required - accepts ["AWS_IAM"]
    #         aws_iam_config: {
    #           signing_region: 'signingRegion',
    #           signing_service_name: 'signingServiceName'
    #         }
    #       }
    #     },
    #     relational_database_config: {
    #       relational_database_source_type: 'RDS_HTTP_ENDPOINT', # accepts ["RDS_HTTP_ENDPOINT"]
    #       rds_http_endpoint_config: {
    #         aws_region: 'awsRegion',
    #         db_cluster_identifier: 'dbClusterIdentifier',
    #         database_name: 'databaseName',
    #         schema: 'schema',
    #         aws_secret_store_arn: 'awsSecretStoreArn'
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDataSourceOutput
    #   resp.data.data_source #=> Types::DataSource
    #   resp.data.data_source.data_source_arn #=> String
    #   resp.data.data_source.name #=> String
    #   resp.data.data_source.description #=> String
    #   resp.data.data_source.type #=> String, one of ["AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP", "RELATIONAL_DATABASE", "AMAZON_OPENSEARCH_SERVICE"]
    #   resp.data.data_source.service_role_arn #=> String
    #   resp.data.data_source.dynamodb_config #=> Types::DynamodbDataSourceConfig
    #   resp.data.data_source.dynamodb_config.table_name #=> String
    #   resp.data.data_source.dynamodb_config.aws_region #=> String
    #   resp.data.data_source.dynamodb_config.use_caller_credentials #=> Boolean
    #   resp.data.data_source.dynamodb_config.delta_sync_config #=> Types::DeltaSyncConfig
    #   resp.data.data_source.dynamodb_config.delta_sync_config.base_table_ttl #=> Integer
    #   resp.data.data_source.dynamodb_config.delta_sync_config.delta_sync_table_name #=> String
    #   resp.data.data_source.dynamodb_config.delta_sync_config.delta_sync_table_ttl #=> Integer
    #   resp.data.data_source.dynamodb_config.versioned #=> Boolean
    #   resp.data.data_source.lambda_config #=> Types::LambdaDataSourceConfig
    #   resp.data.data_source.lambda_config.lambda_function_arn #=> String
    #   resp.data.data_source.elasticsearch_config #=> Types::ElasticsearchDataSourceConfig
    #   resp.data.data_source.elasticsearch_config.endpoint #=> String
    #   resp.data.data_source.elasticsearch_config.aws_region #=> String
    #   resp.data.data_source.open_search_service_config #=> Types::OpenSearchServiceDataSourceConfig
    #   resp.data.data_source.open_search_service_config.endpoint #=> String
    #   resp.data.data_source.open_search_service_config.aws_region #=> String
    #   resp.data.data_source.http_config #=> Types::HttpDataSourceConfig
    #   resp.data.data_source.http_config.endpoint #=> String
    #   resp.data.data_source.http_config.authorization_config #=> Types::AuthorizationConfig
    #   resp.data.data_source.http_config.authorization_config.authorization_type #=> String, one of ["AWS_IAM"]
    #   resp.data.data_source.http_config.authorization_config.aws_iam_config #=> Types::AwsIamConfig
    #   resp.data.data_source.http_config.authorization_config.aws_iam_config.signing_region #=> String
    #   resp.data.data_source.http_config.authorization_config.aws_iam_config.signing_service_name #=> String
    #   resp.data.data_source.relational_database_config #=> Types::RelationalDatabaseDataSourceConfig
    #   resp.data.data_source.relational_database_config.relational_database_source_type #=> String, one of ["RDS_HTTP_ENDPOINT"]
    #   resp.data.data_source.relational_database_config.rds_http_endpoint_config #=> Types::RdsHttpEndpointConfig
    #   resp.data.data_source.relational_database_config.rds_http_endpoint_config.aws_region #=> String
    #   resp.data.data_source.relational_database_config.rds_http_endpoint_config.db_cluster_identifier #=> String
    #   resp.data.data_source.relational_database_config.rds_http_endpoint_config.database_name #=> String
    #   resp.data.data_source.relational_database_config.rds_http_endpoint_config.schema #=> String
    #   resp.data.data_source.relational_database_config.rds_http_endpoint_config.aws_secret_store_arn #=> String
    #
    def update_data_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDataSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDataSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDataSource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateDataSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDataSource,
        stubs: @stubs,
        params_class: Params::UpdateDataSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_data_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a custom <code>DomainName</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDomainNameInput}.
    #
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    #
    # @option params [String] :description
    #   <p>A description of the <code>DomainName</code>.</p>
    #
    # @return [Types::UpdateDomainNameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_name(
    #     domain_name: 'domainName', # required
    #     description: 'description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDomainNameOutput
    #   resp.data.domain_name_config #=> Types::DomainNameConfig
    #   resp.data.domain_name_config.domain_name #=> String
    #   resp.data.domain_name_config.description #=> String
    #   resp.data.domain_name_config.certificate_arn #=> String
    #   resp.data.domain_name_config.appsync_domain_name #=> String
    #   resp.data.domain_name_config.hosted_zone_id #=> String
    #
    def update_domain_name(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDomainNameInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDomainNameInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDomainName
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::AccessDeniedException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::UpdateDomainName
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDomainName,
        stubs: @stubs,
        params_class: Params::UpdateDomainNameOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_domain_name
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a <code>Function</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFunctionInput}.
    #
    # @option params [String] :api_id
    #   <p>The GraphQL API ID.</p>
    #
    # @option params [String] :name
    #   <p>The <code>Function</code> name.</p>
    #
    # @option params [String] :description
    #   <p>The <code>Function</code> description.</p>
    #
    # @option params [String] :function_id
    #   <p>The function ID.</p>
    #
    # @option params [String] :data_source_name
    #   <p>The <code>Function</code>
    #               <code>DataSource</code> name.</p>
    #
    # @option params [String] :request_mapping_template
    #   <p>The <code>Function</code> request mapping template. Functions support only the
    #            2018-05-29 version of the request mapping template.</p>
    #
    # @option params [String] :response_mapping_template
    #   <p>The <code>Function</code> request mapping template.</p>
    #
    # @option params [String] :function_version
    #   <p>The <code>version</code> of the request mapping template. Currently, the supported value
    #            is 2018-05-29.</p>
    #
    # @option params [SyncConfig] :sync_config
    #   <p>Describes a Sync configuration for a resolver.</p>
    #            <p>Specifies which Conflict Detection strategy and Resolution strategy to use when the
    #            resolver is invoked.</p>
    #
    # @option params [Integer] :max_batch_size
    #   <p>The maximum batching size for a resolver.</p>
    #
    # @return [Types::UpdateFunctionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_function(
    #     api_id: 'apiId', # required
    #     name: 'name', # required
    #     description: 'description',
    #     function_id: 'functionId', # required
    #     data_source_name: 'dataSourceName', # required
    #     request_mapping_template: 'requestMappingTemplate',
    #     response_mapping_template: 'responseMappingTemplate',
    #     function_version: 'functionVersion', # required
    #     sync_config: {
    #       conflict_handler: 'OPTIMISTIC_CONCURRENCY', # accepts ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #       conflict_detection: 'VERSION', # accepts ["VERSION", "NONE"]
    #       lambda_conflict_handler_config: {
    #         lambda_conflict_handler_arn: 'lambdaConflictHandlerArn'
    #       }
    #     },
    #     max_batch_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFunctionOutput
    #   resp.data.function_configuration #=> Types::FunctionConfiguration
    #   resp.data.function_configuration.function_id #=> String
    #   resp.data.function_configuration.function_arn #=> String
    #   resp.data.function_configuration.name #=> String
    #   resp.data.function_configuration.description #=> String
    #   resp.data.function_configuration.data_source_name #=> String
    #   resp.data.function_configuration.request_mapping_template #=> String
    #   resp.data.function_configuration.response_mapping_template #=> String
    #   resp.data.function_configuration.function_version #=> String
    #   resp.data.function_configuration.sync_config #=> Types::SyncConfig
    #   resp.data.function_configuration.sync_config.conflict_handler #=> String, one of ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #   resp.data.function_configuration.sync_config.conflict_detection #=> String, one of ["VERSION", "NONE"]
    #   resp.data.function_configuration.sync_config.lambda_conflict_handler_config #=> Types::LambdaConflictHandlerConfig
    #   resp.data.function_configuration.sync_config.lambda_conflict_handler_config.lambda_conflict_handler_arn #=> String
    #   resp.data.function_configuration.max_batch_size #=> Integer
    #
    def update_function(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFunctionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFunctionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFunction
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateFunction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFunction,
        stubs: @stubs,
        params_class: Params::UpdateFunctionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_function
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a <code>GraphqlApi</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGraphqlApiInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @option params [String] :name
    #   <p>The new name for the <code>GraphqlApi</code> object.</p>
    #
    # @option params [LogConfig] :log_config
    #   <p>The Amazon CloudWatch Logs configuration for the <code>GraphqlApi</code> object.</p>
    #
    # @option params [String] :authentication_type
    #   <p>The new authentication type for the <code>GraphqlApi</code> object.</p>
    #
    # @option params [UserPoolConfig] :user_pool_config
    #   <p>The new Amazon Cognito user pool configuration for the <code>~GraphqlApi</code>
    #            object.</p>
    #
    # @option params [OpenIDConnectConfig] :open_id_connect_config
    #   <p>The OpenID Connect configuration for the <code>GraphqlApi</code> object.</p>
    #
    # @option params [Array<AdditionalAuthenticationProvider>] :additional_authentication_providers
    #   <p>A list of additional authentication providers for the <code>GraphqlApi</code>
    #            API.</p>
    #
    # @option params [Boolean] :xray_enabled
    #   <p>A flag indicating whether to use X-Ray tracing for the
    #               <code>GraphqlApi</code>.</p>
    #
    # @option params [LambdaAuthorizerConfig] :lambda_authorizer_config
    #   <p>Configuration for Lambda function authorization.</p>
    #
    # @return [Types::UpdateGraphqlApiOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_graphql_api(
    #     api_id: 'apiId', # required
    #     name: 'name', # required
    #     log_config: {
    #       field_log_level: 'NONE', # required - accepts ["NONE", "ERROR", "ALL"]
    #       cloud_watch_logs_role_arn: 'cloudWatchLogsRoleArn', # required
    #       exclude_verbose_content: false
    #     },
    #     authentication_type: 'API_KEY', # accepts ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"]
    #     user_pool_config: {
    #       user_pool_id: 'userPoolId', # required
    #       aws_region: 'awsRegion', # required
    #       default_action: 'ALLOW', # required - accepts ["ALLOW", "DENY"]
    #       app_id_client_regex: 'appIdClientRegex'
    #     },
    #     open_id_connect_config: {
    #       issuer: 'issuer', # required
    #       client_id: 'clientId',
    #       iat_ttl: 1,
    #       auth_ttl: 1
    #     },
    #     additional_authentication_providers: [
    #       {
    #         authentication_type: 'API_KEY', # accepts ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"]
    #         user_pool_config: {
    #           user_pool_id: 'userPoolId', # required
    #           aws_region: 'awsRegion', # required
    #           app_id_client_regex: 'appIdClientRegex'
    #         },
    #         lambda_authorizer_config: {
    #           authorizer_result_ttl_in_seconds: 1,
    #           authorizer_uri: 'authorizerUri', # required
    #           identity_validation_expression: 'identityValidationExpression'
    #         }
    #       }
    #     ],
    #     xray_enabled: false,
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGraphqlApiOutput
    #   resp.data.graphql_api #=> Types::GraphqlApi
    #   resp.data.graphql_api.name #=> String
    #   resp.data.graphql_api.api_id #=> String
    #   resp.data.graphql_api.authentication_type #=> String, one of ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"]
    #   resp.data.graphql_api.log_config #=> Types::LogConfig
    #   resp.data.graphql_api.log_config.field_log_level #=> String, one of ["NONE", "ERROR", "ALL"]
    #   resp.data.graphql_api.log_config.cloud_watch_logs_role_arn #=> String
    #   resp.data.graphql_api.log_config.exclude_verbose_content #=> Boolean
    #   resp.data.graphql_api.user_pool_config #=> Types::UserPoolConfig
    #   resp.data.graphql_api.user_pool_config.user_pool_id #=> String
    #   resp.data.graphql_api.user_pool_config.aws_region #=> String
    #   resp.data.graphql_api.user_pool_config.default_action #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.graphql_api.user_pool_config.app_id_client_regex #=> String
    #   resp.data.graphql_api.open_id_connect_config #=> Types::OpenIDConnectConfig
    #   resp.data.graphql_api.open_id_connect_config.issuer #=> String
    #   resp.data.graphql_api.open_id_connect_config.client_id #=> String
    #   resp.data.graphql_api.open_id_connect_config.iat_ttl #=> Integer
    #   resp.data.graphql_api.open_id_connect_config.auth_ttl #=> Integer
    #   resp.data.graphql_api.arn #=> String
    #   resp.data.graphql_api.uris #=> Hash<String, String>
    #   resp.data.graphql_api.uris['key'] #=> String
    #   resp.data.graphql_api.tags #=> Hash<String, String>
    #   resp.data.graphql_api.tags['key'] #=> String
    #   resp.data.graphql_api.additional_authentication_providers #=> Array<AdditionalAuthenticationProvider>
    #   resp.data.graphql_api.additional_authentication_providers[0] #=> Types::AdditionalAuthenticationProvider
    #   resp.data.graphql_api.additional_authentication_providers[0].authentication_type #=> String, one of ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT", "AWS_LAMBDA"]
    #   resp.data.graphql_api.additional_authentication_providers[0].open_id_connect_config #=> Types::OpenIDConnectConfig
    #   resp.data.graphql_api.additional_authentication_providers[0].user_pool_config #=> Types::CognitoUserPoolConfig
    #   resp.data.graphql_api.additional_authentication_providers[0].user_pool_config.user_pool_id #=> String
    #   resp.data.graphql_api.additional_authentication_providers[0].user_pool_config.aws_region #=> String
    #   resp.data.graphql_api.additional_authentication_providers[0].user_pool_config.app_id_client_regex #=> String
    #   resp.data.graphql_api.additional_authentication_providers[0].lambda_authorizer_config #=> Types::LambdaAuthorizerConfig
    #   resp.data.graphql_api.additional_authentication_providers[0].lambda_authorizer_config.authorizer_result_ttl_in_seconds #=> Integer
    #   resp.data.graphql_api.additional_authentication_providers[0].lambda_authorizer_config.authorizer_uri #=> String
    #   resp.data.graphql_api.additional_authentication_providers[0].lambda_authorizer_config.identity_validation_expression #=> String
    #   resp.data.graphql_api.xray_enabled #=> Boolean
    #   resp.data.graphql_api.waf_web_acl_arn #=> String
    #   resp.data.graphql_api.lambda_authorizer_config #=> Types::LambdaAuthorizerConfig
    #
    def update_graphql_api(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGraphqlApiInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGraphqlApiInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGraphqlApi
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateGraphqlApi
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGraphqlApi,
        stubs: @stubs,
        params_class: Params::UpdateGraphqlApiOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_graphql_api
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a <code>Resolver</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateResolverInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @option params [String] :type_name
    #   <p>The new type name.</p>
    #
    # @option params [String] :field_name
    #   <p>The new field name.</p>
    #
    # @option params [String] :data_source_name
    #   <p>The new data source name.</p>
    #
    # @option params [String] :request_mapping_template
    #   <p>The new request mapping template.</p>
    #            <p>A resolver uses a request mapping template to convert a GraphQL expression into a format
    #            that a data source can understand. Mapping templates are written in Apache Velocity
    #            Template Language (VTL).</p>
    #            <p>VTL request mapping templates are optional when using an Lambda data
    #            source. For all other data sources, VTL request and response mapping templates are
    #            required.</p>
    #
    # @option params [String] :response_mapping_template
    #   <p>The new response mapping template.</p>
    #
    # @option params [String] :kind
    #   <p>The resolver type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>UNIT</b>: A UNIT resolver type. A UNIT resolver is
    #                  the default resolver type. You can use a UNIT resolver to run a GraphQL query against
    #                  a single data source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PIPELINE</b>: A PIPELINE resolver type. You can
    #                  use a PIPELINE resolver to invoke a series of <code>Function</code> objects in a
    #                  serial manner. You can use a pipeline resolver to run a GraphQL query against
    #                  multiple data sources.</p>
    #               </li>
    #            </ul>
    #
    # @option params [PipelineConfig] :pipeline_config
    #   <p>The <code>PipelineConfig</code>.</p>
    #
    # @option params [SyncConfig] :sync_config
    #   <p>The <code>SyncConfig</code> for a resolver attached to a versioned data source.</p>
    #
    # @option params [CachingConfig] :caching_config
    #   <p>The caching configuration for the resolver.</p>
    #
    # @option params [Integer] :max_batch_size
    #   <p>The maximum batching size for a resolver.</p>
    #
    # @return [Types::UpdateResolverOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resolver(
    #     api_id: 'apiId', # required
    #     type_name: 'typeName', # required
    #     field_name: 'fieldName', # required
    #     data_source_name: 'dataSourceName',
    #     request_mapping_template: 'requestMappingTemplate',
    #     response_mapping_template: 'responseMappingTemplate',
    #     kind: 'UNIT', # accepts ["UNIT", "PIPELINE"]
    #     pipeline_config: {
    #       functions: [
    #         'member'
    #       ]
    #     },
    #     sync_config: {
    #       conflict_handler: 'OPTIMISTIC_CONCURRENCY', # accepts ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #       conflict_detection: 'VERSION', # accepts ["VERSION", "NONE"]
    #       lambda_conflict_handler_config: {
    #         lambda_conflict_handler_arn: 'lambdaConflictHandlerArn'
    #       }
    #     },
    #     caching_config: {
    #       ttl: 1,
    #       caching_keys: [
    #         'member'
    #       ]
    #     },
    #     max_batch_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateResolverOutput
    #   resp.data.resolver #=> Types::Resolver
    #   resp.data.resolver.type_name #=> String
    #   resp.data.resolver.field_name #=> String
    #   resp.data.resolver.data_source_name #=> String
    #   resp.data.resolver.resolver_arn #=> String
    #   resp.data.resolver.request_mapping_template #=> String
    #   resp.data.resolver.response_mapping_template #=> String
    #   resp.data.resolver.kind #=> String, one of ["UNIT", "PIPELINE"]
    #   resp.data.resolver.pipeline_config #=> Types::PipelineConfig
    #   resp.data.resolver.pipeline_config.functions #=> Array<String>
    #   resp.data.resolver.pipeline_config.functions[0] #=> String
    #   resp.data.resolver.sync_config #=> Types::SyncConfig
    #   resp.data.resolver.sync_config.conflict_handler #=> String, one of ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #   resp.data.resolver.sync_config.conflict_detection #=> String, one of ["VERSION", "NONE"]
    #   resp.data.resolver.sync_config.lambda_conflict_handler_config #=> Types::LambdaConflictHandlerConfig
    #   resp.data.resolver.sync_config.lambda_conflict_handler_config.lambda_conflict_handler_arn #=> String
    #   resp.data.resolver.caching_config #=> Types::CachingConfig
    #   resp.data.resolver.caching_config.ttl #=> Integer
    #   resp.data.resolver.caching_config.caching_keys #=> Array<String>
    #   resp.data.resolver.caching_config.caching_keys[0] #=> String
    #   resp.data.resolver.max_batch_size #=> Integer
    #
    def update_resolver(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateResolverInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateResolverInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateResolver
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateResolver
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateResolver,
        stubs: @stubs,
        params_class: Params::UpdateResolverOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_resolver
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a <code>Type</code> object.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTypeInput}.
    #
    # @option params [String] :api_id
    #   <p>The API ID.</p>
    #
    # @option params [String] :type_name
    #   <p>The new type name.</p>
    #
    # @option params [String] :definition
    #   <p>The new definition.</p>
    #
    # @option params [String] :format
    #   <p>The new type format: SDL or JSON.</p>
    #
    # @return [Types::UpdateTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_type(
    #     api_id: 'apiId', # required
    #     type_name: 'typeName', # required
    #     definition: 'definition',
    #     format: 'SDL' # required - accepts ["SDL", "JSON"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTypeOutput
    #   resp.data.type #=> Types::Type
    #   resp.data.type.name #=> String
    #   resp.data.type.description #=> String
    #   resp.data.type.arn #=> String
    #   resp.data.type.definition #=> String
    #   resp.data.type.format #=> String, one of ["SDL", "JSON"]
    #
    def update_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateType
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::ConcurrentModificationException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateType,
        stubs: @stubs,
        params_class: Params::UpdateTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
