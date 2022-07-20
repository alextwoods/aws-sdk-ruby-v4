# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::EMRServerless
  # An API client for AwsToledoWebService
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon EMR Serverless is a new deployment option for Amazon EMR. EMR Serverless provides
  #          a serverless runtime environment that simplifies running analytics applications using the
  #          latest open source frameworks such as Apache Spark and Apache Hive. With EMR Serverless,
  #          you don’t have to configure, optimize, secure, or operate clusters to run applications with
  #          these frameworks.</p>
  #          <p>The API reference to Amazon EMR Serverless is <code>emr-serverless</code>. The
  #             <code>emr-serverless</code> prefix is used in the following scenarios: </p>
  #          <ul>
  #             <li>
  #                <p>It is the prefix in the CLI commands for Amazon EMR Serverless. For example,
  #                   <code>aws emr-serverless start-job-run</code>.</p>
  #             </li>
  #             <li>
  #                <p>It is the prefix before IAM policy actions for Amazon EMR Serverless. For example,
  #                   <code>"Action": ["emr-serverless:StartJobRun"]</code>. For more information, see
  #                   <a href="https://docs.aws.amazon.com/emr/latest/EMR-Serverless-UserGuide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-actions">Policy actions for Amazon EMR Serverless</a>.</p>
  #             </li>
  #             <li>
  #                <p>It is the prefix used in Amazon EMR Serverless service endpoints. For example,
  #                   <code>emr-serverless.us-east-2.amazonaws.com</code>.</p>
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
    def initialize(config = AWS::SDK::EMRServerless::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Cancels a job run.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelJobRunInput}.
    #
    # @option params [String] :application_id
    #   <p>The ID of the application on which the job run will be canceled.</p>
    #
    # @option params [String] :job_run_id
    #   <p>The ID of the job run to cancel.</p>
    #
    # @return [Types::CancelJobRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job_run(
    #     application_id: 'applicationId', # required
    #     job_run_id: 'jobRunId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelJobRunOutput
    #   resp.data.application_id #=> String
    #   resp.data.job_run_id #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
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

    # <p>Creates an application.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApplicationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the application.</p>
    #
    # @option params [String] :release_label
    #   <p>The EMR release version associated with the application.</p>
    #
    # @option params [String] :type
    #   <p>The type of application you want to start, such as Spark or Hive.</p>
    #
    # @option params [String] :client_token
    #   <p>The client idempotency token of the application to create. Its value must be unique for
    #            each request.</p>
    #
    # @option params [Hash<String, InitialCapacityConfig>] :initial_capacity
    #   <p>The capacity to initialize when the application is created.</p>
    #
    # @option params [MaximumAllowedResources] :maximum_capacity
    #   <p>The maximum capacity to allocate when the application is created. This is cumulative
    #            across all workers at any given point in time, not just when an application is created. No
    #            new resources will be created once any one of the defined limits is hit.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to the application.</p>
    #
    # @option params [AutoStartConfig] :auto_start_configuration
    #   <p>The configuration for an application to automatically start on job submission.</p>
    #
    # @option params [AutoStopConfig] :auto_stop_configuration
    #   <p>The configuration for an application to automatically stop after a certain amount of time being idle.</p>
    #
    # @option params [NetworkConfiguration] :network_configuration
    #   <p>The network configuration for customer VPC connectivity.</p>
    #
    # @return [Types::CreateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application(
    #     name: 'name',
    #     release_label: 'releaseLabel', # required
    #     type: 'type', # required
    #     client_token: 'clientToken', # required
    #     initial_capacity: {
    #       'key' => {
    #         worker_count: 1, # required
    #         worker_configuration: {
    #           cpu: 'cpu', # required
    #           memory: 'memory', # required
    #           disk: 'disk'
    #         }
    #       }
    #     },
    #     maximum_capacity: {
    #       cpu: 'cpu', # required
    #       memory: 'memory', # required
    #       disk: 'disk'
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     auto_start_configuration: {
    #       enabled: false
    #     },
    #     auto_stop_configuration: {
    #       enabled: false,
    #       idle_timeout_minutes: 1
    #     },
    #     network_configuration: {
    #       subnet_ids: [
    #         'member'
    #       ],
    #       security_group_ids: [
    #         'member'
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApplicationOutput
    #   resp.data.application_id #=> String
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #
    def create_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::CreateApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApplication,
        stubs: @stubs,
        params_class: Params::CreateApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an application. An application has to be in a stopped or created state in order
    #          to be deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationInput}.
    #
    # @option params [String] :application_id
    #   <p>The ID of the application that will be deleted.</p>
    #
    # @return [Types::DeleteApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application(
    #     application_id: 'applicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApplicationOutput
    #
    def delete_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApplication,
        stubs: @stubs,
        params_class: Params::DeleteApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays detailed information about a specified application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApplicationInput}.
    #
    # @option params [String] :application_id
    #   <p>The ID of the application that will be described.</p>
    #
    # @return [Types::GetApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application(
    #     application_id: 'applicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApplicationOutput
    #   resp.data.application #=> Types::Application
    #   resp.data.application.application_id #=> String
    #   resp.data.application.name #=> String
    #   resp.data.application.arn #=> String
    #   resp.data.application.release_label #=> String
    #   resp.data.application.type #=> String
    #   resp.data.application.state #=> String, one of ["CREATING", "CREATED", "STARTING", "STARTED", "STOPPING", "STOPPED", "TERMINATED"]
    #   resp.data.application.state_details #=> String
    #   resp.data.application.initial_capacity #=> Hash<String, InitialCapacityConfig>
    #   resp.data.application.initial_capacity['key'] #=> Types::InitialCapacityConfig
    #   resp.data.application.initial_capacity['key'].worker_count #=> Integer
    #   resp.data.application.initial_capacity['key'].worker_configuration #=> Types::WorkerResourceConfig
    #   resp.data.application.initial_capacity['key'].worker_configuration.cpu #=> String
    #   resp.data.application.initial_capacity['key'].worker_configuration.memory #=> String
    #   resp.data.application.initial_capacity['key'].worker_configuration.disk #=> String
    #   resp.data.application.maximum_capacity #=> Types::MaximumAllowedResources
    #   resp.data.application.maximum_capacity.cpu #=> String
    #   resp.data.application.maximum_capacity.memory #=> String
    #   resp.data.application.maximum_capacity.disk #=> String
    #   resp.data.application.created_at #=> Time
    #   resp.data.application.updated_at #=> Time
    #   resp.data.application.tags #=> Hash<String, String>
    #   resp.data.application.tags['key'] #=> String
    #   resp.data.application.auto_start_configuration #=> Types::AutoStartConfig
    #   resp.data.application.auto_start_configuration.enabled #=> Boolean
    #   resp.data.application.auto_stop_configuration #=> Types::AutoStopConfig
    #   resp.data.application.auto_stop_configuration.enabled #=> Boolean
    #   resp.data.application.auto_stop_configuration.idle_timeout_minutes #=> Integer
    #   resp.data.application.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.application.network_configuration.subnet_ids #=> Array<String>
    #   resp.data.application.network_configuration.subnet_ids[0] #=> String
    #   resp.data.application.network_configuration.security_group_ids #=> Array<String>
    #   resp.data.application.network_configuration.security_group_ids[0] #=> String
    #
    def get_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::GetApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApplication,
        stubs: @stubs,
        params_class: Params::GetApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays detailed information about a job run.</p>
    #
    # @param [Hash] params
    #   See {Types::GetJobRunInput}.
    #
    # @option params [String] :application_id
    #   <p>The ID of the application on which the job run is submitted.</p>
    #
    # @option params [String] :job_run_id
    #   <p>The ID of the job run.</p>
    #
    # @return [Types::GetJobRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_run(
    #     application_id: 'applicationId', # required
    #     job_run_id: 'jobRunId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetJobRunOutput
    #   resp.data.job_run #=> Types::JobRun
    #   resp.data.job_run.application_id #=> String
    #   resp.data.job_run.job_run_id #=> String
    #   resp.data.job_run.name #=> String
    #   resp.data.job_run.arn #=> String
    #   resp.data.job_run.created_by #=> String
    #   resp.data.job_run.created_at #=> Time
    #   resp.data.job_run.updated_at #=> Time
    #   resp.data.job_run.execution_role #=> String
    #   resp.data.job_run.state #=> String, one of ["SUBMITTED", "PENDING", "SCHEDULED", "RUNNING", "SUCCESS", "FAILED", "CANCELLING", "CANCELLED"]
    #   resp.data.job_run.state_details #=> String
    #   resp.data.job_run.release_label #=> String
    #   resp.data.job_run.configuration_overrides #=> Types::ConfigurationOverrides
    #   resp.data.job_run.configuration_overrides.application_configuration #=> Array<Configuration>
    #   resp.data.job_run.configuration_overrides.application_configuration[0] #=> Types::Configuration
    #   resp.data.job_run.configuration_overrides.application_configuration[0].classification #=> String
    #   resp.data.job_run.configuration_overrides.application_configuration[0].properties #=> Hash<String, String>
    #   resp.data.job_run.configuration_overrides.application_configuration[0].properties['key'] #=> String
    #   resp.data.job_run.configuration_overrides.application_configuration[0].configurations #=> Array<Configuration>
    #   resp.data.job_run.configuration_overrides.monitoring_configuration #=> Types::MonitoringConfiguration
    #   resp.data.job_run.configuration_overrides.monitoring_configuration.s3_monitoring_configuration #=> Types::S3MonitoringConfiguration
    #   resp.data.job_run.configuration_overrides.monitoring_configuration.s3_monitoring_configuration.log_uri #=> String
    #   resp.data.job_run.configuration_overrides.monitoring_configuration.s3_monitoring_configuration.encryption_key_arn #=> String
    #   resp.data.job_run.configuration_overrides.monitoring_configuration.managed_persistence_monitoring_configuration #=> Types::ManagedPersistenceMonitoringConfiguration
    #   resp.data.job_run.configuration_overrides.monitoring_configuration.managed_persistence_monitoring_configuration.enabled #=> Boolean
    #   resp.data.job_run.configuration_overrides.monitoring_configuration.managed_persistence_monitoring_configuration.encryption_key_arn #=> String
    #   resp.data.job_run.job_driver #=> Types::JobDriver, one of [SparkSubmit, Hive]
    #   resp.data.job_run.job_driver.spark_submit #=> Types::SparkSubmit
    #   resp.data.job_run.job_driver.spark_submit.entry_point #=> String
    #   resp.data.job_run.job_driver.spark_submit.entry_point_arguments #=> Array<String>
    #   resp.data.job_run.job_driver.spark_submit.entry_point_arguments[0] #=> String
    #   resp.data.job_run.job_driver.spark_submit.spark_submit_parameters #=> String
    #   resp.data.job_run.job_driver.hive #=> Types::Hive
    #   resp.data.job_run.job_driver.hive.query #=> String
    #   resp.data.job_run.job_driver.hive.init_query_file #=> String
    #   resp.data.job_run.job_driver.hive.parameters #=> String
    #   resp.data.job_run.tags #=> Hash<String, String>
    #   resp.data.job_run.tags['key'] #=> String
    #   resp.data.job_run.total_resource_utilization #=> Types::TotalResourceUtilization
    #   resp.data.job_run.total_resource_utilization.v_cpu_hour #=> Float
    #   resp.data.job_run.total_resource_utilization.memory_gb_hour #=> Float
    #   resp.data.job_run.total_resource_utilization.storage_gb_hour #=> Float
    #   resp.data.job_run.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.job_run.network_configuration.subnet_ids #=> Array<String>
    #   resp.data.job_run.network_configuration.subnet_ids[0] #=> String
    #   resp.data.job_run.network_configuration.security_group_ids #=> Array<String>
    #   resp.data.job_run.network_configuration.security_group_ids[0] #=> String
    #   resp.data.job_run.total_execution_duration_seconds #=> Integer
    #
    def get_job_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetJobRunInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetJobRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetJobRun
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::GetJobRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetJobRun,
        stubs: @stubs,
        params_class: Params::GetJobRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_job_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists applications based on a set of parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of application results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of applications that can be listed.</p>
    #
    # @option params [Array<String>] :states
    #   <p>An optional filter for application states. Note that if this filter contains multiple states, the resulting list will be grouped by the state.</p>
    #
    # @return [Types::ListApplicationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     states: [
    #       'CREATING' # accepts ["CREATING", "CREATED", "STARTING", "STARTED", "STOPPING", "STOPPED", "TERMINATED"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationsOutput
    #   resp.data.applications #=> Array<ApplicationSummary>
    #   resp.data.applications[0] #=> Types::ApplicationSummary
    #   resp.data.applications[0].id #=> String
    #   resp.data.applications[0].name #=> String
    #   resp.data.applications[0].arn #=> String
    #   resp.data.applications[0].release_label #=> String
    #   resp.data.applications[0].type #=> String
    #   resp.data.applications[0].state #=> String, one of ["CREATING", "CREATED", "STARTING", "STARTED", "STOPPING", "STOPPED", "TERMINATED"]
    #   resp.data.applications[0].state_details #=> String
    #   resp.data.applications[0].created_at #=> Time
    #   resp.data.applications[0].updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_applications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApplicationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApplicationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApplications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListApplications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApplications,
        stubs: @stubs,
        params_class: Params::ListApplicationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_applications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists job runs based on a set of parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::ListJobRunsInput}.
    #
    # @option params [String] :application_id
    #   <p>The ID of the application for which to list the job run.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of job run results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of job runs that can be listed.</p>
    #
    # @option params [Time] :created_at_after
    #   <p>The lower bound of the option to filter by creation date and time.</p>
    #
    # @option params [Time] :created_at_before
    #   <p>The upper bound of the option to filter by creation date and time.</p>
    #
    # @option params [Array<String>] :states
    #   <p>An optional filter for job run states. Note that if this filter contains multiple states, the resulting list will be grouped by the state.</p>
    #
    # @return [Types::ListJobRunsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_job_runs(
    #     application_id: 'applicationId', # required
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     created_at_after: Time.now,
    #     created_at_before: Time.now,
    #     states: [
    #       'SUBMITTED' # accepts ["SUBMITTED", "PENDING", "SCHEDULED", "RUNNING", "SUCCESS", "FAILED", "CANCELLING", "CANCELLED"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJobRunsOutput
    #   resp.data.job_runs #=> Array<JobRunSummary>
    #   resp.data.job_runs[0] #=> Types::JobRunSummary
    #   resp.data.job_runs[0].application_id #=> String
    #   resp.data.job_runs[0].id #=> String
    #   resp.data.job_runs[0].name #=> String
    #   resp.data.job_runs[0].arn #=> String
    #   resp.data.job_runs[0].created_by #=> String
    #   resp.data.job_runs[0].created_at #=> Time
    #   resp.data.job_runs[0].updated_at #=> Time
    #   resp.data.job_runs[0].execution_role #=> String
    #   resp.data.job_runs[0].state #=> String, one of ["SUBMITTED", "PENDING", "SCHEDULED", "RUNNING", "SUCCESS", "FAILED", "CANCELLING", "CANCELLED"]
    #   resp.data.job_runs[0].state_details #=> String
    #   resp.data.job_runs[0].release_label #=> String
    #   resp.data.job_runs[0].type #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>Lists the tags assigned to the resources.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for. Currently, the supported resources are Amazon EMR Serverless applications and job runs.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
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

    # <p>Starts a specified application and initializes initial capacity if configured.</p>
    #
    # @param [Hash] params
    #   See {Types::StartApplicationInput}.
    #
    # @option params [String] :application_id
    #   <p>The ID of the application to start.</p>
    #
    # @return [Types::StartApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_application(
    #     application_id: 'applicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartApplicationOutput
    #
    def start_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::StartApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartApplication,
        stubs: @stubs,
        params_class: Params::StartApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a job run.</p>
    #
    # @param [Hash] params
    #   See {Types::StartJobRunInput}.
    #
    # @option params [String] :application_id
    #   <p>The ID of the application on which to run the job.</p>
    #
    # @option params [String] :client_token
    #   <p>The client idempotency token of the job run to start. Its value must be unique for each
    #            request.</p>
    #
    # @option params [String] :execution_role_arn
    #   <p>The execution role ARN for the job run.</p>
    #
    # @option params [JobDriver] :job_driver
    #   <p>The job driver for the job run.</p>
    #
    # @option params [ConfigurationOverrides] :configuration_overrides
    #   <p>The configuration overrides for the job run.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to the job run.</p>
    #
    # @option params [Integer] :execution_timeout_minutes
    #   <p>The maximum duration for the job run to run. If the job run runs beyond this duration, it will be automatically cancelled.</p>
    #
    # @option params [String] :name
    #   <p>The optional job run name. This doesn't have to be unique.</p>
    #
    # @return [Types::StartJobRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_job_run(
    #     application_id: 'applicationId', # required
    #     client_token: 'clientToken', # required
    #     execution_role_arn: 'executionRoleArn', # required
    #     job_driver: {
    #       # One of:
    #       spark_submit: {
    #         entry_point: 'entryPoint', # required
    #         entry_point_arguments: [
    #           'member'
    #         ],
    #         spark_submit_parameters: 'sparkSubmitParameters'
    #       },
    #       hive: {
    #         query: 'query', # required
    #         init_query_file: 'initQueryFile',
    #         parameters: 'parameters'
    #       }
    #     },
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
    #         s3_monitoring_configuration: {
    #           log_uri: 'logUri',
    #           encryption_key_arn: 'encryptionKeyArn'
    #         },
    #         managed_persistence_monitoring_configuration: {
    #           enabled: false,
    #           encryption_key_arn: 'encryptionKeyArn'
    #         }
    #       }
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     execution_timeout_minutes: 1,
    #     name: 'name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartJobRunOutput
    #   resp.data.application_id #=> String
    #   resp.data.job_run_id #=> String
    #   resp.data.arn #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ConflictException]),
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

    # <p>Stops a specified application and releases initial capacity if configured. All scheduled
    #          and running jobs must be completed or cancelled before stopping an application.</p>
    #
    # @param [Hash] params
    #   See {Types::StopApplicationInput}.
    #
    # @option params [String] :application_id
    #   <p>The ID of the application to stop.</p>
    #
    # @return [Types::StopApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_application(
    #     application_id: 'applicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopApplicationOutput
    #
    def stop_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::StopApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopApplication,
        stubs: @stubs,
        params_class: Params::StopApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns tags to resources. A tag is a label that you assign to an AWS resource. Each tag
    #          consists of a key and an optional value, both of which you define. Tags enable you to
    #          categorize your AWS resources by attributes such as purpose, owner, or environment. When
    #          you have many resources of the same type, you can quickly identify a specific resource
    #          based on the tags you've assigned to it. </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for. Currently, the supported resources are Amazon EMR Serverless applications and job runs.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
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
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for. Currently, the supported resources are Amazon EMR Serverless applications and job runs.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to be removed.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
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

    # <p>Updates a specified application. An application has to be in a stopped or created state
    #          in order to be updated.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApplicationInput}.
    #
    # @option params [String] :application_id
    #   <p>The ID of the application to update.</p>
    #
    # @option params [String] :client_token
    #   <p>The client idempotency token of the application to update. Its value must be unique for
    #            each request.</p>
    #
    # @option params [Hash<String, InitialCapacityConfig>] :initial_capacity
    #   <p>The capacity to initialize when the application is updated.</p>
    #
    # @option params [MaximumAllowedResources] :maximum_capacity
    #   <p>The maximum capacity to allocate when the application is updated. This is cumulative
    #            across all workers at any given point in time during the lifespan of the application. No
    #            new resources will be created once any one of the defined limits is hit.</p>
    #
    # @option params [AutoStartConfig] :auto_start_configuration
    #   <p>The configuration for an application to automatically start on job submission.</p>
    #
    # @option params [AutoStopConfig] :auto_stop_configuration
    #   <p>The configuration for an application to automatically stop after a certain amount of time being idle.</p>
    #
    # @option params [NetworkConfiguration] :network_configuration
    #   <p>The network configuration for customer VPC connectivity.</p>
    #
    # @return [Types::UpdateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application(
    #     application_id: 'applicationId', # required
    #     client_token: 'clientToken', # required
    #     initial_capacity: {
    #       'key' => {
    #         worker_count: 1, # required
    #         worker_configuration: {
    #           cpu: 'cpu', # required
    #           memory: 'memory', # required
    #           disk: 'disk'
    #         }
    #       }
    #     },
    #     maximum_capacity: {
    #       cpu: 'cpu', # required
    #       memory: 'memory', # required
    #       disk: 'disk'
    #     },
    #     auto_start_configuration: {
    #       enabled: false
    #     },
    #     auto_stop_configuration: {
    #       enabled: false,
    #       idle_timeout_minutes: 1
    #     },
    #     network_configuration: {
    #       subnet_ids: [
    #         'member'
    #       ],
    #       security_group_ids: [
    #         'member'
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApplicationOutput
    #   resp.data.application #=> Types::Application
    #   resp.data.application.application_id #=> String
    #   resp.data.application.name #=> String
    #   resp.data.application.arn #=> String
    #   resp.data.application.release_label #=> String
    #   resp.data.application.type #=> String
    #   resp.data.application.state #=> String, one of ["CREATING", "CREATED", "STARTING", "STARTED", "STOPPING", "STOPPED", "TERMINATED"]
    #   resp.data.application.state_details #=> String
    #   resp.data.application.initial_capacity #=> Hash<String, InitialCapacityConfig>
    #   resp.data.application.initial_capacity['key'] #=> Types::InitialCapacityConfig
    #   resp.data.application.initial_capacity['key'].worker_count #=> Integer
    #   resp.data.application.initial_capacity['key'].worker_configuration #=> Types::WorkerResourceConfig
    #   resp.data.application.initial_capacity['key'].worker_configuration.cpu #=> String
    #   resp.data.application.initial_capacity['key'].worker_configuration.memory #=> String
    #   resp.data.application.initial_capacity['key'].worker_configuration.disk #=> String
    #   resp.data.application.maximum_capacity #=> Types::MaximumAllowedResources
    #   resp.data.application.maximum_capacity.cpu #=> String
    #   resp.data.application.maximum_capacity.memory #=> String
    #   resp.data.application.maximum_capacity.disk #=> String
    #   resp.data.application.created_at #=> Time
    #   resp.data.application.updated_at #=> Time
    #   resp.data.application.tags #=> Hash<String, String>
    #   resp.data.application.tags['key'] #=> String
    #   resp.data.application.auto_start_configuration #=> Types::AutoStartConfig
    #   resp.data.application.auto_start_configuration.enabled #=> Boolean
    #   resp.data.application.auto_stop_configuration #=> Types::AutoStopConfig
    #   resp.data.application.auto_stop_configuration.enabled #=> Boolean
    #   resp.data.application.auto_stop_configuration.idle_timeout_minutes #=> Integer
    #   resp.data.application.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.application.network_configuration.subnet_ids #=> Array<String>
    #   resp.data.application.network_configuration.subnet_ids[0] #=> String
    #   resp.data.application.network_configuration.security_group_ids #=> Array<String>
    #   resp.data.application.network_configuration.security_group_ids[0] #=> String
    #
    def update_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::UpdateApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApplication,
        stubs: @stubs,
        params_class: Params::UpdateApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_application
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
