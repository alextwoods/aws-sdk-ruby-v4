# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::KafkaConnect
  # An API client for KafkaConnect
  # See {#initialize} for a full list of supported configuration options
  # <p/>
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
    def initialize(config = AWS::SDK::KafkaConnect::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a connector using the specified properties.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConnectorInput}.
    #
    # @option params [Capacity] :capacity
    #   <p>Information about the capacity allocated to the connector. Exactly one of the two
    #            properties must be specified.</p>
    #
    # @option params [Hash<String, String>] :connector_configuration
    #   <p>A map of keys to values that represent the configuration for the connector.</p>
    #
    # @option params [String] :connector_description
    #   <p>A summary description of the connector.</p>
    #
    # @option params [String] :connector_name
    #   <p>The name of the connector.</p>
    #
    # @option params [KafkaCluster] :kafka_cluster
    #   <p>Specifies which Apache Kafka cluster to connect to.</p>
    #
    # @option params [KafkaClusterClientAuthentication] :kafka_cluster_client_authentication
    #   <p>Details of the client authentication used by the Apache Kafka cluster.</p>
    #
    # @option params [KafkaClusterEncryptionInTransit] :kafka_cluster_encryption_in_transit
    #   <p>Details of encryption in transit to the Apache Kafka cluster.</p>
    #
    # @option params [String] :kafka_connect_version
    #   <p>The version of Kafka Connect. It has to be compatible with both the Apache Kafka
    #            cluster's version and the plugins.</p>
    #
    # @option params [LogDelivery] :log_delivery
    #   <p>Details about log delivery.</p>
    #
    # @option params [Array<Plugin>] :plugins
    #   <p>Specifies which plugins to use for the connector.</p>
    #
    # @option params [String] :service_execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used by the connector to access the
    #            Amazon Web Services resources that it needs. The types of resources depends on the logic of
    #            the connector. For example, a connector that has Amazon S3 as a destination must have
    #            permissions that allow it to write to the S3 destination bucket.</p>
    #
    # @option params [WorkerConfiguration] :worker_configuration
    #   <p>Specifies which worker configuration to use with the connector.</p>
    #
    # @return [Types::CreateConnectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connector(
    #     capacity: {
    #       auto_scaling: {
    #         max_worker_count: 1, # required
    #         mcu_count: 1, # required
    #         min_worker_count: 1, # required
    #         scale_in_policy: {
    #           cpu_utilization_percentage: 1 # required
    #         },
    #         scale_out_policy: {
    #           cpu_utilization_percentage: 1 # required
    #         }
    #       },
    #       provisioned_capacity: {
    #         mcu_count: 1, # required
    #         worker_count: 1 # required
    #       }
    #     }, # required
    #     connector_configuration: {
    #       'key' => 'value'
    #     }, # required
    #     connector_description: 'connectorDescription',
    #     connector_name: 'connectorName', # required
    #     kafka_cluster: {
    #       apache_kafka_cluster: {
    #         bootstrap_servers: 'bootstrapServers', # required
    #         vpc: {
    #           security_groups: [
    #             'member'
    #           ],
    #         } # required
    #       } # required
    #     }, # required
    #     kafka_cluster_client_authentication: {
    #       authentication_type: 'NONE' # required - accepts ["NONE", "IAM"]
    #     }, # required
    #     kafka_cluster_encryption_in_transit: {
    #       encryption_type: 'PLAINTEXT' # required - accepts ["PLAINTEXT", "TLS"]
    #     }, # required
    #     kafka_connect_version: 'kafkaConnectVersion', # required
    #     log_delivery: {
    #       worker_log_delivery: {
    #         cloud_watch_logs: {
    #           enabled: false, # required
    #           log_group: 'logGroup'
    #         },
    #         firehose: {
    #           delivery_stream: 'deliveryStream',
    #           enabled: false # required
    #         },
    #         s3: {
    #           bucket: 'bucket',
    #           enabled: false, # required
    #           prefix: 'prefix'
    #         }
    #       } # required
    #     },
    #     plugins: [
    #       {
    #         custom_plugin: {
    #           custom_plugin_arn: 'customPluginArn', # required
    #           revision: 1 # required
    #         } # required
    #       }
    #     ], # required
    #     service_execution_role_arn: 'serviceExecutionRoleArn', # required
    #     worker_configuration: {
    #       revision: 1, # required
    #       worker_configuration_arn: 'workerConfigurationArn' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConnectorOutput
    #   resp.data.connector_arn #=> String
    #   resp.data.connector_name #=> String
    #   resp.data.connector_state #=> String, one of ["RUNNING", "CREATING", "UPDATING", "DELETING", "FAILED"]
    #
    def create_connector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConnectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConnectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConnector
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::ConflictException]),
        data_parser: Parsers::CreateConnector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConnector,
        stubs: @stubs,
        params_class: Params::CreateConnectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_connector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a custom plugin using the specified properties.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCustomPluginInput}.
    #
    # @option params [String] :content_type
    #   <p>The type of the plugin file.</p>
    #
    # @option params [String] :description
    #   <p>A summary description of the custom plugin.</p>
    #
    # @option params [CustomPluginLocation] :location
    #   <p>Information about the location of a custom plugin.</p>
    #
    # @option params [String] :name
    #   <p>The name of the custom plugin.</p>
    #
    # @return [Types::CreateCustomPluginOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_plugin(
    #     content_type: 'JAR', # required - accepts ["JAR", "ZIP"]
    #     description: 'description',
    #     location: {
    #       s3_location: {
    #         bucket_arn: 'bucketArn', # required
    #         file_key: 'fileKey', # required
    #         object_version: 'objectVersion'
    #       } # required
    #     }, # required
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCustomPluginOutput
    #   resp.data.custom_plugin_arn #=> String
    #   resp.data.custom_plugin_state #=> String, one of ["CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING"]
    #   resp.data.name #=> String
    #   resp.data.revision #=> Integer
    #
    def create_custom_plugin(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCustomPluginInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCustomPluginInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCustomPlugin
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::ConflictException]),
        data_parser: Parsers::CreateCustomPlugin
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCustomPlugin,
        stubs: @stubs,
        params_class: Params::CreateCustomPluginOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_custom_plugin
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a worker configuration using the specified properties.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateWorkerConfigurationInput}.
    #
    # @option params [String] :description
    #   <p>A summary description of the worker configuration.</p>
    #
    # @option params [String] :name
    #   <p>The name of the worker configuration.</p>
    #
    # @option params [String] :properties_file_content
    #   <p>Base64 encoded contents of connect-distributed.properties file.</p>
    #
    # @return [Types::CreateWorkerConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_worker_configuration(
    #     description: 'description',
    #     name: 'name', # required
    #     properties_file_content: 'propertiesFileContent' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWorkerConfigurationOutput
    #   resp.data.creation_time #=> Time
    #   resp.data.latest_revision #=> Types::WorkerConfigurationRevisionSummary
    #   resp.data.latest_revision.creation_time #=> Time
    #   resp.data.latest_revision.description #=> String
    #   resp.data.latest_revision.revision #=> Integer
    #   resp.data.name #=> String
    #   resp.data.worker_configuration_arn #=> String
    #
    def create_worker_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWorkerConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWorkerConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWorkerConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::ConflictException]),
        data_parser: Parsers::CreateWorkerConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWorkerConfiguration,
        stubs: @stubs,
        params_class: Params::CreateWorkerConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_worker_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified connector.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConnectorInput}.
    #
    # @option params [String] :connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector that you want to delete.</p>
    #
    # @option params [String] :current_version
    #   <p>The current version of the connector that you want to delete.</p>
    #
    # @return [Types::DeleteConnectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connector(
    #     connector_arn: 'connectorArn', # required
    #     current_version: 'currentVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConnectorOutput
    #   resp.data.connector_arn #=> String
    #   resp.data.connector_state #=> String, one of ["RUNNING", "CREATING", "UPDATING", "DELETING", "FAILED"]
    #
    def delete_connector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConnectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConnectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConnector
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteConnector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConnector,
        stubs: @stubs,
        params_class: Params::DeleteConnectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_connector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a custom plugin.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCustomPluginInput}.
    #
    # @option params [String] :custom_plugin_arn
    #   <p>The Amazon Resource Name (ARN) of the custom plugin that you want to delete.</p>
    #
    # @return [Types::DeleteCustomPluginOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_plugin(
    #     custom_plugin_arn: 'customPluginArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCustomPluginOutput
    #   resp.data.custom_plugin_arn #=> String
    #   resp.data.custom_plugin_state #=> String, one of ["CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING"]
    #
    def delete_custom_plugin(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCustomPluginInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCustomPluginInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCustomPlugin
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteCustomPlugin
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCustomPlugin,
        stubs: @stubs,
        params_class: Params::DeleteCustomPluginOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_custom_plugin
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns summary information about the connector.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConnectorInput}.
    #
    # @option params [String] :connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector that you want to describe.</p>
    #
    # @return [Types::DescribeConnectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connector(
    #     connector_arn: 'connectorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConnectorOutput
    #   resp.data.capacity #=> Types::CapacityDescription
    #   resp.data.capacity.auto_scaling #=> Types::AutoScalingDescription
    #   resp.data.capacity.auto_scaling.max_worker_count #=> Integer
    #   resp.data.capacity.auto_scaling.mcu_count #=> Integer
    #   resp.data.capacity.auto_scaling.min_worker_count #=> Integer
    #   resp.data.capacity.auto_scaling.scale_in_policy #=> Types::ScaleInPolicyDescription
    #   resp.data.capacity.auto_scaling.scale_in_policy.cpu_utilization_percentage #=> Integer
    #   resp.data.capacity.auto_scaling.scale_out_policy #=> Types::ScaleOutPolicyDescription
    #   resp.data.capacity.auto_scaling.scale_out_policy.cpu_utilization_percentage #=> Integer
    #   resp.data.capacity.provisioned_capacity #=> Types::ProvisionedCapacityDescription
    #   resp.data.capacity.provisioned_capacity.mcu_count #=> Integer
    #   resp.data.capacity.provisioned_capacity.worker_count #=> Integer
    #   resp.data.connector_arn #=> String
    #   resp.data.connector_configuration #=> Hash<String, String>
    #   resp.data.connector_configuration['key'] #=> String
    #   resp.data.connector_description #=> String
    #   resp.data.connector_name #=> String
    #   resp.data.connector_state #=> String, one of ["RUNNING", "CREATING", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.creation_time #=> Time
    #   resp.data.current_version #=> String
    #   resp.data.kafka_cluster #=> Types::KafkaClusterDescription
    #   resp.data.kafka_cluster.apache_kafka_cluster #=> Types::ApacheKafkaClusterDescription
    #   resp.data.kafka_cluster.apache_kafka_cluster.bootstrap_servers #=> String
    #   resp.data.kafka_cluster.apache_kafka_cluster.vpc #=> Types::VpcDescription
    #   resp.data.kafka_cluster.apache_kafka_cluster.vpc.security_groups #=> Array<String>
    #   resp.data.kafka_cluster.apache_kafka_cluster.vpc.security_groups[0] #=> String
    #   resp.data.kafka_cluster.apache_kafka_cluster.vpc.subnets #=> Array<String>
    #   resp.data.kafka_cluster_client_authentication #=> Types::KafkaClusterClientAuthenticationDescription
    #   resp.data.kafka_cluster_client_authentication.authentication_type #=> String, one of ["NONE", "IAM"]
    #   resp.data.kafka_cluster_encryption_in_transit #=> Types::KafkaClusterEncryptionInTransitDescription
    #   resp.data.kafka_cluster_encryption_in_transit.encryption_type #=> String, one of ["PLAINTEXT", "TLS"]
    #   resp.data.kafka_connect_version #=> String
    #   resp.data.log_delivery #=> Types::LogDeliveryDescription
    #   resp.data.log_delivery.worker_log_delivery #=> Types::WorkerLogDeliveryDescription
    #   resp.data.log_delivery.worker_log_delivery.cloud_watch_logs #=> Types::CloudWatchLogsLogDeliveryDescription
    #   resp.data.log_delivery.worker_log_delivery.cloud_watch_logs.enabled #=> Boolean
    #   resp.data.log_delivery.worker_log_delivery.cloud_watch_logs.log_group #=> String
    #   resp.data.log_delivery.worker_log_delivery.firehose #=> Types::FirehoseLogDeliveryDescription
    #   resp.data.log_delivery.worker_log_delivery.firehose.delivery_stream #=> String
    #   resp.data.log_delivery.worker_log_delivery.firehose.enabled #=> Boolean
    #   resp.data.log_delivery.worker_log_delivery.s3 #=> Types::S3LogDeliveryDescription
    #   resp.data.log_delivery.worker_log_delivery.s3.bucket #=> String
    #   resp.data.log_delivery.worker_log_delivery.s3.enabled #=> Boolean
    #   resp.data.log_delivery.worker_log_delivery.s3.prefix #=> String
    #   resp.data.plugins #=> Array<PluginDescription>
    #   resp.data.plugins[0] #=> Types::PluginDescription
    #   resp.data.plugins[0].custom_plugin #=> Types::CustomPluginDescription
    #   resp.data.plugins[0].custom_plugin.custom_plugin_arn #=> String
    #   resp.data.plugins[0].custom_plugin.revision #=> Integer
    #   resp.data.service_execution_role_arn #=> String
    #   resp.data.worker_configuration #=> Types::WorkerConfigurationDescription
    #   resp.data.worker_configuration.revision #=> Integer
    #   resp.data.worker_configuration.worker_configuration_arn #=> String
    #   resp.data.state_description #=> Types::StateDescription
    #   resp.data.state_description.code #=> String
    #   resp.data.state_description.message #=> String
    #
    def describe_connector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConnectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConnectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConnector
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeConnector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConnector,
        stubs: @stubs,
        params_class: Params::DescribeConnectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_connector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A summary description of the custom plugin.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCustomPluginInput}.
    #
    # @option params [String] :custom_plugin_arn
    #   <p>Returns information about a custom plugin.</p>
    #
    # @return [Types::DescribeCustomPluginOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_custom_plugin(
    #     custom_plugin_arn: 'customPluginArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCustomPluginOutput
    #   resp.data.creation_time #=> Time
    #   resp.data.custom_plugin_arn #=> String
    #   resp.data.custom_plugin_state #=> String, one of ["CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING"]
    #   resp.data.description #=> String
    #   resp.data.latest_revision #=> Types::CustomPluginRevisionSummary
    #   resp.data.latest_revision.content_type #=> String, one of ["JAR", "ZIP"]
    #   resp.data.latest_revision.creation_time #=> Time
    #   resp.data.latest_revision.description #=> String
    #   resp.data.latest_revision.file_description #=> Types::CustomPluginFileDescription
    #   resp.data.latest_revision.file_description.file_md5 #=> String
    #   resp.data.latest_revision.file_description.file_size #=> Integer
    #   resp.data.latest_revision.location #=> Types::CustomPluginLocationDescription
    #   resp.data.latest_revision.location.s3_location #=> Types::S3LocationDescription
    #   resp.data.latest_revision.location.s3_location.bucket_arn #=> String
    #   resp.data.latest_revision.location.s3_location.file_key #=> String
    #   resp.data.latest_revision.location.s3_location.object_version #=> String
    #   resp.data.latest_revision.revision #=> Integer
    #   resp.data.name #=> String
    #   resp.data.state_description #=> Types::StateDescription
    #   resp.data.state_description.code #=> String
    #   resp.data.state_description.message #=> String
    #
    def describe_custom_plugin(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCustomPluginInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCustomPluginInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCustomPlugin
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeCustomPlugin
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCustomPlugin,
        stubs: @stubs,
        params_class: Params::DescribeCustomPluginOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_custom_plugin
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a worker configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeWorkerConfigurationInput}.
    #
    # @option params [String] :worker_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the worker configuration that you want to get
    #            information about.</p>
    #
    # @return [Types::DescribeWorkerConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_worker_configuration(
    #     worker_configuration_arn: 'workerConfigurationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWorkerConfigurationOutput
    #   resp.data.creation_time #=> Time
    #   resp.data.description #=> String
    #   resp.data.latest_revision #=> Types::WorkerConfigurationRevisionDescription
    #   resp.data.latest_revision.creation_time #=> Time
    #   resp.data.latest_revision.description #=> String
    #   resp.data.latest_revision.properties_file_content #=> String
    #   resp.data.latest_revision.revision #=> Integer
    #   resp.data.name #=> String
    #   resp.data.worker_configuration_arn #=> String
    #
    def describe_worker_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWorkerConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWorkerConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWorkerConfiguration
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeWorkerConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWorkerConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeWorkerConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_worker_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all the connectors in this account and Region. The list is limited to
    #          connectors whose name starts with the specified prefix. The response also includes a
    #          description of each of the listed connectors.</p>
    #
    # @param [Hash] params
    #   See {Types::ListConnectorsInput}.
    #
    # @option params [String] :connector_name_prefix
    #   <p>The name prefix that you want to use to search for and list connectors.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of connectors to list in one response.</p>
    #
    # @option params [String] :next_token
    #   <p>If the response of a ListConnectors operation is truncated, it will include a NextToken.
    #            Send this NextToken in a subsequent request to continue listing from where the previous
    #            operation left off.</p>
    #
    # @return [Types::ListConnectorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connectors(
    #     connector_name_prefix: 'connectorNamePrefix',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConnectorsOutput
    #   resp.data.connectors #=> Array<ConnectorSummary>
    #   resp.data.connectors[0] #=> Types::ConnectorSummary
    #   resp.data.connectors[0].capacity #=> Types::CapacityDescription
    #   resp.data.connectors[0].capacity.auto_scaling #=> Types::AutoScalingDescription
    #   resp.data.connectors[0].capacity.auto_scaling.max_worker_count #=> Integer
    #   resp.data.connectors[0].capacity.auto_scaling.mcu_count #=> Integer
    #   resp.data.connectors[0].capacity.auto_scaling.min_worker_count #=> Integer
    #   resp.data.connectors[0].capacity.auto_scaling.scale_in_policy #=> Types::ScaleInPolicyDescription
    #   resp.data.connectors[0].capacity.auto_scaling.scale_in_policy.cpu_utilization_percentage #=> Integer
    #   resp.data.connectors[0].capacity.auto_scaling.scale_out_policy #=> Types::ScaleOutPolicyDescription
    #   resp.data.connectors[0].capacity.auto_scaling.scale_out_policy.cpu_utilization_percentage #=> Integer
    #   resp.data.connectors[0].capacity.provisioned_capacity #=> Types::ProvisionedCapacityDescription
    #   resp.data.connectors[0].capacity.provisioned_capacity.mcu_count #=> Integer
    #   resp.data.connectors[0].capacity.provisioned_capacity.worker_count #=> Integer
    #   resp.data.connectors[0].connector_arn #=> String
    #   resp.data.connectors[0].connector_description #=> String
    #   resp.data.connectors[0].connector_name #=> String
    #   resp.data.connectors[0].connector_state #=> String, one of ["RUNNING", "CREATING", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.connectors[0].creation_time #=> Time
    #   resp.data.connectors[0].current_version #=> String
    #   resp.data.connectors[0].kafka_cluster #=> Types::KafkaClusterDescription
    #   resp.data.connectors[0].kafka_cluster.apache_kafka_cluster #=> Types::ApacheKafkaClusterDescription
    #   resp.data.connectors[0].kafka_cluster.apache_kafka_cluster.bootstrap_servers #=> String
    #   resp.data.connectors[0].kafka_cluster.apache_kafka_cluster.vpc #=> Types::VpcDescription
    #   resp.data.connectors[0].kafka_cluster.apache_kafka_cluster.vpc.security_groups #=> Array<String>
    #   resp.data.connectors[0].kafka_cluster.apache_kafka_cluster.vpc.security_groups[0] #=> String
    #   resp.data.connectors[0].kafka_cluster.apache_kafka_cluster.vpc.subnets #=> Array<String>
    #   resp.data.connectors[0].kafka_cluster_client_authentication #=> Types::KafkaClusterClientAuthenticationDescription
    #   resp.data.connectors[0].kafka_cluster_client_authentication.authentication_type #=> String, one of ["NONE", "IAM"]
    #   resp.data.connectors[0].kafka_cluster_encryption_in_transit #=> Types::KafkaClusterEncryptionInTransitDescription
    #   resp.data.connectors[0].kafka_cluster_encryption_in_transit.encryption_type #=> String, one of ["PLAINTEXT", "TLS"]
    #   resp.data.connectors[0].kafka_connect_version #=> String
    #   resp.data.connectors[0].log_delivery #=> Types::LogDeliveryDescription
    #   resp.data.connectors[0].log_delivery.worker_log_delivery #=> Types::WorkerLogDeliveryDescription
    #   resp.data.connectors[0].log_delivery.worker_log_delivery.cloud_watch_logs #=> Types::CloudWatchLogsLogDeliveryDescription
    #   resp.data.connectors[0].log_delivery.worker_log_delivery.cloud_watch_logs.enabled #=> Boolean
    #   resp.data.connectors[0].log_delivery.worker_log_delivery.cloud_watch_logs.log_group #=> String
    #   resp.data.connectors[0].log_delivery.worker_log_delivery.firehose #=> Types::FirehoseLogDeliveryDescription
    #   resp.data.connectors[0].log_delivery.worker_log_delivery.firehose.delivery_stream #=> String
    #   resp.data.connectors[0].log_delivery.worker_log_delivery.firehose.enabled #=> Boolean
    #   resp.data.connectors[0].log_delivery.worker_log_delivery.s3 #=> Types::S3LogDeliveryDescription
    #   resp.data.connectors[0].log_delivery.worker_log_delivery.s3.bucket #=> String
    #   resp.data.connectors[0].log_delivery.worker_log_delivery.s3.enabled #=> Boolean
    #   resp.data.connectors[0].log_delivery.worker_log_delivery.s3.prefix #=> String
    #   resp.data.connectors[0].plugins #=> Array<PluginDescription>
    #   resp.data.connectors[0].plugins[0] #=> Types::PluginDescription
    #   resp.data.connectors[0].plugins[0].custom_plugin #=> Types::CustomPluginDescription
    #   resp.data.connectors[0].plugins[0].custom_plugin.custom_plugin_arn #=> String
    #   resp.data.connectors[0].plugins[0].custom_plugin.revision #=> Integer
    #   resp.data.connectors[0].service_execution_role_arn #=> String
    #   resp.data.connectors[0].worker_configuration #=> Types::WorkerConfigurationDescription
    #   resp.data.connectors[0].worker_configuration.revision #=> Integer
    #   resp.data.connectors[0].worker_configuration.worker_configuration_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_connectors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConnectorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConnectorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConnectors
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListConnectors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConnectors,
        stubs: @stubs,
        params_class: Params::ListConnectorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_connectors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all of the custom plugins in this account and Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCustomPluginsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of custom plugins to list in one response.</p>
    #
    # @option params [String] :next_token
    #   <p>If the response of a ListCustomPlugins operation is truncated, it will include a
    #            NextToken. Send this NextToken in a subsequent request to continue listing from where the
    #            previous operation left off.</p>
    #
    # @return [Types::ListCustomPluginsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_plugins(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCustomPluginsOutput
    #   resp.data.custom_plugins #=> Array<CustomPluginSummary>
    #   resp.data.custom_plugins[0] #=> Types::CustomPluginSummary
    #   resp.data.custom_plugins[0].creation_time #=> Time
    #   resp.data.custom_plugins[0].custom_plugin_arn #=> String
    #   resp.data.custom_plugins[0].custom_plugin_state #=> String, one of ["CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING"]
    #   resp.data.custom_plugins[0].description #=> String
    #   resp.data.custom_plugins[0].latest_revision #=> Types::CustomPluginRevisionSummary
    #   resp.data.custom_plugins[0].latest_revision.content_type #=> String, one of ["JAR", "ZIP"]
    #   resp.data.custom_plugins[0].latest_revision.creation_time #=> Time
    #   resp.data.custom_plugins[0].latest_revision.description #=> String
    #   resp.data.custom_plugins[0].latest_revision.file_description #=> Types::CustomPluginFileDescription
    #   resp.data.custom_plugins[0].latest_revision.file_description.file_md5 #=> String
    #   resp.data.custom_plugins[0].latest_revision.file_description.file_size #=> Integer
    #   resp.data.custom_plugins[0].latest_revision.location #=> Types::CustomPluginLocationDescription
    #   resp.data.custom_plugins[0].latest_revision.location.s3_location #=> Types::S3LocationDescription
    #   resp.data.custom_plugins[0].latest_revision.location.s3_location.bucket_arn #=> String
    #   resp.data.custom_plugins[0].latest_revision.location.s3_location.file_key #=> String
    #   resp.data.custom_plugins[0].latest_revision.location.s3_location.object_version #=> String
    #   resp.data.custom_plugins[0].latest_revision.revision #=> Integer
    #   resp.data.custom_plugins[0].name #=> String
    #   resp.data.next_token #=> String
    #
    def list_custom_plugins(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCustomPluginsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCustomPluginsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCustomPlugins
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListCustomPlugins
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCustomPlugins,
        stubs: @stubs,
        params_class: Params::ListCustomPluginsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_custom_plugins
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all of the worker configurations in this account and Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListWorkerConfigurationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of worker configurations to list in one response.</p>
    #
    # @option params [String] :next_token
    #   <p>If the response of a ListWorkerConfigurations operation is truncated, it will include a
    #            NextToken. Send this NextToken in a subsequent request to continue listing from where the
    #            previous operation left off.</p>
    #
    # @return [Types::ListWorkerConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_worker_configurations(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWorkerConfigurationsOutput
    #   resp.data.next_token #=> String
    #   resp.data.worker_configurations #=> Array<WorkerConfigurationSummary>
    #   resp.data.worker_configurations[0] #=> Types::WorkerConfigurationSummary
    #   resp.data.worker_configurations[0].creation_time #=> Time
    #   resp.data.worker_configurations[0].description #=> String
    #   resp.data.worker_configurations[0].latest_revision #=> Types::WorkerConfigurationRevisionSummary
    #   resp.data.worker_configurations[0].latest_revision.creation_time #=> Time
    #   resp.data.worker_configurations[0].latest_revision.description #=> String
    #   resp.data.worker_configurations[0].latest_revision.revision #=> Integer
    #   resp.data.worker_configurations[0].name #=> String
    #   resp.data.worker_configurations[0].worker_configuration_arn #=> String
    #
    def list_worker_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWorkerConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWorkerConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWorkerConfigurations
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListWorkerConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWorkerConfigurations,
        stubs: @stubs,
        params_class: Params::ListWorkerConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_worker_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified connector.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateConnectorInput}.
    #
    # @option params [CapacityUpdate] :capacity
    #   <p>The target capacity.</p>
    #
    # @option params [String] :connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector that you want to update.</p>
    #
    # @option params [String] :current_version
    #   <p>The current version of the connector that you want to update.</p>
    #
    # @return [Types::UpdateConnectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connector(
    #     capacity: {
    #       auto_scaling: {
    #         max_worker_count: 1, # required
    #         mcu_count: 1, # required
    #         min_worker_count: 1, # required
    #         scale_in_policy: {
    #           cpu_utilization_percentage: 1 # required
    #         }, # required
    #         scale_out_policy: {
    #           cpu_utilization_percentage: 1 # required
    #         } # required
    #       },
    #       provisioned_capacity: {
    #         mcu_count: 1, # required
    #         worker_count: 1 # required
    #       }
    #     }, # required
    #     connector_arn: 'connectorArn', # required
    #     current_version: 'currentVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConnectorOutput
    #   resp.data.connector_arn #=> String
    #   resp.data.connector_state #=> String, one of ["RUNNING", "CREATING", "UPDATING", "DELETING", "FAILED"]
    #
    def update_connector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConnectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConnectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConnector
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateConnector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConnector,
        stubs: @stubs,
        params_class: Params::UpdateConnectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_connector
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
