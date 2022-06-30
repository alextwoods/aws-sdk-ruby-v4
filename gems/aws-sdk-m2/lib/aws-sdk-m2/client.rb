# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::M2
  # An API client for AwsSupernovaControlPlaneService
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Web Services Mainframe Modernization provides tools and resources to help you plan and implement migration and
  #          modernization from mainframes to Amazon Web Services managed runtime environments. It provides tools for
  #          analyzing existing mainframe applications, developing or updating mainframe applications
  #          using COBOL or PL/I, and implementing an automated pipeline for continuous integration and
  #          continuous delivery (CI/CD) of the applications.</p>
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
    def initialize(config = AWS::SDK::M2::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Cancels the running of a specific batch job execution.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelBatchJobExecutionInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier of the application.</p>
    #
    # @option params [String] :execution_id
    #   <p>The unique identifier of the batch job execution.</p>
    #
    # @return [Types::CancelBatchJobExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_batch_job_execution(
    #     application_id: 'applicationId', # required
    #     execution_id: 'executionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelBatchJobExecutionOutput
    #
    def cancel_batch_job_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelBatchJobExecutionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelBatchJobExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelBatchJobExecution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::CancelBatchJobExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelBatchJobExecution,
        stubs: @stubs,
        params_class: Params::CancelBatchJobExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_batch_job_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new application with given parameters. Requires an existing environment and
    #          application definition file.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApplicationInput}.
    #
    # @option params [String] :name
    #   <p>The unique identifier of the application.</p>
    #
    # @option params [String] :description
    #   <p>The description of the application.</p>
    #
    # @option params [String] :engine_type
    #   <p>The type of the target platform for this application.</p>
    #
    # @option params [Definition] :definition
    #   <p>The application definition for this application. You can specify either inline JSON or
    #            an S3 bucket location.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags to apply to the application.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier the service generates to ensure the idempotency of the
    #            request to create an application. The service generates the clientToken when the API call
    #            is triggered. The token expires after one hour, so if you retry the API within this
    #            timeframe with the same clientToken, you will get the same response. The service also
    #            handles deleting the clientToken after it expires. </p>
    #
    # @return [Types::CreateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application(
    #     name: 'name', # required
    #     description: 'description',
    #     engine_type: 'microfocus', # required - accepts ["microfocus", "bluage"]
    #     definition: {
    #       # One of:
    #       s3_location: 's3Location',
    #       content: 'content'
    #     }, # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApplicationOutput
    #   resp.data.application_arn #=> String
    #   resp.data.application_id #=> String
    #   resp.data.application_version #=> Integer
    #
    def create_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApplicationInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ServiceQuotaExceededException, Errors::AccessDeniedException]),
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

    # <p>Starts a data set import task for a specific application.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDataSetImportTaskInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier of the application for which you want to import data sets.</p>
    #
    # @option params [DataSetImportConfig] :import_config
    #   <p>The data set import task configuration.</p>
    #
    # @option params [String] :client_token
    #   <p> Unique, case-sensitive identifier you provide to ensure the idempotency of the request
    #            to create a data set import. The service generates the clientToken when the API call is
    #            triggered. The token expires after one hour, so if you retry the API within this timeframe
    #            with the same clientToken, you will get the same response. The service also handles
    #            deleting the clientToken after it expires. </p>
    #
    # @return [Types::CreateDataSetImportTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_set_import_task(
    #     application_id: 'applicationId', # required
    #     import_config: {
    #       # One of:
    #       s3_location: 's3Location',
    #       data_sets: [
    #         {
    #           data_set: {
    #             storage_type: 'storageType',
    #             dataset_name: 'datasetName', # required
    #             dataset_org: {
    #               # One of:
    #               vsam: {
    #                 format: 'format', # required
    #                 encoding: 'encoding',
    #                 compressed: false,
    #                 primary_key: {
    #                   name: 'name',
    #                   offset: 1, # required
    #                   length: 1 # required
    #                 },
    #                 alternate_keys: [
    #                   {
    #                     name: 'name',
    #                     offset: 1, # required
    #                     length: 1, # required
    #                     allow_duplicates: false
    #                   }
    #                 ]
    #               },
    #               gdg: {
    #                 limit: 1,
    #                 roll_disposition: 'rollDisposition'
    #               }
    #             }, # required
    #             relative_path: 'relativePath',
    #             record_length: {
    #               min: 1, # required
    #               max: 1 # required
    #             } # required
    #           }, # required
    #           external_location: {
    #             # One of:
    #             s3_location: 's3Location'
    #           } # required
    #         }
    #       ]
    #     }, # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDataSetImportTaskOutput
    #   resp.data.task_id #=> String
    #
    def create_data_set_import_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDataSetImportTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDataSetImportTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataSetImportTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateDataSetImportTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataSetImportTask,
        stubs: @stubs,
        params_class: Params::CreateDataSetImportTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_data_set_import_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates and starts a deployment to deploy an application into an environment.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDeploymentInput}.
    #
    # @option params [String] :environment_id
    #   <p>The identifier of the environment where this application will be deployed.</p>
    #
    # @option params [String] :application_id
    #   <p>The application identifier.</p>
    #
    # @option params [Integer] :application_version
    #   <p>The version of the application to deploy.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the request
    #            to create a deployment. The service generates the clientToken when the API call is
    #            triggered. The token expires after one hour, so if you retry the API within this timeframe
    #            with the same clientToken, you will get the same response. The service also handles
    #            deleting the clientToken after it expires. </p>
    #
    # @return [Types::CreateDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment(
    #     environment_id: 'environmentId', # required
    #     application_id: 'applicationId', # required
    #     application_version: 1, # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDeploymentOutput
    #   resp.data.deployment_id #=> String
    #
    def create_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDeploymentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDeployment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDeployment,
        stubs: @stubs,
        params_class: Params::CreateDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a runtime environment for a given runtime engine.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEnvironmentInput}.
    #
    # @option params [String] :name
    #   <p>The unique identifier of the environment.</p>
    #
    # @option params [String] :instance_type
    #   <p>The type of instance for the environment.</p>
    #
    # @option params [String] :description
    #   <p>The description of the environment.</p>
    #
    # @option params [String] :engine_type
    #   <p>The engine type for the environment.</p>
    #
    # @option params [String] :engine_version
    #   <p>The version of the engine type for the environment.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>The list of subnets associated with the VPC for this environment.</p>
    #
    # @option params [Array<String>] :security_group_ids
    #   <p>The list of security groups for the VPC associated with this environment.</p>
    #
    # @option params [Array<StorageConfiguration>] :storage_configurations
    #   <p>Optional. The storage configurations for this environment.</p>
    #
    # @option params [Boolean] :publicly_accessible
    #   <p>Specifies whether the environment is publicly accessible.</p>
    #
    # @option params [HighAvailabilityConfig] :high_availability_config
    #   <p>The details of a high availability configuration for this runtime environment.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for the environment.</p>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>Configures a desired maintenance window for the environment. If you do not provide a
    #            value, a random system-generated value will be assigned.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the request
    #            to create an environment. The service generates the clientToken when the API call is
    #            triggered. The token expires after one hour, so if you retry the API within this timeframe
    #            with the same clientToken, you will get the same response. The service also handles
    #            deleting the clientToken after it expires. </p>
    #
    # @return [Types::CreateEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment(
    #     name: 'name', # required
    #     instance_type: 'instanceType', # required
    #     description: 'description',
    #     engine_type: 'microfocus', # required - accepts ["microfocus", "bluage"]
    #     engine_version: 'engineVersion',
    #     subnet_ids: [
    #       'member'
    #     ],
    #     storage_configurations: [
    #       {
    #         # One of:
    #         efs: {
    #           file_system_id: 'fileSystemId', # required
    #           mount_point: 'mountPoint' # required
    #         },
    #         fsx: {
    #           file_system_id: 'fileSystemId', # required
    #           mount_point: 'mountPoint' # required
    #         }
    #       }
    #     ],
    #     publicly_accessible: false,
    #     high_availability_config: {
    #       desired_capacity: 1 # required
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     preferred_maintenance_window: 'preferredMaintenanceWindow',
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEnvironmentOutput
    #   resp.data.environment_id #=> String
    #
    def create_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEnvironmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ServiceQuotaExceededException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEnvironment,
        stubs: @stubs,
        params_class: Params::CreateEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specific application. You cannot delete a running application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier of the application you want to delete.</p>
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException]),
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

    # <p>Deletes a specific application from a specified environment where it has been previously
    #          deployed. You cannot delete an environment using DeleteEnvironment, if any application has
    #          ever been deployed to it. This API removes the association of the application with the
    #          environment so you can delete the environment smoothly.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationFromEnvironmentInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier of the application you want to delete.</p>
    #
    # @option params [String] :environment_id
    #   <p>The unique identifier of the runtime environment where the application was previously
    #            deployed.</p>
    #
    # @return [Types::DeleteApplicationFromEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_from_environment(
    #     application_id: 'applicationId', # required
    #     environment_id: 'environmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApplicationFromEnvironmentOutput
    #
    def delete_application_from_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApplicationFromEnvironmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApplicationFromEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApplicationFromEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteApplicationFromEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApplicationFromEnvironment,
        stubs: @stubs,
        params_class: Params::DeleteApplicationFromEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_application_from_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specific environment. The environment cannot contain deployed applications. If
    #          it does, you must delete those applications before you delete the environment.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEnvironmentInput}.
    #
    # @option params [String] :environment_id
    #   <p>The unique identifier of the runtime environment you want to delete.</p>
    #
    # @return [Types::DeleteEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment(
    #     environment_id: 'environmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEnvironmentOutput
    #
    def delete_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEnvironmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEnvironment,
        stubs: @stubs,
        params_class: Params::DeleteEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the details of a specific application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApplicationInput}.
    #
    # @option params [String] :application_id
    #   <p>The identifier of the application.</p>
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
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.application_id #=> String
    #   resp.data.application_arn #=> String
    #   resp.data.status #=> String, one of ["Creating", "Created", "Available", "Ready", "Starting", "Running", "Stopping", "Stopped", "Failed", "Deleting"]
    #   resp.data.latest_version #=> Types::ApplicationVersionSummary
    #   resp.data.latest_version.application_version #=> Integer
    #   resp.data.latest_version.status #=> String, one of ["Creating", "Available", "Failed"]
    #   resp.data.latest_version.status_reason #=> String
    #   resp.data.latest_version.creation_time #=> Time
    #   resp.data.deployed_version #=> Types::DeployedVersionSummary
    #   resp.data.deployed_version.application_version #=> Integer
    #   resp.data.deployed_version.status #=> String, one of ["Deploying", "Succeeded", "Failed"]
    #   resp.data.deployed_version.status_reason #=> String
    #   resp.data.engine_type #=> String, one of ["microfocus", "bluage"]
    #   resp.data.log_groups #=> Array<LogGroupSummary>
    #   resp.data.log_groups[0] #=> Types::LogGroupSummary
    #   resp.data.log_groups[0].log_type #=> String
    #   resp.data.log_groups[0].log_group_name #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.last_start_time #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.environment_id #=> String
    #   resp.data.target_group_arns #=> Array<String>
    #   resp.data.target_group_arns[0] #=> String
    #   resp.data.listener_arns #=> Array<String>
    #   resp.data.listener_ports #=> Array<Integer>
    #   resp.data.listener_ports[0] #=> Integer
    #   resp.data.load_balancer_dns_name #=> String
    #   resp.data.status_reason #=> String
    #
    def get_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApplicationInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
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

    # <p>Returns details about a specific version of a specific application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApplicationVersionInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier of the application.</p>
    #
    # @option params [Integer] :application_version
    #   <p>The specific version of the application.</p>
    #
    # @return [Types::GetApplicationVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application_version(
    #     application_id: 'applicationId', # required
    #     application_version: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApplicationVersionOutput
    #   resp.data.name #=> String
    #   resp.data.application_version #=> Integer
    #   resp.data.description #=> String
    #   resp.data.definition_content #=> String
    #   resp.data.status #=> String, one of ["Creating", "Available", "Failed"]
    #   resp.data.creation_time #=> Time
    #   resp.data.status_reason #=> String
    #
    def get_application_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApplicationVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApplicationVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApplicationVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetApplicationVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApplicationVersion,
        stubs: @stubs,
        params_class: Params::GetApplicationVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_application_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the details of a specific batch job execution for a specific application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBatchJobExecutionInput}.
    #
    # @option params [String] :application_id
    #   <p>The identifier of the application.</p>
    #
    # @option params [String] :execution_id
    #   <p>The unique identifier of the batch job execution.</p>
    #
    # @return [Types::GetBatchJobExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_batch_job_execution(
    #     application_id: 'applicationId', # required
    #     execution_id: 'executionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBatchJobExecutionOutput
    #   resp.data.execution_id #=> String
    #   resp.data.application_id #=> String
    #   resp.data.job_id #=> String
    #   resp.data.job_name #=> String
    #   resp.data.job_user #=> String
    #   resp.data.job_type #=> String, one of ["VSE", "JES2", "JES3"]
    #   resp.data.status #=> String, one of ["Submitting", "Holding", "Dispatching", "Running", "Cancelling", "Cancelled", "Succeeded", "Failed", "Succeeded With Warning"]
    #   resp.data.start_time #=> Time
    #   resp.data.end_time #=> Time
    #   resp.data.status_reason #=> String
    #
    def get_batch_job_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBatchJobExecutionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBatchJobExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBatchJobExecution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetBatchJobExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBatchJobExecution,
        stubs: @stubs,
        params_class: Params::GetBatchJobExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_batch_job_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the details of a specific data set.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDataSetDetailsInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier of the application that this data set is associated with.</p>
    #
    # @option params [String] :data_set_name
    #   <p>The name of the data set.</p>
    #
    # @return [Types::GetDataSetDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_set_details(
    #     application_id: 'applicationId', # required
    #     data_set_name: 'dataSetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDataSetDetailsOutput
    #   resp.data.data_set_name #=> String
    #   resp.data.data_set_org #=> DatasetDetailOrgAttributes
    #   resp.data.record_length #=> Integer
    #   resp.data.location #=> String
    #   resp.data.blocksize #=> Integer
    #   resp.data.creation_time #=> Time
    #   resp.data.last_updated_time #=> Time
    #   resp.data.last_referenced_time #=> Time
    #
    def get_data_set_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDataSetDetailsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDataSetDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDataSetDetails
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetDataSetDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDataSetDetails,
        stubs: @stubs,
        params_class: Params::GetDataSetDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_data_set_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the status of a data set import task initiated with the <a>CreateDataSetImportTask</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDataSetImportTaskInput}.
    #
    # @option params [String] :application_id
    #   <p>The application identifier.</p>
    #
    # @option params [String] :task_id
    #   <p>The task identifier returned by the <a>CreateDataSetImportTask</a> operation.
    #         </p>
    #
    # @return [Types::GetDataSetImportTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_set_import_task(
    #     application_id: 'applicationId', # required
    #     task_id: 'taskId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDataSetImportTaskOutput
    #   resp.data.task_id #=> String
    #   resp.data.status #=> String, one of ["Creating", "Running", "Completed"]
    #   resp.data.summary #=> Types::DataSetImportSummary
    #   resp.data.summary.total #=> Integer
    #   resp.data.summary.succeeded #=> Integer
    #   resp.data.summary.failed #=> Integer
    #   resp.data.summary.pending #=> Integer
    #   resp.data.summary.in_progress #=> Integer
    #
    def get_data_set_import_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDataSetImportTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDataSetImportTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDataSetImportTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetDataSetImportTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDataSetImportTask,
        stubs: @stubs,
        params_class: Params::GetDataSetImportTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_data_set_import_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets details of a specific deployment with a given deployment identifier.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDeploymentInput}.
    #
    # @option params [String] :deployment_id
    #   <p>The unique identifier for the deployment.</p>
    #
    # @option params [String] :application_id
    #   <p>The unique identifier of the application.</p>
    #
    # @return [Types::GetDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment(
    #     deployment_id: 'deploymentId', # required
    #     application_id: 'applicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeploymentOutput
    #   resp.data.deployment_id #=> String
    #   resp.data.application_id #=> String
    #   resp.data.environment_id #=> String
    #   resp.data.application_version #=> Integer
    #   resp.data.status #=> String, one of ["Deploying", "Succeeded", "Failed"]
    #   resp.data.creation_time #=> Time
    #   resp.data.status_reason #=> String
    #
    def get_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeploymentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeployment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeployment,
        stubs: @stubs,
        params_class: Params::GetDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a specific runtime environment.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEnvironmentInput}.
    #
    # @option params [String] :environment_id
    #   <p>The unique identifier of the runtime environment.</p>
    #
    # @return [Types::GetEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment(
    #     environment_id: 'environmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEnvironmentOutput
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.environment_arn #=> String
    #   resp.data.environment_id #=> String
    #   resp.data.instance_type #=> String
    #   resp.data.status #=> String, one of ["Creating", "Available", "Deleting", "Failed"]
    #   resp.data.engine_type #=> String, one of ["microfocus", "bluage"]
    #   resp.data.engine_version #=> String
    #   resp.data.vpc_id #=> String
    #   resp.data.subnet_ids #=> Array<String>
    #   resp.data.subnet_ids[0] #=> String
    #   resp.data.security_group_ids #=> Array<String>
    #   resp.data.creation_time #=> Time
    #   resp.data.storage_configurations #=> Array<StorageConfiguration>
    #   resp.data.storage_configurations[0] #=> StorageConfiguration
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.high_availability_config #=> Types::HighAvailabilityConfig
    #   resp.data.high_availability_config.desired_capacity #=> Integer
    #   resp.data.publicly_accessible #=> Boolean
    #   resp.data.actual_capacity #=> Integer
    #   resp.data.load_balancer_arn #=> String
    #   resp.data.status_reason #=> String
    #   resp.data.preferred_maintenance_window #=> String
    #   resp.data.pending_maintenance #=> Types::PendingMaintenance
    #   resp.data.pending_maintenance.schedule #=> Types::MaintenanceSchedule
    #   resp.data.pending_maintenance.schedule.start_time #=> Time
    #   resp.data.pending_maintenance.schedule.end_time #=> Time
    #   resp.data.pending_maintenance.engine_version #=> String
    #
    def get_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEnvironmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEnvironment,
        stubs: @stubs,
        params_class: Params::GetEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the application versions for a specific application.</p>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationVersionsInput}.
    #
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the
    #     list, exclude this parameter.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of application versions to return.</p>
    #
    # @option params [String] :application_id
    #   <p>The unique identifier of the application.</p>
    #
    # @return [Types::ListApplicationVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_versions(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     application_id: 'applicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationVersionsOutput
    #   resp.data.application_versions #=> Array<ApplicationVersionSummary>
    #   resp.data.application_versions[0] #=> Types::ApplicationVersionSummary
    #   resp.data.application_versions[0].application_version #=> Integer
    #   resp.data.application_versions[0].status #=> String, one of ["Creating", "Available", "Failed"]
    #   resp.data.application_versions[0].status_reason #=> String
    #   resp.data.application_versions[0].creation_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_application_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApplicationVersionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApplicationVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApplicationVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListApplicationVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApplicationVersions,
        stubs: @stubs,
        params_class: Params::ListApplicationVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_application_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the applications associated with a specific Amazon Web Services account. You can provide the
    #          unique identifier of a specific environment in a query parameter to see all applications
    #          associated with that environment.</p>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationsInput}.
    #
    # @option params [String] :next_token
    #   <p>A pagination token to control the number of applications displayed in the list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of applications to return.</p>
    #
    # @option params [Array<String>] :names
    #   <p>The names of the applications.</p>
    #
    # @option params [String] :environment_id
    #   <p>The unique identifier of the runtime environment where the applications are
    #            deployed.</p>
    #
    # @return [Types::ListApplicationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     names: [
    #       'member'
    #     ],
    #     environment_id: 'environmentId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationsOutput
    #   resp.data.applications #=> Array<ApplicationSummary>
    #   resp.data.applications[0] #=> Types::ApplicationSummary
    #   resp.data.applications[0].name #=> String
    #   resp.data.applications[0].description #=> String
    #   resp.data.applications[0].application_id #=> String
    #   resp.data.applications[0].application_arn #=> String
    #   resp.data.applications[0].application_version #=> Integer
    #   resp.data.applications[0].status #=> String, one of ["Creating", "Created", "Available", "Ready", "Starting", "Running", "Stopping", "Stopped", "Failed", "Deleting"]
    #   resp.data.applications[0].engine_type #=> String, one of ["microfocus", "bluage"]
    #   resp.data.applications[0].creation_time #=> Time
    #   resp.data.applications[0].environment_id #=> String
    #   resp.data.applications[0].last_start_time #=> Time
    #   resp.data.applications[0].version_status #=> String, one of ["Creating", "Available", "Failed"]
    #   resp.data.applications[0].deployment_status #=> String, one of ["Deploying", "Deployed"]
    #   resp.data.next_token #=> String
    #
    def list_applications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApplicationsInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException]),
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

    # <p>Lists all the available batch job definitions based on the batch job resources uploaded
    #          during the application creation. The listed batch job definitions can then be used to start
    #          a batch job.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBatchJobDefinitionsInput}.
    #
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the
    #     list, exclude this parameter.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of batch job definitions to return.</p>
    #
    # @option params [String] :application_id
    #   <p>The identifier of the application.</p>
    #
    # @option params [String] :prefix
    #   <p>If the batch job definition is a FileBatchJobDefinition, the prefix allows you to search
    #            on the file names of FileBatchJobDefinitions.</p>
    #
    # @return [Types::ListBatchJobDefinitionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_batch_job_definitions(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     application_id: 'applicationId', # required
    #     prefix: 'prefix'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBatchJobDefinitionsOutput
    #   resp.data.batch_job_definitions #=> Array<BatchJobDefinition>
    #   resp.data.batch_job_definitions[0] #=> BatchJobDefinition
    #   resp.data.next_token #=> String
    #
    def list_batch_job_definitions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBatchJobDefinitionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBatchJobDefinitionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBatchJobDefinitions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListBatchJobDefinitions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBatchJobDefinitions,
        stubs: @stubs,
        params_class: Params::ListBatchJobDefinitionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_batch_job_definitions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists historical, current, and scheduled batch job executions for a specific
    #          application.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBatchJobExecutionsInput}.
    #
    # @option params [String] :next_token
    #   <p>A pagination token to control the number of batch job executions displayed in the
    #            list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of batch job executions to return.</p>
    #
    # @option params [String] :application_id
    #   <p>The unique identifier of the application.</p>
    #
    # @option params [Array<String>] :execution_ids
    #   <p>The unique identifier of each batch job execution.</p>
    #
    # @option params [String] :job_name
    #   <p>The name of each batch job execution.</p>
    #
    # @option params [String] :status
    #   <p>The status of the batch job executions.</p>
    #
    # @option params [Time] :started_after
    #   <p>The time after which the batch job executions started.</p>
    #
    # @option params [Time] :started_before
    #   <p>The time before the batch job executions started.</p>
    #
    # @return [Types::ListBatchJobExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_batch_job_executions(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     application_id: 'applicationId', # required
    #     execution_ids: [
    #       'member'
    #     ],
    #     job_name: 'jobName',
    #     status: 'Submitting', # accepts ["Submitting", "Holding", "Dispatching", "Running", "Cancelling", "Cancelled", "Succeeded", "Failed", "Succeeded With Warning"]
    #     started_after: Time.now,
    #     started_before: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBatchJobExecutionsOutput
    #   resp.data.batch_job_executions #=> Array<BatchJobExecutionSummary>
    #   resp.data.batch_job_executions[0] #=> Types::BatchJobExecutionSummary
    #   resp.data.batch_job_executions[0].execution_id #=> String
    #   resp.data.batch_job_executions[0].application_id #=> String
    #   resp.data.batch_job_executions[0].job_id #=> String
    #   resp.data.batch_job_executions[0].job_name #=> String
    #   resp.data.batch_job_executions[0].job_type #=> String, one of ["VSE", "JES2", "JES3"]
    #   resp.data.batch_job_executions[0].status #=> String, one of ["Submitting", "Holding", "Dispatching", "Running", "Cancelling", "Cancelled", "Succeeded", "Failed", "Succeeded With Warning"]
    #   resp.data.batch_job_executions[0].start_time #=> Time
    #   resp.data.batch_job_executions[0].end_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_batch_job_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBatchJobExecutionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBatchJobExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBatchJobExecutions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListBatchJobExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBatchJobExecutions,
        stubs: @stubs,
        params_class: Params::ListBatchJobExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_batch_job_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the data set imports for the specified application.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDataSetImportHistoryInput}.
    #
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the
    #     list, exclude this parameter.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return.</p>
    #
    # @option params [String] :application_id
    #   <p>The unique identifier of the application.</p>
    #
    # @return [Types::ListDataSetImportHistoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_set_import_history(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     application_id: 'applicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDataSetImportHistoryOutput
    #   resp.data.data_set_import_tasks #=> Array<DataSetImportTask>
    #   resp.data.data_set_import_tasks[0] #=> Types::DataSetImportTask
    #   resp.data.data_set_import_tasks[0].task_id #=> String
    #   resp.data.data_set_import_tasks[0].status #=> String, one of ["Creating", "Running", "Completed"]
    #   resp.data.data_set_import_tasks[0].summary #=> Types::DataSetImportSummary
    #   resp.data.data_set_import_tasks[0].summary.total #=> Integer
    #   resp.data.data_set_import_tasks[0].summary.succeeded #=> Integer
    #   resp.data.data_set_import_tasks[0].summary.failed #=> Integer
    #   resp.data.data_set_import_tasks[0].summary.pending #=> Integer
    #   resp.data.data_set_import_tasks[0].summary.in_progress #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_data_set_import_history(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDataSetImportHistoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDataSetImportHistoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDataSetImportHistory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListDataSetImportHistory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDataSetImportHistory,
        stubs: @stubs,
        params_class: Params::ListDataSetImportHistoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_data_set_import_history
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the data sets imported for a specific application. In Amazon Web Services Mainframe Modernization, data sets are
    #          associated with applications deployed on environments. This is known as importing data
    #          sets. Currently, Amazon Web Services Mainframe Modernization can import data sets into catalogs using <a href="https://docs.aws.amazon.com/m2/latest/APIReference/API_CreateDataSetImportTask.html">CreateDataSetImportTask</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDataSetsInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier of the application for which you want to list the associated data
    #            sets.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the
    #     list, exclude this parameter.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return.</p>
    #
    # @option params [String] :prefix
    #   <p>The prefix of the data set name, which you can use to filter the list of data
    #            sets.</p>
    #
    # @return [Types::ListDataSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sets(
    #     application_id: 'applicationId', # required
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     prefix: 'prefix'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDataSetsOutput
    #   resp.data.data_sets #=> Array<DataSetSummary>
    #   resp.data.data_sets[0] #=> Types::DataSetSummary
    #   resp.data.data_sets[0].data_set_name #=> String
    #   resp.data.data_sets[0].data_set_org #=> String
    #   resp.data.data_sets[0].format #=> String
    #   resp.data.data_sets[0].creation_time #=> Time
    #   resp.data.data_sets[0].last_updated_time #=> Time
    #   resp.data.data_sets[0].last_referenced_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_data_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDataSetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDataSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDataSets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListDataSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDataSets,
        stubs: @stubs,
        params_class: Params::ListDataSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_data_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all deployments of a specific application. A deployment is a
    #          combination of a specific application and a specific version of that application. Each
    #          deployment is mapped to a particular application version.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDeploymentsInput}.
    #
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the
    #     list, exclude this parameter.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return.</p>
    #
    # @option params [String] :application_id
    #   <p>The application identifier.</p>
    #
    # @return [Types::ListDeploymentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployments(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     application_id: 'applicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDeploymentsOutput
    #   resp.data.deployments #=> Array<DeploymentSummary>
    #   resp.data.deployments[0] #=> Types::DeploymentSummary
    #   resp.data.deployments[0].deployment_id #=> String
    #   resp.data.deployments[0].application_id #=> String
    #   resp.data.deployments[0].environment_id #=> String
    #   resp.data.deployments[0].application_version #=> Integer
    #   resp.data.deployments[0].status #=> String, one of ["Deploying", "Succeeded", "Failed"]
    #   resp.data.deployments[0].creation_time #=> Time
    #   resp.data.deployments[0].status_reason #=> String
    #   resp.data.next_token #=> String
    #
    def list_deployments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDeploymentsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDeploymentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDeployments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListDeployments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDeployments,
        stubs: @stubs,
        params_class: Params::ListDeploymentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_deployments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the available engine versions.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEngineVersionsInput}.
    #
    # @option params [String] :engine_type
    #   <p>The type of target platform.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the
    #     list, exclude this parameter.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return.</p>
    #
    # @return [Types::ListEngineVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_engine_versions(
    #     engine_type: 'microfocus', # accepts ["microfocus", "bluage"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEngineVersionsOutput
    #   resp.data.engine_versions #=> Array<EngineVersionsSummary>
    #   resp.data.engine_versions[0] #=> Types::EngineVersionsSummary
    #   resp.data.engine_versions[0].engine_type #=> String
    #   resp.data.engine_versions[0].engine_version #=> String
    #   resp.data.next_token #=> String
    #
    def list_engine_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEngineVersionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEngineVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEngineVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListEngineVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEngineVersions,
        stubs: @stubs,
        params_class: Params::ListEngineVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_engine_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the runtime environments.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEnvironmentsInput}.
    #
    # @option params [String] :next_token
    #   <p>A pagination token to control the number of environments displayed in the list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of environments to return.</p>
    #
    # @option params [Array<String>] :names
    #   <p>The name of the environment.</p>
    #
    # @option params [String] :engine_type
    #   <p>The engine type for the environment.</p>
    #
    # @return [Types::ListEnvironmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     names: [
    #       'member'
    #     ],
    #     engine_type: 'microfocus' # accepts ["microfocus", "bluage"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEnvironmentsOutput
    #   resp.data.environments #=> Array<EnvironmentSummary>
    #   resp.data.environments[0] #=> Types::EnvironmentSummary
    #   resp.data.environments[0].name #=> String
    #   resp.data.environments[0].environment_arn #=> String
    #   resp.data.environments[0].environment_id #=> String
    #   resp.data.environments[0].instance_type #=> String
    #   resp.data.environments[0].status #=> String, one of ["Creating", "Available", "Deleting", "Failed"]
    #   resp.data.environments[0].engine_type #=> String, one of ["microfocus", "bluage"]
    #   resp.data.environments[0].engine_version #=> String
    #   resp.data.environments[0].creation_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_environments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEnvironmentsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEnvironmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEnvironments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListEnvironments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEnvironments,
        stubs: @stubs,
        params_class: Params::ListEnvironmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_environments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags for the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
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

    # <p>Starts an application that is currently stopped.</p>
    #
    # @param [Hash] params
    #   See {Types::StartApplicationInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier of the application you want to start.</p>
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
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

    # <p>Starts a batch job and returns the unique identifier of this execution of the batch job.
    #          The associated application must be running in order to start the batch job.</p>
    #
    # @param [Hash] params
    #   See {Types::StartBatchJobInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier of the application associated with this batch job.</p>
    #
    # @option params [BatchJobIdentifier] :batch_job_identifier
    #   <p>The unique identifier of the batch job.</p>
    #
    # @option params [Hash<String, String>] :job_params
    #   <p>The collection of batch job parameters. For details about limits for keys and values,
    #            see <a href="https://www.ibm.com/docs/en/workload-automation/9.3.0?topic=zos-coding-variables-in-jcl">Coding variables in JCL</a>.</p>
    #
    # @return [Types::StartBatchJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_batch_job(
    #     application_id: 'applicationId', # required
    #     batch_job_identifier: {
    #       # One of:
    #       file_batch_job_identifier: {
    #         file_name: 'fileName', # required
    #         folder_path: 'folderPath'
    #       },
    #       script_batch_job_identifier: {
    #         script_name: 'scriptName' # required
    #       }
    #     }, # required
    #     job_params: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartBatchJobOutput
    #   resp.data.execution_id #=> String
    #
    def start_batch_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartBatchJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartBatchJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartBatchJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::StartBatchJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartBatchJob,
        stubs: @stubs,
        params_class: Params::StartBatchJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_batch_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a running application.</p>
    #
    # @param [Hash] params
    #   See {Types::StopApplicationInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier of the application you want to stop.</p>
    #
    # @option params [Boolean] :force_stop
    #   <p>Stopping an application process can take a long time. Setting this parameter to true
    #            lets you force stop the application so you don't need to wait until the process finishes to
    #            apply another action on the application. The default value is false.</p>
    #
    # @return [Types::StopApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_application(
    #     application_id: 'applicationId', # required
    #     force_stop: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopApplicationOutput
    #
    def stop_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopApplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
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

    # <p>Adds one or more tags to the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource.</p>
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
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

    # <p>Removes one or more tags from the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to remove.</p>
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
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

    # <p>Updates an application and creates a new version.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApplicationInput}.
    #
    # @option params [String] :application_id
    #   <p>The unique identifier of the application you want to update.</p>
    #
    # @option params [String] :description
    #   <p>The description of the application to update.</p>
    #
    # @option params [Integer] :current_application_version
    #   <p>The current version of the application to update.</p>
    #
    # @option params [Definition] :definition
    #   <p>The application definition for this application. You can specify either inline JSON or
    #            an S3 bucket location.</p>
    #
    # @return [Types::UpdateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application(
    #     application_id: 'applicationId', # required
    #     description: 'description',
    #     current_application_version: 1, # required
    #     definition: {
    #       # One of:
    #       s3_location: 's3Location',
    #       content: 'content'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApplicationOutput
    #   resp.data.application_version #=> Integer
    #
    def update_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApplicationInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
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

    # <p>Updates the configuration details for a specific environment.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEnvironmentInput}.
    #
    # @option params [String] :environment_id
    #   <p>The unique identifier of the runtime environment that you want to update.</p>
    #
    # @option params [Integer] :desired_capacity
    #   <p>The desired capacity for the environment to update.</p>
    #
    # @option params [String] :instance_type
    #   <p>The instance type for the environment to update.</p>
    #
    # @option params [String] :engine_version
    #   <p>The version of the runtime engine for the environment.</p>
    #
    # @option params [String] :preferred_maintenance_window
    #   <p>Configures a desired maintenance window for the environment. If you do not provide a
    #            value, a random system-generated value will be assigned.</p>
    #
    # @option params [Boolean] :apply_during_maintenance_window
    #   <p>Indicates whether to update the environment during the maintenance window. The default
    #            is false. Currently, Amazon Web Services Mainframe Modernization accepts the <code>engineVersion</code> parameter only if
    #               <code>applyDuringMaintenanceWindow</code> is true. If any parameter other than
    #               <code>engineVersion</code> is provided in <code>UpdateEnvironmentRequest</code>, it will
    #            fail if <code>applyDuringMaintenanceWindow</code> is set to true.</p>
    #
    # @return [Types::UpdateEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment(
    #     environment_id: 'environmentId', # required
    #     desired_capacity: 1,
    #     instance_type: 'instanceType',
    #     engine_version: 'engineVersion',
    #     preferred_maintenance_window: 'preferredMaintenanceWindow',
    #     apply_during_maintenance_window: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEnvironmentOutput
    #   resp.data.environment_id #=> String
    #
    def update_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEnvironmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEnvironment,
        stubs: @stubs,
        params_class: Params::UpdateEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_environment
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
