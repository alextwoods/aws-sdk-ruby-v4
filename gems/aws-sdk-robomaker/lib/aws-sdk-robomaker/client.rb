# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::RoboMaker
  # An API client for robomaker
  # See {#initialize} for a full list of supported configuration options
  # <p>This section provides documentation for the AWS RoboMaker API operations.</p>
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
    def initialize(config = AWS::SDK::RoboMaker::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Deletes one or more worlds in a batch operation.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDeleteWorldsInput}.
    #
    # @option params [Array<String>] :worlds
    #   <p>A list of Amazon Resource Names (arns) that correspond to worlds to delete.</p>
    #
    # @return [Types::BatchDeleteWorldsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_worlds(
    #     worlds: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDeleteWorldsOutput
    #   resp.data.unprocessed_worlds #=> Array<String>
    #   resp.data.unprocessed_worlds[0] #=> String
    #
    def batch_delete_worlds(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDeleteWorldsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDeleteWorldsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDeleteWorlds
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ThrottlingException]),
        data_parser: Parsers::BatchDeleteWorlds
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDeleteWorlds,
        stubs: @stubs,
        params_class: Params::BatchDeleteWorldsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_delete_worlds
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes one or more simulation jobs.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDescribeSimulationJobInput}.
    #
    # @option params [Array<String>] :jobs
    #   <p>A list of Amazon Resource Names (ARNs) of simulation jobs to describe.</p>
    #
    # @return [Types::BatchDescribeSimulationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_describe_simulation_job(
    #     jobs: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDescribeSimulationJobOutput
    #   resp.data.jobs #=> Array<SimulationJob>
    #   resp.data.jobs[0] #=> Types::SimulationJob
    #   resp.data.jobs[0].arn #=> String
    #   resp.data.jobs[0].name #=> String
    #   resp.data.jobs[0].status #=> String, one of ["Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"]
    #   resp.data.jobs[0].last_started_at #=> Time
    #   resp.data.jobs[0].last_updated_at #=> Time
    #   resp.data.jobs[0].failure_behavior #=> String, one of ["Fail", "Continue"]
    #   resp.data.jobs[0].failure_code #=> String, one of ["InternalServiceError", "RobotApplicationCrash", "SimulationApplicationCrash", "RobotApplicationHealthCheckFailure", "SimulationApplicationHealthCheckFailure", "BadPermissionsRobotApplication", "BadPermissionsSimulationApplication", "BadPermissionsS3Object", "BadPermissionsS3Output", "BadPermissionsCloudwatchLogs", "SubnetIpLimitExceeded", "ENILimitExceeded", "BadPermissionsUserCredentials", "InvalidBundleRobotApplication", "InvalidBundleSimulationApplication", "InvalidS3Resource", "ThrottlingError", "LimitExceeded", "MismatchedEtag", "RobotApplicationVersionMismatchedEtag", "SimulationApplicationVersionMismatchedEtag", "ResourceNotFound", "RequestThrottled", "BatchTimedOut", "BatchCanceled", "InvalidInput", "WrongRegionS3Bucket", "WrongRegionS3Output", "WrongRegionRobotApplication", "WrongRegionSimulationApplication", "UploadContentMismatchError"]
    #   resp.data.jobs[0].failure_reason #=> String
    #   resp.data.jobs[0].client_request_token #=> String
    #   resp.data.jobs[0].output_location #=> Types::OutputLocation
    #   resp.data.jobs[0].output_location.s3_bucket #=> String
    #   resp.data.jobs[0].output_location.s3_prefix #=> String
    #   resp.data.jobs[0].logging_config #=> Types::LoggingConfig
    #   resp.data.jobs[0].logging_config.record_all_ros_topics #=> Boolean
    #   resp.data.jobs[0].max_job_duration_in_seconds #=> Integer
    #   resp.data.jobs[0].simulation_time_millis #=> Integer
    #   resp.data.jobs[0].iam_role #=> String
    #   resp.data.jobs[0].robot_applications #=> Array<RobotApplicationConfig>
    #   resp.data.jobs[0].robot_applications[0] #=> Types::RobotApplicationConfig
    #   resp.data.jobs[0].robot_applications[0].application #=> String
    #   resp.data.jobs[0].robot_applications[0].application_version #=> String
    #   resp.data.jobs[0].robot_applications[0].launch_config #=> Types::LaunchConfig
    #   resp.data.jobs[0].robot_applications[0].launch_config.package_name #=> String
    #   resp.data.jobs[0].robot_applications[0].launch_config.launch_file #=> String
    #   resp.data.jobs[0].robot_applications[0].launch_config.environment_variables #=> Hash<String, String>
    #   resp.data.jobs[0].robot_applications[0].launch_config.environment_variables['key'] #=> String
    #   resp.data.jobs[0].robot_applications[0].launch_config.port_forwarding_config #=> Types::PortForwardingConfig
    #   resp.data.jobs[0].robot_applications[0].launch_config.port_forwarding_config.port_mappings #=> Array<PortMapping>
    #   resp.data.jobs[0].robot_applications[0].launch_config.port_forwarding_config.port_mappings[0] #=> Types::PortMapping
    #   resp.data.jobs[0].robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].job_port #=> Integer
    #   resp.data.jobs[0].robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].application_port #=> Integer
    #   resp.data.jobs[0].robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].enable_on_public_ip #=> Boolean
    #   resp.data.jobs[0].robot_applications[0].launch_config.stream_ui #=> Boolean
    #   resp.data.jobs[0].robot_applications[0].launch_config.command #=> Array<String>
    #   resp.data.jobs[0].robot_applications[0].launch_config.command[0] #=> String
    #   resp.data.jobs[0].robot_applications[0].upload_configurations #=> Array<UploadConfiguration>
    #   resp.data.jobs[0].robot_applications[0].upload_configurations[0] #=> Types::UploadConfiguration
    #   resp.data.jobs[0].robot_applications[0].upload_configurations[0].name #=> String
    #   resp.data.jobs[0].robot_applications[0].upload_configurations[0].path #=> String
    #   resp.data.jobs[0].robot_applications[0].upload_configurations[0].upload_behavior #=> String, one of ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"]
    #   resp.data.jobs[0].robot_applications[0].use_default_upload_configurations #=> Boolean
    #   resp.data.jobs[0].robot_applications[0].tools #=> Array<Tool>
    #   resp.data.jobs[0].robot_applications[0].tools[0] #=> Types::Tool
    #   resp.data.jobs[0].robot_applications[0].tools[0].stream_ui #=> Boolean
    #   resp.data.jobs[0].robot_applications[0].tools[0].name #=> String
    #   resp.data.jobs[0].robot_applications[0].tools[0].command #=> String
    #   resp.data.jobs[0].robot_applications[0].tools[0].stream_output_to_cloud_watch #=> Boolean
    #   resp.data.jobs[0].robot_applications[0].tools[0].exit_behavior #=> String, one of ["FAIL", "RESTART"]
    #   resp.data.jobs[0].robot_applications[0].use_default_tools #=> Boolean
    #   resp.data.jobs[0].simulation_applications #=> Array<SimulationApplicationConfig>
    #   resp.data.jobs[0].simulation_applications[0] #=> Types::SimulationApplicationConfig
    #   resp.data.jobs[0].simulation_applications[0].application #=> String
    #   resp.data.jobs[0].simulation_applications[0].application_version #=> String
    #   resp.data.jobs[0].simulation_applications[0].launch_config #=> Types::LaunchConfig
    #   resp.data.jobs[0].simulation_applications[0].upload_configurations #=> Array<UploadConfiguration>
    #   resp.data.jobs[0].simulation_applications[0].world_configs #=> Array<WorldConfig>
    #   resp.data.jobs[0].simulation_applications[0].world_configs[0] #=> Types::WorldConfig
    #   resp.data.jobs[0].simulation_applications[0].world_configs[0].world #=> String
    #   resp.data.jobs[0].simulation_applications[0].use_default_upload_configurations #=> Boolean
    #   resp.data.jobs[0].simulation_applications[0].tools #=> Array<Tool>
    #   resp.data.jobs[0].simulation_applications[0].use_default_tools #=> Boolean
    #   resp.data.jobs[0].data_sources #=> Array<DataSource>
    #   resp.data.jobs[0].data_sources[0] #=> Types::DataSource
    #   resp.data.jobs[0].data_sources[0].name #=> String
    #   resp.data.jobs[0].data_sources[0].s3_bucket #=> String
    #   resp.data.jobs[0].data_sources[0].s3_keys #=> Array<S3KeyOutput>
    #   resp.data.jobs[0].data_sources[0].s3_keys[0] #=> Types::S3KeyOutput
    #   resp.data.jobs[0].data_sources[0].s3_keys[0].s3_key #=> String
    #   resp.data.jobs[0].data_sources[0].s3_keys[0].etag #=> String
    #   resp.data.jobs[0].data_sources[0].type #=> String, one of ["Prefix", "Archive", "File"]
    #   resp.data.jobs[0].data_sources[0].destination #=> String
    #   resp.data.jobs[0].tags #=> Hash<String, String>
    #   resp.data.jobs[0].tags['key'] #=> String
    #   resp.data.jobs[0].vpc_config #=> Types::VPCConfigResponse
    #   resp.data.jobs[0].vpc_config.subnets #=> Array<String>
    #   resp.data.jobs[0].vpc_config.subnets[0] #=> String
    #   resp.data.jobs[0].vpc_config.security_groups #=> Array<String>
    #   resp.data.jobs[0].vpc_config.security_groups[0] #=> String
    #   resp.data.jobs[0].vpc_config.vpc_id #=> String
    #   resp.data.jobs[0].vpc_config.assign_public_ip #=> Boolean
    #   resp.data.jobs[0].network_interface #=> Types::NetworkInterface
    #   resp.data.jobs[0].network_interface.network_interface_id #=> String
    #   resp.data.jobs[0].network_interface.private_ip_address #=> String
    #   resp.data.jobs[0].network_interface.public_ip_address #=> String
    #   resp.data.jobs[0].compute #=> Types::ComputeResponse
    #   resp.data.jobs[0].compute.simulation_unit_limit #=> Integer
    #   resp.data.jobs[0].compute.compute_type #=> String, one of ["CPU", "GPU_AND_CPU"]
    #   resp.data.jobs[0].compute.gpu_unit_limit #=> Integer
    #   resp.data.unprocessed_jobs #=> Array<String>
    #   resp.data.unprocessed_jobs[0] #=> String
    #
    def batch_describe_simulation_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDescribeSimulationJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDescribeSimulationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDescribeSimulationJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::BatchDescribeSimulationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDescribeSimulationJob,
        stubs: @stubs,
        params_class: Params::BatchDescribeSimulationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_describe_simulation_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels the specified deployment job.</p>
    #          <important>
    #             <p>This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.</p>
    #          </important>
    #
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @param [Hash] params
    #   See {Types::CancelDeploymentJobInput}.
    #
    # @option params [String] :job
    #   <p>The deployment job ARN to cancel.</p>
    #
    # @return [Types::CancelDeploymentJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_deployment_job(
    #     job: 'job' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelDeploymentJobOutput
    #
    def cancel_deployment_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelDeploymentJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelDeploymentJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelDeploymentJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CancelDeploymentJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelDeploymentJob,
        stubs: @stubs,
        params_class: Params::CancelDeploymentJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_deployment_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels the specified simulation job.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelSimulationJobInput}.
    #
    # @option params [String] :job
    #   <p>The simulation job ARN to cancel.</p>
    #
    # @return [Types::CancelSimulationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_simulation_job(
    #     job: 'job' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelSimulationJobOutput
    #
    def cancel_simulation_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelSimulationJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelSimulationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelSimulationJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CancelSimulationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelSimulationJob,
        stubs: @stubs,
        params_class: Params::CancelSimulationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_simulation_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels a simulation job batch. When you cancel a simulation job batch, you are also
    #          cancelling all of the active simulation jobs created as part of the batch. </p>
    #
    # @param [Hash] params
    #   See {Types::CancelSimulationJobBatchInput}.
    #
    # @option params [String] :batch
    #   <p>The id of the batch to cancel.</p>
    #
    # @return [Types::CancelSimulationJobBatchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_simulation_job_batch(
    #     batch: 'batch' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelSimulationJobBatchOutput
    #
    def cancel_simulation_job_batch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelSimulationJobBatchInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelSimulationJobBatchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelSimulationJobBatch
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CancelSimulationJobBatch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelSimulationJobBatch,
        stubs: @stubs,
        params_class: Params::CancelSimulationJobBatchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_simulation_job_batch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels the specified export job.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelWorldExportJobInput}.
    #
    # @option params [String] :job
    #   <p>The Amazon Resource Name (arn) of the world export job to cancel.</p>
    #
    # @return [Types::CancelWorldExportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_world_export_job(
    #     job: 'job' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelWorldExportJobOutput
    #
    def cancel_world_export_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelWorldExportJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelWorldExportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelWorldExportJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CancelWorldExportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelWorldExportJob,
        stubs: @stubs,
        params_class: Params::CancelWorldExportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_world_export_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels the specified world generator job.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelWorldGenerationJobInput}.
    #
    # @option params [String] :job
    #   <p>The Amazon Resource Name (arn) of the world generator job to cancel.</p>
    #
    # @return [Types::CancelWorldGenerationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_world_generation_job(
    #     job: 'job' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelWorldGenerationJobOutput
    #
    def cancel_world_generation_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelWorldGenerationJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelWorldGenerationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelWorldGenerationJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CancelWorldGenerationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelWorldGenerationJob,
        stubs: @stubs,
        params_class: Params::CancelWorldGenerationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_world_generation_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deploys a specific version of a robot application to robots in a fleet.</p>
    #          <important>
    #             <p>This API is no longer supported and will throw an error if used.</p>
    #          </important>
    #          <p>The robot application must have a numbered <code>applicationVersion</code> for
    #          consistency reasons. To create a new version, use
    #             <code>CreateRobotApplicationVersion</code> or see <a href="https://docs.aws.amazon.com/robomaker/latest/dg/create-robot-application-version.html">Creating a Robot Application Version</a>. </p>
    #          <note>
    #             <p>After 90 days, deployment jobs expire and will be deleted. They will no longer be
    #             accessible. </p>
    #          </note>
    #
    # @deprecated
    #   AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @param [Hash] params
    #   See {Types::CreateDeploymentJobInput}.
    #
    # @option params [DeploymentConfig] :deployment_config
    #   <p>The requested deployment configuration.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    # @option params [String] :fleet
    #   <p>The Amazon Resource Name (ARN) of the fleet to deploy.</p>
    #
    # @option params [Array<DeploymentApplicationConfig>] :deployment_application_configs
    #   <p>The deployment application configuration.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the deployment
    #            job.</p>
    #
    # @return [Types::CreateDeploymentJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment_job(
    #     deployment_config: {
    #       concurrent_deployment_percentage: 1,
    #       failure_threshold_percentage: 1,
    #       robot_deployment_timeout_in_seconds: 1,
    #       download_condition_file: {
    #         bucket: 'bucket', # required
    #         key: 'key', # required
    #         etag: 'etag'
    #       }
    #     },
    #     client_request_token: 'clientRequestToken', # required
    #     fleet: 'fleet', # required
    #     deployment_application_configs: [
    #       {
    #         application: 'application', # required
    #         application_version: 'applicationVersion', # required
    #         launch_config: {
    #           package_name: 'packageName', # required
    #           pre_launch_file: 'preLaunchFile',
    #           launch_file: 'launchFile', # required
    #           post_launch_file: 'postLaunchFile',
    #           environment_variables: {
    #             'key' => 'value'
    #           }
    #         } # required
    #       }
    #     ], # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDeploymentJobOutput
    #   resp.data.arn #=> String
    #   resp.data.fleet #=> String
    #   resp.data.status #=> String, one of ["Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"]
    #   resp.data.deployment_application_configs #=> Array<DeploymentApplicationConfig>
    #   resp.data.deployment_application_configs[0] #=> Types::DeploymentApplicationConfig
    #   resp.data.deployment_application_configs[0].application #=> String
    #   resp.data.deployment_application_configs[0].application_version #=> String
    #   resp.data.deployment_application_configs[0].launch_config #=> Types::DeploymentLaunchConfig
    #   resp.data.deployment_application_configs[0].launch_config.package_name #=> String
    #   resp.data.deployment_application_configs[0].launch_config.pre_launch_file #=> String
    #   resp.data.deployment_application_configs[0].launch_config.launch_file #=> String
    #   resp.data.deployment_application_configs[0].launch_config.post_launch_file #=> String
    #   resp.data.deployment_application_configs[0].launch_config.environment_variables #=> Hash<String, String>
    #   resp.data.deployment_application_configs[0].launch_config.environment_variables['key'] #=> String
    #   resp.data.failure_reason #=> String
    #   resp.data.failure_code #=> String, one of ["ResourceNotFound", "EnvironmentSetupError", "EtagMismatch", "FailureThresholdBreached", "RobotDeploymentAborted", "RobotDeploymentNoResponse", "RobotAgentConnectionTimeout", "GreengrassDeploymentFailed", "InvalidGreengrassGroup", "MissingRobotArchitecture", "MissingRobotApplicationArchitecture", "MissingRobotDeploymentResource", "GreengrassGroupVersionDoesNotExist", "LambdaDeleted", "ExtractingBundleFailure", "PreLaunchFileFailure", "PostLaunchFileFailure", "BadPermissionError", "DownloadConditionFailed", "BadLambdaAssociated", "InternalServerError", "RobotApplicationDoesNotExist", "DeploymentFleetDoesNotExist", "FleetDeploymentTimeout"]
    #   resp.data.created_at #=> Time
    #   resp.data.deployment_config #=> Types::DeploymentConfig
    #   resp.data.deployment_config.concurrent_deployment_percentage #=> Integer
    #   resp.data.deployment_config.failure_threshold_percentage #=> Integer
    #   resp.data.deployment_config.robot_deployment_timeout_in_seconds #=> Integer
    #   resp.data.deployment_config.download_condition_file #=> Types::S3Object
    #   resp.data.deployment_config.download_condition_file.bucket #=> String
    #   resp.data.deployment_config.download_condition_file.key #=> String
    #   resp.data.deployment_config.download_condition_file.etag #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_deployment_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDeploymentJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDeploymentJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDeploymentJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::LimitExceededException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::IdempotentParameterMismatchException, Errors::ConcurrentDeploymentException]),
        data_parser: Parsers::CreateDeploymentJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDeploymentJob,
        stubs: @stubs,
        params_class: Params::CreateDeploymentJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_deployment_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a fleet, a logical group of robots running the same robot application.</p>
    #          <important>
    #             <p>This API is no longer supported and will throw an error if used.</p>
    #          </important>
    #
    # @deprecated
    #   AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @param [Hash] params
    #   See {Types::CreateFleetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the fleet.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the fleet.</p>
    #
    # @return [Types::CreateFleetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet(
    #     name: 'name', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFleetOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_fleet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFleetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFleetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFleet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::LimitExceededException, Errors::InvalidParameterException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateFleet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFleet,
        stubs: @stubs,
        params_class: Params::CreateFleetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_fleet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a robot.</p>
    #          <important>
    #             <p>This API is no longer supported and will throw an error if used.</p>
    #          </important>
    #
    # @deprecated
    #   AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @param [Hash] params
    #   See {Types::CreateRobotInput}.
    #
    # @option params [String] :name
    #   <p>The name for the robot.</p>
    #
    # @option params [String] :architecture
    #   <p>The target architecture of the robot.</p>
    #
    # @option params [String] :greengrass_group_id
    #   <p>The Greengrass group id.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the robot.</p>
    #
    # @return [Types::CreateRobotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_robot(
    #     name: 'name', # required
    #     architecture: 'X86_64', # required - accepts ["X86_64", "ARM64", "ARMHF"]
    #     greengrass_group_id: 'greengrassGroupId', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRobotOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.greengrass_group_id #=> String
    #   resp.data.architecture #=> String, one of ["X86_64", "ARM64", "ARMHF"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_robot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRobotInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRobotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRobot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::LimitExceededException, Errors::InvalidParameterException, Errors::ThrottlingException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateRobot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRobot,
        stubs: @stubs,
        params_class: Params::CreateRobotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_robot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a robot application. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateRobotApplicationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the robot application.</p>
    #
    # @option params [Array<SourceConfig>] :sources
    #   <p>The sources of the robot application.</p>
    #
    # @option params [RobotSoftwareSuite] :robot_software_suite
    #   <p>The robot software suite (ROS distribuition) used by the robot application.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the robot
    #            application.</p>
    #
    # @option params [Environment] :environment
    #   <p>The object that contains that URI of the Docker image that you use for your robot
    #            application.</p>
    #
    # @return [Types::CreateRobotApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_robot_application(
    #     name: 'name', # required
    #     sources: [
    #       {
    #         s3_bucket: 's3Bucket',
    #         s3_key: 's3Key',
    #         architecture: 'X86_64' # accepts ["X86_64", "ARM64", "ARMHF"]
    #       }
    #     ],
    #     robot_software_suite: {
    #       name: 'ROS', # accepts ["ROS", "ROS2", "General"]
    #       version: 'Kinetic' # accepts ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #     }, # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     environment: {
    #       uri: 'uri'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRobotApplicationOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.version #=> String
    #   resp.data.sources #=> Array<Source>
    #   resp.data.sources[0] #=> Types::Source
    #   resp.data.sources[0].s3_bucket #=> String
    #   resp.data.sources[0].s3_key #=> String
    #   resp.data.sources[0].etag #=> String
    #   resp.data.sources[0].architecture #=> String, one of ["X86_64", "ARM64", "ARMHF"]
    #   resp.data.robot_software_suite #=> Types::RobotSoftwareSuite
    #   resp.data.robot_software_suite.name #=> String, one of ["ROS", "ROS2", "General"]
    #   resp.data.robot_software_suite.version #=> String, one of ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #   resp.data.last_updated_at #=> Time
    #   resp.data.revision_id #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.environment #=> Types::Environment
    #   resp.data.environment.uri #=> String
    #
    def create_robot_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRobotApplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRobotApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRobotApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::LimitExceededException, Errors::InvalidParameterException, Errors::ThrottlingException, Errors::IdempotentParameterMismatchException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateRobotApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRobotApplication,
        stubs: @stubs,
        params_class: Params::CreateRobotApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_robot_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a version of a robot application.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRobotApplicationVersionInput}.
    #
    # @option params [String] :application
    #   <p>The application information for the robot application.</p>
    #
    # @option params [String] :current_revision_id
    #   <p>The current revision id for the robot application. If you provide a value and it matches
    #            the latest revision ID, a new version will be created.</p>
    #
    # @option params [Array<String>] :s3_etags
    #   <p>The Amazon S3 identifier for the zip file bundle that you use for your robot
    #            application.</p>
    #
    # @option params [String] :image_digest
    #   <p>A SHA256 identifier for the Docker image that you use for your robot application.</p>
    #
    # @return [Types::CreateRobotApplicationVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_robot_application_version(
    #     application: 'application', # required
    #     current_revision_id: 'currentRevisionId',
    #     s3_etags: [
    #       'member'
    #     ],
    #     image_digest: 'imageDigest'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRobotApplicationVersionOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.version #=> String
    #   resp.data.sources #=> Array<Source>
    #   resp.data.sources[0] #=> Types::Source
    #   resp.data.sources[0].s3_bucket #=> String
    #   resp.data.sources[0].s3_key #=> String
    #   resp.data.sources[0].etag #=> String
    #   resp.data.sources[0].architecture #=> String, one of ["X86_64", "ARM64", "ARMHF"]
    #   resp.data.robot_software_suite #=> Types::RobotSoftwareSuite
    #   resp.data.robot_software_suite.name #=> String, one of ["ROS", "ROS2", "General"]
    #   resp.data.robot_software_suite.version #=> String, one of ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #   resp.data.last_updated_at #=> Time
    #   resp.data.revision_id #=> String
    #   resp.data.environment #=> Types::Environment
    #   resp.data.environment.uri #=> String
    #
    def create_robot_application_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRobotApplicationVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRobotApplicationVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRobotApplicationVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::LimitExceededException, Errors::InvalidParameterException, Errors::ThrottlingException, Errors::IdempotentParameterMismatchException]),
        data_parser: Parsers::CreateRobotApplicationVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRobotApplicationVersion,
        stubs: @stubs,
        params_class: Params::CreateRobotApplicationVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_robot_application_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a simulation application.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSimulationApplicationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the simulation application.</p>
    #
    # @option params [Array<SourceConfig>] :sources
    #   <p>The sources of the simulation application.</p>
    #
    # @option params [SimulationSoftwareSuite] :simulation_software_suite
    #   <p>The simulation software suite used by the simulation application.</p>
    #
    # @option params [RobotSoftwareSuite] :robot_software_suite
    #   <p>The robot software suite (ROS distribution) used by the simulation application.</p>
    #
    # @option params [RenderingEngine] :rendering_engine
    #   <p>The rendering engine for the simulation application.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the simulation
    #            application.</p>
    #
    # @option params [Environment] :environment
    #   <p>The object that contains the Docker image URI used to create your simulation
    #            application.</p>
    #
    # @return [Types::CreateSimulationApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_simulation_application(
    #     name: 'name', # required
    #     sources: [
    #       {
    #         s3_bucket: 's3Bucket',
    #         s3_key: 's3Key',
    #         architecture: 'X86_64' # accepts ["X86_64", "ARM64", "ARMHF"]
    #       }
    #     ],
    #     simulation_software_suite: {
    #       name: 'Gazebo', # accepts ["Gazebo", "RosbagPlay", "SimulationRuntime"]
    #       version: 'version'
    #     }, # required
    #     robot_software_suite: {
    #       name: 'ROS', # accepts ["ROS", "ROS2", "General"]
    #       version: 'Kinetic' # accepts ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #     }, # required
    #     rendering_engine: {
    #       name: 'OGRE', # accepts ["OGRE"]
    #       version: 'version'
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     environment: {
    #       uri: 'uri'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSimulationApplicationOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.version #=> String
    #   resp.data.sources #=> Array<Source>
    #   resp.data.sources[0] #=> Types::Source
    #   resp.data.sources[0].s3_bucket #=> String
    #   resp.data.sources[0].s3_key #=> String
    #   resp.data.sources[0].etag #=> String
    #   resp.data.sources[0].architecture #=> String, one of ["X86_64", "ARM64", "ARMHF"]
    #   resp.data.simulation_software_suite #=> Types::SimulationSoftwareSuite
    #   resp.data.simulation_software_suite.name #=> String, one of ["Gazebo", "RosbagPlay", "SimulationRuntime"]
    #   resp.data.simulation_software_suite.version #=> String
    #   resp.data.robot_software_suite #=> Types::RobotSoftwareSuite
    #   resp.data.robot_software_suite.name #=> String, one of ["ROS", "ROS2", "General"]
    #   resp.data.robot_software_suite.version #=> String, one of ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #   resp.data.rendering_engine #=> Types::RenderingEngine
    #   resp.data.rendering_engine.name #=> String, one of ["OGRE"]
    #   resp.data.rendering_engine.version #=> String
    #   resp.data.last_updated_at #=> Time
    #   resp.data.revision_id #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.environment #=> Types::Environment
    #   resp.data.environment.uri #=> String
    #
    def create_simulation_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSimulationApplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSimulationApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSimulationApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::LimitExceededException, Errors::InvalidParameterException, Errors::ThrottlingException, Errors::IdempotentParameterMismatchException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateSimulationApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSimulationApplication,
        stubs: @stubs,
        params_class: Params::CreateSimulationApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_simulation_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a simulation application with a specific revision id.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSimulationApplicationVersionInput}.
    #
    # @option params [String] :application
    #   <p>The application information for the simulation application.</p>
    #
    # @option params [String] :current_revision_id
    #   <p>The current revision id for the simulation application. If you provide a value and it
    #            matches the latest revision ID, a new version will be created.</p>
    #
    # @option params [Array<String>] :s3_etags
    #   <p>The Amazon S3 eTag identifier for the zip file bundle that you use to create the
    #            simulation application.</p>
    #
    # @option params [String] :image_digest
    #   <p>The SHA256 digest used to identify the Docker image URI used to created the simulation
    #            application.</p>
    #
    # @return [Types::CreateSimulationApplicationVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_simulation_application_version(
    #     application: 'application', # required
    #     current_revision_id: 'currentRevisionId',
    #     s3_etags: [
    #       'member'
    #     ],
    #     image_digest: 'imageDigest'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSimulationApplicationVersionOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.version #=> String
    #   resp.data.sources #=> Array<Source>
    #   resp.data.sources[0] #=> Types::Source
    #   resp.data.sources[0].s3_bucket #=> String
    #   resp.data.sources[0].s3_key #=> String
    #   resp.data.sources[0].etag #=> String
    #   resp.data.sources[0].architecture #=> String, one of ["X86_64", "ARM64", "ARMHF"]
    #   resp.data.simulation_software_suite #=> Types::SimulationSoftwareSuite
    #   resp.data.simulation_software_suite.name #=> String, one of ["Gazebo", "RosbagPlay", "SimulationRuntime"]
    #   resp.data.simulation_software_suite.version #=> String
    #   resp.data.robot_software_suite #=> Types::RobotSoftwareSuite
    #   resp.data.robot_software_suite.name #=> String, one of ["ROS", "ROS2", "General"]
    #   resp.data.robot_software_suite.version #=> String, one of ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #   resp.data.rendering_engine #=> Types::RenderingEngine
    #   resp.data.rendering_engine.name #=> String, one of ["OGRE"]
    #   resp.data.rendering_engine.version #=> String
    #   resp.data.last_updated_at #=> Time
    #   resp.data.revision_id #=> String
    #   resp.data.environment #=> Types::Environment
    #   resp.data.environment.uri #=> String
    #
    def create_simulation_application_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSimulationApplicationVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSimulationApplicationVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSimulationApplicationVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::LimitExceededException, Errors::InvalidParameterException, Errors::ThrottlingException, Errors::IdempotentParameterMismatchException]),
        data_parser: Parsers::CreateSimulationApplicationVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSimulationApplicationVersion,
        stubs: @stubs,
        params_class: Params::CreateSimulationApplicationVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_simulation_application_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a simulation job.</p>
    #          <note>
    #             <p>After 90 days, simulation jobs expire and will be deleted. They will no longer be
    #             accessible. </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateSimulationJobInput}.
    #
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    # @option params [OutputLocation] :output_location
    #   <p>Location for output files generated by the simulation job.</p>
    #
    # @option params [LoggingConfig] :logging_config
    #   <p>The logging configuration.</p>
    #
    # @option params [Integer] :max_job_duration_in_seconds
    #   <p>The maximum simulation job duration in seconds (up to 14 days or 1,209,600 seconds. When
    #               <code>maxJobDurationInSeconds</code> is reached, the simulation job will status will
    #            transition to <code>Completed</code>.</p>
    #
    # @option params [String] :iam_role
    #   <p>The IAM role name that allows the simulation instance to call the AWS APIs that are
    #            specified in its associated policies on your behalf. This is how credentials are passed in
    #            to your simulation job. </p>
    #
    # @option params [String] :failure_behavior
    #   <p>The failure behavior the simulation job.</p>
    #            <dl>
    #               <dt>Continue</dt>
    #               <dd>
    #                  <p>Leaves the instance running for its maximum timeout duration after a
    #                        <code>4XX</code> error code.</p>
    #               </dd>
    #               <dt>Fail</dt>
    #               <dd>
    #                  <p>Stop the simulation job and terminate the instance.</p>
    #               </dd>
    #            </dl>
    #
    # @option params [Array<RobotApplicationConfig>] :robot_applications
    #   <p>The robot application to use in the simulation job.</p>
    #
    # @option params [Array<SimulationApplicationConfig>] :simulation_applications
    #   <p>The simulation application to use in the simulation job.</p>
    #
    # @option params [Array<DataSourceConfig>] :data_sources
    #   <p>Specify data sources to mount read-only files from S3 into your simulation. These files
    #            are available under <code>/opt/robomaker/datasources/data_source_name</code>. </p>
    #            <note>
    #               <p>There is a limit of 100 files and a combined size of 25GB for all
    #                  <code>DataSourceConfig</code> objects. </p>
    #            </note>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the simulation
    #            job.</p>
    #
    # @option params [VPCConfig] :vpc_config
    #   <p>If your simulation job accesses resources in a VPC, you provide this parameter
    #            identifying the list of security group IDs and subnet IDs. These must belong to the same
    #            VPC. You must provide at least one security group and one subnet ID. </p>
    #
    # @option params [Compute] :compute
    #   <p>Compute information for the simulation job.</p>
    #
    # @return [Types::CreateSimulationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_simulation_job(
    #     client_request_token: 'clientRequestToken',
    #     output_location: {
    #       s3_bucket: 's3Bucket',
    #       s3_prefix: 's3Prefix'
    #     },
    #     logging_config: {
    #       record_all_ros_topics: false
    #     },
    #     max_job_duration_in_seconds: 1, # required
    #     iam_role: 'iamRole', # required
    #     failure_behavior: 'Fail', # accepts ["Fail", "Continue"]
    #     robot_applications: [
    #       {
    #         application: 'application', # required
    #         application_version: 'applicationVersion',
    #         launch_config: {
    #           package_name: 'packageName',
    #           launch_file: 'launchFile',
    #           environment_variables: {
    #             'key' => 'value'
    #           },
    #           port_forwarding_config: {
    #             port_mappings: [
    #               {
    #                 job_port: 1, # required
    #                 application_port: 1, # required
    #                 enable_on_public_ip: false
    #               }
    #             ]
    #           },
    #           stream_ui: false,
    #           command: [
    #             'member'
    #           ]
    #         }, # required
    #         upload_configurations: [
    #           {
    #             name: 'name', # required
    #             path: 'path', # required
    #             upload_behavior: 'UPLOAD_ON_TERMINATE' # required - accepts ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"]
    #           }
    #         ],
    #         use_default_upload_configurations: false,
    #         tools: [
    #           {
    #             stream_ui: false,
    #             name: 'name', # required
    #             command: 'command', # required
    #             stream_output_to_cloud_watch: false,
    #             exit_behavior: 'FAIL' # accepts ["FAIL", "RESTART"]
    #           }
    #         ],
    #         use_default_tools: false
    #       }
    #     ],
    #     simulation_applications: [
    #       {
    #         application: 'application', # required
    #         application_version: 'applicationVersion',
    #         world_configs: [
    #           {
    #             world: 'world'
    #           }
    #         ],
    #         use_default_upload_configurations: false,
    #         use_default_tools: false
    #       }
    #     ],
    #     data_sources: [
    #       {
    #         name: 'name', # required
    #         s3_bucket: 's3Bucket', # required
    #         s3_keys: [
    #           'member'
    #         ], # required
    #         type: 'Prefix', # accepts ["Prefix", "Archive", "File"]
    #         destination: 'destination'
    #       }
    #     ],
    #     tags: {
    #       'key' => 'value'
    #     },
    #     vpc_config: {
    #       subnets: [
    #         'member'
    #       ], # required
    #       security_groups: [
    #         'member'
    #       ],
    #       assign_public_ip: false
    #     },
    #     compute: {
    #       simulation_unit_limit: 1,
    #       compute_type: 'CPU', # accepts ["CPU", "GPU_AND_CPU"]
    #       gpu_unit_limit: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSimulationJobOutput
    #   resp.data.arn #=> String
    #   resp.data.status #=> String, one of ["Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"]
    #   resp.data.last_started_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #   resp.data.failure_behavior #=> String, one of ["Fail", "Continue"]
    #   resp.data.failure_code #=> String, one of ["InternalServiceError", "RobotApplicationCrash", "SimulationApplicationCrash", "RobotApplicationHealthCheckFailure", "SimulationApplicationHealthCheckFailure", "BadPermissionsRobotApplication", "BadPermissionsSimulationApplication", "BadPermissionsS3Object", "BadPermissionsS3Output", "BadPermissionsCloudwatchLogs", "SubnetIpLimitExceeded", "ENILimitExceeded", "BadPermissionsUserCredentials", "InvalidBundleRobotApplication", "InvalidBundleSimulationApplication", "InvalidS3Resource", "ThrottlingError", "LimitExceeded", "MismatchedEtag", "RobotApplicationVersionMismatchedEtag", "SimulationApplicationVersionMismatchedEtag", "ResourceNotFound", "RequestThrottled", "BatchTimedOut", "BatchCanceled", "InvalidInput", "WrongRegionS3Bucket", "WrongRegionS3Output", "WrongRegionRobotApplication", "WrongRegionSimulationApplication", "UploadContentMismatchError"]
    #   resp.data.client_request_token #=> String
    #   resp.data.output_location #=> Types::OutputLocation
    #   resp.data.output_location.s3_bucket #=> String
    #   resp.data.output_location.s3_prefix #=> String
    #   resp.data.logging_config #=> Types::LoggingConfig
    #   resp.data.logging_config.record_all_ros_topics #=> Boolean
    #   resp.data.max_job_duration_in_seconds #=> Integer
    #   resp.data.simulation_time_millis #=> Integer
    #   resp.data.iam_role #=> String
    #   resp.data.robot_applications #=> Array<RobotApplicationConfig>
    #   resp.data.robot_applications[0] #=> Types::RobotApplicationConfig
    #   resp.data.robot_applications[0].application #=> String
    #   resp.data.robot_applications[0].application_version #=> String
    #   resp.data.robot_applications[0].launch_config #=> Types::LaunchConfig
    #   resp.data.robot_applications[0].launch_config.package_name #=> String
    #   resp.data.robot_applications[0].launch_config.launch_file #=> String
    #   resp.data.robot_applications[0].launch_config.environment_variables #=> Hash<String, String>
    #   resp.data.robot_applications[0].launch_config.environment_variables['key'] #=> String
    #   resp.data.robot_applications[0].launch_config.port_forwarding_config #=> Types::PortForwardingConfig
    #   resp.data.robot_applications[0].launch_config.port_forwarding_config.port_mappings #=> Array<PortMapping>
    #   resp.data.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0] #=> Types::PortMapping
    #   resp.data.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].job_port #=> Integer
    #   resp.data.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].application_port #=> Integer
    #   resp.data.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].enable_on_public_ip #=> Boolean
    #   resp.data.robot_applications[0].launch_config.stream_ui #=> Boolean
    #   resp.data.robot_applications[0].launch_config.command #=> Array<String>
    #   resp.data.robot_applications[0].launch_config.command[0] #=> String
    #   resp.data.robot_applications[0].upload_configurations #=> Array<UploadConfiguration>
    #   resp.data.robot_applications[0].upload_configurations[0] #=> Types::UploadConfiguration
    #   resp.data.robot_applications[0].upload_configurations[0].name #=> String
    #   resp.data.robot_applications[0].upload_configurations[0].path #=> String
    #   resp.data.robot_applications[0].upload_configurations[0].upload_behavior #=> String, one of ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"]
    #   resp.data.robot_applications[0].use_default_upload_configurations #=> Boolean
    #   resp.data.robot_applications[0].tools #=> Array<Tool>
    #   resp.data.robot_applications[0].tools[0] #=> Types::Tool
    #   resp.data.robot_applications[0].tools[0].stream_ui #=> Boolean
    #   resp.data.robot_applications[0].tools[0].name #=> String
    #   resp.data.robot_applications[0].tools[0].command #=> String
    #   resp.data.robot_applications[0].tools[0].stream_output_to_cloud_watch #=> Boolean
    #   resp.data.robot_applications[0].tools[0].exit_behavior #=> String, one of ["FAIL", "RESTART"]
    #   resp.data.robot_applications[0].use_default_tools #=> Boolean
    #   resp.data.simulation_applications #=> Array<SimulationApplicationConfig>
    #   resp.data.simulation_applications[0] #=> Types::SimulationApplicationConfig
    #   resp.data.simulation_applications[0].application #=> String
    #   resp.data.simulation_applications[0].application_version #=> String
    #   resp.data.simulation_applications[0].launch_config #=> Types::LaunchConfig
    #   resp.data.simulation_applications[0].upload_configurations #=> Array<UploadConfiguration>
    #   resp.data.simulation_applications[0].world_configs #=> Array<WorldConfig>
    #   resp.data.simulation_applications[0].world_configs[0] #=> Types::WorldConfig
    #   resp.data.simulation_applications[0].world_configs[0].world #=> String
    #   resp.data.simulation_applications[0].use_default_upload_configurations #=> Boolean
    #   resp.data.simulation_applications[0].tools #=> Array<Tool>
    #   resp.data.simulation_applications[0].use_default_tools #=> Boolean
    #   resp.data.data_sources #=> Array<DataSource>
    #   resp.data.data_sources[0] #=> Types::DataSource
    #   resp.data.data_sources[0].name #=> String
    #   resp.data.data_sources[0].s3_bucket #=> String
    #   resp.data.data_sources[0].s3_keys #=> Array<S3KeyOutput>
    #   resp.data.data_sources[0].s3_keys[0] #=> Types::S3KeyOutput
    #   resp.data.data_sources[0].s3_keys[0].s3_key #=> String
    #   resp.data.data_sources[0].s3_keys[0].etag #=> String
    #   resp.data.data_sources[0].type #=> String, one of ["Prefix", "Archive", "File"]
    #   resp.data.data_sources[0].destination #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.vpc_config #=> Types::VPCConfigResponse
    #   resp.data.vpc_config.subnets #=> Array<String>
    #   resp.data.vpc_config.subnets[0] #=> String
    #   resp.data.vpc_config.security_groups #=> Array<String>
    #   resp.data.vpc_config.security_groups[0] #=> String
    #   resp.data.vpc_config.vpc_id #=> String
    #   resp.data.vpc_config.assign_public_ip #=> Boolean
    #   resp.data.compute #=> Types::ComputeResponse
    #   resp.data.compute.simulation_unit_limit #=> Integer
    #   resp.data.compute.compute_type #=> String, one of ["CPU", "GPU_AND_CPU"]
    #   resp.data.compute.gpu_unit_limit #=> Integer
    #
    def create_simulation_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSimulationJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSimulationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSimulationJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::IdempotentParameterMismatchException]),
        data_parser: Parsers::CreateSimulationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSimulationJob,
        stubs: @stubs,
        params_class: Params::CreateSimulationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_simulation_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a world export job.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateWorldExportJobInput}.
    #
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    # @option params [Array<String>] :worlds
    #   <p>A list of Amazon Resource Names (arns) that correspond to worlds to export.</p>
    #
    # @option params [OutputLocation] :output_location
    #   <p>The output location.</p>
    #
    # @option params [String] :iam_role
    #   <p>The IAM role that the world export process uses to access the Amazon S3 bucket and put
    #            the export.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the world export
    #            job.</p>
    #
    # @return [Types::CreateWorldExportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_world_export_job(
    #     client_request_token: 'clientRequestToken',
    #     worlds: [
    #       'member'
    #     ], # required
    #     output_location: {
    #       s3_bucket: 's3Bucket',
    #       s3_prefix: 's3Prefix'
    #     }, # required
    #     iam_role: 'iamRole', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWorldExportJobOutput
    #   resp.data.arn #=> String
    #   resp.data.status #=> String, one of ["Pending", "Running", "Completed", "Failed", "Canceling", "Canceled"]
    #   resp.data.created_at #=> Time
    #   resp.data.failure_code #=> String, one of ["InternalServiceError", "LimitExceeded", "ResourceNotFound", "RequestThrottled", "InvalidInput", "AccessDenied"]
    #   resp.data.client_request_token #=> String
    #   resp.data.output_location #=> Types::OutputLocation
    #   resp.data.output_location.s3_bucket #=> String
    #   resp.data.output_location.s3_prefix #=> String
    #   resp.data.iam_role #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_world_export_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWorldExportJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWorldExportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWorldExportJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ServiceUnavailableException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::IdempotentParameterMismatchException]),
        data_parser: Parsers::CreateWorldExportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWorldExportJob,
        stubs: @stubs,
        params_class: Params::CreateWorldExportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_world_export_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates worlds using the specified template.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateWorldGenerationJobInput}.
    #
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    # @option params [String] :template
    #   <p>The Amazon Resource Name (arn) of the world template describing the worlds you want to
    #            create.</p>
    #
    # @option params [WorldCount] :world_count
    #   <p>Information about the world count.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the world generator
    #            job.</p>
    #
    # @option params [Hash<String, String>] :world_tags
    #   <p>A map that contains tag keys and tag values that are attached to the generated
    #            worlds.</p>
    #
    # @return [Types::CreateWorldGenerationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_world_generation_job(
    #     client_request_token: 'clientRequestToken',
    #     template: 'template', # required
    #     world_count: {
    #       floorplan_count: 1,
    #       interior_count_per_floorplan: 1
    #     }, # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWorldGenerationJobOutput
    #   resp.data.arn #=> String
    #   resp.data.status #=> String, one of ["Pending", "Running", "Completed", "Failed", "PartialFailed", "Canceling", "Canceled"]
    #   resp.data.created_at #=> Time
    #   resp.data.failure_code #=> String, one of ["InternalServiceError", "LimitExceeded", "ResourceNotFound", "RequestThrottled", "InvalidInput", "AllWorldGenerationFailed"]
    #   resp.data.client_request_token #=> String
    #   resp.data.template #=> String
    #   resp.data.world_count #=> Types::WorldCount
    #   resp.data.world_count.floorplan_count #=> Integer
    #   resp.data.world_count.interior_count_per_floorplan #=> Integer
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.world_tags #=> Hash<String, String>
    #
    def create_world_generation_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWorldGenerationJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWorldGenerationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWorldGenerationJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ServiceUnavailableException, Errors::LimitExceededException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::IdempotentParameterMismatchException]),
        data_parser: Parsers::CreateWorldGenerationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWorldGenerationJob,
        stubs: @stubs,
        params_class: Params::CreateWorldGenerationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_world_generation_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a world template.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateWorldTemplateInput}.
    #
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    # @option params [String] :name
    #   <p>The name of the world template.</p>
    #
    # @option params [String] :template_body
    #   <p>The world template body.</p>
    #
    # @option params [TemplateLocation] :template_location
    #   <p>The location of the world template.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the world
    #            template.</p>
    #
    # @return [Types::CreateWorldTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_world_template(
    #     client_request_token: 'clientRequestToken',
    #     name: 'name',
    #     template_body: 'templateBody',
    #     template_location: {
    #       s3_bucket: 's3Bucket', # required
    #       s3_key: 's3Key' # required
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWorldTemplateOutput
    #   resp.data.arn #=> String
    #   resp.data.client_request_token #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_world_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWorldTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWorldTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWorldTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::LimitExceededException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateWorldTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWorldTemplate,
        stubs: @stubs,
        params_class: Params::CreateWorldTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_world_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a fleet.</p>
    #          <important>
    #             <p>This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.</p>
    #          </important>
    #
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @param [Hash] params
    #   See {Types::DeleteFleetInput}.
    #
    # @option params [String] :fleet
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    # @return [Types::DeleteFleetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet(
    #     fleet: 'fleet' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFleetOutput
    #
    def delete_fleet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFleetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFleetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFleet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteFleet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFleet,
        stubs: @stubs,
        params_class: Params::DeleteFleetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_fleet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a robot.</p>
    #          <important>
    #             <p>This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.</p>
    #          </important>
    #
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @param [Hash] params
    #   See {Types::DeleteRobotInput}.
    #
    # @option params [String] :robot
    #   <p>The Amazon Resource Name (ARN) of the robot.</p>
    #
    # @return [Types::DeleteRobotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_robot(
    #     robot: 'robot' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRobotOutput
    #
    def delete_robot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRobotInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRobotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRobot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteRobot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRobot,
        stubs: @stubs,
        params_class: Params::DeleteRobotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_robot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a robot application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRobotApplicationInput}.
    #
    # @option params [String] :application
    #   <p>The Amazon Resource Name (ARN) of the the robot application.</p>
    #
    # @option params [String] :application_version
    #   <p>The version of the robot application to delete.</p>
    #
    # @return [Types::DeleteRobotApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_robot_application(
    #     application: 'application', # required
    #     application_version: 'applicationVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRobotApplicationOutput
    #
    def delete_robot_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRobotApplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRobotApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRobotApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteRobotApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRobotApplication,
        stubs: @stubs,
        params_class: Params::DeleteRobotApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_robot_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a simulation application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSimulationApplicationInput}.
    #
    # @option params [String] :application
    #   <p>The application information for the simulation application to delete.</p>
    #
    # @option params [String] :application_version
    #   <p>The version of the simulation application to delete.</p>
    #
    # @return [Types::DeleteSimulationApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_simulation_application(
    #     application: 'application', # required
    #     application_version: 'applicationVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSimulationApplicationOutput
    #
    def delete_simulation_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSimulationApplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSimulationApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSimulationApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteSimulationApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSimulationApplication,
        stubs: @stubs,
        params_class: Params::DeleteSimulationApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_simulation_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a world template.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteWorldTemplateInput}.
    #
    # @option params [String] :template
    #   <p>The Amazon Resource Name (arn) of the world template you want to delete.</p>
    #
    # @return [Types::DeleteWorldTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_world_template(
    #     template: 'template' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWorldTemplateOutput
    #
    def delete_world_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWorldTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWorldTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWorldTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteWorldTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWorldTemplate,
        stubs: @stubs,
        params_class: Params::DeleteWorldTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_world_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deregisters a robot.</p>
    #          <important>
    #             <p>This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.</p>
    #          </important>
    #
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @param [Hash] params
    #   See {Types::DeregisterRobotInput}.
    #
    # @option params [String] :fleet
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    # @option params [String] :robot
    #   <p>The Amazon Resource Name (ARN) of the robot.</p>
    #
    # @return [Types::DeregisterRobotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_robot(
    #     fleet: 'fleet', # required
    #     robot: 'robot' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterRobotOutput
    #   resp.data.fleet #=> String
    #   resp.data.robot #=> String
    #
    def deregister_robot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterRobotInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterRobotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterRobot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeregisterRobot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterRobot,
        stubs: @stubs,
        params_class: Params::DeregisterRobotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_robot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a deployment job.</p>
    #          <important>
    #             <p>This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.</p>
    #          </important>
    #
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @param [Hash] params
    #   See {Types::DescribeDeploymentJobInput}.
    #
    # @option params [String] :job
    #   <p>The Amazon Resource Name (ARN) of the deployment job.</p>
    #
    # @return [Types::DescribeDeploymentJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_deployment_job(
    #     job: 'job' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDeploymentJobOutput
    #   resp.data.arn #=> String
    #   resp.data.fleet #=> String
    #   resp.data.status #=> String, one of ["Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"]
    #   resp.data.deployment_config #=> Types::DeploymentConfig
    #   resp.data.deployment_config.concurrent_deployment_percentage #=> Integer
    #   resp.data.deployment_config.failure_threshold_percentage #=> Integer
    #   resp.data.deployment_config.robot_deployment_timeout_in_seconds #=> Integer
    #   resp.data.deployment_config.download_condition_file #=> Types::S3Object
    #   resp.data.deployment_config.download_condition_file.bucket #=> String
    #   resp.data.deployment_config.download_condition_file.key #=> String
    #   resp.data.deployment_config.download_condition_file.etag #=> String
    #   resp.data.deployment_application_configs #=> Array<DeploymentApplicationConfig>
    #   resp.data.deployment_application_configs[0] #=> Types::DeploymentApplicationConfig
    #   resp.data.deployment_application_configs[0].application #=> String
    #   resp.data.deployment_application_configs[0].application_version #=> String
    #   resp.data.deployment_application_configs[0].launch_config #=> Types::DeploymentLaunchConfig
    #   resp.data.deployment_application_configs[0].launch_config.package_name #=> String
    #   resp.data.deployment_application_configs[0].launch_config.pre_launch_file #=> String
    #   resp.data.deployment_application_configs[0].launch_config.launch_file #=> String
    #   resp.data.deployment_application_configs[0].launch_config.post_launch_file #=> String
    #   resp.data.deployment_application_configs[0].launch_config.environment_variables #=> Hash<String, String>
    #   resp.data.deployment_application_configs[0].launch_config.environment_variables['key'] #=> String
    #   resp.data.failure_reason #=> String
    #   resp.data.failure_code #=> String, one of ["ResourceNotFound", "EnvironmentSetupError", "EtagMismatch", "FailureThresholdBreached", "RobotDeploymentAborted", "RobotDeploymentNoResponse", "RobotAgentConnectionTimeout", "GreengrassDeploymentFailed", "InvalidGreengrassGroup", "MissingRobotArchitecture", "MissingRobotApplicationArchitecture", "MissingRobotDeploymentResource", "GreengrassGroupVersionDoesNotExist", "LambdaDeleted", "ExtractingBundleFailure", "PreLaunchFileFailure", "PostLaunchFileFailure", "BadPermissionError", "DownloadConditionFailed", "BadLambdaAssociated", "InternalServerError", "RobotApplicationDoesNotExist", "DeploymentFleetDoesNotExist", "FleetDeploymentTimeout"]
    #   resp.data.created_at #=> Time
    #   resp.data.robot_deployment_summary #=> Array<RobotDeployment>
    #   resp.data.robot_deployment_summary[0] #=> Types::RobotDeployment
    #   resp.data.robot_deployment_summary[0].arn #=> String
    #   resp.data.robot_deployment_summary[0].deployment_start_time #=> Time
    #   resp.data.robot_deployment_summary[0].deployment_finish_time #=> Time
    #   resp.data.robot_deployment_summary[0].status #=> String, one of ["Available", "Registered", "PendingNewDeployment", "Deploying", "Failed", "InSync", "NoResponse"]
    #   resp.data.robot_deployment_summary[0].progress_detail #=> Types::ProgressDetail
    #   resp.data.robot_deployment_summary[0].progress_detail.current_progress #=> String, one of ["Validating", "DownloadingExtracting", "ExecutingDownloadCondition", "ExecutingPreLaunch", "Launching", "ExecutingPostLaunch", "Finished"]
    #   resp.data.robot_deployment_summary[0].progress_detail.percent_done #=> Float
    #   resp.data.robot_deployment_summary[0].progress_detail.estimated_time_remaining_seconds #=> Integer
    #   resp.data.robot_deployment_summary[0].progress_detail.target_resource #=> String
    #   resp.data.robot_deployment_summary[0].failure_reason #=> String
    #   resp.data.robot_deployment_summary[0].failure_code #=> String, one of ["ResourceNotFound", "EnvironmentSetupError", "EtagMismatch", "FailureThresholdBreached", "RobotDeploymentAborted", "RobotDeploymentNoResponse", "RobotAgentConnectionTimeout", "GreengrassDeploymentFailed", "InvalidGreengrassGroup", "MissingRobotArchitecture", "MissingRobotApplicationArchitecture", "MissingRobotDeploymentResource", "GreengrassGroupVersionDoesNotExist", "LambdaDeleted", "ExtractingBundleFailure", "PreLaunchFileFailure", "PostLaunchFileFailure", "BadPermissionError", "DownloadConditionFailed", "BadLambdaAssociated", "InternalServerError", "RobotApplicationDoesNotExist", "DeploymentFleetDoesNotExist", "FleetDeploymentTimeout"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_deployment_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDeploymentJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDeploymentJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDeploymentJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeDeploymentJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDeploymentJob,
        stubs: @stubs,
        params_class: Params::DescribeDeploymentJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_deployment_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a fleet.</p>
    #          <important>
    #             <p>This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.</p>
    #          </important>
    #
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @param [Hash] params
    #   See {Types::DescribeFleetInput}.
    #
    # @option params [String] :fleet
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    # @return [Types::DescribeFleetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet(
    #     fleet: 'fleet' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFleetOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.robots #=> Array<Robot>
    #   resp.data.robots[0] #=> Types::Robot
    #   resp.data.robots[0].arn #=> String
    #   resp.data.robots[0].name #=> String
    #   resp.data.robots[0].fleet_arn #=> String
    #   resp.data.robots[0].status #=> String, one of ["Available", "Registered", "PendingNewDeployment", "Deploying", "Failed", "InSync", "NoResponse"]
    #   resp.data.robots[0].green_grass_group_id #=> String
    #   resp.data.robots[0].created_at #=> Time
    #   resp.data.robots[0].architecture #=> String, one of ["X86_64", "ARM64", "ARMHF"]
    #   resp.data.robots[0].last_deployment_job #=> String
    #   resp.data.robots[0].last_deployment_time #=> Time
    #   resp.data.created_at #=> Time
    #   resp.data.last_deployment_status #=> String, one of ["Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"]
    #   resp.data.last_deployment_job #=> String
    #   resp.data.last_deployment_time #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_fleet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFleetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFleetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFleet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeFleet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFleet,
        stubs: @stubs,
        params_class: Params::DescribeFleetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fleet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a robot.</p>
    #          <important>
    #             <p>This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.</p>
    #          </important>
    #
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @param [Hash] params
    #   See {Types::DescribeRobotInput}.
    #
    # @option params [String] :robot
    #   <p>The Amazon Resource Name (ARN) of the robot to be described.</p>
    #
    # @return [Types::DescribeRobotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_robot(
    #     robot: 'robot' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRobotOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.fleet_arn #=> String
    #   resp.data.status #=> String, one of ["Available", "Registered", "PendingNewDeployment", "Deploying", "Failed", "InSync", "NoResponse"]
    #   resp.data.greengrass_group_id #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.architecture #=> String, one of ["X86_64", "ARM64", "ARMHF"]
    #   resp.data.last_deployment_job #=> String
    #   resp.data.last_deployment_time #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_robot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRobotInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRobotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRobot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeRobot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRobot,
        stubs: @stubs,
        params_class: Params::DescribeRobotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_robot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a robot application.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRobotApplicationInput}.
    #
    # @option params [String] :application
    #   <p>The Amazon Resource Name (ARN) of the robot application.</p>
    #
    # @option params [String] :application_version
    #   <p>The version of the robot application to describe.</p>
    #
    # @return [Types::DescribeRobotApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_robot_application(
    #     application: 'application', # required
    #     application_version: 'applicationVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRobotApplicationOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.version #=> String
    #   resp.data.sources #=> Array<Source>
    #   resp.data.sources[0] #=> Types::Source
    #   resp.data.sources[0].s3_bucket #=> String
    #   resp.data.sources[0].s3_key #=> String
    #   resp.data.sources[0].etag #=> String
    #   resp.data.sources[0].architecture #=> String, one of ["X86_64", "ARM64", "ARMHF"]
    #   resp.data.robot_software_suite #=> Types::RobotSoftwareSuite
    #   resp.data.robot_software_suite.name #=> String, one of ["ROS", "ROS2", "General"]
    #   resp.data.robot_software_suite.version #=> String, one of ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #   resp.data.revision_id #=> String
    #   resp.data.last_updated_at #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.environment #=> Types::Environment
    #   resp.data.environment.uri #=> String
    #   resp.data.image_digest #=> String
    #
    def describe_robot_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRobotApplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRobotApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRobotApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeRobotApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRobotApplication,
        stubs: @stubs,
        params_class: Params::DescribeRobotApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_robot_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a simulation application.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSimulationApplicationInput}.
    #
    # @option params [String] :application
    #   <p>The application information for the simulation application.</p>
    #
    # @option params [String] :application_version
    #   <p>The version of the simulation application to describe.</p>
    #
    # @return [Types::DescribeSimulationApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_simulation_application(
    #     application: 'application', # required
    #     application_version: 'applicationVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSimulationApplicationOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.version #=> String
    #   resp.data.sources #=> Array<Source>
    #   resp.data.sources[0] #=> Types::Source
    #   resp.data.sources[0].s3_bucket #=> String
    #   resp.data.sources[0].s3_key #=> String
    #   resp.data.sources[0].etag #=> String
    #   resp.data.sources[0].architecture #=> String, one of ["X86_64", "ARM64", "ARMHF"]
    #   resp.data.simulation_software_suite #=> Types::SimulationSoftwareSuite
    #   resp.data.simulation_software_suite.name #=> String, one of ["Gazebo", "RosbagPlay", "SimulationRuntime"]
    #   resp.data.simulation_software_suite.version #=> String
    #   resp.data.robot_software_suite #=> Types::RobotSoftwareSuite
    #   resp.data.robot_software_suite.name #=> String, one of ["ROS", "ROS2", "General"]
    #   resp.data.robot_software_suite.version #=> String, one of ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #   resp.data.rendering_engine #=> Types::RenderingEngine
    #   resp.data.rendering_engine.name #=> String, one of ["OGRE"]
    #   resp.data.rendering_engine.version #=> String
    #   resp.data.revision_id #=> String
    #   resp.data.last_updated_at #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.environment #=> Types::Environment
    #   resp.data.environment.uri #=> String
    #   resp.data.image_digest #=> String
    #
    def describe_simulation_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSimulationApplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSimulationApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSimulationApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeSimulationApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSimulationApplication,
        stubs: @stubs,
        params_class: Params::DescribeSimulationApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_simulation_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a simulation job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSimulationJobInput}.
    #
    # @option params [String] :job
    #   <p>The Amazon Resource Name (ARN) of the simulation job to be described.</p>
    #
    # @return [Types::DescribeSimulationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_simulation_job(
    #     job: 'job' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSimulationJobOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.status #=> String, one of ["Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"]
    #   resp.data.last_started_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #   resp.data.failure_behavior #=> String, one of ["Fail", "Continue"]
    #   resp.data.failure_code #=> String, one of ["InternalServiceError", "RobotApplicationCrash", "SimulationApplicationCrash", "RobotApplicationHealthCheckFailure", "SimulationApplicationHealthCheckFailure", "BadPermissionsRobotApplication", "BadPermissionsSimulationApplication", "BadPermissionsS3Object", "BadPermissionsS3Output", "BadPermissionsCloudwatchLogs", "SubnetIpLimitExceeded", "ENILimitExceeded", "BadPermissionsUserCredentials", "InvalidBundleRobotApplication", "InvalidBundleSimulationApplication", "InvalidS3Resource", "ThrottlingError", "LimitExceeded", "MismatchedEtag", "RobotApplicationVersionMismatchedEtag", "SimulationApplicationVersionMismatchedEtag", "ResourceNotFound", "RequestThrottled", "BatchTimedOut", "BatchCanceled", "InvalidInput", "WrongRegionS3Bucket", "WrongRegionS3Output", "WrongRegionRobotApplication", "WrongRegionSimulationApplication", "UploadContentMismatchError"]
    #   resp.data.failure_reason #=> String
    #   resp.data.client_request_token #=> String
    #   resp.data.output_location #=> Types::OutputLocation
    #   resp.data.output_location.s3_bucket #=> String
    #   resp.data.output_location.s3_prefix #=> String
    #   resp.data.logging_config #=> Types::LoggingConfig
    #   resp.data.logging_config.record_all_ros_topics #=> Boolean
    #   resp.data.max_job_duration_in_seconds #=> Integer
    #   resp.data.simulation_time_millis #=> Integer
    #   resp.data.iam_role #=> String
    #   resp.data.robot_applications #=> Array<RobotApplicationConfig>
    #   resp.data.robot_applications[0] #=> Types::RobotApplicationConfig
    #   resp.data.robot_applications[0].application #=> String
    #   resp.data.robot_applications[0].application_version #=> String
    #   resp.data.robot_applications[0].launch_config #=> Types::LaunchConfig
    #   resp.data.robot_applications[0].launch_config.package_name #=> String
    #   resp.data.robot_applications[0].launch_config.launch_file #=> String
    #   resp.data.robot_applications[0].launch_config.environment_variables #=> Hash<String, String>
    #   resp.data.robot_applications[0].launch_config.environment_variables['key'] #=> String
    #   resp.data.robot_applications[0].launch_config.port_forwarding_config #=> Types::PortForwardingConfig
    #   resp.data.robot_applications[0].launch_config.port_forwarding_config.port_mappings #=> Array<PortMapping>
    #   resp.data.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0] #=> Types::PortMapping
    #   resp.data.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].job_port #=> Integer
    #   resp.data.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].application_port #=> Integer
    #   resp.data.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].enable_on_public_ip #=> Boolean
    #   resp.data.robot_applications[0].launch_config.stream_ui #=> Boolean
    #   resp.data.robot_applications[0].launch_config.command #=> Array<String>
    #   resp.data.robot_applications[0].launch_config.command[0] #=> String
    #   resp.data.robot_applications[0].upload_configurations #=> Array<UploadConfiguration>
    #   resp.data.robot_applications[0].upload_configurations[0] #=> Types::UploadConfiguration
    #   resp.data.robot_applications[0].upload_configurations[0].name #=> String
    #   resp.data.robot_applications[0].upload_configurations[0].path #=> String
    #   resp.data.robot_applications[0].upload_configurations[0].upload_behavior #=> String, one of ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"]
    #   resp.data.robot_applications[0].use_default_upload_configurations #=> Boolean
    #   resp.data.robot_applications[0].tools #=> Array<Tool>
    #   resp.data.robot_applications[0].tools[0] #=> Types::Tool
    #   resp.data.robot_applications[0].tools[0].stream_ui #=> Boolean
    #   resp.data.robot_applications[0].tools[0].name #=> String
    #   resp.data.robot_applications[0].tools[0].command #=> String
    #   resp.data.robot_applications[0].tools[0].stream_output_to_cloud_watch #=> Boolean
    #   resp.data.robot_applications[0].tools[0].exit_behavior #=> String, one of ["FAIL", "RESTART"]
    #   resp.data.robot_applications[0].use_default_tools #=> Boolean
    #   resp.data.simulation_applications #=> Array<SimulationApplicationConfig>
    #   resp.data.simulation_applications[0] #=> Types::SimulationApplicationConfig
    #   resp.data.simulation_applications[0].application #=> String
    #   resp.data.simulation_applications[0].application_version #=> String
    #   resp.data.simulation_applications[0].launch_config #=> Types::LaunchConfig
    #   resp.data.simulation_applications[0].upload_configurations #=> Array<UploadConfiguration>
    #   resp.data.simulation_applications[0].world_configs #=> Array<WorldConfig>
    #   resp.data.simulation_applications[0].world_configs[0] #=> Types::WorldConfig
    #   resp.data.simulation_applications[0].world_configs[0].world #=> String
    #   resp.data.simulation_applications[0].use_default_upload_configurations #=> Boolean
    #   resp.data.simulation_applications[0].tools #=> Array<Tool>
    #   resp.data.simulation_applications[0].use_default_tools #=> Boolean
    #   resp.data.data_sources #=> Array<DataSource>
    #   resp.data.data_sources[0] #=> Types::DataSource
    #   resp.data.data_sources[0].name #=> String
    #   resp.data.data_sources[0].s3_bucket #=> String
    #   resp.data.data_sources[0].s3_keys #=> Array<S3KeyOutput>
    #   resp.data.data_sources[0].s3_keys[0] #=> Types::S3KeyOutput
    #   resp.data.data_sources[0].s3_keys[0].s3_key #=> String
    #   resp.data.data_sources[0].s3_keys[0].etag #=> String
    #   resp.data.data_sources[0].type #=> String, one of ["Prefix", "Archive", "File"]
    #   resp.data.data_sources[0].destination #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.vpc_config #=> Types::VPCConfigResponse
    #   resp.data.vpc_config.subnets #=> Array<String>
    #   resp.data.vpc_config.subnets[0] #=> String
    #   resp.data.vpc_config.security_groups #=> Array<String>
    #   resp.data.vpc_config.security_groups[0] #=> String
    #   resp.data.vpc_config.vpc_id #=> String
    #   resp.data.vpc_config.assign_public_ip #=> Boolean
    #   resp.data.network_interface #=> Types::NetworkInterface
    #   resp.data.network_interface.network_interface_id #=> String
    #   resp.data.network_interface.private_ip_address #=> String
    #   resp.data.network_interface.public_ip_address #=> String
    #   resp.data.compute #=> Types::ComputeResponse
    #   resp.data.compute.simulation_unit_limit #=> Integer
    #   resp.data.compute.compute_type #=> String, one of ["CPU", "GPU_AND_CPU"]
    #   resp.data.compute.gpu_unit_limit #=> Integer
    #
    def describe_simulation_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSimulationJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSimulationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSimulationJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeSimulationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSimulationJob,
        stubs: @stubs,
        params_class: Params::DescribeSimulationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_simulation_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a simulation job batch.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSimulationJobBatchInput}.
    #
    # @option params [String] :batch
    #   <p>The id of the batch to describe.</p>
    #
    # @return [Types::DescribeSimulationJobBatchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_simulation_job_batch(
    #     batch: 'batch' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSimulationJobBatchOutput
    #   resp.data.arn #=> String
    #   resp.data.status #=> String, one of ["Pending", "InProgress", "Failed", "Completed", "Canceled", "Canceling", "Completing", "TimingOut", "TimedOut"]
    #   resp.data.last_updated_at #=> Time
    #   resp.data.created_at #=> Time
    #   resp.data.client_request_token #=> String
    #   resp.data.batch_policy #=> Types::BatchPolicy
    #   resp.data.batch_policy.timeout_in_seconds #=> Integer
    #   resp.data.batch_policy.max_concurrency #=> Integer
    #   resp.data.failure_code #=> String, one of ["InternalServiceError"]
    #   resp.data.failure_reason #=> String
    #   resp.data.failed_requests #=> Array<FailedCreateSimulationJobRequest>
    #   resp.data.failed_requests[0] #=> Types::FailedCreateSimulationJobRequest
    #   resp.data.failed_requests[0].request #=> Types::SimulationJobRequest
    #   resp.data.failed_requests[0].request.output_location #=> Types::OutputLocation
    #   resp.data.failed_requests[0].request.output_location.s3_bucket #=> String
    #   resp.data.failed_requests[0].request.output_location.s3_prefix #=> String
    #   resp.data.failed_requests[0].request.logging_config #=> Types::LoggingConfig
    #   resp.data.failed_requests[0].request.logging_config.record_all_ros_topics #=> Boolean
    #   resp.data.failed_requests[0].request.max_job_duration_in_seconds #=> Integer
    #   resp.data.failed_requests[0].request.iam_role #=> String
    #   resp.data.failed_requests[0].request.failure_behavior #=> String, one of ["Fail", "Continue"]
    #   resp.data.failed_requests[0].request.use_default_applications #=> Boolean
    #   resp.data.failed_requests[0].request.robot_applications #=> Array<RobotApplicationConfig>
    #   resp.data.failed_requests[0].request.robot_applications[0] #=> Types::RobotApplicationConfig
    #   resp.data.failed_requests[0].request.robot_applications[0].application #=> String
    #   resp.data.failed_requests[0].request.robot_applications[0].application_version #=> String
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config #=> Types::LaunchConfig
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.package_name #=> String
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.launch_file #=> String
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.environment_variables #=> Hash<String, String>
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.environment_variables['key'] #=> String
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.port_forwarding_config #=> Types::PortForwardingConfig
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.port_forwarding_config.port_mappings #=> Array<PortMapping>
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0] #=> Types::PortMapping
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].job_port #=> Integer
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].application_port #=> Integer
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].enable_on_public_ip #=> Boolean
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.stream_ui #=> Boolean
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.command #=> Array<String>
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.command[0] #=> String
    #   resp.data.failed_requests[0].request.robot_applications[0].upload_configurations #=> Array<UploadConfiguration>
    #   resp.data.failed_requests[0].request.robot_applications[0].upload_configurations[0] #=> Types::UploadConfiguration
    #   resp.data.failed_requests[0].request.robot_applications[0].upload_configurations[0].name #=> String
    #   resp.data.failed_requests[0].request.robot_applications[0].upload_configurations[0].path #=> String
    #   resp.data.failed_requests[0].request.robot_applications[0].upload_configurations[0].upload_behavior #=> String, one of ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"]
    #   resp.data.failed_requests[0].request.robot_applications[0].use_default_upload_configurations #=> Boolean
    #   resp.data.failed_requests[0].request.robot_applications[0].tools #=> Array<Tool>
    #   resp.data.failed_requests[0].request.robot_applications[0].tools[0] #=> Types::Tool
    #   resp.data.failed_requests[0].request.robot_applications[0].tools[0].stream_ui #=> Boolean
    #   resp.data.failed_requests[0].request.robot_applications[0].tools[0].name #=> String
    #   resp.data.failed_requests[0].request.robot_applications[0].tools[0].command #=> String
    #   resp.data.failed_requests[0].request.robot_applications[0].tools[0].stream_output_to_cloud_watch #=> Boolean
    #   resp.data.failed_requests[0].request.robot_applications[0].tools[0].exit_behavior #=> String, one of ["FAIL", "RESTART"]
    #   resp.data.failed_requests[0].request.robot_applications[0].use_default_tools #=> Boolean
    #   resp.data.failed_requests[0].request.simulation_applications #=> Array<SimulationApplicationConfig>
    #   resp.data.failed_requests[0].request.simulation_applications[0] #=> Types::SimulationApplicationConfig
    #   resp.data.failed_requests[0].request.simulation_applications[0].application #=> String
    #   resp.data.failed_requests[0].request.simulation_applications[0].application_version #=> String
    #   resp.data.failed_requests[0].request.simulation_applications[0].launch_config #=> Types::LaunchConfig
    #   resp.data.failed_requests[0].request.simulation_applications[0].upload_configurations #=> Array<UploadConfiguration>
    #   resp.data.failed_requests[0].request.simulation_applications[0].world_configs #=> Array<WorldConfig>
    #   resp.data.failed_requests[0].request.simulation_applications[0].world_configs[0] #=> Types::WorldConfig
    #   resp.data.failed_requests[0].request.simulation_applications[0].world_configs[0].world #=> String
    #   resp.data.failed_requests[0].request.simulation_applications[0].use_default_upload_configurations #=> Boolean
    #   resp.data.failed_requests[0].request.simulation_applications[0].tools #=> Array<Tool>
    #   resp.data.failed_requests[0].request.simulation_applications[0].use_default_tools #=> Boolean
    #   resp.data.failed_requests[0].request.data_sources #=> Array<DataSourceConfig>
    #   resp.data.failed_requests[0].request.data_sources[0] #=> Types::DataSourceConfig
    #   resp.data.failed_requests[0].request.data_sources[0].name #=> String
    #   resp.data.failed_requests[0].request.data_sources[0].s3_bucket #=> String
    #   resp.data.failed_requests[0].request.data_sources[0].s3_keys #=> Array<String>
    #   resp.data.failed_requests[0].request.data_sources[0].s3_keys[0] #=> String
    #   resp.data.failed_requests[0].request.data_sources[0].type #=> String, one of ["Prefix", "Archive", "File"]
    #   resp.data.failed_requests[0].request.data_sources[0].destination #=> String
    #   resp.data.failed_requests[0].request.vpc_config #=> Types::VPCConfig
    #   resp.data.failed_requests[0].request.vpc_config.subnets #=> Array<String>
    #   resp.data.failed_requests[0].request.vpc_config.subnets[0] #=> String
    #   resp.data.failed_requests[0].request.vpc_config.security_groups #=> Array<String>
    #   resp.data.failed_requests[0].request.vpc_config.security_groups[0] #=> String
    #   resp.data.failed_requests[0].request.vpc_config.assign_public_ip #=> Boolean
    #   resp.data.failed_requests[0].request.compute #=> Types::Compute
    #   resp.data.failed_requests[0].request.compute.simulation_unit_limit #=> Integer
    #   resp.data.failed_requests[0].request.compute.compute_type #=> String, one of ["CPU", "GPU_AND_CPU"]
    #   resp.data.failed_requests[0].request.compute.gpu_unit_limit #=> Integer
    #   resp.data.failed_requests[0].request.tags #=> Hash<String, String>
    #   resp.data.failed_requests[0].request.tags['key'] #=> String
    #   resp.data.failed_requests[0].failure_reason #=> String
    #   resp.data.failed_requests[0].failure_code #=> String, one of ["InternalServiceError", "RobotApplicationCrash", "SimulationApplicationCrash", "RobotApplicationHealthCheckFailure", "SimulationApplicationHealthCheckFailure", "BadPermissionsRobotApplication", "BadPermissionsSimulationApplication", "BadPermissionsS3Object", "BadPermissionsS3Output", "BadPermissionsCloudwatchLogs", "SubnetIpLimitExceeded", "ENILimitExceeded", "BadPermissionsUserCredentials", "InvalidBundleRobotApplication", "InvalidBundleSimulationApplication", "InvalidS3Resource", "ThrottlingError", "LimitExceeded", "MismatchedEtag", "RobotApplicationVersionMismatchedEtag", "SimulationApplicationVersionMismatchedEtag", "ResourceNotFound", "RequestThrottled", "BatchTimedOut", "BatchCanceled", "InvalidInput", "WrongRegionS3Bucket", "WrongRegionS3Output", "WrongRegionRobotApplication", "WrongRegionSimulationApplication", "UploadContentMismatchError"]
    #   resp.data.failed_requests[0].failed_at #=> Time
    #   resp.data.pending_requests #=> Array<SimulationJobRequest>
    #   resp.data.created_requests #=> Array<SimulationJobSummary>
    #   resp.data.created_requests[0] #=> Types::SimulationJobSummary
    #   resp.data.created_requests[0].arn #=> String
    #   resp.data.created_requests[0].last_updated_at #=> Time
    #   resp.data.created_requests[0].name #=> String
    #   resp.data.created_requests[0].status #=> String, one of ["Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"]
    #   resp.data.created_requests[0].simulation_application_names #=> Array<String>
    #   resp.data.created_requests[0].simulation_application_names[0] #=> String
    #   resp.data.created_requests[0].robot_application_names #=> Array<String>
    #   resp.data.created_requests[0].robot_application_names[0] #=> String
    #   resp.data.created_requests[0].data_source_names #=> Array<String>
    #   resp.data.created_requests[0].data_source_names[0] #=> String
    #   resp.data.created_requests[0].compute_type #=> String, one of ["CPU", "GPU_AND_CPU"]
    #   resp.data.tags #=> Hash<String, String>
    #
    def describe_simulation_job_batch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSimulationJobBatchInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSimulationJobBatchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSimulationJobBatch
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeSimulationJobBatch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSimulationJobBatch,
        stubs: @stubs,
        params_class: Params::DescribeSimulationJobBatchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_simulation_job_batch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a world.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeWorldInput}.
    #
    # @option params [String] :world
    #   <p>The Amazon Resource Name (arn) of the world you want to describe.</p>
    #
    # @return [Types::DescribeWorldOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_world(
    #     world: 'world' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWorldOutput
    #   resp.data.arn #=> String
    #   resp.data.generation_job #=> String
    #   resp.data.template #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.world_description_body #=> String
    #
    def describe_world(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWorldInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWorldInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWorld
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeWorld
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWorld,
        stubs: @stubs,
        params_class: Params::DescribeWorldOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_world
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a world export job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeWorldExportJobInput}.
    #
    # @option params [String] :job
    #   <p>The Amazon Resource Name (arn) of the world export job to describe.</p>
    #
    # @return [Types::DescribeWorldExportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_world_export_job(
    #     job: 'job' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWorldExportJobOutput
    #   resp.data.arn #=> String
    #   resp.data.status #=> String, one of ["Pending", "Running", "Completed", "Failed", "Canceling", "Canceled"]
    #   resp.data.created_at #=> Time
    #   resp.data.failure_code #=> String, one of ["InternalServiceError", "LimitExceeded", "ResourceNotFound", "RequestThrottled", "InvalidInput", "AccessDenied"]
    #   resp.data.failure_reason #=> String
    #   resp.data.client_request_token #=> String
    #   resp.data.worlds #=> Array<String>
    #   resp.data.worlds[0] #=> String
    #   resp.data.output_location #=> Types::OutputLocation
    #   resp.data.output_location.s3_bucket #=> String
    #   resp.data.output_location.s3_prefix #=> String
    #   resp.data.iam_role #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_world_export_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWorldExportJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWorldExportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWorldExportJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeWorldExportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWorldExportJob,
        stubs: @stubs,
        params_class: Params::DescribeWorldExportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_world_export_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a world generation job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeWorldGenerationJobInput}.
    #
    # @option params [String] :job
    #   <p>The Amazon Resource Name (arn) of the world generation job to describe.</p>
    #
    # @return [Types::DescribeWorldGenerationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_world_generation_job(
    #     job: 'job' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWorldGenerationJobOutput
    #   resp.data.arn #=> String
    #   resp.data.status #=> String, one of ["Pending", "Running", "Completed", "Failed", "PartialFailed", "Canceling", "Canceled"]
    #   resp.data.created_at #=> Time
    #   resp.data.failure_code #=> String, one of ["InternalServiceError", "LimitExceeded", "ResourceNotFound", "RequestThrottled", "InvalidInput", "AllWorldGenerationFailed"]
    #   resp.data.failure_reason #=> String
    #   resp.data.client_request_token #=> String
    #   resp.data.template #=> String
    #   resp.data.world_count #=> Types::WorldCount
    #   resp.data.world_count.floorplan_count #=> Integer
    #   resp.data.world_count.interior_count_per_floorplan #=> Integer
    #   resp.data.finished_worlds_summary #=> Types::FinishedWorldsSummary
    #   resp.data.finished_worlds_summary.finished_count #=> Integer
    #   resp.data.finished_worlds_summary.succeeded_worlds #=> Array<String>
    #   resp.data.finished_worlds_summary.succeeded_worlds[0] #=> String
    #   resp.data.finished_worlds_summary.failure_summary #=> Types::FailureSummary
    #   resp.data.finished_worlds_summary.failure_summary.total_failure_count #=> Integer
    #   resp.data.finished_worlds_summary.failure_summary.failures #=> Array<WorldFailure>
    #   resp.data.finished_worlds_summary.failure_summary.failures[0] #=> Types::WorldFailure
    #   resp.data.finished_worlds_summary.failure_summary.failures[0].failure_code #=> String, one of ["InternalServiceError", "LimitExceeded", "ResourceNotFound", "RequestThrottled", "InvalidInput", "AllWorldGenerationFailed"]
    #   resp.data.finished_worlds_summary.failure_summary.failures[0].sample_failure_reason #=> String
    #   resp.data.finished_worlds_summary.failure_summary.failures[0].failure_count #=> Integer
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.world_tags #=> Hash<String, String>
    #
    def describe_world_generation_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWorldGenerationJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWorldGenerationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWorldGenerationJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeWorldGenerationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWorldGenerationJob,
        stubs: @stubs,
        params_class: Params::DescribeWorldGenerationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_world_generation_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a world template.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeWorldTemplateInput}.
    #
    # @option params [String] :template
    #   <p>The Amazon Resource Name (arn) of the world template you want to describe.</p>
    #
    # @return [Types::DescribeWorldTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_world_template(
    #     template: 'template' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWorldTemplateOutput
    #   resp.data.arn #=> String
    #   resp.data.client_request_token #=> String
    #   resp.data.name #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.version #=> String
    #
    def describe_world_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWorldTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWorldTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWorldTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeWorldTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWorldTemplate,
        stubs: @stubs,
        params_class: Params::DescribeWorldTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_world_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the world template body.</p>
    #
    # @param [Hash] params
    #   See {Types::GetWorldTemplateBodyInput}.
    #
    # @option params [String] :template
    #   <p>The Amazon Resource Name (arn) of the world template.</p>
    #
    # @option params [String] :generation_job
    #   <p>The Amazon Resource Name (arn) of the world generator job.</p>
    #
    # @return [Types::GetWorldTemplateBodyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_world_template_body(
    #     template: 'template',
    #     generation_job: 'generationJob'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWorldTemplateBodyOutput
    #   resp.data.template_body #=> String
    #
    def get_world_template_body(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWorldTemplateBodyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWorldTemplateBodyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWorldTemplateBody
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetWorldTemplateBody
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWorldTemplateBody,
        stubs: @stubs,
        params_class: Params::GetWorldTemplateBodyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_world_template_body
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of deployment jobs for a fleet. You can optionally provide filters to retrieve specific deployment jobs.</p>
    #          <important>
    #             <p>This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.</p>
    #          </important>
    #
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @param [Hash] params
    #   See {Types::ListDeploymentJobsInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>Optional filters to limit results.</p>
    #            <p>The filter names <code>status</code> and <code>fleetName</code> are supported. When
    #            filtering, you must use the complete value of the filtered item. You can use up to three
    #            filters, but they must be for the same named item. For example, if you are looking for
    #            items with the status <code>InProgress</code> or the status <code>Pending</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListDeploymentJobs</code> again and assign that token to
    #            the request object's <code>nextToken</code> parameter. If there are no remaining results,
    #            the previous response object's NextToken parameter is set to null. </p>
    #
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListDeploymentJobs</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListDeploymentJobs</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 200. If this parameter is not used, then
    #               <code>ListDeploymentJobs</code> returns up to 200 results and a <code>nextToken</code>
    #            value if applicable. </p>
    #
    # @return [Types::ListDeploymentJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployment_jobs(
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDeploymentJobsOutput
    #   resp.data.deployment_jobs #=> Array<DeploymentJob>
    #   resp.data.deployment_jobs[0] #=> Types::DeploymentJob
    #   resp.data.deployment_jobs[0].arn #=> String
    #   resp.data.deployment_jobs[0].fleet #=> String
    #   resp.data.deployment_jobs[0].status #=> String, one of ["Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"]
    #   resp.data.deployment_jobs[0].deployment_application_configs #=> Array<DeploymentApplicationConfig>
    #   resp.data.deployment_jobs[0].deployment_application_configs[0] #=> Types::DeploymentApplicationConfig
    #   resp.data.deployment_jobs[0].deployment_application_configs[0].application #=> String
    #   resp.data.deployment_jobs[0].deployment_application_configs[0].application_version #=> String
    #   resp.data.deployment_jobs[0].deployment_application_configs[0].launch_config #=> Types::DeploymentLaunchConfig
    #   resp.data.deployment_jobs[0].deployment_application_configs[0].launch_config.package_name #=> String
    #   resp.data.deployment_jobs[0].deployment_application_configs[0].launch_config.pre_launch_file #=> String
    #   resp.data.deployment_jobs[0].deployment_application_configs[0].launch_config.launch_file #=> String
    #   resp.data.deployment_jobs[0].deployment_application_configs[0].launch_config.post_launch_file #=> String
    #   resp.data.deployment_jobs[0].deployment_application_configs[0].launch_config.environment_variables #=> Hash<String, String>
    #   resp.data.deployment_jobs[0].deployment_application_configs[0].launch_config.environment_variables['key'] #=> String
    #   resp.data.deployment_jobs[0].deployment_config #=> Types::DeploymentConfig
    #   resp.data.deployment_jobs[0].deployment_config.concurrent_deployment_percentage #=> Integer
    #   resp.data.deployment_jobs[0].deployment_config.failure_threshold_percentage #=> Integer
    #   resp.data.deployment_jobs[0].deployment_config.robot_deployment_timeout_in_seconds #=> Integer
    #   resp.data.deployment_jobs[0].deployment_config.download_condition_file #=> Types::S3Object
    #   resp.data.deployment_jobs[0].deployment_config.download_condition_file.bucket #=> String
    #   resp.data.deployment_jobs[0].deployment_config.download_condition_file.key #=> String
    #   resp.data.deployment_jobs[0].deployment_config.download_condition_file.etag #=> String
    #   resp.data.deployment_jobs[0].failure_reason #=> String
    #   resp.data.deployment_jobs[0].failure_code #=> String, one of ["ResourceNotFound", "EnvironmentSetupError", "EtagMismatch", "FailureThresholdBreached", "RobotDeploymentAborted", "RobotDeploymentNoResponse", "RobotAgentConnectionTimeout", "GreengrassDeploymentFailed", "InvalidGreengrassGroup", "MissingRobotArchitecture", "MissingRobotApplicationArchitecture", "MissingRobotDeploymentResource", "GreengrassGroupVersionDoesNotExist", "LambdaDeleted", "ExtractingBundleFailure", "PreLaunchFileFailure", "PostLaunchFileFailure", "BadPermissionError", "DownloadConditionFailed", "BadLambdaAssociated", "InternalServerError", "RobotApplicationDoesNotExist", "DeploymentFleetDoesNotExist", "FleetDeploymentTimeout"]
    #   resp.data.deployment_jobs[0].created_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_deployment_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDeploymentJobsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDeploymentJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDeploymentJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListDeploymentJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDeploymentJobs,
        stubs: @stubs,
        params_class: Params::ListDeploymentJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_deployment_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of fleets. You can optionally provide filters to retrieve specific fleets.</p>
    #          <important>
    #             <p>This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.</p>
    #          </important>
    #
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @param [Hash] params
    #   See {Types::ListFleetsInput}.
    #
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListFleets</code> again and assign that token to the
    #            request object's <code>nextToken</code> parameter. If there are no remaining results, the
    #            previous response object's NextToken parameter is set to null. </p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve
    #               the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListFleets</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListFleets</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 200. If this parameter is not used, then
    #               <code>ListFleets</code> returns up to 200 results and a <code>nextToken</code> value if
    #            applicable. </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Optional filters to limit results.</p>
    #            <p>The filter name <code>name</code> is supported. When filtering, you must use the
    #            complete value of the filtered item. You can use up to three filters.</p>
    #
    # @return [Types::ListFleetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fleets(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFleetsOutput
    #   resp.data.fleet_details #=> Array<Fleet>
    #   resp.data.fleet_details[0] #=> Types::Fleet
    #   resp.data.fleet_details[0].name #=> String
    #   resp.data.fleet_details[0].arn #=> String
    #   resp.data.fleet_details[0].created_at #=> Time
    #   resp.data.fleet_details[0].last_deployment_status #=> String, one of ["Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"]
    #   resp.data.fleet_details[0].last_deployment_job #=> String
    #   resp.data.fleet_details[0].last_deployment_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_fleets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFleetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFleetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFleets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListFleets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFleets,
        stubs: @stubs,
        params_class: Params::ListFleetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_fleets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of robot application. You can optionally provide filters to retrieve
    #          specific robot applications.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRobotApplicationsInput}.
    #
    # @option params [String] :version_qualifier
    #   <p>The version qualifier of the robot application.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListRobotApplications</code> again and assign that token to
    #            the request object's <code>nextToken</code> parameter. If there are no remaining results,
    #            the previous response object's NextToken parameter is set to null. </p>
    #
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListRobotApplications</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListRobotApplications</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 100. If this parameter is not used, then
    #               <code>ListRobotApplications</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable. </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Optional filters to limit results.</p>
    #            <p>The filter name <code>name</code> is supported. When filtering, you must use the
    #            complete value of the filtered item. You can use up to three filters.</p>
    #
    # @return [Types::ListRobotApplicationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_robot_applications(
    #     version_qualifier: 'versionQualifier',
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRobotApplicationsOutput
    #   resp.data.robot_application_summaries #=> Array<RobotApplicationSummary>
    #   resp.data.robot_application_summaries[0] #=> Types::RobotApplicationSummary
    #   resp.data.robot_application_summaries[0].name #=> String
    #   resp.data.robot_application_summaries[0].arn #=> String
    #   resp.data.robot_application_summaries[0].version #=> String
    #   resp.data.robot_application_summaries[0].last_updated_at #=> Time
    #   resp.data.robot_application_summaries[0].robot_software_suite #=> Types::RobotSoftwareSuite
    #   resp.data.robot_application_summaries[0].robot_software_suite.name #=> String, one of ["ROS", "ROS2", "General"]
    #   resp.data.robot_application_summaries[0].robot_software_suite.version #=> String, one of ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #   resp.data.next_token #=> String
    #
    def list_robot_applications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRobotApplicationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRobotApplicationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRobotApplications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ThrottlingException]),
        data_parser: Parsers::ListRobotApplications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRobotApplications,
        stubs: @stubs,
        params_class: Params::ListRobotApplicationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_robot_applications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of robots. You can optionally provide filters to retrieve specific robots.</p>
    #          <important>
    #             <p>This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.</p>
    #          </important>
    #
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @param [Hash] params
    #   See {Types::ListRobotsInput}.
    #
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListRobots</code> again and assign that token to the
    #            request object's <code>nextToken</code> parameter. If there are no remaining results, the
    #            previous response object's NextToken parameter is set to null. </p>
    #
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListRobots</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListRobots</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 200. If this parameter is not used, then
    #               <code>ListRobots</code> returns up to 200 results and a <code>nextToken</code> value if
    #            applicable. </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Optional filters to limit results.</p>
    #            <p>The filter names <code>status</code> and <code>fleetName</code> are supported. When
    #            filtering, you must use the complete value of the filtered item. You can use up to three
    #            filters, but they must be for the same named item. For example, if you are looking for
    #            items with the status <code>Registered</code> or the status <code>Available</code>.</p>
    #
    # @return [Types::ListRobotsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_robots(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRobotsOutput
    #   resp.data.robots #=> Array<Robot>
    #   resp.data.robots[0] #=> Types::Robot
    #   resp.data.robots[0].arn #=> String
    #   resp.data.robots[0].name #=> String
    #   resp.data.robots[0].fleet_arn #=> String
    #   resp.data.robots[0].status #=> String, one of ["Available", "Registered", "PendingNewDeployment", "Deploying", "Failed", "InSync", "NoResponse"]
    #   resp.data.robots[0].green_grass_group_id #=> String
    #   resp.data.robots[0].created_at #=> Time
    #   resp.data.robots[0].architecture #=> String, one of ["X86_64", "ARM64", "ARMHF"]
    #   resp.data.robots[0].last_deployment_job #=> String
    #   resp.data.robots[0].last_deployment_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_robots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRobotsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRobotsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRobots
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListRobots
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRobots,
        stubs: @stubs,
        params_class: Params::ListRobotsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_robots
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of simulation applications. You can optionally provide filters to
    #          retrieve specific simulation applications. </p>
    #
    # @param [Hash] params
    #   See {Types::ListSimulationApplicationsInput}.
    #
    # @option params [String] :version_qualifier
    #   <p>The version qualifier of the simulation application.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListSimulationApplications</code> again and assign that
    #            token to the request object's <code>nextToken</code> parameter. If there are no remaining
    #            results, the previous response object's NextToken parameter is set to null. </p>
    #
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListSimulationApplications</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListSimulationApplications</code> request with the returned
    #               <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is
    #            not used, then <code>ListSimulationApplications</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable. </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Optional list of filters to limit results.</p>
    #            <p>The filter name <code>name</code> is supported. When filtering, you must use the
    #            complete value of the filtered item. You can use up to three filters.</p>
    #
    # @return [Types::ListSimulationApplicationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_simulation_applications(
    #     version_qualifier: 'versionQualifier',
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSimulationApplicationsOutput
    #   resp.data.simulation_application_summaries #=> Array<SimulationApplicationSummary>
    #   resp.data.simulation_application_summaries[0] #=> Types::SimulationApplicationSummary
    #   resp.data.simulation_application_summaries[0].name #=> String
    #   resp.data.simulation_application_summaries[0].arn #=> String
    #   resp.data.simulation_application_summaries[0].version #=> String
    #   resp.data.simulation_application_summaries[0].last_updated_at #=> Time
    #   resp.data.simulation_application_summaries[0].robot_software_suite #=> Types::RobotSoftwareSuite
    #   resp.data.simulation_application_summaries[0].robot_software_suite.name #=> String, one of ["ROS", "ROS2", "General"]
    #   resp.data.simulation_application_summaries[0].robot_software_suite.version #=> String, one of ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #   resp.data.simulation_application_summaries[0].simulation_software_suite #=> Types::SimulationSoftwareSuite
    #   resp.data.simulation_application_summaries[0].simulation_software_suite.name #=> String, one of ["Gazebo", "RosbagPlay", "SimulationRuntime"]
    #   resp.data.simulation_application_summaries[0].simulation_software_suite.version #=> String
    #   resp.data.next_token #=> String
    #
    def list_simulation_applications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSimulationApplicationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSimulationApplicationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSimulationApplications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ThrottlingException]),
        data_parser: Parsers::ListSimulationApplications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSimulationApplications,
        stubs: @stubs,
        params_class: Params::ListSimulationApplicationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_simulation_applications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list simulation job batches. You can optionally provide filters to retrieve
    #          specific simulation batch jobs. </p>
    #
    # @param [Hash] params
    #   See {Types::ListSimulationJobBatchesInput}.
    #
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListSimulationJobBatches</code> again and assign that token
    #            to the request object's <code>nextToken</code> parameter. If there are no remaining
    #            results, the previous response object's NextToken parameter is set to null. </p>
    #
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListSimulationJobBatches</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListSimulationJobBatches</code> request with the returned
    #               <code>nextToken</code> value. </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Optional filters to limit results.</p>
    #
    # @return [Types::ListSimulationJobBatchesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_simulation_job_batches(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSimulationJobBatchesOutput
    #   resp.data.simulation_job_batch_summaries #=> Array<SimulationJobBatchSummary>
    #   resp.data.simulation_job_batch_summaries[0] #=> Types::SimulationJobBatchSummary
    #   resp.data.simulation_job_batch_summaries[0].arn #=> String
    #   resp.data.simulation_job_batch_summaries[0].last_updated_at #=> Time
    #   resp.data.simulation_job_batch_summaries[0].created_at #=> Time
    #   resp.data.simulation_job_batch_summaries[0].status #=> String, one of ["Pending", "InProgress", "Failed", "Completed", "Canceled", "Canceling", "Completing", "TimingOut", "TimedOut"]
    #   resp.data.simulation_job_batch_summaries[0].failed_request_count #=> Integer
    #   resp.data.simulation_job_batch_summaries[0].pending_request_count #=> Integer
    #   resp.data.simulation_job_batch_summaries[0].created_request_count #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_simulation_job_batches(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSimulationJobBatchesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSimulationJobBatchesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSimulationJobBatches
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::ListSimulationJobBatches
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSimulationJobBatches,
        stubs: @stubs,
        params_class: Params::ListSimulationJobBatchesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_simulation_job_batches
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of simulation jobs. You can optionally provide filters to retrieve
    #          specific simulation jobs. </p>
    #
    # @param [Hash] params
    #   See {Types::ListSimulationJobsInput}.
    #
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListSimulationJobs</code> again and assign that token to
    #            the request object's <code>nextToken</code> parameter. If there are no remaining results,
    #            the previous response object's NextToken parameter is set to null. </p>
    #
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListSimulationJobs</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListSimulationJobs</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 1000. If this parameter is not used, then
    #               <code>ListSimulationJobs</code> returns up to 1000 results and a <code>nextToken</code>
    #            value if applicable. </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Optional filters to limit results.</p>
    #            <p>The filter names <code>status</code> and <code>simulationApplicationName</code> and
    #               <code>robotApplicationName</code> are supported. When filtering, you must use the
    #            complete value of the filtered item. You can use up to three filters, but they must be for
    #            the same named item. For example, if you are looking for items with the status
    #               <code>Preparing</code> or the status <code>Running</code>.</p>
    #
    # @return [Types::ListSimulationJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_simulation_jobs(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSimulationJobsOutput
    #   resp.data.simulation_job_summaries #=> Array<SimulationJobSummary>
    #   resp.data.simulation_job_summaries[0] #=> Types::SimulationJobSummary
    #   resp.data.simulation_job_summaries[0].arn #=> String
    #   resp.data.simulation_job_summaries[0].last_updated_at #=> Time
    #   resp.data.simulation_job_summaries[0].name #=> String
    #   resp.data.simulation_job_summaries[0].status #=> String, one of ["Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"]
    #   resp.data.simulation_job_summaries[0].simulation_application_names #=> Array<String>
    #   resp.data.simulation_job_summaries[0].simulation_application_names[0] #=> String
    #   resp.data.simulation_job_summaries[0].robot_application_names #=> Array<String>
    #   resp.data.simulation_job_summaries[0].robot_application_names[0] #=> String
    #   resp.data.simulation_job_summaries[0].data_source_names #=> Array<String>
    #   resp.data.simulation_job_summaries[0].data_source_names[0] #=> String
    #   resp.data.simulation_job_summaries[0].compute_type #=> String, one of ["CPU", "GPU_AND_CPU"]
    #   resp.data.next_token #=> String
    #
    def list_simulation_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSimulationJobsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSimulationJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSimulationJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ThrottlingException]),
        data_parser: Parsers::ListSimulationJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSimulationJobs,
        stubs: @stubs,
        params_class: Params::ListSimulationJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_simulation_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all tags on a AWS RoboMaker resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The AWS RoboMaker Amazon Resource Name (ARN) with tags to be listed.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Lists world export jobs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListWorldExportJobsInput}.
    #
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListWorldExportJobs</code> again and assign that token to
    #            the request object's <code>nextToken</code> parameter. If there are no remaining results,
    #            the previous response object's NextToken parameter is set to null. </p>
    #
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListWorldExportJobs</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListWorldExportJobs</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 100. If this parameter is not used, then
    #               <code>ListWorldExportJobs</code> returns up to 100 results and a <code>nextToken</code>
    #            value if applicable. </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Optional filters to limit results. You can use <code>generationJobId</code> and
    #               <code>templateId</code>.</p>
    #
    # @return [Types::ListWorldExportJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_world_export_jobs(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWorldExportJobsOutput
    #   resp.data.world_export_job_summaries #=> Array<WorldExportJobSummary>
    #   resp.data.world_export_job_summaries[0] #=> Types::WorldExportJobSummary
    #   resp.data.world_export_job_summaries[0].arn #=> String
    #   resp.data.world_export_job_summaries[0].status #=> String, one of ["Pending", "Running", "Completed", "Failed", "Canceling", "Canceled"]
    #   resp.data.world_export_job_summaries[0].created_at #=> Time
    #   resp.data.world_export_job_summaries[0].worlds #=> Array<String>
    #   resp.data.world_export_job_summaries[0].worlds[0] #=> String
    #   resp.data.world_export_job_summaries[0].output_location #=> Types::OutputLocation
    #   resp.data.world_export_job_summaries[0].output_location.s3_bucket #=> String
    #   resp.data.world_export_job_summaries[0].output_location.s3_prefix #=> String
    #   resp.data.next_token #=> String
    #
    def list_world_export_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWorldExportJobsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWorldExportJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWorldExportJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ThrottlingException]),
        data_parser: Parsers::ListWorldExportJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWorldExportJobs,
        stubs: @stubs,
        params_class: Params::ListWorldExportJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_world_export_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists world generator jobs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListWorldGenerationJobsInput}.
    #
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListWorldGenerationJobsRequest</code> again and assign that
    #            token to the request object's <code>nextToken</code> parameter. If there are no remaining
    #            results, the previous response object's NextToken parameter is set to null. </p>
    #
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListWorldGeneratorJobs</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListWorldGeneratorJobs</code> request with the returned
    #               <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is
    #            not used, then <code>ListWorldGeneratorJobs</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable. </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Optional filters to limit results. You can use <code>status</code> and
    #               <code>templateId</code>.</p>
    #
    # @return [Types::ListWorldGenerationJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_world_generation_jobs(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWorldGenerationJobsOutput
    #   resp.data.world_generation_job_summaries #=> Array<WorldGenerationJobSummary>
    #   resp.data.world_generation_job_summaries[0] #=> Types::WorldGenerationJobSummary
    #   resp.data.world_generation_job_summaries[0].arn #=> String
    #   resp.data.world_generation_job_summaries[0].template #=> String
    #   resp.data.world_generation_job_summaries[0].created_at #=> Time
    #   resp.data.world_generation_job_summaries[0].status #=> String, one of ["Pending", "Running", "Completed", "Failed", "PartialFailed", "Canceling", "Canceled"]
    #   resp.data.world_generation_job_summaries[0].world_count #=> Types::WorldCount
    #   resp.data.world_generation_job_summaries[0].world_count.floorplan_count #=> Integer
    #   resp.data.world_generation_job_summaries[0].world_count.interior_count_per_floorplan #=> Integer
    #   resp.data.world_generation_job_summaries[0].succeeded_world_count #=> Integer
    #   resp.data.world_generation_job_summaries[0].failed_world_count #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_world_generation_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWorldGenerationJobsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWorldGenerationJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWorldGenerationJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ThrottlingException]),
        data_parser: Parsers::ListWorldGenerationJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWorldGenerationJobs,
        stubs: @stubs,
        params_class: Params::ListWorldGenerationJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_world_generation_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists world templates.</p>
    #
    # @param [Hash] params
    #   See {Types::ListWorldTemplatesInput}.
    #
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListWorldTemplates</code> again and assign that token to
    #            the request object's <code>nextToken</code> parameter. If there are no remaining results,
    #            the previous response object's NextToken parameter is set to null. </p>
    #
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListWorldTemplates</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListWorldTemplates</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 100. If this parameter is not used, then
    #               <code>ListWorldTemplates</code> returns up to 100 results and a <code>nextToken</code>
    #            value if applicable. </p>
    #
    # @return [Types::ListWorldTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_world_templates(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWorldTemplatesOutput
    #   resp.data.template_summaries #=> Array<TemplateSummary>
    #   resp.data.template_summaries[0] #=> Types::TemplateSummary
    #   resp.data.template_summaries[0].arn #=> String
    #   resp.data.template_summaries[0].created_at #=> Time
    #   resp.data.template_summaries[0].last_updated_at #=> Time
    #   resp.data.template_summaries[0].name #=> String
    #   resp.data.template_summaries[0].version #=> String
    #   resp.data.next_token #=> String
    #
    def list_world_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWorldTemplatesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWorldTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWorldTemplates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ThrottlingException]),
        data_parser: Parsers::ListWorldTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWorldTemplates,
        stubs: @stubs,
        params_class: Params::ListWorldTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_world_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists worlds.</p>
    #
    # @param [Hash] params
    #   See {Types::ListWorldsInput}.
    #
    # @option params [String] :next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListWorlds</code> again and assign that token to the
    #            request object's <code>nextToken</code> parameter. If there are no remaining results, the
    #            previous response object's NextToken parameter is set to null. </p>
    #
    # @option params [Integer] :max_results
    #   <p>When this parameter is used, <code>ListWorlds</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListWorlds</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If this parameter is not used, then
    #               <code>ListWorlds</code> returns up to 100 results and a <code>nextToken</code> value if
    #            applicable. </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Optional filters to limit results. You can use <code>status</code>.</p>
    #
    # @return [Types::ListWorldsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_worlds(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWorldsOutput
    #   resp.data.world_summaries #=> Array<WorldSummary>
    #   resp.data.world_summaries[0] #=> Types::WorldSummary
    #   resp.data.world_summaries[0].arn #=> String
    #   resp.data.world_summaries[0].created_at #=> Time
    #   resp.data.world_summaries[0].generation_job #=> String
    #   resp.data.world_summaries[0].template #=> String
    #   resp.data.next_token #=> String
    #
    def list_worlds(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWorldsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWorldsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWorlds
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ThrottlingException]),
        data_parser: Parsers::ListWorlds
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWorlds,
        stubs: @stubs,
        params_class: Params::ListWorldsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_worlds
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers a robot with a fleet.</p>
    #          <important>
    #             <p>This API is no longer supported and will throw an error if used.</p>
    #          </important>
    #
    # @deprecated
    #   AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @param [Hash] params
    #   See {Types::RegisterRobotInput}.
    #
    # @option params [String] :fleet
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    # @option params [String] :robot
    #   <p>The Amazon Resource Name (ARN) of the robot.</p>
    #
    # @return [Types::RegisterRobotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_robot(
    #     fleet: 'fleet', # required
    #     robot: 'robot' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterRobotOutput
    #   resp.data.fleet #=> String
    #   resp.data.robot #=> String
    #
    def register_robot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterRobotInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterRobotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterRobot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::LimitExceededException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::RegisterRobot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterRobot,
        stubs: @stubs,
        params_class: Params::RegisterRobotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_robot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Restarts a running simulation job.</p>
    #
    # @param [Hash] params
    #   See {Types::RestartSimulationJobInput}.
    #
    # @option params [String] :job
    #   <p>The Amazon Resource Name (ARN) of the simulation job.</p>
    #
    # @return [Types::RestartSimulationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restart_simulation_job(
    #     job: 'job' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestartSimulationJobOutput
    #
    def restart_simulation_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestartSimulationJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestartSimulationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestartSimulationJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::LimitExceededException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::RestartSimulationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestartSimulationJob,
        stubs: @stubs,
        params_class: Params::RestartSimulationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restart_simulation_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a new simulation job batch. The batch is defined using one or more
    #             <code>SimulationJobRequest</code> objects. </p>
    #
    # @param [Hash] params
    #   See {Types::StartSimulationJobBatchInput}.
    #
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    # @option params [BatchPolicy] :batch_policy
    #   <p>The batch policy.</p>
    #
    # @option params [Array<SimulationJobRequest>] :create_simulation_job_requests
    #   <p>A list of simulation job requests to create in the batch.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the deployment job
    #            batch.</p>
    #
    # @return [Types::StartSimulationJobBatchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_simulation_job_batch(
    #     client_request_token: 'clientRequestToken',
    #     batch_policy: {
    #       timeout_in_seconds: 1,
    #       max_concurrency: 1
    #     },
    #     create_simulation_job_requests: [
    #       {
    #         output_location: {
    #           s3_bucket: 's3Bucket',
    #           s3_prefix: 's3Prefix'
    #         },
    #         logging_config: {
    #           record_all_ros_topics: false
    #         },
    #         max_job_duration_in_seconds: 1, # required
    #         iam_role: 'iamRole',
    #         failure_behavior: 'Fail', # accepts ["Fail", "Continue"]
    #         use_default_applications: false,
    #         robot_applications: [
    #           {
    #             application: 'application', # required
    #             application_version: 'applicationVersion',
    #             launch_config: {
    #               package_name: 'packageName',
    #               launch_file: 'launchFile',
    #               environment_variables: {
    #                 'key' => 'value'
    #               },
    #               port_forwarding_config: {
    #                 port_mappings: [
    #                   {
    #                     job_port: 1, # required
    #                     application_port: 1, # required
    #                     enable_on_public_ip: false
    #                   }
    #                 ]
    #               },
    #               stream_ui: false,
    #               command: [
    #                 'member'
    #               ]
    #             }, # required
    #             upload_configurations: [
    #               {
    #                 name: 'name', # required
    #                 path: 'path', # required
    #                 upload_behavior: 'UPLOAD_ON_TERMINATE' # required - accepts ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"]
    #               }
    #             ],
    #             use_default_upload_configurations: false,
    #             tools: [
    #               {
    #                 stream_ui: false,
    #                 name: 'name', # required
    #                 command: 'command', # required
    #                 stream_output_to_cloud_watch: false,
    #                 exit_behavior: 'FAIL' # accepts ["FAIL", "RESTART"]
    #               }
    #             ],
    #             use_default_tools: false
    #           }
    #         ],
    #         simulation_applications: [
    #           {
    #             application: 'application', # required
    #             application_version: 'applicationVersion',
    #             world_configs: [
    #               {
    #                 world: 'world'
    #               }
    #             ],
    #             use_default_upload_configurations: false,
    #             use_default_tools: false
    #           }
    #         ],
    #         data_sources: [
    #           {
    #             name: 'name', # required
    #             s3_bucket: 's3Bucket', # required
    #             s3_keys: [
    #               'member'
    #             ], # required
    #             type: 'Prefix', # accepts ["Prefix", "Archive", "File"]
    #             destination: 'destination'
    #           }
    #         ],
    #         vpc_config: {
    #           subnets: [
    #             'member'
    #           ], # required
    #           security_groups: [
    #             'member'
    #           ],
    #           assign_public_ip: false
    #         },
    #         compute: {
    #           simulation_unit_limit: 1,
    #           compute_type: 'CPU', # accepts ["CPU", "GPU_AND_CPU"]
    #           gpu_unit_limit: 1
    #         },
    #         tags: {
    #           'key' => 'value'
    #         }
    #       }
    #     ], # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartSimulationJobBatchOutput
    #   resp.data.arn #=> String
    #   resp.data.status #=> String, one of ["Pending", "InProgress", "Failed", "Completed", "Canceled", "Canceling", "Completing", "TimingOut", "TimedOut"]
    #   resp.data.created_at #=> Time
    #   resp.data.client_request_token #=> String
    #   resp.data.batch_policy #=> Types::BatchPolicy
    #   resp.data.batch_policy.timeout_in_seconds #=> Integer
    #   resp.data.batch_policy.max_concurrency #=> Integer
    #   resp.data.failure_code #=> String, one of ["InternalServiceError"]
    #   resp.data.failure_reason #=> String
    #   resp.data.failed_requests #=> Array<FailedCreateSimulationJobRequest>
    #   resp.data.failed_requests[0] #=> Types::FailedCreateSimulationJobRequest
    #   resp.data.failed_requests[0].request #=> Types::SimulationJobRequest
    #   resp.data.failed_requests[0].request.output_location #=> Types::OutputLocation
    #   resp.data.failed_requests[0].request.output_location.s3_bucket #=> String
    #   resp.data.failed_requests[0].request.output_location.s3_prefix #=> String
    #   resp.data.failed_requests[0].request.logging_config #=> Types::LoggingConfig
    #   resp.data.failed_requests[0].request.logging_config.record_all_ros_topics #=> Boolean
    #   resp.data.failed_requests[0].request.max_job_duration_in_seconds #=> Integer
    #   resp.data.failed_requests[0].request.iam_role #=> String
    #   resp.data.failed_requests[0].request.failure_behavior #=> String, one of ["Fail", "Continue"]
    #   resp.data.failed_requests[0].request.use_default_applications #=> Boolean
    #   resp.data.failed_requests[0].request.robot_applications #=> Array<RobotApplicationConfig>
    #   resp.data.failed_requests[0].request.robot_applications[0] #=> Types::RobotApplicationConfig
    #   resp.data.failed_requests[0].request.robot_applications[0].application #=> String
    #   resp.data.failed_requests[0].request.robot_applications[0].application_version #=> String
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config #=> Types::LaunchConfig
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.package_name #=> String
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.launch_file #=> String
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.environment_variables #=> Hash<String, String>
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.environment_variables['key'] #=> String
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.port_forwarding_config #=> Types::PortForwardingConfig
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.port_forwarding_config.port_mappings #=> Array<PortMapping>
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0] #=> Types::PortMapping
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].job_port #=> Integer
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].application_port #=> Integer
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.port_forwarding_config.port_mappings[0].enable_on_public_ip #=> Boolean
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.stream_ui #=> Boolean
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.command #=> Array<String>
    #   resp.data.failed_requests[0].request.robot_applications[0].launch_config.command[0] #=> String
    #   resp.data.failed_requests[0].request.robot_applications[0].upload_configurations #=> Array<UploadConfiguration>
    #   resp.data.failed_requests[0].request.robot_applications[0].upload_configurations[0] #=> Types::UploadConfiguration
    #   resp.data.failed_requests[0].request.robot_applications[0].upload_configurations[0].name #=> String
    #   resp.data.failed_requests[0].request.robot_applications[0].upload_configurations[0].path #=> String
    #   resp.data.failed_requests[0].request.robot_applications[0].upload_configurations[0].upload_behavior #=> String, one of ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"]
    #   resp.data.failed_requests[0].request.robot_applications[0].use_default_upload_configurations #=> Boolean
    #   resp.data.failed_requests[0].request.robot_applications[0].tools #=> Array<Tool>
    #   resp.data.failed_requests[0].request.robot_applications[0].tools[0] #=> Types::Tool
    #   resp.data.failed_requests[0].request.robot_applications[0].tools[0].stream_ui #=> Boolean
    #   resp.data.failed_requests[0].request.robot_applications[0].tools[0].name #=> String
    #   resp.data.failed_requests[0].request.robot_applications[0].tools[0].command #=> String
    #   resp.data.failed_requests[0].request.robot_applications[0].tools[0].stream_output_to_cloud_watch #=> Boolean
    #   resp.data.failed_requests[0].request.robot_applications[0].tools[0].exit_behavior #=> String, one of ["FAIL", "RESTART"]
    #   resp.data.failed_requests[0].request.robot_applications[0].use_default_tools #=> Boolean
    #   resp.data.failed_requests[0].request.simulation_applications #=> Array<SimulationApplicationConfig>
    #   resp.data.failed_requests[0].request.simulation_applications[0] #=> Types::SimulationApplicationConfig
    #   resp.data.failed_requests[0].request.simulation_applications[0].application #=> String
    #   resp.data.failed_requests[0].request.simulation_applications[0].application_version #=> String
    #   resp.data.failed_requests[0].request.simulation_applications[0].launch_config #=> Types::LaunchConfig
    #   resp.data.failed_requests[0].request.simulation_applications[0].upload_configurations #=> Array<UploadConfiguration>
    #   resp.data.failed_requests[0].request.simulation_applications[0].world_configs #=> Array<WorldConfig>
    #   resp.data.failed_requests[0].request.simulation_applications[0].world_configs[0] #=> Types::WorldConfig
    #   resp.data.failed_requests[0].request.simulation_applications[0].world_configs[0].world #=> String
    #   resp.data.failed_requests[0].request.simulation_applications[0].use_default_upload_configurations #=> Boolean
    #   resp.data.failed_requests[0].request.simulation_applications[0].tools #=> Array<Tool>
    #   resp.data.failed_requests[0].request.simulation_applications[0].use_default_tools #=> Boolean
    #   resp.data.failed_requests[0].request.data_sources #=> Array<DataSourceConfig>
    #   resp.data.failed_requests[0].request.data_sources[0] #=> Types::DataSourceConfig
    #   resp.data.failed_requests[0].request.data_sources[0].name #=> String
    #   resp.data.failed_requests[0].request.data_sources[0].s3_bucket #=> String
    #   resp.data.failed_requests[0].request.data_sources[0].s3_keys #=> Array<String>
    #   resp.data.failed_requests[0].request.data_sources[0].s3_keys[0] #=> String
    #   resp.data.failed_requests[0].request.data_sources[0].type #=> String, one of ["Prefix", "Archive", "File"]
    #   resp.data.failed_requests[0].request.data_sources[0].destination #=> String
    #   resp.data.failed_requests[0].request.vpc_config #=> Types::VPCConfig
    #   resp.data.failed_requests[0].request.vpc_config.subnets #=> Array<String>
    #   resp.data.failed_requests[0].request.vpc_config.subnets[0] #=> String
    #   resp.data.failed_requests[0].request.vpc_config.security_groups #=> Array<String>
    #   resp.data.failed_requests[0].request.vpc_config.security_groups[0] #=> String
    #   resp.data.failed_requests[0].request.vpc_config.assign_public_ip #=> Boolean
    #   resp.data.failed_requests[0].request.compute #=> Types::Compute
    #   resp.data.failed_requests[0].request.compute.simulation_unit_limit #=> Integer
    #   resp.data.failed_requests[0].request.compute.compute_type #=> String, one of ["CPU", "GPU_AND_CPU"]
    #   resp.data.failed_requests[0].request.compute.gpu_unit_limit #=> Integer
    #   resp.data.failed_requests[0].request.tags #=> Hash<String, String>
    #   resp.data.failed_requests[0].request.tags['key'] #=> String
    #   resp.data.failed_requests[0].failure_reason #=> String
    #   resp.data.failed_requests[0].failure_code #=> String, one of ["InternalServiceError", "RobotApplicationCrash", "SimulationApplicationCrash", "RobotApplicationHealthCheckFailure", "SimulationApplicationHealthCheckFailure", "BadPermissionsRobotApplication", "BadPermissionsSimulationApplication", "BadPermissionsS3Object", "BadPermissionsS3Output", "BadPermissionsCloudwatchLogs", "SubnetIpLimitExceeded", "ENILimitExceeded", "BadPermissionsUserCredentials", "InvalidBundleRobotApplication", "InvalidBundleSimulationApplication", "InvalidS3Resource", "ThrottlingError", "LimitExceeded", "MismatchedEtag", "RobotApplicationVersionMismatchedEtag", "SimulationApplicationVersionMismatchedEtag", "ResourceNotFound", "RequestThrottled", "BatchTimedOut", "BatchCanceled", "InvalidInput", "WrongRegionS3Bucket", "WrongRegionS3Output", "WrongRegionRobotApplication", "WrongRegionSimulationApplication", "UploadContentMismatchError"]
    #   resp.data.failed_requests[0].failed_at #=> Time
    #   resp.data.pending_requests #=> Array<SimulationJobRequest>
    #   resp.data.created_requests #=> Array<SimulationJobSummary>
    #   resp.data.created_requests[0] #=> Types::SimulationJobSummary
    #   resp.data.created_requests[0].arn #=> String
    #   resp.data.created_requests[0].last_updated_at #=> Time
    #   resp.data.created_requests[0].name #=> String
    #   resp.data.created_requests[0].status #=> String, one of ["Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"]
    #   resp.data.created_requests[0].simulation_application_names #=> Array<String>
    #   resp.data.created_requests[0].simulation_application_names[0] #=> String
    #   resp.data.created_requests[0].robot_application_names #=> Array<String>
    #   resp.data.created_requests[0].robot_application_names[0] #=> String
    #   resp.data.created_requests[0].data_source_names #=> Array<String>
    #   resp.data.created_requests[0].data_source_names[0] #=> String
    #   resp.data.created_requests[0].compute_type #=> String, one of ["CPU", "GPU_AND_CPU"]
    #   resp.data.tags #=> Hash<String, String>
    #
    def start_simulation_job_batch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartSimulationJobBatchInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartSimulationJobBatchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartSimulationJobBatch
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::LimitExceededException, Errors::InvalidParameterException, Errors::ThrottlingException, Errors::IdempotentParameterMismatchException]),
        data_parser: Parsers::StartSimulationJobBatch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartSimulationJobBatch,
        stubs: @stubs,
        params_class: Params::StartSimulationJobBatchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_simulation_job_batch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Syncrhonizes robots in a fleet to the latest deployment. This is helpful if robots were added after a deployment.</p>
    #          <important>
    #             <p>This API will no longer be supported as of May 2, 2022. Use it to remove resources that were created for Deployment Service.</p>
    #          </important>
    #
    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @param [Hash] params
    #   See {Types::SyncDeploymentJobInput}.
    #
    # @option params [String] :client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    # @option params [String] :fleet
    #   <p>The target fleet for the synchronization.</p>
    #
    # @return [Types::SyncDeploymentJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.sync_deployment_job(
    #     client_request_token: 'clientRequestToken', # required
    #     fleet: 'fleet' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SyncDeploymentJobOutput
    #   resp.data.arn #=> String
    #   resp.data.fleet #=> String
    #   resp.data.status #=> String, one of ["Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"]
    #   resp.data.deployment_config #=> Types::DeploymentConfig
    #   resp.data.deployment_config.concurrent_deployment_percentage #=> Integer
    #   resp.data.deployment_config.failure_threshold_percentage #=> Integer
    #   resp.data.deployment_config.robot_deployment_timeout_in_seconds #=> Integer
    #   resp.data.deployment_config.download_condition_file #=> Types::S3Object
    #   resp.data.deployment_config.download_condition_file.bucket #=> String
    #   resp.data.deployment_config.download_condition_file.key #=> String
    #   resp.data.deployment_config.download_condition_file.etag #=> String
    #   resp.data.deployment_application_configs #=> Array<DeploymentApplicationConfig>
    #   resp.data.deployment_application_configs[0] #=> Types::DeploymentApplicationConfig
    #   resp.data.deployment_application_configs[0].application #=> String
    #   resp.data.deployment_application_configs[0].application_version #=> String
    #   resp.data.deployment_application_configs[0].launch_config #=> Types::DeploymentLaunchConfig
    #   resp.data.deployment_application_configs[0].launch_config.package_name #=> String
    #   resp.data.deployment_application_configs[0].launch_config.pre_launch_file #=> String
    #   resp.data.deployment_application_configs[0].launch_config.launch_file #=> String
    #   resp.data.deployment_application_configs[0].launch_config.post_launch_file #=> String
    #   resp.data.deployment_application_configs[0].launch_config.environment_variables #=> Hash<String, String>
    #   resp.data.deployment_application_configs[0].launch_config.environment_variables['key'] #=> String
    #   resp.data.failure_reason #=> String
    #   resp.data.failure_code #=> String, one of ["ResourceNotFound", "EnvironmentSetupError", "EtagMismatch", "FailureThresholdBreached", "RobotDeploymentAborted", "RobotDeploymentNoResponse", "RobotAgentConnectionTimeout", "GreengrassDeploymentFailed", "InvalidGreengrassGroup", "MissingRobotArchitecture", "MissingRobotApplicationArchitecture", "MissingRobotDeploymentResource", "GreengrassGroupVersionDoesNotExist", "LambdaDeleted", "ExtractingBundleFailure", "PreLaunchFileFailure", "PostLaunchFileFailure", "BadPermissionError", "DownloadConditionFailed", "BadLambdaAssociated", "InternalServerError", "RobotApplicationDoesNotExist", "DeploymentFleetDoesNotExist", "FleetDeploymentTimeout"]
    #   resp.data.created_at #=> Time
    #
    def sync_deployment_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SyncDeploymentJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SyncDeploymentJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SyncDeploymentJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::LimitExceededException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::IdempotentParameterMismatchException, Errors::ConcurrentDeploymentException]),
        data_parser: Parsers::SyncDeploymentJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SyncDeploymentJob,
        stubs: @stubs,
        params_class: Params::SyncDeploymentJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :sync_deployment_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or edits tags for a AWS RoboMaker resource.</p>
    #          <p>Each tag consists of a tag key and a tag value. Tag keys and tag values are both
    #          required, but tag values can be empty strings. </p>
    #          <p>For information about the rules that apply to tag keys and tag values, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-Defined Tag Restrictions</a> in the <i>AWS Billing and Cost Management
    #             User Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS RoboMaker resource you are tagging.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A map that contains tag keys and tag values that are attached to the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Removes the specified tags from the specified AWS RoboMaker resource.</p>
    #          <p>To remove a tag, specify the tag key. To change the tag value of an existing tag key,
    #          use <a href="https://docs.aws.amazon.com/robomaker/latest/dg/API_TagResource.html">
    #                <code>TagResource</code>
    #             </a>. </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS RoboMaker resource you are removing
    #            tags.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A map that contains tag keys and tag values that will be unattached from the
    #            resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Updates a robot application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRobotApplicationInput}.
    #
    # @option params [String] :application
    #   <p>The application information for the robot application.</p>
    #
    # @option params [Array<SourceConfig>] :sources
    #   <p>The sources of the robot application.</p>
    #
    # @option params [RobotSoftwareSuite] :robot_software_suite
    #   <p>The robot software suite (ROS distribution) used by the robot application.</p>
    #
    # @option params [String] :current_revision_id
    #   <p>The revision id for the robot application.</p>
    #
    # @option params [Environment] :environment
    #   <p>The object that contains the Docker image URI for your robot application.</p>
    #
    # @return [Types::UpdateRobotApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_robot_application(
    #     application: 'application', # required
    #     sources: [
    #       {
    #         s3_bucket: 's3Bucket',
    #         s3_key: 's3Key',
    #         architecture: 'X86_64' # accepts ["X86_64", "ARM64", "ARMHF"]
    #       }
    #     ],
    #     robot_software_suite: {
    #       name: 'ROS', # accepts ["ROS", "ROS2", "General"]
    #       version: 'Kinetic' # accepts ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #     }, # required
    #     current_revision_id: 'currentRevisionId',
    #     environment: {
    #       uri: 'uri'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRobotApplicationOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.version #=> String
    #   resp.data.sources #=> Array<Source>
    #   resp.data.sources[0] #=> Types::Source
    #   resp.data.sources[0].s3_bucket #=> String
    #   resp.data.sources[0].s3_key #=> String
    #   resp.data.sources[0].etag #=> String
    #   resp.data.sources[0].architecture #=> String, one of ["X86_64", "ARM64", "ARMHF"]
    #   resp.data.robot_software_suite #=> Types::RobotSoftwareSuite
    #   resp.data.robot_software_suite.name #=> String, one of ["ROS", "ROS2", "General"]
    #   resp.data.robot_software_suite.version #=> String, one of ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #   resp.data.last_updated_at #=> Time
    #   resp.data.revision_id #=> String
    #   resp.data.environment #=> Types::Environment
    #   resp.data.environment.uri #=> String
    #
    def update_robot_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRobotApplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRobotApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRobotApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::LimitExceededException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateRobotApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRobotApplication,
        stubs: @stubs,
        params_class: Params::UpdateRobotApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_robot_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a simulation application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSimulationApplicationInput}.
    #
    # @option params [String] :application
    #   <p>The application information for the simulation application.</p>
    #
    # @option params [Array<SourceConfig>] :sources
    #   <p>The sources of the simulation application.</p>
    #
    # @option params [SimulationSoftwareSuite] :simulation_software_suite
    #   <p>The simulation software suite used by the simulation application.</p>
    #
    # @option params [RobotSoftwareSuite] :robot_software_suite
    #   <p>Information about the robot software suite (ROS distribution).</p>
    #
    # @option params [RenderingEngine] :rendering_engine
    #   <p>The rendering engine for the simulation application.</p>
    #
    # @option params [String] :current_revision_id
    #   <p>The revision id for the robot application.</p>
    #
    # @option params [Environment] :environment
    #   <p>The object that contains the Docker image URI for your simulation application.</p>
    #
    # @return [Types::UpdateSimulationApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_simulation_application(
    #     application: 'application', # required
    #     sources: [
    #       {
    #         s3_bucket: 's3Bucket',
    #         s3_key: 's3Key',
    #         architecture: 'X86_64' # accepts ["X86_64", "ARM64", "ARMHF"]
    #       }
    #     ],
    #     simulation_software_suite: {
    #       name: 'Gazebo', # accepts ["Gazebo", "RosbagPlay", "SimulationRuntime"]
    #       version: 'version'
    #     }, # required
    #     robot_software_suite: {
    #       name: 'ROS', # accepts ["ROS", "ROS2", "General"]
    #       version: 'Kinetic' # accepts ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #     }, # required
    #     rendering_engine: {
    #       name: 'OGRE', # accepts ["OGRE"]
    #       version: 'version'
    #     },
    #     current_revision_id: 'currentRevisionId',
    #     environment: {
    #       uri: 'uri'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSimulationApplicationOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.version #=> String
    #   resp.data.sources #=> Array<Source>
    #   resp.data.sources[0] #=> Types::Source
    #   resp.data.sources[0].s3_bucket #=> String
    #   resp.data.sources[0].s3_key #=> String
    #   resp.data.sources[0].etag #=> String
    #   resp.data.sources[0].architecture #=> String, one of ["X86_64", "ARM64", "ARMHF"]
    #   resp.data.simulation_software_suite #=> Types::SimulationSoftwareSuite
    #   resp.data.simulation_software_suite.name #=> String, one of ["Gazebo", "RosbagPlay", "SimulationRuntime"]
    #   resp.data.simulation_software_suite.version #=> String
    #   resp.data.robot_software_suite #=> Types::RobotSoftwareSuite
    #   resp.data.robot_software_suite.name #=> String, one of ["ROS", "ROS2", "General"]
    #   resp.data.robot_software_suite.version #=> String, one of ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #   resp.data.rendering_engine #=> Types::RenderingEngine
    #   resp.data.rendering_engine.name #=> String, one of ["OGRE"]
    #   resp.data.rendering_engine.version #=> String
    #   resp.data.last_updated_at #=> Time
    #   resp.data.revision_id #=> String
    #   resp.data.environment #=> Types::Environment
    #   resp.data.environment.uri #=> String
    #
    def update_simulation_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSimulationApplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSimulationApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSimulationApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::LimitExceededException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateSimulationApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSimulationApplication,
        stubs: @stubs,
        params_class: Params::UpdateSimulationApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_simulation_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a world template.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateWorldTemplateInput}.
    #
    # @option params [String] :template
    #   <p>The Amazon Resource Name (arn) of the world template to update.</p>
    #
    # @option params [String] :name
    #   <p>The name of the template.</p>
    #
    # @option params [String] :template_body
    #   <p>The world template body.</p>
    #
    # @option params [TemplateLocation] :template_location
    #   <p>The location of the world template.</p>
    #
    # @return [Types::UpdateWorldTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_world_template(
    #     template: 'template', # required
    #     name: 'name',
    #     template_body: 'templateBody',
    #     template_location: {
    #       s3_bucket: 's3Bucket', # required
    #       s3_key: 's3Key' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateWorldTemplateOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #
    def update_world_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateWorldTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateWorldTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateWorldTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateWorldTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateWorldTemplate,
        stubs: @stubs,
        params_class: Params::UpdateWorldTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_world_template
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
