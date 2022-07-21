# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::EMRContainers
  # An API client for AwsChicagoWebService
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon EMR on EKS provides a deployment option for Amazon EMR that allows you to run
  #          open-source big data frameworks on Amazon Elastic Kubernetes Service (Amazon EKS). With
  #          this deployment option, you can focus on running analytics workloads while Amazon EMR on
  #          EKS builds, configures, and manages containers for open-source applications. For more
  #          information about Amazon EMR on EKS concepts and tasks, see <a href="https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/emr-eks.html">What is Amazon EMR on EKS</a>.</p>
  #          <p>
  #             <i>Amazon EMR containers</i> is the API name for Amazon EMR on EKS. The
  #             <code>emr-containers</code> prefix is used in the following scenarios: </p>
  #          <ul>
  #             <li>
  #                <p>It is the prefix in the CLI commands for Amazon EMR on EKS. For example, <code>aws
  #                   emr-containers start-job-run</code>.</p>
  #             </li>
  #             <li>
  #                <p>It is the prefix before IAM policy actions for Amazon EMR on EKS. For example, <code>"Action": [
  #             "emr-containers:StartJobRun"]</code>. For more information, see <a href="https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-actions">Policy actions for Amazon EMR on EKS</a>.</p>
  #             </li>
  #             <li>
  #                <p>It is the prefix used in Amazon EMR on EKS service endpoints. For example, <code>emr-containers.us-east-2.amazonaws.com</code>. For more
  #             information, see <a href="https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/service-quotas.html#service-endpoints">Amazon EMR on EKS Service Endpoints</a>.</p>
  #             </li>
  #          </ul>
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
    def initialize(config = AWS::SDK::EMRContainers::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Cancels a job run. A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelJobRunInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the job run to cancel.</p>
    #
    # @option params [String] :virtual_cluster_id
    #   <p>The ID of the virtual cluster for which the job run will be canceled.</p>
    #
    # @return [Types::CancelJobRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job_run(
    #     id: 'id', # required
    #     virtual_cluster_id: 'virtualClusterId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelJobRunOutput
    #   resp.data.id #=> String
    #   resp.data.virtual_cluster_id #=> String
    #
    def cancel_job_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelJobRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelJobRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelJobRun
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CancelJobRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelJobRun,
        stubs: @stubs,
        params_class: Params::CancelJobRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_job_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a managed endpoint. A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on EKS so that EMR Studio can communicate with your virtual cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateManagedEndpointInput}.
    #
    # @option params [String] :name
    #   <p>The name of the managed endpoint.</p>
    #
    # @option params [String] :virtual_cluster_id
    #   <p>The ID of the virtual cluster for which a managed endpoint is created.</p>
    #
    # @option params [String] :type
    #   <p>The type of the managed endpoint.</p>
    #
    # @option params [String] :release_label
    #   <p>The Amazon EMR release version.</p>
    #
    # @option params [String] :execution_role_arn
    #   <p>The ARN of the execution role.</p>
    #
    # @option params [String] :certificate_arn
    #   <p>The certificate ARN provided by users for the managed endpoint. This fiedd is under deprecation and will be removed in future releases.</p>
    #
    # @option params [ConfigurationOverrides] :configuration_overrides
    #   <p>The configuration settings that will be used to override existing configurations.</p>
    #
    # @option params [String] :client_token
    #   <p>The client idempotency token for this create call.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the managed endpoint.
    #         </p>
    #
    # @return [Types::CreateManagedEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_managed_endpoint(
    #     name: 'name', # required
    #     virtual_cluster_id: 'virtualClusterId', # required
    #     type: 'type', # required
    #     release_label: 'releaseLabel', # required
    #     execution_role_arn: 'executionRoleArn', # required
    #     certificate_arn: 'certificateArn',
    #     configuration_overrides: {
    #       application_configuration: [
    #         {
    #           classification: 'classification', # required
    #           properties: {
    #             'key' => 'value'
    #           },
    #         }
    #       ],
    #       monitoring_configuration: {
    #         persistent_app_ui: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #         cloud_watch_monitoring_configuration: {
    #           log_group_name: 'logGroupName', # required
    #           log_stream_name_prefix: 'logStreamNamePrefix'
    #         },
    #         s3_monitoring_configuration: {
    #           log_uri: 'logUri' # required
    #         }
    #       }
    #     },
    #     client_token: 'clientToken', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateManagedEndpointOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.virtual_cluster_id #=> String
    #
    def create_managed_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateManagedEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateManagedEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateManagedEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateManagedEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateManagedEndpoint,
        stubs: @stubs,
        params_class: Params::CreateManagedEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_managed_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do not consume any additional resource in your system. A single virtual cluster maps to a single Kubernetes namespace. Given this relationship, you can model virtual clusters the same way you model Kubernetes namespaces to meet your requirements.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateVirtualClusterInput}.
    #
    # @option params [String] :name
    #   <p>The specified name of the virtual cluster.</p>
    #
    # @option params [ContainerProvider] :container_provider
    #   <p>The container provider of the virtual cluster.</p>
    #
    # @option params [String] :client_token
    #   <p>The client token of the virtual cluster.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to the virtual cluster.</p>
    #
    # @return [Types::CreateVirtualClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_virtual_cluster(
    #     name: 'name', # required
    #     container_provider: {
    #       type: 'EKS', # required - accepts ["EKS"]
    #       id: 'id', # required
    #       info: {
    #         # One of:
    #         eks_info: {
    #           namespace: 'namespace'
    #         }
    #       }
    #     }, # required
    #     client_token: 'clientToken', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateVirtualClusterOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #
    def create_virtual_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVirtualClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVirtualClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVirtualCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateVirtualCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVirtualCluster,
        stubs: @stubs,
        params_class: Params::CreateVirtualClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_virtual_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a managed endpoint. A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on EKS so that EMR Studio can communicate with your virtual cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteManagedEndpointInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the managed endpoint.</p>
    #
    # @option params [String] :virtual_cluster_id
    #   <p>The ID of the endpoint's virtual cluster.</p>
    #
    # @return [Types::DeleteManagedEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_managed_endpoint(
    #     id: 'id', # required
    #     virtual_cluster_id: 'virtualClusterId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteManagedEndpointOutput
    #   resp.data.id #=> String
    #   resp.data.virtual_cluster_id #=> String
    #
    def delete_managed_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteManagedEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteManagedEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteManagedEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteManagedEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteManagedEndpoint,
        stubs: @stubs,
        params_class: Params::DeleteManagedEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_managed_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do not consume any additional resource in your system. A single virtual cluster maps to a single Kubernetes namespace. Given this relationship, you can model virtual clusters the same way you model Kubernetes namespaces to meet your requirements.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVirtualClusterInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the virtual cluster that will be deleted.</p>
    #
    # @return [Types::DeleteVirtualClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_virtual_cluster(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVirtualClusterOutput
    #   resp.data.id #=> String
    #
    def delete_virtual_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVirtualClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVirtualClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVirtualCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteVirtualCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVirtualCluster,
        stubs: @stubs,
        params_class: Params::DeleteVirtualClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_virtual_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays detailed information about a job run. A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeJobRunInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the job run request. </p>
    #
    # @option params [String] :virtual_cluster_id
    #   <p>The ID of the virtual cluster for which the job run is submitted.</p>
    #
    # @return [Types::DescribeJobRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job_run(
    #     id: 'id', # required
    #     virtual_cluster_id: 'virtualClusterId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeJobRunOutput
    #   resp.data.job_run #=> Types::JobRun
    #   resp.data.job_run.id #=> String
    #   resp.data.job_run.name #=> String
    #   resp.data.job_run.virtual_cluster_id #=> String
    #   resp.data.job_run.arn #=> String
    #   resp.data.job_run.state #=> String, one of ["PENDING", "SUBMITTED", "RUNNING", "FAILED", "CANCELLED", "CANCEL_PENDING", "COMPLETED"]
    #   resp.data.job_run.client_token #=> String
    #   resp.data.job_run.execution_role_arn #=> String
    #   resp.data.job_run.release_label #=> String
    #   resp.data.job_run.configuration_overrides #=> Types::ConfigurationOverrides
    #   resp.data.job_run.configuration_overrides.application_configuration #=> Array<Configuration>
    #   resp.data.job_run.configuration_overrides.application_configuration[0] #=> Types::Configuration
    #   resp.data.job_run.configuration_overrides.application_configuration[0].classification #=> String
    #   resp.data.job_run.configuration_overrides.application_configuration[0].properties #=> Hash<String, String>
    #   resp.data.job_run.configuration_overrides.application_configuration[0].properties['key'] #=> String
    #   resp.data.job_run.configuration_overrides.application_configuration[0].configurations #=> Array<Configuration>
    #   resp.data.job_run.configuration_overrides.monitoring_configuration #=> Types::MonitoringConfiguration
    #   resp.data.job_run.configuration_overrides.monitoring_configuration.persistent_app_ui #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.job_run.configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration #=> Types::CloudWatchMonitoringConfiguration
    #   resp.data.job_run.configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration.log_group_name #=> String
    #   resp.data.job_run.configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration.log_stream_name_prefix #=> String
    #   resp.data.job_run.configuration_overrides.monitoring_configuration.s3_monitoring_configuration #=> Types::S3MonitoringConfiguration
    #   resp.data.job_run.configuration_overrides.monitoring_configuration.s3_monitoring_configuration.log_uri #=> String
    #   resp.data.job_run.job_driver #=> Types::JobDriver
    #   resp.data.job_run.job_driver.spark_submit_job_driver #=> Types::SparkSubmitJobDriver
    #   resp.data.job_run.job_driver.spark_submit_job_driver.entry_point #=> String
    #   resp.data.job_run.job_driver.spark_submit_job_driver.entry_point_arguments #=> Array<String>
    #   resp.data.job_run.job_driver.spark_submit_job_driver.entry_point_arguments[0] #=> String
    #   resp.data.job_run.job_driver.spark_submit_job_driver.spark_submit_parameters #=> String
    #   resp.data.job_run.created_at #=> Time
    #   resp.data.job_run.created_by #=> String
    #   resp.data.job_run.finished_at #=> Time
    #   resp.data.job_run.state_details #=> String
    #   resp.data.job_run.failure_reason #=> String, one of ["INTERNAL_ERROR", "USER_ERROR", "VALIDATION_ERROR", "CLUSTER_UNAVAILABLE"]
    #   resp.data.job_run.tags #=> Hash<String, String>
    #   resp.data.job_run.tags['key'] #=> String
    #
    def describe_job_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeJobRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeJobRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeJobRun
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeJobRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeJobRun,
        stubs: @stubs,
        params_class: Params::DescribeJobRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_job_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays detailed information about a managed endpoint. A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on EKS so that EMR Studio can communicate with your virtual cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeManagedEndpointInput}.
    #
    # @option params [String] :id
    #   <p>This output displays ID of the managed endpoint.</p>
    #
    # @option params [String] :virtual_cluster_id
    #   <p>The ID of the endpoint's virtual cluster.</p>
    #
    # @return [Types::DescribeManagedEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_managed_endpoint(
    #     id: 'id', # required
    #     virtual_cluster_id: 'virtualClusterId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeManagedEndpointOutput
    #   resp.data.endpoint #=> Types::Endpoint
    #   resp.data.endpoint.id #=> String
    #   resp.data.endpoint.name #=> String
    #   resp.data.endpoint.arn #=> String
    #   resp.data.endpoint.virtual_cluster_id #=> String
    #   resp.data.endpoint.type #=> String
    #   resp.data.endpoint.state #=> String, one of ["CREATING", "ACTIVE", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"]
    #   resp.data.endpoint.release_label #=> String
    #   resp.data.endpoint.execution_role_arn #=> String
    #   resp.data.endpoint.certificate_arn #=> String
    #   resp.data.endpoint.certificate_authority #=> Types::Certificate
    #   resp.data.endpoint.certificate_authority.certificate_arn #=> String
    #   resp.data.endpoint.certificate_authority.certificate_data #=> String
    #   resp.data.endpoint.configuration_overrides #=> Types::ConfigurationOverrides
    #   resp.data.endpoint.configuration_overrides.application_configuration #=> Array<Configuration>
    #   resp.data.endpoint.configuration_overrides.application_configuration[0] #=> Types::Configuration
    #   resp.data.endpoint.configuration_overrides.application_configuration[0].classification #=> String
    #   resp.data.endpoint.configuration_overrides.application_configuration[0].properties #=> Hash<String, String>
    #   resp.data.endpoint.configuration_overrides.application_configuration[0].properties['key'] #=> String
    #   resp.data.endpoint.configuration_overrides.application_configuration[0].configurations #=> Array<Configuration>
    #   resp.data.endpoint.configuration_overrides.monitoring_configuration #=> Types::MonitoringConfiguration
    #   resp.data.endpoint.configuration_overrides.monitoring_configuration.persistent_app_ui #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.endpoint.configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration #=> Types::CloudWatchMonitoringConfiguration
    #   resp.data.endpoint.configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration.log_group_name #=> String
    #   resp.data.endpoint.configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration.log_stream_name_prefix #=> String
    #   resp.data.endpoint.configuration_overrides.monitoring_configuration.s3_monitoring_configuration #=> Types::S3MonitoringConfiguration
    #   resp.data.endpoint.configuration_overrides.monitoring_configuration.s3_monitoring_configuration.log_uri #=> String
    #   resp.data.endpoint.server_url #=> String
    #   resp.data.endpoint.created_at #=> Time
    #   resp.data.endpoint.security_group #=> String
    #   resp.data.endpoint.subnet_ids #=> Array<String>
    #   resp.data.endpoint.subnet_ids[0] #=> String
    #   resp.data.endpoint.state_details #=> String
    #   resp.data.endpoint.failure_reason #=> String, one of ["INTERNAL_ERROR", "USER_ERROR", "VALIDATION_ERROR", "CLUSTER_UNAVAILABLE"]
    #   resp.data.endpoint.tags #=> Hash<String, String>
    #   resp.data.endpoint.tags['key'] #=> String
    #
    def describe_managed_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeManagedEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeManagedEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeManagedEndpoint
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeManagedEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeManagedEndpoint,
        stubs: @stubs,
        params_class: Params::DescribeManagedEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_managed_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays detailed information about a specified virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do not consume any additional resource in your system. A single virtual cluster maps to a single Kubernetes namespace. Given this relationship, you can model virtual clusters the same way you model Kubernetes namespaces to meet your requirements.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeVirtualClusterInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the virtual cluster that will be described.</p>
    #
    # @return [Types::DescribeVirtualClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_virtual_cluster(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeVirtualClusterOutput
    #   resp.data.virtual_cluster #=> Types::VirtualCluster
    #   resp.data.virtual_cluster.id #=> String
    #   resp.data.virtual_cluster.name #=> String
    #   resp.data.virtual_cluster.arn #=> String
    #   resp.data.virtual_cluster.state #=> String, one of ["RUNNING", "TERMINATING", "TERMINATED", "ARRESTED"]
    #   resp.data.virtual_cluster.container_provider #=> Types::ContainerProvider
    #   resp.data.virtual_cluster.container_provider.type #=> String, one of ["EKS"]
    #   resp.data.virtual_cluster.container_provider.id #=> String
    #   resp.data.virtual_cluster.container_provider.info #=> Types::ContainerInfo, one of [EksInfo]
    #   resp.data.virtual_cluster.container_provider.info.eks_info #=> Types::EksInfo
    #   resp.data.virtual_cluster.container_provider.info.eks_info.namespace #=> String
    #   resp.data.virtual_cluster.created_at #=> Time
    #   resp.data.virtual_cluster.tags #=> Hash<String, String>
    #   resp.data.virtual_cluster.tags['key'] #=> String
    #
    def describe_virtual_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeVirtualClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeVirtualClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeVirtualCluster
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeVirtualCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeVirtualCluster,
        stubs: @stubs,
        params_class: Params::DescribeVirtualClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_virtual_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists job runs based on a set of parameters. A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.</p>
    #
    # @param [Hash] params
    #   See {Types::ListJobRunsInput}.
    #
    # @option params [String] :virtual_cluster_id
    #   <p>The ID of the virtual cluster for which to list the job run. </p>
    #
    # @option params [Time] :created_before
    #   <p>The date and time before which the job runs were submitted.</p>
    #
    # @option params [Time] :created_after
    #   <p>The date and time after which the job runs were submitted.</p>
    #
    # @option params [String] :name
    #   <p>The name of the job run.</p>
    #
    # @option params [Array<String>] :states
    #   <p>The states of the job run.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of job runs that can be listed.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of job runs to return.</p>
    #
    # @return [Types::ListJobRunsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_job_runs(
    #     virtual_cluster_id: 'virtualClusterId', # required
    #     created_before: Time.now,
    #     created_after: Time.now,
    #     name: 'name',
    #     states: [
    #       'PENDING' # accepts ["PENDING", "SUBMITTED", "RUNNING", "FAILED", "CANCELLED", "CANCEL_PENDING", "COMPLETED"]
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJobRunsOutput
    #   resp.data.job_runs #=> Array<JobRun>
    #   resp.data.job_runs[0] #=> Types::JobRun
    #   resp.data.job_runs[0].id #=> String
    #   resp.data.job_runs[0].name #=> String
    #   resp.data.job_runs[0].virtual_cluster_id #=> String
    #   resp.data.job_runs[0].arn #=> String
    #   resp.data.job_runs[0].state #=> String, one of ["PENDING", "SUBMITTED", "RUNNING", "FAILED", "CANCELLED", "CANCEL_PENDING", "COMPLETED"]
    #   resp.data.job_runs[0].client_token #=> String
    #   resp.data.job_runs[0].execution_role_arn #=> String
    #   resp.data.job_runs[0].release_label #=> String
    #   resp.data.job_runs[0].configuration_overrides #=> Types::ConfigurationOverrides
    #   resp.data.job_runs[0].configuration_overrides.application_configuration #=> Array<Configuration>
    #   resp.data.job_runs[0].configuration_overrides.application_configuration[0] #=> Types::Configuration
    #   resp.data.job_runs[0].configuration_overrides.application_configuration[0].classification #=> String
    #   resp.data.job_runs[0].configuration_overrides.application_configuration[0].properties #=> Hash<String, String>
    #   resp.data.job_runs[0].configuration_overrides.application_configuration[0].properties['key'] #=> String
    #   resp.data.job_runs[0].configuration_overrides.application_configuration[0].configurations #=> Array<Configuration>
    #   resp.data.job_runs[0].configuration_overrides.monitoring_configuration #=> Types::MonitoringConfiguration
    #   resp.data.job_runs[0].configuration_overrides.monitoring_configuration.persistent_app_ui #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.job_runs[0].configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration #=> Types::CloudWatchMonitoringConfiguration
    #   resp.data.job_runs[0].configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration.log_group_name #=> String
    #   resp.data.job_runs[0].configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration.log_stream_name_prefix #=> String
    #   resp.data.job_runs[0].configuration_overrides.monitoring_configuration.s3_monitoring_configuration #=> Types::S3MonitoringConfiguration
    #   resp.data.job_runs[0].configuration_overrides.monitoring_configuration.s3_monitoring_configuration.log_uri #=> String
    #   resp.data.job_runs[0].job_driver #=> Types::JobDriver
    #   resp.data.job_runs[0].job_driver.spark_submit_job_driver #=> Types::SparkSubmitJobDriver
    #   resp.data.job_runs[0].job_driver.spark_submit_job_driver.entry_point #=> String
    #   resp.data.job_runs[0].job_driver.spark_submit_job_driver.entry_point_arguments #=> Array<String>
    #   resp.data.job_runs[0].job_driver.spark_submit_job_driver.entry_point_arguments[0] #=> String
    #   resp.data.job_runs[0].job_driver.spark_submit_job_driver.spark_submit_parameters #=> String
    #   resp.data.job_runs[0].created_at #=> Time
    #   resp.data.job_runs[0].created_by #=> String
    #   resp.data.job_runs[0].finished_at #=> Time
    #   resp.data.job_runs[0].state_details #=> String
    #   resp.data.job_runs[0].failure_reason #=> String, one of ["INTERNAL_ERROR", "USER_ERROR", "VALIDATION_ERROR", "CLUSTER_UNAVAILABLE"]
    #   resp.data.job_runs[0].tags #=> Hash<String, String>
    #   resp.data.job_runs[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_job_runs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListJobRunsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListJobRunsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListJobRuns
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListJobRuns
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListJobRuns,
        stubs: @stubs,
        params_class: Params::ListJobRunsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_job_runs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists managed endpoints based on a set of parameters. A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on EKS so that EMR Studio can communicate with your virtual cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::ListManagedEndpointsInput}.
    #
    # @option params [String] :virtual_cluster_id
    #   <p>The ID of the virtual cluster.</p>
    #
    # @option params [Time] :created_before
    #   <p>The date and time before which the endpoints are created.</p>
    #
    # @option params [Time] :created_after
    #   <p> The date and time after which the endpoints are created.</p>
    #
    # @option params [Array<String>] :types
    #   <p>The types of the managed endpoints.</p>
    #
    # @option params [Array<String>] :states
    #   <p>The states of the managed endpoints.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of managed endpoints that can be listed.</p>
    #
    # @option params [String] :next_token
    #   <p> The token for the next set of managed endpoints to return. </p>
    #
    # @return [Types::ListManagedEndpointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_endpoints(
    #     virtual_cluster_id: 'virtualClusterId', # required
    #     created_before: Time.now,
    #     created_after: Time.now,
    #     types: [
    #       'member'
    #     ],
    #     states: [
    #       'CREATING' # accepts ["CREATING", "ACTIVE", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"]
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListManagedEndpointsOutput
    #   resp.data.endpoints #=> Array<Endpoint>
    #   resp.data.endpoints[0] #=> Types::Endpoint
    #   resp.data.endpoints[0].id #=> String
    #   resp.data.endpoints[0].name #=> String
    #   resp.data.endpoints[0].arn #=> String
    #   resp.data.endpoints[0].virtual_cluster_id #=> String
    #   resp.data.endpoints[0].type #=> String
    #   resp.data.endpoints[0].state #=> String, one of ["CREATING", "ACTIVE", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"]
    #   resp.data.endpoints[0].release_label #=> String
    #   resp.data.endpoints[0].execution_role_arn #=> String
    #   resp.data.endpoints[0].certificate_arn #=> String
    #   resp.data.endpoints[0].certificate_authority #=> Types::Certificate
    #   resp.data.endpoints[0].certificate_authority.certificate_arn #=> String
    #   resp.data.endpoints[0].certificate_authority.certificate_data #=> String
    #   resp.data.endpoints[0].configuration_overrides #=> Types::ConfigurationOverrides
    #   resp.data.endpoints[0].configuration_overrides.application_configuration #=> Array<Configuration>
    #   resp.data.endpoints[0].configuration_overrides.application_configuration[0] #=> Types::Configuration
    #   resp.data.endpoints[0].configuration_overrides.application_configuration[0].classification #=> String
    #   resp.data.endpoints[0].configuration_overrides.application_configuration[0].properties #=> Hash<String, String>
    #   resp.data.endpoints[0].configuration_overrides.application_configuration[0].properties['key'] #=> String
    #   resp.data.endpoints[0].configuration_overrides.application_configuration[0].configurations #=> Array<Configuration>
    #   resp.data.endpoints[0].configuration_overrides.monitoring_configuration #=> Types::MonitoringConfiguration
    #   resp.data.endpoints[0].configuration_overrides.monitoring_configuration.persistent_app_ui #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.endpoints[0].configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration #=> Types::CloudWatchMonitoringConfiguration
    #   resp.data.endpoints[0].configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration.log_group_name #=> String
    #   resp.data.endpoints[0].configuration_overrides.monitoring_configuration.cloud_watch_monitoring_configuration.log_stream_name_prefix #=> String
    #   resp.data.endpoints[0].configuration_overrides.monitoring_configuration.s3_monitoring_configuration #=> Types::S3MonitoringConfiguration
    #   resp.data.endpoints[0].configuration_overrides.monitoring_configuration.s3_monitoring_configuration.log_uri #=> String
    #   resp.data.endpoints[0].server_url #=> String
    #   resp.data.endpoints[0].created_at #=> Time
    #   resp.data.endpoints[0].security_group #=> String
    #   resp.data.endpoints[0].subnet_ids #=> Array<String>
    #   resp.data.endpoints[0].subnet_ids[0] #=> String
    #   resp.data.endpoints[0].state_details #=> String
    #   resp.data.endpoints[0].failure_reason #=> String, one of ["INTERNAL_ERROR", "USER_ERROR", "VALIDATION_ERROR", "CLUSTER_UNAVAILABLE"]
    #   resp.data.endpoints[0].tags #=> Hash<String, String>
    #   resp.data.endpoints[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_managed_endpoints(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListManagedEndpointsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListManagedEndpointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListManagedEndpoints
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListManagedEndpoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListManagedEndpoints,
        stubs: @stubs,
        params_class: Params::ListManagedEndpointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_managed_endpoints
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags assigned to the resources.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of tagged resources.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>Lists information about the specified virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do not consume any additional resource in your system. A single virtual cluster maps to a single Kubernetes namespace. Given this relationship, you can model virtual clusters the same way you model Kubernetes namespaces to meet your requirements.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVirtualClustersInput}.
    #
    # @option params [String] :container_provider_id
    #   <p>The container provider ID of the virtual cluster.</p>
    #
    # @option params [String] :container_provider_type
    #   <p>The container provider type of the virtual cluster. EKS is the only supported type as of now.</p>
    #
    # @option params [Time] :created_after
    #   <p>The date and time after which the virtual clusters are created.</p>
    #
    # @option params [Time] :created_before
    #   <p>The date and time before which the virtual clusters are created.</p>
    #
    # @option params [Array<String>] :states
    #   <p>The states of the requested virtual clusters.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of virtual clusters that can be listed.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of virtual clusters to return. </p>
    #
    # @return [Types::ListVirtualClustersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_virtual_clusters(
    #     container_provider_id: 'containerProviderId',
    #     container_provider_type: 'EKS', # accepts ["EKS"]
    #     created_after: Time.now,
    #     created_before: Time.now,
    #     states: [
    #       'RUNNING' # accepts ["RUNNING", "TERMINATING", "TERMINATED", "ARRESTED"]
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVirtualClustersOutput
    #   resp.data.virtual_clusters #=> Array<VirtualCluster>
    #   resp.data.virtual_clusters[0] #=> Types::VirtualCluster
    #   resp.data.virtual_clusters[0].id #=> String
    #   resp.data.virtual_clusters[0].name #=> String
    #   resp.data.virtual_clusters[0].arn #=> String
    #   resp.data.virtual_clusters[0].state #=> String, one of ["RUNNING", "TERMINATING", "TERMINATED", "ARRESTED"]
    #   resp.data.virtual_clusters[0].container_provider #=> Types::ContainerProvider
    #   resp.data.virtual_clusters[0].container_provider.type #=> String, one of ["EKS"]
    #   resp.data.virtual_clusters[0].container_provider.id #=> String
    #   resp.data.virtual_clusters[0].container_provider.info #=> Types::ContainerInfo, one of [EksInfo]
    #   resp.data.virtual_clusters[0].container_provider.info.eks_info #=> Types::EksInfo
    #   resp.data.virtual_clusters[0].container_provider.info.eks_info.namespace #=> String
    #   resp.data.virtual_clusters[0].created_at #=> Time
    #   resp.data.virtual_clusters[0].tags #=> Hash<String, String>
    #   resp.data.virtual_clusters[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_virtual_clusters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVirtualClustersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVirtualClustersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVirtualClusters
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListVirtualClusters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVirtualClusters,
        stubs: @stubs,
        params_class: Params::ListVirtualClustersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_virtual_clusters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a job run. A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.</p>
    #
    # @param [Hash] params
    #   See {Types::StartJobRunInput}.
    #
    # @option params [String] :name
    #   <p>The name of the job run.</p>
    #
    # @option params [String] :virtual_cluster_id
    #   <p>The virtual cluster ID for which the job run request is submitted.</p>
    #
    # @option params [String] :client_token
    #   <p>The client idempotency token of the job run request. </p>
    #
    # @option params [String] :execution_role_arn
    #   <p>The execution role ARN for the job run.</p>
    #
    # @option params [String] :release_label
    #   <p>The Amazon EMR release version to use for the job run.</p>
    #
    # @option params [JobDriver] :job_driver
    #   <p>The job driver for the job run.</p>
    #
    # @option params [ConfigurationOverrides] :configuration_overrides
    #   <p>The configuration overrides for the job run.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to job runs.</p>
    #
    # @return [Types::StartJobRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_job_run(
    #     name: 'name',
    #     virtual_cluster_id: 'virtualClusterId', # required
    #     client_token: 'clientToken', # required
    #     execution_role_arn: 'executionRoleArn', # required
    #     release_label: 'releaseLabel', # required
    #     job_driver: {
    #       spark_submit_job_driver: {
    #         entry_point: 'entryPoint', # required
    #         entry_point_arguments: [
    #           'member'
    #         ],
    #         spark_submit_parameters: 'sparkSubmitParameters'
    #       }
    #     }, # required
    #     configuration_overrides: {
    #       application_configuration: [
    #         {
    #           classification: 'classification', # required
    #           properties: {
    #             'key' => 'value'
    #           },
    #         }
    #       ],
    #       monitoring_configuration: {
    #         persistent_app_ui: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #         cloud_watch_monitoring_configuration: {
    #           log_group_name: 'logGroupName', # required
    #           log_stream_name_prefix: 'logStreamNamePrefix'
    #         },
    #         s3_monitoring_configuration: {
    #           log_uri: 'logUri' # required
    #         }
    #       }
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartJobRunOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.virtual_cluster_id #=> String
    #
    def start_job_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartJobRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartJobRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartJobRun
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartJobRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartJobRun,
        stubs: @stubs,
        params_class: Params::StartJobRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_job_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns tags to resources. A tag is a label that you assign to an AWS resource. Each tag consists of a key and an optional value, both of which you define. Tags enable you to categorize your AWS resources by attributes such as purpose, owner, or environment. When you have many resources of the same type, you can quickly identify a specific resource based on the tags you've assigned to it. For example, you can define a set of tags for your Amazon EMR on EKS clusters to help you track each cluster's owner and stack level. We recommend that you devise a consistent set of tag keys for each resource type. You can then search and filter the resources based on the tags that you add.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of resources.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to resources.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>Removes tags from resources.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of resources.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys of the resources.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
