# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Kafka
  # An API client for Kafka
  # See {#initialize} for a full list of supported configuration options
  # <p>The operations for managing an Amazon MSK cluster.</p>
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
    def initialize(config = AWS::SDK::Kafka::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates one or more Scram Secrets with an Amazon MSK cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchAssociateScramSecretInput}.
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>
    #
    # @option params [Array<String>] :secret_arn_list
    #   <p>List of AWS Secrets Manager secret ARNs.</p>
    #
    # @return [Types::BatchAssociateScramSecretOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_associate_scram_secret(
    #     cluster_arn: 'ClusterArn', # required
    #     secret_arn_list: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchAssociateScramSecretOutput
    #   resp.data.cluster_arn #=> String
    #   resp.data.unprocessed_scram_secrets #=> Array<UnprocessedScramSecret>
    #   resp.data.unprocessed_scram_secrets[0] #=> Types::UnprocessedScramSecret
    #   resp.data.unprocessed_scram_secrets[0].error_code #=> String
    #   resp.data.unprocessed_scram_secrets[0].error_message #=> String
    #   resp.data.unprocessed_scram_secrets[0].secret_arn #=> String
    #
    def batch_associate_scram_secret(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchAssociateScramSecretInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchAssociateScramSecretInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchAssociateScramSecret
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::BatchAssociateScramSecret
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchAssociateScramSecret,
        stubs: @stubs,
        params_class: Params::BatchAssociateScramSecretOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_associate_scram_secret
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates one or more Scram Secrets from an Amazon MSK cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDisassociateScramSecretInput}.
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>
    #
    # @option params [Array<String>] :secret_arn_list
    #   <p>List of AWS Secrets Manager secret ARNs.</p>
    #
    # @return [Types::BatchDisassociateScramSecretOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disassociate_scram_secret(
    #     cluster_arn: 'ClusterArn', # required
    #     secret_arn_list: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDisassociateScramSecretOutput
    #   resp.data.cluster_arn #=> String
    #   resp.data.unprocessed_scram_secrets #=> Array<UnprocessedScramSecret>
    #   resp.data.unprocessed_scram_secrets[0] #=> Types::UnprocessedScramSecret
    #   resp.data.unprocessed_scram_secrets[0].error_code #=> String
    #   resp.data.unprocessed_scram_secrets[0].error_message #=> String
    #   resp.data.unprocessed_scram_secrets[0].secret_arn #=> String
    #
    def batch_disassociate_scram_secret(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDisassociateScramSecretInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDisassociateScramSecretInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDisassociateScramSecret
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::BatchDisassociateScramSecret
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDisassociateScramSecret,
        stubs: @stubs,
        params_class: Params::BatchDisassociateScramSecretOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_disassociate_scram_secret
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new MSK cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateClusterInput}.
    #
    # @option params [BrokerNodeGroupInfo] :broker_node_group_info
    #   <p>Information about the broker nodes in the cluster.</p>
    #
    # @option params [ClientAuthentication] :client_authentication
    #   <p>Includes all client authentication related information.</p>
    #
    # @option params [String] :cluster_name
    #   <p>The name of the cluster.</p>
    #
    # @option params [ConfigurationInfo] :configuration_info
    #   <p>Represents the configuration that you want MSK to use for the brokers in a cluster.</p>
    #
    # @option params [EncryptionInfo] :encryption_info
    #   <p>Includes all encryption-related information.</p>
    #
    # @option params [String] :enhanced_monitoring
    #   <p>Specifies the level of monitoring for the MSK cluster. The possible values are DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION.</p>
    #
    # @option params [OpenMonitoringInfo] :open_monitoring
    #   <p>The settings for open monitoring.</p>
    #
    # @option params [String] :kafka_version
    #   <p>The version of Apache Kafka.</p>
    #
    # @option params [Integer] :number_of_broker_nodes
    #   <p>The number of broker nodes in the cluster.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Create tags when creating the cluster.</p>
    #
    # @return [Types::CreateClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster(
    #     broker_node_group_info: {
    #       broker_az_distribution: 'DEFAULT', # accepts ["DEFAULT"]
    #       client_subnets: [
    #         'member'
    #       ], # required
    #       instance_type: 'InstanceType', # required
    #       storage_info: {
    #         ebs_storage_info: {
    #           provisioned_throughput: {
    #             enabled: false,
    #             volume_throughput: 1
    #           },
    #           volume_size: 1
    #         }
    #       },
    #       connectivity_info: {
    #         public_access: {
    #           type: 'Type'
    #         }
    #       }
    #     }, # required
    #     client_authentication: {
    #       sasl: {
    #         scram: {
    #           enabled: false
    #         },
    #         iam: {
    #           enabled: false
    #         }
    #       },
    #       tls: {
    #         enabled: false
    #       },
    #       unauthenticated: {
    #         enabled: false
    #       }
    #     },
    #     cluster_name: 'ClusterName', # required
    #     configuration_info: {
    #       arn: 'Arn', # required
    #       revision: 1 # required
    #     },
    #     encryption_info: {
    #       encryption_at_rest: {
    #         data_volume_kms_key_id: 'DataVolumeKMSKeyId' # required
    #       },
    #       encryption_in_transit: {
    #         client_broker: 'TLS', # accepts ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"]
    #         in_cluster: false
    #       }
    #     },
    #     enhanced_monitoring: 'DEFAULT', # accepts ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #     open_monitoring: {
    #       prometheus: {
    #         jmx_exporter: {
    #           enabled_in_broker: false # required
    #         },
    #         node_exporter: {
    #           enabled_in_broker: false # required
    #         }
    #       } # required
    #     },
    #     kafka_version: 'KafkaVersion', # required
    #     logging_info: {
    #       broker_logs: {
    #         cloud_watch_logs: {
    #           enabled: false, # required
    #           log_group: 'LogGroup'
    #         },
    #         firehose: {
    #           delivery_stream: 'DeliveryStream',
    #           enabled: false # required
    #         },
    #         s3: {
    #           bucket: 'Bucket',
    #           enabled: false, # required
    #           prefix: 'Prefix'
    #         }
    #       } # required
    #     },
    #     number_of_broker_nodes: 1, # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateClusterOutput
    #   resp.data.cluster_arn #=> String
    #   resp.data.cluster_name #=> String
    #   resp.data.state #=> String, one of ["ACTIVE", "CREATING", "DELETING", "FAILED", "HEALING", "MAINTENANCE", "REBOOTING_BROKER", "UPDATING"]
    #
    def create_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException]),
        data_parser: Parsers::CreateCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCluster,
        stubs: @stubs,
        params_class: Params::CreateClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new MSK cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateClusterV2Input}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of the cluster.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tags that you want the cluster to have.</p>
    #
    # @option params [ProvisionedRequest] :provisioned
    #   <p>Information about the provisioned cluster.</p>
    #
    # @option params [ServerlessRequest] :serverless
    #   <p>Information about the serverless cluster.</p>
    #
    # @return [Types::CreateClusterV2Output]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster_v2(
    #     cluster_name: 'ClusterName', # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     provisioned: {
    #       broker_node_group_info: {
    #         broker_az_distribution: 'DEFAULT', # accepts ["DEFAULT"]
    #         client_subnets: [
    #           'member'
    #         ], # required
    #         instance_type: 'InstanceType', # required
    #         storage_info: {
    #           ebs_storage_info: {
    #             provisioned_throughput: {
    #               enabled: false,
    #               volume_throughput: 1
    #             },
    #             volume_size: 1
    #           }
    #         },
    #         connectivity_info: {
    #           public_access: {
    #             type: 'Type'
    #           }
    #         }
    #       }, # required
    #       client_authentication: {
    #         sasl: {
    #           scram: {
    #             enabled: false
    #           },
    #           iam: {
    #             enabled: false
    #           }
    #         },
    #         tls: {
    #           enabled: false
    #         },
    #         unauthenticated: {
    #           enabled: false
    #         }
    #       },
    #       configuration_info: {
    #         arn: 'Arn', # required
    #         revision: 1 # required
    #       },
    #       encryption_info: {
    #         encryption_at_rest: {
    #           data_volume_kms_key_id: 'DataVolumeKMSKeyId' # required
    #         },
    #         encryption_in_transit: {
    #           client_broker: 'TLS', # accepts ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"]
    #           in_cluster: false
    #         }
    #       },
    #       enhanced_monitoring: 'DEFAULT', # accepts ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #       open_monitoring: {
    #         prometheus: {
    #           jmx_exporter: {
    #             enabled_in_broker: false # required
    #           },
    #           node_exporter: {
    #             enabled_in_broker: false # required
    #           }
    #         } # required
    #       },
    #       kafka_version: 'KafkaVersion', # required
    #       logging_info: {
    #         broker_logs: {
    #           cloud_watch_logs: {
    #             enabled: false, # required
    #             log_group: 'LogGroup'
    #           },
    #           firehose: {
    #             delivery_stream: 'DeliveryStream',
    #             enabled: false # required
    #           },
    #           s3: {
    #             bucket: 'Bucket',
    #             enabled: false, # required
    #             prefix: 'Prefix'
    #           }
    #         } # required
    #       },
    #       number_of_broker_nodes: 1 # required
    #     },
    #     serverless: {
    #       vpc_configs: [
    #         {
    #         }
    #       ], # required
    #       client_authentication: {
    #         sasl: {
    #         }
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateClusterV2Output
    #   resp.data.cluster_arn #=> String
    #   resp.data.cluster_name #=> String
    #   resp.data.state #=> String, one of ["ACTIVE", "CREATING", "DELETING", "FAILED", "HEALING", "MAINTENANCE", "REBOOTING_BROKER", "UPDATING"]
    #   resp.data.cluster_type #=> String, one of ["PROVISIONED", "SERVERLESS"]
    #
    def create_cluster_v2(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateClusterV2Input.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateClusterV2Input,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateClusterV2
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException]),
        data_parser: Parsers::CreateClusterV2
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateClusterV2,
        stubs: @stubs,
        params_class: Params::CreateClusterV2Output
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cluster_v2
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new MSK configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConfigurationInput}.
    #
    # @option params [String] :description
    #   <p>The description of the configuration.</p>
    #
    # @option params [Array<String>] :kafka_versions
    #   <p>The versions of Apache Kafka with which you can use this MSK configuration.</p>
    #
    # @option params [String] :name
    #   <p>The name of the configuration.</p>
    #
    # @option params [String] :server_properties
    #   <p>Contents of the <filename>server.properties</filename> file. When using the API, you must ensure that the contents of the file are base64 encoded.
    #                  When using the AWS Management Console, the SDK, or the AWS CLI, the contents of <filename>server.properties</filename> can be in plaintext.</p>
    #
    # @return [Types::CreateConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration(
    #     description: 'Description',
    #     kafka_versions: [
    #       'member'
    #     ],
    #     name: 'Name', # required
    #     server_properties: 'ServerProperties' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConfigurationOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.latest_revision #=> Types::ConfigurationRevision
    #   resp.data.latest_revision.creation_time #=> Time
    #   resp.data.latest_revision.description #=> String
    #   resp.data.latest_revision.revision #=> Integer
    #   resp.data.name #=> String
    #   resp.data.state #=> String, one of ["ACTIVE", "DELETING", "DELETE_FAILED"]
    #
    def create_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException]),
        data_parser: Parsers::CreateConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConfiguration,
        stubs: @stubs,
        params_class: Params::CreateConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the request.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteClusterInput}.
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    # @option params [String] :current_version
    #   <p>The current version of the MSK cluster.</p>
    #
    # @return [Types::DeleteClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster(
    #     cluster_arn: 'ClusterArn', # required
    #     current_version: 'CurrentVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteClusterOutput
    #   resp.data.cluster_arn #=> String
    #   resp.data.state #=> String, one of ["ACTIVE", "CREATING", "DELETING", "FAILED", "HEALING", "MAINTENANCE", "REBOOTING_BROKER", "UPDATING"]
    #
    def delete_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::DeleteCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCluster,
        stubs: @stubs,
        params_class: Params::DeleteClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an MSK Configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConfigurationInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration.</p>
    #
    # @return [Types::DeleteConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration(
    #     arn: 'Arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConfigurationOutput
    #   resp.data.arn #=> String
    #   resp.data.state #=> String, one of ["ACTIVE", "DELETING", "DELETE_FAILED"]
    #
    def delete_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::DeleteConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClusterInput}.
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    # @return [Types::DescribeClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster(
    #     cluster_arn: 'ClusterArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClusterOutput
    #   resp.data.cluster_info #=> Types::ClusterInfo
    #   resp.data.cluster_info.active_operation_arn #=> String
    #   resp.data.cluster_info.broker_node_group_info #=> Types::BrokerNodeGroupInfo
    #   resp.data.cluster_info.broker_node_group_info.broker_az_distribution #=> String, one of ["DEFAULT"]
    #   resp.data.cluster_info.broker_node_group_info.client_subnets #=> Array<String>
    #   resp.data.cluster_info.broker_node_group_info.client_subnets[0] #=> String
    #   resp.data.cluster_info.broker_node_group_info.instance_type #=> String
    #   resp.data.cluster_info.broker_node_group_info.security_groups #=> Array<String>
    #   resp.data.cluster_info.broker_node_group_info.storage_info #=> Types::StorageInfo
    #   resp.data.cluster_info.broker_node_group_info.storage_info.ebs_storage_info #=> Types::EBSStorageInfo
    #   resp.data.cluster_info.broker_node_group_info.storage_info.ebs_storage_info.provisioned_throughput #=> Types::ProvisionedThroughput
    #   resp.data.cluster_info.broker_node_group_info.storage_info.ebs_storage_info.provisioned_throughput.enabled #=> Boolean
    #   resp.data.cluster_info.broker_node_group_info.storage_info.ebs_storage_info.provisioned_throughput.volume_throughput #=> Integer
    #   resp.data.cluster_info.broker_node_group_info.storage_info.ebs_storage_info.volume_size #=> Integer
    #   resp.data.cluster_info.broker_node_group_info.connectivity_info #=> Types::ConnectivityInfo
    #   resp.data.cluster_info.broker_node_group_info.connectivity_info.public_access #=> Types::PublicAccess
    #   resp.data.cluster_info.broker_node_group_info.connectivity_info.public_access.type #=> String
    #   resp.data.cluster_info.client_authentication #=> Types::ClientAuthentication
    #   resp.data.cluster_info.client_authentication.sasl #=> Types::Sasl
    #   resp.data.cluster_info.client_authentication.sasl.scram #=> Types::Scram
    #   resp.data.cluster_info.client_authentication.sasl.scram.enabled #=> Boolean
    #   resp.data.cluster_info.client_authentication.sasl.iam #=> Types::Iam
    #   resp.data.cluster_info.client_authentication.sasl.iam.enabled #=> Boolean
    #   resp.data.cluster_info.client_authentication.tls #=> Types::Tls
    #   resp.data.cluster_info.client_authentication.tls.certificate_authority_arn_list #=> Array<String>
    #   resp.data.cluster_info.client_authentication.tls.enabled #=> Boolean
    #   resp.data.cluster_info.client_authentication.unauthenticated #=> Types::Unauthenticated
    #   resp.data.cluster_info.client_authentication.unauthenticated.enabled #=> Boolean
    #   resp.data.cluster_info.cluster_arn #=> String
    #   resp.data.cluster_info.cluster_name #=> String
    #   resp.data.cluster_info.creation_time #=> Time
    #   resp.data.cluster_info.current_broker_software_info #=> Types::BrokerSoftwareInfo
    #   resp.data.cluster_info.current_broker_software_info.configuration_arn #=> String
    #   resp.data.cluster_info.current_broker_software_info.configuration_revision #=> Integer
    #   resp.data.cluster_info.current_broker_software_info.kafka_version #=> String
    #   resp.data.cluster_info.current_version #=> String
    #   resp.data.cluster_info.encryption_info #=> Types::EncryptionInfo
    #   resp.data.cluster_info.encryption_info.encryption_at_rest #=> Types::EncryptionAtRest
    #   resp.data.cluster_info.encryption_info.encryption_at_rest.data_volume_kms_key_id #=> String
    #   resp.data.cluster_info.encryption_info.encryption_in_transit #=> Types::EncryptionInTransit
    #   resp.data.cluster_info.encryption_info.encryption_in_transit.client_broker #=> String, one of ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"]
    #   resp.data.cluster_info.encryption_info.encryption_in_transit.in_cluster #=> Boolean
    #   resp.data.cluster_info.enhanced_monitoring #=> String, one of ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #   resp.data.cluster_info.open_monitoring #=> Types::OpenMonitoring
    #   resp.data.cluster_info.open_monitoring.prometheus #=> Types::Prometheus
    #   resp.data.cluster_info.open_monitoring.prometheus.jmx_exporter #=> Types::JmxExporter
    #   resp.data.cluster_info.open_monitoring.prometheus.jmx_exporter.enabled_in_broker #=> Boolean
    #   resp.data.cluster_info.open_monitoring.prometheus.node_exporter #=> Types::NodeExporter
    #   resp.data.cluster_info.open_monitoring.prometheus.node_exporter.enabled_in_broker #=> Boolean
    #   resp.data.cluster_info.logging_info #=> Types::LoggingInfo
    #   resp.data.cluster_info.logging_info.broker_logs #=> Types::BrokerLogs
    #   resp.data.cluster_info.logging_info.broker_logs.cloud_watch_logs #=> Types::CloudWatchLogs
    #   resp.data.cluster_info.logging_info.broker_logs.cloud_watch_logs.enabled #=> Boolean
    #   resp.data.cluster_info.logging_info.broker_logs.cloud_watch_logs.log_group #=> String
    #   resp.data.cluster_info.logging_info.broker_logs.firehose #=> Types::Firehose
    #   resp.data.cluster_info.logging_info.broker_logs.firehose.delivery_stream #=> String
    #   resp.data.cluster_info.logging_info.broker_logs.firehose.enabled #=> Boolean
    #   resp.data.cluster_info.logging_info.broker_logs.s3 #=> Types::S3
    #   resp.data.cluster_info.logging_info.broker_logs.s3.bucket #=> String
    #   resp.data.cluster_info.logging_info.broker_logs.s3.enabled #=> Boolean
    #   resp.data.cluster_info.logging_info.broker_logs.s3.prefix #=> String
    #   resp.data.cluster_info.number_of_broker_nodes #=> Integer
    #   resp.data.cluster_info.state #=> String, one of ["ACTIVE", "CREATING", "DELETING", "FAILED", "HEALING", "MAINTENANCE", "REBOOTING_BROKER", "UPDATING"]
    #   resp.data.cluster_info.state_info #=> Types::StateInfo
    #   resp.data.cluster_info.state_info.code #=> String
    #   resp.data.cluster_info.state_info.message #=> String
    #   resp.data.cluster_info.tags #=> Hash<String, String>
    #   resp.data.cluster_info.tags['key'] #=> String
    #   resp.data.cluster_info.zookeeper_connect_string #=> String
    #   resp.data.cluster_info.zookeeper_connect_string_tls #=> String
    #
    def describe_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::DescribeCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCluster,
        stubs: @stubs,
        params_class: Params::DescribeClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a description of the cluster operation specified by the ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClusterOperationInput}.
    #
    # @option params [String] :cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the MSK cluster operation.</p>
    #
    # @return [Types::DescribeClusterOperationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster_operation(
    #     cluster_operation_arn: 'ClusterOperationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClusterOperationOutput
    #   resp.data.cluster_operation_info #=> Types::ClusterOperationInfo
    #   resp.data.cluster_operation_info.client_request_id #=> String
    #   resp.data.cluster_operation_info.cluster_arn #=> String
    #   resp.data.cluster_operation_info.creation_time #=> Time
    #   resp.data.cluster_operation_info.end_time #=> Time
    #   resp.data.cluster_operation_info.error_info #=> Types::ErrorInfo
    #   resp.data.cluster_operation_info.error_info.error_code #=> String
    #   resp.data.cluster_operation_info.error_info.error_string #=> String
    #   resp.data.cluster_operation_info.operation_arn #=> String
    #   resp.data.cluster_operation_info.operation_state #=> String
    #   resp.data.cluster_operation_info.operation_steps #=> Array<ClusterOperationStep>
    #   resp.data.cluster_operation_info.operation_steps[0] #=> Types::ClusterOperationStep
    #   resp.data.cluster_operation_info.operation_steps[0].step_info #=> Types::ClusterOperationStepInfo
    #   resp.data.cluster_operation_info.operation_steps[0].step_info.step_status #=> String
    #   resp.data.cluster_operation_info.operation_steps[0].step_name #=> String
    #   resp.data.cluster_operation_info.operation_type #=> String
    #   resp.data.cluster_operation_info.source_cluster_info #=> Types::MutableClusterInfo
    #   resp.data.cluster_operation_info.source_cluster_info.broker_ebs_volume_info #=> Array<BrokerEBSVolumeInfo>
    #   resp.data.cluster_operation_info.source_cluster_info.broker_ebs_volume_info[0] #=> Types::BrokerEBSVolumeInfo
    #   resp.data.cluster_operation_info.source_cluster_info.broker_ebs_volume_info[0].kafka_broker_node_id #=> String
    #   resp.data.cluster_operation_info.source_cluster_info.broker_ebs_volume_info[0].provisioned_throughput #=> Types::ProvisionedThroughput
    #   resp.data.cluster_operation_info.source_cluster_info.broker_ebs_volume_info[0].provisioned_throughput.enabled #=> Boolean
    #   resp.data.cluster_operation_info.source_cluster_info.broker_ebs_volume_info[0].provisioned_throughput.volume_throughput #=> Integer
    #   resp.data.cluster_operation_info.source_cluster_info.broker_ebs_volume_info[0].volume_size_gb #=> Integer
    #   resp.data.cluster_operation_info.source_cluster_info.configuration_info #=> Types::ConfigurationInfo
    #   resp.data.cluster_operation_info.source_cluster_info.configuration_info.arn #=> String
    #   resp.data.cluster_operation_info.source_cluster_info.configuration_info.revision #=> Integer
    #   resp.data.cluster_operation_info.source_cluster_info.number_of_broker_nodes #=> Integer
    #   resp.data.cluster_operation_info.source_cluster_info.enhanced_monitoring #=> String, one of ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #   resp.data.cluster_operation_info.source_cluster_info.open_monitoring #=> Types::OpenMonitoring
    #   resp.data.cluster_operation_info.source_cluster_info.open_monitoring.prometheus #=> Types::Prometheus
    #   resp.data.cluster_operation_info.source_cluster_info.open_monitoring.prometheus.jmx_exporter #=> Types::JmxExporter
    #   resp.data.cluster_operation_info.source_cluster_info.open_monitoring.prometheus.jmx_exporter.enabled_in_broker #=> Boolean
    #   resp.data.cluster_operation_info.source_cluster_info.open_monitoring.prometheus.node_exporter #=> Types::NodeExporter
    #   resp.data.cluster_operation_info.source_cluster_info.open_monitoring.prometheus.node_exporter.enabled_in_broker #=> Boolean
    #   resp.data.cluster_operation_info.source_cluster_info.kafka_version #=> String
    #   resp.data.cluster_operation_info.source_cluster_info.logging_info #=> Types::LoggingInfo
    #   resp.data.cluster_operation_info.source_cluster_info.logging_info.broker_logs #=> Types::BrokerLogs
    #   resp.data.cluster_operation_info.source_cluster_info.logging_info.broker_logs.cloud_watch_logs #=> Types::CloudWatchLogs
    #   resp.data.cluster_operation_info.source_cluster_info.logging_info.broker_logs.cloud_watch_logs.enabled #=> Boolean
    #   resp.data.cluster_operation_info.source_cluster_info.logging_info.broker_logs.cloud_watch_logs.log_group #=> String
    #   resp.data.cluster_operation_info.source_cluster_info.logging_info.broker_logs.firehose #=> Types::Firehose
    #   resp.data.cluster_operation_info.source_cluster_info.logging_info.broker_logs.firehose.delivery_stream #=> String
    #   resp.data.cluster_operation_info.source_cluster_info.logging_info.broker_logs.firehose.enabled #=> Boolean
    #   resp.data.cluster_operation_info.source_cluster_info.logging_info.broker_logs.s3 #=> Types::S3
    #   resp.data.cluster_operation_info.source_cluster_info.logging_info.broker_logs.s3.bucket #=> String
    #   resp.data.cluster_operation_info.source_cluster_info.logging_info.broker_logs.s3.enabled #=> Boolean
    #   resp.data.cluster_operation_info.source_cluster_info.logging_info.broker_logs.s3.prefix #=> String
    #   resp.data.cluster_operation_info.source_cluster_info.instance_type #=> String
    #   resp.data.cluster_operation_info.source_cluster_info.client_authentication #=> Types::ClientAuthentication
    #   resp.data.cluster_operation_info.source_cluster_info.client_authentication.sasl #=> Types::Sasl
    #   resp.data.cluster_operation_info.source_cluster_info.client_authentication.sasl.scram #=> Types::Scram
    #   resp.data.cluster_operation_info.source_cluster_info.client_authentication.sasl.scram.enabled #=> Boolean
    #   resp.data.cluster_operation_info.source_cluster_info.client_authentication.sasl.iam #=> Types::Iam
    #   resp.data.cluster_operation_info.source_cluster_info.client_authentication.sasl.iam.enabled #=> Boolean
    #   resp.data.cluster_operation_info.source_cluster_info.client_authentication.tls #=> Types::Tls
    #   resp.data.cluster_operation_info.source_cluster_info.client_authentication.tls.certificate_authority_arn_list #=> Array<String>
    #   resp.data.cluster_operation_info.source_cluster_info.client_authentication.tls.certificate_authority_arn_list[0] #=> String
    #   resp.data.cluster_operation_info.source_cluster_info.client_authentication.tls.enabled #=> Boolean
    #   resp.data.cluster_operation_info.source_cluster_info.client_authentication.unauthenticated #=> Types::Unauthenticated
    #   resp.data.cluster_operation_info.source_cluster_info.client_authentication.unauthenticated.enabled #=> Boolean
    #   resp.data.cluster_operation_info.source_cluster_info.encryption_info #=> Types::EncryptionInfo
    #   resp.data.cluster_operation_info.source_cluster_info.encryption_info.encryption_at_rest #=> Types::EncryptionAtRest
    #   resp.data.cluster_operation_info.source_cluster_info.encryption_info.encryption_at_rest.data_volume_kms_key_id #=> String
    #   resp.data.cluster_operation_info.source_cluster_info.encryption_info.encryption_in_transit #=> Types::EncryptionInTransit
    #   resp.data.cluster_operation_info.source_cluster_info.encryption_info.encryption_in_transit.client_broker #=> String, one of ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"]
    #   resp.data.cluster_operation_info.source_cluster_info.encryption_info.encryption_in_transit.in_cluster #=> Boolean
    #   resp.data.cluster_operation_info.source_cluster_info.connectivity_info #=> Types::ConnectivityInfo
    #   resp.data.cluster_operation_info.source_cluster_info.connectivity_info.public_access #=> Types::PublicAccess
    #   resp.data.cluster_operation_info.source_cluster_info.connectivity_info.public_access.type #=> String
    #   resp.data.cluster_operation_info.target_cluster_info #=> Types::MutableClusterInfo
    #
    def describe_cluster_operation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClusterOperationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClusterOperationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeClusterOperation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::DescribeClusterOperation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeClusterOperation,
        stubs: @stubs,
        params_class: Params::DescribeClusterOperationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cluster_operation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClusterV2Input}.
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    # @return [Types::DescribeClusterV2Output]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster_v2(
    #     cluster_arn: 'ClusterArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClusterV2Output
    #   resp.data.cluster_info #=> Types::Cluster
    #   resp.data.cluster_info.active_operation_arn #=> String
    #   resp.data.cluster_info.cluster_type #=> String, one of ["PROVISIONED", "SERVERLESS"]
    #   resp.data.cluster_info.cluster_arn #=> String
    #   resp.data.cluster_info.cluster_name #=> String
    #   resp.data.cluster_info.creation_time #=> Time
    #   resp.data.cluster_info.current_version #=> String
    #   resp.data.cluster_info.state #=> String, one of ["ACTIVE", "CREATING", "DELETING", "FAILED", "HEALING", "MAINTENANCE", "REBOOTING_BROKER", "UPDATING"]
    #   resp.data.cluster_info.state_info #=> Types::StateInfo
    #   resp.data.cluster_info.state_info.code #=> String
    #   resp.data.cluster_info.state_info.message #=> String
    #   resp.data.cluster_info.tags #=> Hash<String, String>
    #   resp.data.cluster_info.tags['key'] #=> String
    #   resp.data.cluster_info.provisioned #=> Types::Provisioned
    #   resp.data.cluster_info.provisioned.broker_node_group_info #=> Types::BrokerNodeGroupInfo
    #   resp.data.cluster_info.provisioned.broker_node_group_info.broker_az_distribution #=> String, one of ["DEFAULT"]
    #   resp.data.cluster_info.provisioned.broker_node_group_info.client_subnets #=> Array<String>
    #   resp.data.cluster_info.provisioned.broker_node_group_info.client_subnets[0] #=> String
    #   resp.data.cluster_info.provisioned.broker_node_group_info.instance_type #=> String
    #   resp.data.cluster_info.provisioned.broker_node_group_info.security_groups #=> Array<String>
    #   resp.data.cluster_info.provisioned.broker_node_group_info.storage_info #=> Types::StorageInfo
    #   resp.data.cluster_info.provisioned.broker_node_group_info.storage_info.ebs_storage_info #=> Types::EBSStorageInfo
    #   resp.data.cluster_info.provisioned.broker_node_group_info.storage_info.ebs_storage_info.provisioned_throughput #=> Types::ProvisionedThroughput
    #   resp.data.cluster_info.provisioned.broker_node_group_info.storage_info.ebs_storage_info.provisioned_throughput.enabled #=> Boolean
    #   resp.data.cluster_info.provisioned.broker_node_group_info.storage_info.ebs_storage_info.provisioned_throughput.volume_throughput #=> Integer
    #   resp.data.cluster_info.provisioned.broker_node_group_info.storage_info.ebs_storage_info.volume_size #=> Integer
    #   resp.data.cluster_info.provisioned.broker_node_group_info.connectivity_info #=> Types::ConnectivityInfo
    #   resp.data.cluster_info.provisioned.broker_node_group_info.connectivity_info.public_access #=> Types::PublicAccess
    #   resp.data.cluster_info.provisioned.broker_node_group_info.connectivity_info.public_access.type #=> String
    #   resp.data.cluster_info.provisioned.current_broker_software_info #=> Types::BrokerSoftwareInfo
    #   resp.data.cluster_info.provisioned.current_broker_software_info.configuration_arn #=> String
    #   resp.data.cluster_info.provisioned.current_broker_software_info.configuration_revision #=> Integer
    #   resp.data.cluster_info.provisioned.current_broker_software_info.kafka_version #=> String
    #   resp.data.cluster_info.provisioned.client_authentication #=> Types::ClientAuthentication
    #   resp.data.cluster_info.provisioned.client_authentication.sasl #=> Types::Sasl
    #   resp.data.cluster_info.provisioned.client_authentication.sasl.scram #=> Types::Scram
    #   resp.data.cluster_info.provisioned.client_authentication.sasl.scram.enabled #=> Boolean
    #   resp.data.cluster_info.provisioned.client_authentication.sasl.iam #=> Types::Iam
    #   resp.data.cluster_info.provisioned.client_authentication.sasl.iam.enabled #=> Boolean
    #   resp.data.cluster_info.provisioned.client_authentication.tls #=> Types::Tls
    #   resp.data.cluster_info.provisioned.client_authentication.tls.certificate_authority_arn_list #=> Array<String>
    #   resp.data.cluster_info.provisioned.client_authentication.tls.enabled #=> Boolean
    #   resp.data.cluster_info.provisioned.client_authentication.unauthenticated #=> Types::Unauthenticated
    #   resp.data.cluster_info.provisioned.client_authentication.unauthenticated.enabled #=> Boolean
    #   resp.data.cluster_info.provisioned.encryption_info #=> Types::EncryptionInfo
    #   resp.data.cluster_info.provisioned.encryption_info.encryption_at_rest #=> Types::EncryptionAtRest
    #   resp.data.cluster_info.provisioned.encryption_info.encryption_at_rest.data_volume_kms_key_id #=> String
    #   resp.data.cluster_info.provisioned.encryption_info.encryption_in_transit #=> Types::EncryptionInTransit
    #   resp.data.cluster_info.provisioned.encryption_info.encryption_in_transit.client_broker #=> String, one of ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"]
    #   resp.data.cluster_info.provisioned.encryption_info.encryption_in_transit.in_cluster #=> Boolean
    #   resp.data.cluster_info.provisioned.enhanced_monitoring #=> String, one of ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #   resp.data.cluster_info.provisioned.open_monitoring #=> Types::OpenMonitoringInfo
    #   resp.data.cluster_info.provisioned.open_monitoring.prometheus #=> Types::PrometheusInfo
    #   resp.data.cluster_info.provisioned.open_monitoring.prometheus.jmx_exporter #=> Types::JmxExporterInfo
    #   resp.data.cluster_info.provisioned.open_monitoring.prometheus.jmx_exporter.enabled_in_broker #=> Boolean
    #   resp.data.cluster_info.provisioned.open_monitoring.prometheus.node_exporter #=> Types::NodeExporterInfo
    #   resp.data.cluster_info.provisioned.open_monitoring.prometheus.node_exporter.enabled_in_broker #=> Boolean
    #   resp.data.cluster_info.provisioned.logging_info #=> Types::LoggingInfo
    #   resp.data.cluster_info.provisioned.logging_info.broker_logs #=> Types::BrokerLogs
    #   resp.data.cluster_info.provisioned.logging_info.broker_logs.cloud_watch_logs #=> Types::CloudWatchLogs
    #   resp.data.cluster_info.provisioned.logging_info.broker_logs.cloud_watch_logs.enabled #=> Boolean
    #   resp.data.cluster_info.provisioned.logging_info.broker_logs.cloud_watch_logs.log_group #=> String
    #   resp.data.cluster_info.provisioned.logging_info.broker_logs.firehose #=> Types::Firehose
    #   resp.data.cluster_info.provisioned.logging_info.broker_logs.firehose.delivery_stream #=> String
    #   resp.data.cluster_info.provisioned.logging_info.broker_logs.firehose.enabled #=> Boolean
    #   resp.data.cluster_info.provisioned.logging_info.broker_logs.s3 #=> Types::S3
    #   resp.data.cluster_info.provisioned.logging_info.broker_logs.s3.bucket #=> String
    #   resp.data.cluster_info.provisioned.logging_info.broker_logs.s3.enabled #=> Boolean
    #   resp.data.cluster_info.provisioned.logging_info.broker_logs.s3.prefix #=> String
    #   resp.data.cluster_info.provisioned.number_of_broker_nodes #=> Integer
    #   resp.data.cluster_info.provisioned.zookeeper_connect_string #=> String
    #   resp.data.cluster_info.provisioned.zookeeper_connect_string_tls #=> String
    #   resp.data.cluster_info.serverless #=> Types::Serverless
    #   resp.data.cluster_info.serverless.vpc_configs #=> Array<VpcConfig>
    #   resp.data.cluster_info.serverless.vpc_configs[0] #=> Types::VpcConfig
    #   resp.data.cluster_info.serverless.vpc_configs[0].subnet_ids #=> Array<String>
    #   resp.data.cluster_info.serverless.vpc_configs[0].security_group_ids #=> Array<String>
    #   resp.data.cluster_info.serverless.client_authentication #=> Types::ServerlessClientAuthentication
    #   resp.data.cluster_info.serverless.client_authentication.sasl #=> Types::ServerlessSasl
    #   resp.data.cluster_info.serverless.client_authentication.sasl.iam #=> Types::Iam
    #
    def describe_cluster_v2(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClusterV2Input.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClusterV2Input,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeClusterV2
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::DescribeClusterV2
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeClusterV2,
        stubs: @stubs,
        params_class: Params::DescribeClusterV2Output
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_cluster_v2
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a description of this MSK configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConfigurationInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.</p>
    #
    # @return [Types::DescribeConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration(
    #     arn: 'Arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConfigurationOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.description #=> String
    #   resp.data.kafka_versions #=> Array<String>
    #   resp.data.kafka_versions[0] #=> String
    #   resp.data.latest_revision #=> Types::ConfigurationRevision
    #   resp.data.latest_revision.creation_time #=> Time
    #   resp.data.latest_revision.description #=> String
    #   resp.data.latest_revision.revision #=> Integer
    #   resp.data.name #=> String
    #   resp.data.state #=> String, one of ["ACTIVE", "DELETING", "DELETE_FAILED"]
    #
    def describe_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::DescribeConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a description of this revision of the configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConfigurationRevisionInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.</p>
    #
    # @option params [Integer] :revision
    #   <p>A string that uniquely identifies a revision of an MSK configuration.</p>
    #
    # @return [Types::DescribeConfigurationRevisionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_revision(
    #     arn: 'Arn', # required
    #     revision: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConfigurationRevisionOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.description #=> String
    #   resp.data.revision #=> Integer
    #   resp.data.server_properties #=> String
    #
    def describe_configuration_revision(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConfigurationRevisionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConfigurationRevisionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConfigurationRevision
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::DescribeConfigurationRevision
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConfigurationRevision,
        stubs: @stubs,
        params_class: Params::DescribeConfigurationRevisionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_configuration_revision
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A list of brokers that a client application can use to bootstrap.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBootstrapBrokersInput}.
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    # @return [Types::GetBootstrapBrokersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bootstrap_brokers(
    #     cluster_arn: 'ClusterArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBootstrapBrokersOutput
    #   resp.data.bootstrap_broker_string #=> String
    #   resp.data.bootstrap_broker_string_tls #=> String
    #   resp.data.bootstrap_broker_string_sasl_scram #=> String
    #   resp.data.bootstrap_broker_string_sasl_iam #=> String
    #   resp.data.bootstrap_broker_string_public_tls #=> String
    #   resp.data.bootstrap_broker_string_public_sasl_scram #=> String
    #   resp.data.bootstrap_broker_string_public_sasl_iam #=> String
    #
    def get_bootstrap_brokers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBootstrapBrokersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBootstrapBrokersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBootstrapBrokers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::BadRequestException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::InternalServerErrorException]),
        data_parser: Parsers::GetBootstrapBrokers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBootstrapBrokers,
        stubs: @stubs,
        params_class: Params::GetBootstrapBrokersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_bootstrap_brokers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the Apache Kafka versions to which you can update the MSK cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCompatibleKafkaVersionsInput}.
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster check.</p>
    #
    # @return [Types::GetCompatibleKafkaVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compatible_kafka_versions(
    #     cluster_arn: 'ClusterArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCompatibleKafkaVersionsOutput
    #   resp.data.compatible_kafka_versions #=> Array<CompatibleKafkaVersion>
    #   resp.data.compatible_kafka_versions[0] #=> Types::CompatibleKafkaVersion
    #   resp.data.compatible_kafka_versions[0].source_version #=> String
    #   resp.data.compatible_kafka_versions[0].target_versions #=> Array<String>
    #   resp.data.compatible_kafka_versions[0].target_versions[0] #=> String
    #
    def get_compatible_kafka_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCompatibleKafkaVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCompatibleKafkaVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCompatibleKafkaVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::GetCompatibleKafkaVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCompatibleKafkaVersions,
        stubs: @stubs,
        params_class: Params::GetCompatibleKafkaVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_compatible_kafka_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all the operations that have been performed on the specified MSK cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::ListClusterOperationsInput}.
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #
    # @option params [String] :next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #
    # @return [Types::ListClusterOperationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cluster_operations(
    #     cluster_arn: 'ClusterArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListClusterOperationsOutput
    #   resp.data.cluster_operation_info_list #=> Array<ClusterOperationInfo>
    #   resp.data.cluster_operation_info_list[0] #=> Types::ClusterOperationInfo
    #   resp.data.cluster_operation_info_list[0].client_request_id #=> String
    #   resp.data.cluster_operation_info_list[0].cluster_arn #=> String
    #   resp.data.cluster_operation_info_list[0].creation_time #=> Time
    #   resp.data.cluster_operation_info_list[0].end_time #=> Time
    #   resp.data.cluster_operation_info_list[0].error_info #=> Types::ErrorInfo
    #   resp.data.cluster_operation_info_list[0].error_info.error_code #=> String
    #   resp.data.cluster_operation_info_list[0].error_info.error_string #=> String
    #   resp.data.cluster_operation_info_list[0].operation_arn #=> String
    #   resp.data.cluster_operation_info_list[0].operation_state #=> String
    #   resp.data.cluster_operation_info_list[0].operation_steps #=> Array<ClusterOperationStep>
    #   resp.data.cluster_operation_info_list[0].operation_steps[0] #=> Types::ClusterOperationStep
    #   resp.data.cluster_operation_info_list[0].operation_steps[0].step_info #=> Types::ClusterOperationStepInfo
    #   resp.data.cluster_operation_info_list[0].operation_steps[0].step_info.step_status #=> String
    #   resp.data.cluster_operation_info_list[0].operation_steps[0].step_name #=> String
    #   resp.data.cluster_operation_info_list[0].operation_type #=> String
    #   resp.data.cluster_operation_info_list[0].source_cluster_info #=> Types::MutableClusterInfo
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.broker_ebs_volume_info #=> Array<BrokerEBSVolumeInfo>
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.broker_ebs_volume_info[0] #=> Types::BrokerEBSVolumeInfo
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.broker_ebs_volume_info[0].kafka_broker_node_id #=> String
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.broker_ebs_volume_info[0].provisioned_throughput #=> Types::ProvisionedThroughput
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.broker_ebs_volume_info[0].provisioned_throughput.enabled #=> Boolean
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.broker_ebs_volume_info[0].provisioned_throughput.volume_throughput #=> Integer
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.broker_ebs_volume_info[0].volume_size_gb #=> Integer
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.configuration_info #=> Types::ConfigurationInfo
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.configuration_info.arn #=> String
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.configuration_info.revision #=> Integer
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.number_of_broker_nodes #=> Integer
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.enhanced_monitoring #=> String, one of ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.open_monitoring #=> Types::OpenMonitoring
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.open_monitoring.prometheus #=> Types::Prometheus
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.open_monitoring.prometheus.jmx_exporter #=> Types::JmxExporter
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.open_monitoring.prometheus.jmx_exporter.enabled_in_broker #=> Boolean
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.open_monitoring.prometheus.node_exporter #=> Types::NodeExporter
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.open_monitoring.prometheus.node_exporter.enabled_in_broker #=> Boolean
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.kafka_version #=> String
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.logging_info #=> Types::LoggingInfo
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.logging_info.broker_logs #=> Types::BrokerLogs
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.logging_info.broker_logs.cloud_watch_logs #=> Types::CloudWatchLogs
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.logging_info.broker_logs.cloud_watch_logs.enabled #=> Boolean
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.logging_info.broker_logs.cloud_watch_logs.log_group #=> String
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.logging_info.broker_logs.firehose #=> Types::Firehose
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.logging_info.broker_logs.firehose.delivery_stream #=> String
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.logging_info.broker_logs.firehose.enabled #=> Boolean
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.logging_info.broker_logs.s3 #=> Types::S3
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.logging_info.broker_logs.s3.bucket #=> String
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.logging_info.broker_logs.s3.enabled #=> Boolean
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.logging_info.broker_logs.s3.prefix #=> String
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.instance_type #=> String
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.client_authentication #=> Types::ClientAuthentication
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.client_authentication.sasl #=> Types::Sasl
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.client_authentication.sasl.scram #=> Types::Scram
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.client_authentication.sasl.scram.enabled #=> Boolean
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.client_authentication.sasl.iam #=> Types::Iam
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.client_authentication.sasl.iam.enabled #=> Boolean
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.client_authentication.tls #=> Types::Tls
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.client_authentication.tls.certificate_authority_arn_list #=> Array<String>
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.client_authentication.tls.certificate_authority_arn_list[0] #=> String
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.client_authentication.tls.enabled #=> Boolean
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.client_authentication.unauthenticated #=> Types::Unauthenticated
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.client_authentication.unauthenticated.enabled #=> Boolean
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.encryption_info #=> Types::EncryptionInfo
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.encryption_info.encryption_at_rest #=> Types::EncryptionAtRest
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.encryption_info.encryption_at_rest.data_volume_kms_key_id #=> String
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.encryption_info.encryption_in_transit #=> Types::EncryptionInTransit
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.encryption_info.encryption_in_transit.client_broker #=> String, one of ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"]
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.encryption_info.encryption_in_transit.in_cluster #=> Boolean
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.connectivity_info #=> Types::ConnectivityInfo
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.connectivity_info.public_access #=> Types::PublicAccess
    #   resp.data.cluster_operation_info_list[0].source_cluster_info.connectivity_info.public_access.type #=> String
    #   resp.data.cluster_operation_info_list[0].target_cluster_info #=> Types::MutableClusterInfo
    #   resp.data.next_token #=> String
    #
    def list_cluster_operations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListClusterOperationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListClusterOperationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListClusterOperations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::InternalServerErrorException]),
        data_parser: Parsers::ListClusterOperations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListClusterOperations,
        stubs: @stubs,
        params_class: Params::ListClusterOperationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_cluster_operations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all the MSK clusters in the current Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListClustersInput}.
    #
    # @option params [String] :cluster_name_filter
    #   <p>Specify a prefix of the name of the clusters that you want to list. The service lists all the clusters whose names start with this prefix.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #
    # @option params [String] :next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #
    # @return [Types::ListClustersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters(
    #     cluster_name_filter: 'ClusterNameFilter',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListClustersOutput
    #   resp.data.cluster_info_list #=> Array<ClusterInfo>
    #   resp.data.cluster_info_list[0] #=> Types::ClusterInfo
    #   resp.data.cluster_info_list[0].active_operation_arn #=> String
    #   resp.data.cluster_info_list[0].broker_node_group_info #=> Types::BrokerNodeGroupInfo
    #   resp.data.cluster_info_list[0].broker_node_group_info.broker_az_distribution #=> String, one of ["DEFAULT"]
    #   resp.data.cluster_info_list[0].broker_node_group_info.client_subnets #=> Array<String>
    #   resp.data.cluster_info_list[0].broker_node_group_info.client_subnets[0] #=> String
    #   resp.data.cluster_info_list[0].broker_node_group_info.instance_type #=> String
    #   resp.data.cluster_info_list[0].broker_node_group_info.security_groups #=> Array<String>
    #   resp.data.cluster_info_list[0].broker_node_group_info.storage_info #=> Types::StorageInfo
    #   resp.data.cluster_info_list[0].broker_node_group_info.storage_info.ebs_storage_info #=> Types::EBSStorageInfo
    #   resp.data.cluster_info_list[0].broker_node_group_info.storage_info.ebs_storage_info.provisioned_throughput #=> Types::ProvisionedThroughput
    #   resp.data.cluster_info_list[0].broker_node_group_info.storage_info.ebs_storage_info.provisioned_throughput.enabled #=> Boolean
    #   resp.data.cluster_info_list[0].broker_node_group_info.storage_info.ebs_storage_info.provisioned_throughput.volume_throughput #=> Integer
    #   resp.data.cluster_info_list[0].broker_node_group_info.storage_info.ebs_storage_info.volume_size #=> Integer
    #   resp.data.cluster_info_list[0].broker_node_group_info.connectivity_info #=> Types::ConnectivityInfo
    #   resp.data.cluster_info_list[0].broker_node_group_info.connectivity_info.public_access #=> Types::PublicAccess
    #   resp.data.cluster_info_list[0].broker_node_group_info.connectivity_info.public_access.type #=> String
    #   resp.data.cluster_info_list[0].client_authentication #=> Types::ClientAuthentication
    #   resp.data.cluster_info_list[0].client_authentication.sasl #=> Types::Sasl
    #   resp.data.cluster_info_list[0].client_authentication.sasl.scram #=> Types::Scram
    #   resp.data.cluster_info_list[0].client_authentication.sasl.scram.enabled #=> Boolean
    #   resp.data.cluster_info_list[0].client_authentication.sasl.iam #=> Types::Iam
    #   resp.data.cluster_info_list[0].client_authentication.sasl.iam.enabled #=> Boolean
    #   resp.data.cluster_info_list[0].client_authentication.tls #=> Types::Tls
    #   resp.data.cluster_info_list[0].client_authentication.tls.certificate_authority_arn_list #=> Array<String>
    #   resp.data.cluster_info_list[0].client_authentication.tls.enabled #=> Boolean
    #   resp.data.cluster_info_list[0].client_authentication.unauthenticated #=> Types::Unauthenticated
    #   resp.data.cluster_info_list[0].client_authentication.unauthenticated.enabled #=> Boolean
    #   resp.data.cluster_info_list[0].cluster_arn #=> String
    #   resp.data.cluster_info_list[0].cluster_name #=> String
    #   resp.data.cluster_info_list[0].creation_time #=> Time
    #   resp.data.cluster_info_list[0].current_broker_software_info #=> Types::BrokerSoftwareInfo
    #   resp.data.cluster_info_list[0].current_broker_software_info.configuration_arn #=> String
    #   resp.data.cluster_info_list[0].current_broker_software_info.configuration_revision #=> Integer
    #   resp.data.cluster_info_list[0].current_broker_software_info.kafka_version #=> String
    #   resp.data.cluster_info_list[0].current_version #=> String
    #   resp.data.cluster_info_list[0].encryption_info #=> Types::EncryptionInfo
    #   resp.data.cluster_info_list[0].encryption_info.encryption_at_rest #=> Types::EncryptionAtRest
    #   resp.data.cluster_info_list[0].encryption_info.encryption_at_rest.data_volume_kms_key_id #=> String
    #   resp.data.cluster_info_list[0].encryption_info.encryption_in_transit #=> Types::EncryptionInTransit
    #   resp.data.cluster_info_list[0].encryption_info.encryption_in_transit.client_broker #=> String, one of ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"]
    #   resp.data.cluster_info_list[0].encryption_info.encryption_in_transit.in_cluster #=> Boolean
    #   resp.data.cluster_info_list[0].enhanced_monitoring #=> String, one of ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #   resp.data.cluster_info_list[0].open_monitoring #=> Types::OpenMonitoring
    #   resp.data.cluster_info_list[0].open_monitoring.prometheus #=> Types::Prometheus
    #   resp.data.cluster_info_list[0].open_monitoring.prometheus.jmx_exporter #=> Types::JmxExporter
    #   resp.data.cluster_info_list[0].open_monitoring.prometheus.jmx_exporter.enabled_in_broker #=> Boolean
    #   resp.data.cluster_info_list[0].open_monitoring.prometheus.node_exporter #=> Types::NodeExporter
    #   resp.data.cluster_info_list[0].open_monitoring.prometheus.node_exporter.enabled_in_broker #=> Boolean
    #   resp.data.cluster_info_list[0].logging_info #=> Types::LoggingInfo
    #   resp.data.cluster_info_list[0].logging_info.broker_logs #=> Types::BrokerLogs
    #   resp.data.cluster_info_list[0].logging_info.broker_logs.cloud_watch_logs #=> Types::CloudWatchLogs
    #   resp.data.cluster_info_list[0].logging_info.broker_logs.cloud_watch_logs.enabled #=> Boolean
    #   resp.data.cluster_info_list[0].logging_info.broker_logs.cloud_watch_logs.log_group #=> String
    #   resp.data.cluster_info_list[0].logging_info.broker_logs.firehose #=> Types::Firehose
    #   resp.data.cluster_info_list[0].logging_info.broker_logs.firehose.delivery_stream #=> String
    #   resp.data.cluster_info_list[0].logging_info.broker_logs.firehose.enabled #=> Boolean
    #   resp.data.cluster_info_list[0].logging_info.broker_logs.s3 #=> Types::S3
    #   resp.data.cluster_info_list[0].logging_info.broker_logs.s3.bucket #=> String
    #   resp.data.cluster_info_list[0].logging_info.broker_logs.s3.enabled #=> Boolean
    #   resp.data.cluster_info_list[0].logging_info.broker_logs.s3.prefix #=> String
    #   resp.data.cluster_info_list[0].number_of_broker_nodes #=> Integer
    #   resp.data.cluster_info_list[0].state #=> String, one of ["ACTIVE", "CREATING", "DELETING", "FAILED", "HEALING", "MAINTENANCE", "REBOOTING_BROKER", "UPDATING"]
    #   resp.data.cluster_info_list[0].state_info #=> Types::StateInfo
    #   resp.data.cluster_info_list[0].state_info.code #=> String
    #   resp.data.cluster_info_list[0].state_info.message #=> String
    #   resp.data.cluster_info_list[0].tags #=> Hash<String, String>
    #   resp.data.cluster_info_list[0].tags['key'] #=> String
    #   resp.data.cluster_info_list[0].zookeeper_connect_string #=> String
    #   resp.data.cluster_info_list[0].zookeeper_connect_string_tls #=> String
    #   resp.data.next_token #=> String
    #
    def list_clusters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListClustersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListClustersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListClusters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::InternalServerErrorException]),
        data_parser: Parsers::ListClusters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListClusters,
        stubs: @stubs,
        params_class: Params::ListClustersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_clusters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all the MSK clusters in the current Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListClustersV2Input}.
    #
    # @option params [String] :cluster_name_filter
    #   <p>Specify a prefix of the names of the clusters that you want to list. The service lists all the clusters whose names start with this prefix.</p>
    #
    # @option params [String] :cluster_type_filter
    #   <p>Specify either PROVISIONED or SERVERLESS.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #
    # @option params [String] :next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #
    # @return [Types::ListClustersV2Output]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters_v2(
    #     cluster_name_filter: 'ClusterNameFilter',
    #     cluster_type_filter: 'ClusterTypeFilter',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListClustersV2Output
    #   resp.data.cluster_info_list #=> Array<Cluster>
    #   resp.data.cluster_info_list[0] #=> Types::Cluster
    #   resp.data.cluster_info_list[0].active_operation_arn #=> String
    #   resp.data.cluster_info_list[0].cluster_type #=> String, one of ["PROVISIONED", "SERVERLESS"]
    #   resp.data.cluster_info_list[0].cluster_arn #=> String
    #   resp.data.cluster_info_list[0].cluster_name #=> String
    #   resp.data.cluster_info_list[0].creation_time #=> Time
    #   resp.data.cluster_info_list[0].current_version #=> String
    #   resp.data.cluster_info_list[0].state #=> String, one of ["ACTIVE", "CREATING", "DELETING", "FAILED", "HEALING", "MAINTENANCE", "REBOOTING_BROKER", "UPDATING"]
    #   resp.data.cluster_info_list[0].state_info #=> Types::StateInfo
    #   resp.data.cluster_info_list[0].state_info.code #=> String
    #   resp.data.cluster_info_list[0].state_info.message #=> String
    #   resp.data.cluster_info_list[0].tags #=> Hash<String, String>
    #   resp.data.cluster_info_list[0].tags['key'] #=> String
    #   resp.data.cluster_info_list[0].provisioned #=> Types::Provisioned
    #   resp.data.cluster_info_list[0].provisioned.broker_node_group_info #=> Types::BrokerNodeGroupInfo
    #   resp.data.cluster_info_list[0].provisioned.broker_node_group_info.broker_az_distribution #=> String, one of ["DEFAULT"]
    #   resp.data.cluster_info_list[0].provisioned.broker_node_group_info.client_subnets #=> Array<String>
    #   resp.data.cluster_info_list[0].provisioned.broker_node_group_info.client_subnets[0] #=> String
    #   resp.data.cluster_info_list[0].provisioned.broker_node_group_info.instance_type #=> String
    #   resp.data.cluster_info_list[0].provisioned.broker_node_group_info.security_groups #=> Array<String>
    #   resp.data.cluster_info_list[0].provisioned.broker_node_group_info.storage_info #=> Types::StorageInfo
    #   resp.data.cluster_info_list[0].provisioned.broker_node_group_info.storage_info.ebs_storage_info #=> Types::EBSStorageInfo
    #   resp.data.cluster_info_list[0].provisioned.broker_node_group_info.storage_info.ebs_storage_info.provisioned_throughput #=> Types::ProvisionedThroughput
    #   resp.data.cluster_info_list[0].provisioned.broker_node_group_info.storage_info.ebs_storage_info.provisioned_throughput.enabled #=> Boolean
    #   resp.data.cluster_info_list[0].provisioned.broker_node_group_info.storage_info.ebs_storage_info.provisioned_throughput.volume_throughput #=> Integer
    #   resp.data.cluster_info_list[0].provisioned.broker_node_group_info.storage_info.ebs_storage_info.volume_size #=> Integer
    #   resp.data.cluster_info_list[0].provisioned.broker_node_group_info.connectivity_info #=> Types::ConnectivityInfo
    #   resp.data.cluster_info_list[0].provisioned.broker_node_group_info.connectivity_info.public_access #=> Types::PublicAccess
    #   resp.data.cluster_info_list[0].provisioned.broker_node_group_info.connectivity_info.public_access.type #=> String
    #   resp.data.cluster_info_list[0].provisioned.current_broker_software_info #=> Types::BrokerSoftwareInfo
    #   resp.data.cluster_info_list[0].provisioned.current_broker_software_info.configuration_arn #=> String
    #   resp.data.cluster_info_list[0].provisioned.current_broker_software_info.configuration_revision #=> Integer
    #   resp.data.cluster_info_list[0].provisioned.current_broker_software_info.kafka_version #=> String
    #   resp.data.cluster_info_list[0].provisioned.client_authentication #=> Types::ClientAuthentication
    #   resp.data.cluster_info_list[0].provisioned.client_authentication.sasl #=> Types::Sasl
    #   resp.data.cluster_info_list[0].provisioned.client_authentication.sasl.scram #=> Types::Scram
    #   resp.data.cluster_info_list[0].provisioned.client_authentication.sasl.scram.enabled #=> Boolean
    #   resp.data.cluster_info_list[0].provisioned.client_authentication.sasl.iam #=> Types::Iam
    #   resp.data.cluster_info_list[0].provisioned.client_authentication.sasl.iam.enabled #=> Boolean
    #   resp.data.cluster_info_list[0].provisioned.client_authentication.tls #=> Types::Tls
    #   resp.data.cluster_info_list[0].provisioned.client_authentication.tls.certificate_authority_arn_list #=> Array<String>
    #   resp.data.cluster_info_list[0].provisioned.client_authentication.tls.enabled #=> Boolean
    #   resp.data.cluster_info_list[0].provisioned.client_authentication.unauthenticated #=> Types::Unauthenticated
    #   resp.data.cluster_info_list[0].provisioned.client_authentication.unauthenticated.enabled #=> Boolean
    #   resp.data.cluster_info_list[0].provisioned.encryption_info #=> Types::EncryptionInfo
    #   resp.data.cluster_info_list[0].provisioned.encryption_info.encryption_at_rest #=> Types::EncryptionAtRest
    #   resp.data.cluster_info_list[0].provisioned.encryption_info.encryption_at_rest.data_volume_kms_key_id #=> String
    #   resp.data.cluster_info_list[0].provisioned.encryption_info.encryption_in_transit #=> Types::EncryptionInTransit
    #   resp.data.cluster_info_list[0].provisioned.encryption_info.encryption_in_transit.client_broker #=> String, one of ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"]
    #   resp.data.cluster_info_list[0].provisioned.encryption_info.encryption_in_transit.in_cluster #=> Boolean
    #   resp.data.cluster_info_list[0].provisioned.enhanced_monitoring #=> String, one of ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #   resp.data.cluster_info_list[0].provisioned.open_monitoring #=> Types::OpenMonitoringInfo
    #   resp.data.cluster_info_list[0].provisioned.open_monitoring.prometheus #=> Types::PrometheusInfo
    #   resp.data.cluster_info_list[0].provisioned.open_monitoring.prometheus.jmx_exporter #=> Types::JmxExporterInfo
    #   resp.data.cluster_info_list[0].provisioned.open_monitoring.prometheus.jmx_exporter.enabled_in_broker #=> Boolean
    #   resp.data.cluster_info_list[0].provisioned.open_monitoring.prometheus.node_exporter #=> Types::NodeExporterInfo
    #   resp.data.cluster_info_list[0].provisioned.open_monitoring.prometheus.node_exporter.enabled_in_broker #=> Boolean
    #   resp.data.cluster_info_list[0].provisioned.logging_info #=> Types::LoggingInfo
    #   resp.data.cluster_info_list[0].provisioned.logging_info.broker_logs #=> Types::BrokerLogs
    #   resp.data.cluster_info_list[0].provisioned.logging_info.broker_logs.cloud_watch_logs #=> Types::CloudWatchLogs
    #   resp.data.cluster_info_list[0].provisioned.logging_info.broker_logs.cloud_watch_logs.enabled #=> Boolean
    #   resp.data.cluster_info_list[0].provisioned.logging_info.broker_logs.cloud_watch_logs.log_group #=> String
    #   resp.data.cluster_info_list[0].provisioned.logging_info.broker_logs.firehose #=> Types::Firehose
    #   resp.data.cluster_info_list[0].provisioned.logging_info.broker_logs.firehose.delivery_stream #=> String
    #   resp.data.cluster_info_list[0].provisioned.logging_info.broker_logs.firehose.enabled #=> Boolean
    #   resp.data.cluster_info_list[0].provisioned.logging_info.broker_logs.s3 #=> Types::S3
    #   resp.data.cluster_info_list[0].provisioned.logging_info.broker_logs.s3.bucket #=> String
    #   resp.data.cluster_info_list[0].provisioned.logging_info.broker_logs.s3.enabled #=> Boolean
    #   resp.data.cluster_info_list[0].provisioned.logging_info.broker_logs.s3.prefix #=> String
    #   resp.data.cluster_info_list[0].provisioned.number_of_broker_nodes #=> Integer
    #   resp.data.cluster_info_list[0].provisioned.zookeeper_connect_string #=> String
    #   resp.data.cluster_info_list[0].provisioned.zookeeper_connect_string_tls #=> String
    #   resp.data.cluster_info_list[0].serverless #=> Types::Serverless
    #   resp.data.cluster_info_list[0].serverless.vpc_configs #=> Array<VpcConfig>
    #   resp.data.cluster_info_list[0].serverless.vpc_configs[0] #=> Types::VpcConfig
    #   resp.data.cluster_info_list[0].serverless.vpc_configs[0].subnet_ids #=> Array<String>
    #   resp.data.cluster_info_list[0].serverless.vpc_configs[0].security_group_ids #=> Array<String>
    #   resp.data.cluster_info_list[0].serverless.client_authentication #=> Types::ServerlessClientAuthentication
    #   resp.data.cluster_info_list[0].serverless.client_authentication.sasl #=> Types::ServerlessSasl
    #   resp.data.cluster_info_list[0].serverless.client_authentication.sasl.iam #=> Types::Iam
    #   resp.data.next_token #=> String
    #
    def list_clusters_v2(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListClustersV2Input.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListClustersV2Input,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListClustersV2
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::InternalServerErrorException]),
        data_parser: Parsers::ListClustersV2
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListClustersV2,
        stubs: @stubs,
        params_class: Params::ListClustersV2Output
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_clusters_v2
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all the MSK configurations in this Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListConfigurationRevisionsInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #
    # @option params [String] :next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #
    # @return [Types::ListConfigurationRevisionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_revisions(
    #     arn: 'Arn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConfigurationRevisionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.revisions #=> Array<ConfigurationRevision>
    #   resp.data.revisions[0] #=> Types::ConfigurationRevision
    #   resp.data.revisions[0].creation_time #=> Time
    #   resp.data.revisions[0].description #=> String
    #   resp.data.revisions[0].revision #=> Integer
    #
    def list_configuration_revisions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConfigurationRevisionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConfigurationRevisionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConfigurationRevisions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::ListConfigurationRevisions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConfigurationRevisions,
        stubs: @stubs,
        params_class: Params::ListConfigurationRevisionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_configuration_revisions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all the MSK configurations in this Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListConfigurationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #
    # @option params [String] :next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #
    # @return [Types::ListConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configurations(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConfigurationsOutput
    #   resp.data.configurations #=> Array<Configuration>
    #   resp.data.configurations[0] #=> Types::Configuration
    #   resp.data.configurations[0].arn #=> String
    #   resp.data.configurations[0].creation_time #=> Time
    #   resp.data.configurations[0].description #=> String
    #   resp.data.configurations[0].kafka_versions #=> Array<String>
    #   resp.data.configurations[0].kafka_versions[0] #=> String
    #   resp.data.configurations[0].latest_revision #=> Types::ConfigurationRevision
    #   resp.data.configurations[0].latest_revision.creation_time #=> Time
    #   resp.data.configurations[0].latest_revision.description #=> String
    #   resp.data.configurations[0].latest_revision.revision #=> Integer
    #   resp.data.configurations[0].name #=> String
    #   resp.data.configurations[0].state #=> String, one of ["ACTIVE", "DELETING", "DELETE_FAILED"]
    #   resp.data.next_token #=> String
    #
    def list_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConfigurations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException]),
        data_parser: Parsers::ListConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConfigurations,
        stubs: @stubs,
        params_class: Params::ListConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of Apache Kafka versions.</p>
    #
    # @param [Hash] params
    #   See {Types::ListKafkaVersionsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #
    # @option params [String] :next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. To get the next batch, provide this token in your next request.</p>
    #
    # @return [Types::ListKafkaVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_kafka_versions(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListKafkaVersionsOutput
    #   resp.data.kafka_versions #=> Array<KafkaVersion>
    #   resp.data.kafka_versions[0] #=> Types::KafkaVersion
    #   resp.data.kafka_versions[0].version #=> String
    #   resp.data.kafka_versions[0].status #=> String, one of ["ACTIVE", "DEPRECATED"]
    #   resp.data.next_token #=> String
    #
    def list_kafka_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListKafkaVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListKafkaVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListKafkaVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::InternalServerErrorException]),
        data_parser: Parsers::ListKafkaVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListKafkaVersions,
        stubs: @stubs,
        params_class: Params::ListKafkaVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_kafka_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the broker nodes in the cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::ListNodesInput}.
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #
    # @option params [String] :next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #
    # @return [Types::ListNodesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_nodes(
    #     cluster_arn: 'ClusterArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListNodesOutput
    #   resp.data.next_token #=> String
    #   resp.data.node_info_list #=> Array<NodeInfo>
    #   resp.data.node_info_list[0] #=> Types::NodeInfo
    #   resp.data.node_info_list[0].added_to_cluster_time #=> String
    #   resp.data.node_info_list[0].broker_node_info #=> Types::BrokerNodeInfo
    #   resp.data.node_info_list[0].broker_node_info.attached_eni_id #=> String
    #   resp.data.node_info_list[0].broker_node_info.broker_id #=> Float
    #   resp.data.node_info_list[0].broker_node_info.client_subnet #=> String
    #   resp.data.node_info_list[0].broker_node_info.client_vpc_ip_address #=> String
    #   resp.data.node_info_list[0].broker_node_info.current_broker_software_info #=> Types::BrokerSoftwareInfo
    #   resp.data.node_info_list[0].broker_node_info.current_broker_software_info.configuration_arn #=> String
    #   resp.data.node_info_list[0].broker_node_info.current_broker_software_info.configuration_revision #=> Integer
    #   resp.data.node_info_list[0].broker_node_info.current_broker_software_info.kafka_version #=> String
    #   resp.data.node_info_list[0].broker_node_info.endpoints #=> Array<String>
    #   resp.data.node_info_list[0].broker_node_info.endpoints[0] #=> String
    #   resp.data.node_info_list[0].instance_type #=> String
    #   resp.data.node_info_list[0].node_arn #=> String
    #   resp.data.node_info_list[0].node_type #=> String, one of ["BROKER"]
    #   resp.data.node_info_list[0].zookeeper_node_info #=> Types::ZookeeperNodeInfo
    #   resp.data.node_info_list[0].zookeeper_node_info.attached_eni_id #=> String
    #   resp.data.node_info_list[0].zookeeper_node_info.client_vpc_ip_address #=> String
    #   resp.data.node_info_list[0].zookeeper_node_info.endpoints #=> Array<String>
    #   resp.data.node_info_list[0].zookeeper_node_info.zookeeper_id #=> Float
    #   resp.data.node_info_list[0].zookeeper_node_info.zookeeper_version #=> String
    #
    def list_nodes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListNodesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListNodesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListNodes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::ListNodes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListNodes,
        stubs: @stubs,
        params_class: Params::ListNodesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_nodes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the Scram Secrets associated with an Amazon MSK cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::ListScramSecretsInput}.
    #
    # @option params [String] :cluster_arn
    #   <p>The arn of the cluster.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maxResults of the query.</p>
    #
    # @option params [String] :next_token
    #   <p>The nextToken of the query.</p>
    #
    # @return [Types::ListScramSecretsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_scram_secrets(
    #     cluster_arn: 'ClusterArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListScramSecretsOutput
    #   resp.data.next_token #=> String
    #   resp.data.secret_arn_list #=> Array<String>
    #   resp.data.secret_arn_list[0] #=> String
    #
    def list_scram_secrets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListScramSecretsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListScramSecretsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListScramSecrets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::ListScramSecrets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListScramSecrets,
        stubs: @stubs,
        params_class: Params::ListScramSecretsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_scram_secrets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the tags associated with the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::InternalServerErrorException]),
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

    # Reboots brokers.
    #
    # @param [Hash] params
    #   See {Types::RebootBrokerInput}.
    #
    # @option params [Array<String>] :broker_ids
    #   <p>The list of broker IDs to be rebooted. The reboot-broker operation supports rebooting one broker at a time.</p>
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>
    #
    # @return [Types::RebootBrokerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_broker(
    #     broker_ids: [
    #       'member'
    #     ], # required
    #     cluster_arn: 'ClusterArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RebootBrokerOutput
    #   resp.data.cluster_arn #=> String
    #   resp.data.cluster_operation_arn #=> String
    #
    def reboot_broker(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RebootBrokerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RebootBrokerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RebootBroker
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::RebootBroker
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RebootBroker,
        stubs: @stubs,
        params_class: Params::RebootBrokerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reboot_broker
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds tags to the specified MSK resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pair for the resource tag.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::InternalServerErrorException]),
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

    # <p>Removes the tags associated with the keys that are provided in the query.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Tag keys must be unique for a given cluster. In addition, the following restrictions apply:</p>
    #               <ul>
    #                  <li>
    #                     <p>Each tag key must be unique. If you add a tag with a key that's already in
    #                     use, your new tag overwrites the existing key-value pair. </p>
    #                  </li>
    #                  <li>
    #                     <p>You can't start a tag key with aws: because this prefix is reserved for use
    #                     by  AWS.  AWS creates tags that begin with this prefix on your behalf, but
    #                     you can't edit or delete them.</p>
    #                  </li>
    #                  <li>
    #                     <p>Tag keys must be between 1 and 128 Unicode characters in length.</p>
    #                  </li>
    #                  <li>
    #                     <p>Tag keys must consist of the following characters: Unicode letters, digits,
    #                     white space, and the following special characters: _ . / = + -
    #                        @.</p>
    #                  </li>
    #               </ul>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::NotFoundException, Errors::InternalServerErrorException]),
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

    # <p>Updates the number of broker nodes in the cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBrokerCountInput}.
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    # @option params [String] :current_version
    #   <p>The version of cluster to update from. A successful operation will then generate a new version.</p>
    #
    # @option params [Integer] :target_number_of_broker_nodes
    #   <p>The number of broker nodes that you want the cluster to have after this operation completes successfully.</p>
    #
    # @return [Types::UpdateBrokerCountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_broker_count(
    #     cluster_arn: 'ClusterArn', # required
    #     current_version: 'CurrentVersion', # required
    #     target_number_of_broker_nodes: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBrokerCountOutput
    #   resp.data.cluster_arn #=> String
    #   resp.data.cluster_operation_arn #=> String
    #
    def update_broker_count(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBrokerCountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBrokerCountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBrokerCount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException]),
        data_parser: Parsers::UpdateBrokerCount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBrokerCount,
        stubs: @stubs,
        params_class: Params::UpdateBrokerCountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_broker_count
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the EBS storage associated with MSK brokers.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBrokerStorageInput}.
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    # @option params [String] :current_version
    #   <p>The version of cluster to update from. A successful operation will then generate a new version.</p>
    #
    # @option params [Array<BrokerEBSVolumeInfo>] :target_broker_ebs_volume_info
    #   <p>Describes the target volume size and the ID of the broker to apply the update to.</p>
    #
    # @return [Types::UpdateBrokerStorageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_broker_storage(
    #     cluster_arn: 'ClusterArn', # required
    #     current_version: 'CurrentVersion', # required
    #     target_broker_ebs_volume_info: [
    #       {
    #         kafka_broker_node_id: 'KafkaBrokerNodeId', # required
    #         provisioned_throughput: {
    #           enabled: false,
    #           volume_throughput: 1
    #         },
    #         volume_size_gb: 1
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBrokerStorageOutput
    #   resp.data.cluster_arn #=> String
    #   resp.data.cluster_operation_arn #=> String
    #
    def update_broker_storage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBrokerStorageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBrokerStorageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBrokerStorage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException]),
        data_parser: Parsers::UpdateBrokerStorage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBrokerStorage,
        stubs: @stubs,
        params_class: Params::UpdateBrokerStorageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_broker_storage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates EC2 instance type.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBrokerTypeInput}.
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    # @option params [String] :current_version
    #   <p>The cluster version that you want to change. After this operation completes successfully, the cluster will have a new version.</p>
    #
    # @option params [String] :target_instance_type
    #   <p>The Amazon MSK broker type that you want all of the brokers in this cluster to be.</p>
    #
    # @return [Types::UpdateBrokerTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_broker_type(
    #     cluster_arn: 'ClusterArn', # required
    #     current_version: 'CurrentVersion', # required
    #     target_instance_type: 'TargetInstanceType' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBrokerTypeOutput
    #   resp.data.cluster_arn #=> String
    #   resp.data.cluster_operation_arn #=> String
    #
    def update_broker_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBrokerTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBrokerTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBrokerType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::UpdateBrokerType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBrokerType,
        stubs: @stubs,
        params_class: Params::UpdateBrokerTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_broker_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the cluster with the configuration that is specified in the request body.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateClusterConfigurationInput}.
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    # @option params [ConfigurationInfo] :configuration_info
    #   <p>Represents the configuration that you want MSK to use for the brokers in a cluster.</p>
    #
    # @option params [String] :current_version
    #   <p>The version of the cluster that needs to be updated.</p>
    #
    # @return [Types::UpdateClusterConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster_configuration(
    #     cluster_arn: 'ClusterArn', # required
    #     configuration_info: {
    #       arn: 'Arn', # required
    #       revision: 1 # required
    #     }, # required
    #     current_version: 'CurrentVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateClusterConfigurationOutput
    #   resp.data.cluster_arn #=> String
    #   resp.data.cluster_operation_arn #=> String
    #
    def update_cluster_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateClusterConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateClusterConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateClusterConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::UpdateClusterConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateClusterConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateClusterConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_cluster_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the Apache Kafka version for the cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateClusterKafkaVersionInput}.
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>
    #
    # @option params [ConfigurationInfo] :configuration_info
    #   <p>The custom configuration that should be applied on the new version of cluster.</p>
    #
    # @option params [String] :current_version
    #   <p>Current cluster version.</p>
    #
    # @option params [String] :target_kafka_version
    #   <p>Target Kafka version.</p>
    #
    # @return [Types::UpdateClusterKafkaVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster_kafka_version(
    #     cluster_arn: 'ClusterArn', # required
    #     configuration_info: {
    #       arn: 'Arn', # required
    #       revision: 1 # required
    #     },
    #     current_version: 'CurrentVersion', # required
    #     target_kafka_version: 'TargetKafkaVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateClusterKafkaVersionOutput
    #   resp.data.cluster_arn #=> String
    #   resp.data.cluster_operation_arn #=> String
    #
    def update_cluster_kafka_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateClusterKafkaVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateClusterKafkaVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateClusterKafkaVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::UpdateClusterKafkaVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateClusterKafkaVersion,
        stubs: @stubs,
        params_class: Params::UpdateClusterKafkaVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_cluster_kafka_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an MSK configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateConfigurationInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the configuration.</p>
    #
    # @option params [String] :description
    #   <p>The description of the configuration revision.</p>
    #
    # @option params [String] :server_properties
    #   <p>Contents of the <filename>server.properties</filename> file. When using the API, you must ensure that the contents of the file are base64 encoded.
    #                  When using the AWS Management Console, the SDK, or the AWS CLI, the contents of <filename>server.properties</filename> can be in plaintext.</p>
    #
    # @return [Types::UpdateConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration(
    #     arn: 'Arn', # required
    #     description: 'Description',
    #     server_properties: 'ServerProperties' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConfigurationOutput
    #   resp.data.arn #=> String
    #   resp.data.latest_revision #=> Types::ConfigurationRevision
    #   resp.data.latest_revision.creation_time #=> Time
    #   resp.data.latest_revision.description #=> String
    #   resp.data.latest_revision.revision #=> Integer
    #
    def update_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::UpdateConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the cluster's connectivity configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateConnectivityInput}.
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration.</p>
    #
    # @option params [ConnectivityInfo] :connectivity_info
    #   <p>Information about the broker access configuration.</p>
    #
    # @option params [String] :current_version
    #   <p>The version of the MSK cluster to update. Cluster versions aren't simple numbers. You can describe an MSK cluster to find its version. When this update operation is successful, it generates a new cluster version.</p>
    #
    # @return [Types::UpdateConnectivityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connectivity(
    #     cluster_arn: 'ClusterArn', # required
    #     connectivity_info: {
    #       public_access: {
    #         type: 'Type'
    #       }
    #     }, # required
    #     current_version: 'CurrentVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConnectivityOutput
    #   resp.data.cluster_arn #=> String
    #   resp.data.cluster_operation_arn #=> String
    #
    def update_connectivity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConnectivityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConnectivityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConnectivity
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::UpdateConnectivity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConnectivity,
        stubs: @stubs,
        params_class: Params::UpdateConnectivityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_connectivity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the monitoring settings for the cluster. You can use this operation to specify which Apache Kafka metrics you want Amazon MSK to send to Amazon CloudWatch. You can also specify settings for open monitoring with Prometheus.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateMonitoringInput}.
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    # @option params [String] :current_version
    #   <p>The version of the MSK cluster to update. Cluster versions aren't simple numbers. You can describe an MSK cluster to find its version. When this update operation is successful, it generates a new cluster version.</p>
    #
    # @option params [String] :enhanced_monitoring
    #   <p>Specifies which Apache Kafka metrics Amazon MSK gathers and sends to Amazon CloudWatch for this cluster.</p>
    #
    # @option params [OpenMonitoringInfo] :open_monitoring
    #   <p>The settings for open monitoring.</p>
    #
    # @return [Types::UpdateMonitoringOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_monitoring(
    #     cluster_arn: 'ClusterArn', # required
    #     current_version: 'CurrentVersion', # required
    #     enhanced_monitoring: 'DEFAULT', # accepts ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #     open_monitoring: {
    #       prometheus: {
    #         jmx_exporter: {
    #           enabled_in_broker: false # required
    #         },
    #         node_exporter: {
    #           enabled_in_broker: false # required
    #         }
    #       } # required
    #     },
    #     logging_info: {
    #       broker_logs: {
    #         cloud_watch_logs: {
    #           enabled: false, # required
    #           log_group: 'LogGroup'
    #         },
    #         firehose: {
    #           delivery_stream: 'DeliveryStream',
    #           enabled: false # required
    #         },
    #         s3: {
    #           bucket: 'Bucket',
    #           enabled: false, # required
    #           prefix: 'Prefix'
    #         }
    #       } # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMonitoringOutput
    #   resp.data.cluster_arn #=> String
    #   resp.data.cluster_operation_arn #=> String
    #
    def update_monitoring(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMonitoringInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMonitoringInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMonitoring
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::InternalServerErrorException]),
        data_parser: Parsers::UpdateMonitoring
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMonitoring,
        stubs: @stubs,
        params_class: Params::UpdateMonitoringOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_monitoring
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the security settings for the cluster. You can use this operation to specify encryption and authentication on existing clusters.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSecurityInput}.
    #
    # @option params [ClientAuthentication] :client_authentication
    #   <p>Includes all client authentication related information.</p>
    #
    # @option params [String] :cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    # @option params [String] :current_version
    #   <p>The version of the MSK cluster to update. Cluster versions aren't simple numbers. You can describe an MSK cluster to find its version. When this update operation is successful, it generates a new cluster version.</p>
    #
    # @option params [EncryptionInfo] :encryption_info
    #   <p>Includes all encryption-related information.</p>
    #
    # @return [Types::UpdateSecurityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_security(
    #     client_authentication: {
    #       sasl: {
    #         scram: {
    #           enabled: false
    #         },
    #         iam: {
    #           enabled: false
    #         }
    #       },
    #       tls: {
    #         certificate_authority_arn_list: [
    #           'member'
    #         ],
    #         enabled: false
    #       },
    #       unauthenticated: {
    #         enabled: false
    #       }
    #     },
    #     cluster_arn: 'ClusterArn', # required
    #     current_version: 'CurrentVersion', # required
    #     encryption_info: {
    #       encryption_at_rest: {
    #         data_volume_kms_key_id: 'DataVolumeKMSKeyId' # required
    #       },
    #       encryption_in_transit: {
    #         client_broker: 'TLS', # accepts ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"]
    #         in_cluster: false
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSecurityOutput
    #   resp.data.cluster_arn #=> String
    #   resp.data.cluster_operation_arn #=> String
    #
    def update_security(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSecurityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSecurityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSecurity
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::ForbiddenException, Errors::ServiceUnavailableException, Errors::NotFoundException, Errors::InternalServerErrorException]),
        data_parser: Parsers::UpdateSecurity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSecurity,
        stubs: @stubs,
        params_class: Params::UpdateSecurityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_security
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
