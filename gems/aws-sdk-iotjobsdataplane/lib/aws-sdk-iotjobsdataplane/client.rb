# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::IoTJobsDataPlane
  # An API client for IotLaserThingJobManagerExternalService
  # See {#initialize} for a full list of supported configuration options
  # <p>AWS IoT Jobs is a service that allows you to define a set of jobs — remote operations that are sent to
  #          and executed on one or more devices connected to AWS IoT. For example, you can define a job that instructs a
  #          set of devices to download and install application or firmware updates, reboot, rotate certificates, or perform
  #          remote troubleshooting operations.</p>
  #          <p> To create a job, you make a job document which is a description of the remote operations to be
  #          performed, and you specify a list of targets that should perform the operations. The targets can be individual
  #          things, thing groups or both.</p>
  #          <p> AWS IoT Jobs sends a message to inform the targets that a job is available. The target starts the
  #          execution of the job by downloading the job document, performing the operations it specifies, and reporting its
  #          progress to AWS IoT. The Jobs service provides commands to track the progress of a job on a specific target and
  #          for all the targets of the job</p>
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
    def initialize(config = AWS::SDK::IoTJobsDataPlane::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Gets details of a job execution.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeJobExecutionInput}.
    #
    # @option params [String] :job_id
    #   <p>The unique identifier assigned to this job when it was created.</p>
    #
    # @option params [String] :thing_name
    #   <p>The thing name associated with the device the job execution is running on.</p>
    #
    # @option params [Boolean] :include_job_document
    #   <p>Optional. When set to true, the response contains the job document. The default is false.</p>
    #
    # @option params [Integer] :execution_number
    #   <p>Optional. A number that identifies a particular job execution on a particular device. If not specified,
    #            the latest job execution is returned.</p>
    #
    # @return [Types::DescribeJobExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job_execution(
    #     job_id: 'jobId', # required
    #     thing_name: 'thingName', # required
    #     include_job_document: false,
    #     execution_number: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeJobExecutionOutput
    #   resp.data.execution #=> Types::JobExecution
    #   resp.data.execution.job_id #=> String
    #   resp.data.execution.thing_name #=> String
    #   resp.data.execution.status #=> String, one of ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"]
    #   resp.data.execution.status_details #=> Hash<String, String>
    #   resp.data.execution.status_details['key'] #=> String
    #   resp.data.execution.queued_at #=> Integer
    #   resp.data.execution.started_at #=> Integer
    #   resp.data.execution.last_updated_at #=> Integer
    #   resp.data.execution.approximate_seconds_before_timed_out #=> Integer
    #   resp.data.execution.version_number #=> Integer
    #   resp.data.execution.execution_number #=> Integer
    #   resp.data.execution.job_document #=> String
    #
    def describe_job_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeJobExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeJobExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeJobExecution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CertificateValidationException, Errors::TerminalStateException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeJobExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeJobExecution,
        stubs: @stubs,
        params_class: Params::DescribeJobExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_job_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the list of all jobs for a thing that are not in a terminal status.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPendingJobExecutionsInput}.
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing that is executing the job.</p>
    #
    # @return [Types::GetPendingJobExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_pending_job_executions(
    #     thing_name: 'thingName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPendingJobExecutionsOutput
    #   resp.data.in_progress_jobs #=> Array<JobExecutionSummary>
    #   resp.data.in_progress_jobs[0] #=> Types::JobExecutionSummary
    #   resp.data.in_progress_jobs[0].job_id #=> String
    #   resp.data.in_progress_jobs[0].queued_at #=> Integer
    #   resp.data.in_progress_jobs[0].started_at #=> Integer
    #   resp.data.in_progress_jobs[0].last_updated_at #=> Integer
    #   resp.data.in_progress_jobs[0].version_number #=> Integer
    #   resp.data.in_progress_jobs[0].execution_number #=> Integer
    #   resp.data.queued_jobs #=> Array<JobExecutionSummary>
    #
    def get_pending_job_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPendingJobExecutionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPendingJobExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPendingJobExecutions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CertificateValidationException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException]),
        data_parser: Parsers::GetPendingJobExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPendingJobExecutions,
        stubs: @stubs,
        params_class: Params::GetPendingJobExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_pending_job_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a thing.</p>
    #
    # @param [Hash] params
    #   See {Types::StartNextPendingJobExecutionInput}.
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing associated with the device.</p>
    #
    # @option params [Hash<String, String>] :status_details
    #   <p>A collection of name/value pairs that describe the status of the job execution. If not specified, the
    #            statusDetails are unchanged.</p>
    #
    # @option params [Integer] :step_timeout_in_minutes
    #   <p>Specifies the amount of time this device has to finish execution of this job. If the job
    #              execution status is not set to a terminal state before this timer expires, or before the
    #              timer is reset (by calling <code>UpdateJobExecution</code>, setting the status to
    #              <code>IN_PROGRESS</code> and specifying a new timeout value in field <code>stepTimeoutInMinutes</code>)
    #              the job execution status will be automatically set to <code>TIMED_OUT</code>.  Note that setting
    #              this timeout has no effect on that job execution timeout which may have been specified when
    #              the job was created (<code>CreateJob</code> using field <code>timeoutConfig</code>).</p>
    #
    # @return [Types::StartNextPendingJobExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_next_pending_job_execution(
    #     thing_name: 'thingName', # required
    #     status_details: {
    #       'key' => 'value'
    #     },
    #     step_timeout_in_minutes: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartNextPendingJobExecutionOutput
    #   resp.data.execution #=> Types::JobExecution
    #   resp.data.execution.job_id #=> String
    #   resp.data.execution.thing_name #=> String
    #   resp.data.execution.status #=> String, one of ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"]
    #   resp.data.execution.status_details #=> Hash<String, String>
    #   resp.data.execution.status_details['key'] #=> String
    #   resp.data.execution.queued_at #=> Integer
    #   resp.data.execution.started_at #=> Integer
    #   resp.data.execution.last_updated_at #=> Integer
    #   resp.data.execution.approximate_seconds_before_timed_out #=> Integer
    #   resp.data.execution.version_number #=> Integer
    #   resp.data.execution.execution_number #=> Integer
    #   resp.data.execution.job_document #=> String
    #
    def start_next_pending_job_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartNextPendingJobExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartNextPendingJobExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartNextPendingJobExecution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CertificateValidationException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException]),
        data_parser: Parsers::StartNextPendingJobExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartNextPendingJobExecution,
        stubs: @stubs,
        params_class: Params::StartNextPendingJobExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_next_pending_job_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the status of a job execution.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateJobExecutionInput}.
    #
    # @option params [String] :job_id
    #   <p>The unique identifier assigned to this job when it was created.</p>
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing associated with the device.</p>
    #
    # @option params [String] :status
    #   <p>The new status for the job execution (IN_PROGRESS, FAILED, SUCCESS, or REJECTED). This must be specified
    #            on every update.</p>
    #
    # @option params [Hash<String, String>] :status_details
    #   <p> Optional. A collection of name/value pairs that describe the status of the job execution. If not
    #            specified, the statusDetails are unchanged.</p>
    #
    # @option params [Integer] :step_timeout_in_minutes
    #   <p>Specifies the amount of time this device has to finish execution of this job. If the job
    #              execution status is not set to a terminal state before this timer expires, or before the
    #              timer is reset (by again calling <code>UpdateJobExecution</code>, setting the status to
    #              <code>IN_PROGRESS</code> and specifying a new timeout value in this field) the job execution
    #              status will be automatically set to <code>TIMED_OUT</code>.  Note that setting or resetting
    #              this timeout has no effect on that job execution timeout which may have been specified when
    #              the job was created (<code>CreateJob</code> using field <code>timeoutConfig</code>).</p>
    #
    # @option params [Integer] :expected_version
    #   <p>Optional. The expected current version of the job execution. Each time you update the job execution, its
    #            version is incremented. If the version of the job execution stored in Jobs does not match, the update is
    #            rejected with a VersionMismatch error, and an ErrorResponse that contains the current job execution status data
    #            is returned. (This makes it unnecessary to perform a separate DescribeJobExecution request in order to obtain
    #            the job execution status data.)</p>
    #
    # @option params [Boolean] :include_job_execution_state
    #   <p>Optional. When included and set to true, the response contains the JobExecutionState data. The default is
    #            false.</p>
    #
    # @option params [Boolean] :include_job_document
    #   <p>Optional. When set to true, the response contains the job document. The default is false.</p>
    #
    # @option params [Integer] :execution_number
    #   <p>Optional. A number that identifies a particular job execution on a particular device.</p>
    #
    # @return [Types::UpdateJobExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job_execution(
    #     job_id: 'jobId', # required
    #     thing_name: 'thingName', # required
    #     status: 'QUEUED', # required - accepts ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"]
    #     status_details: {
    #       'key' => 'value'
    #     },
    #     step_timeout_in_minutes: 1,
    #     expected_version: 1,
    #     include_job_execution_state: false,
    #     include_job_document: false,
    #     execution_number: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateJobExecutionOutput
    #   resp.data.execution_state #=> Types::JobExecutionState
    #   resp.data.execution_state.status #=> String, one of ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"]
    #   resp.data.execution_state.status_details #=> Hash<String, String>
    #   resp.data.execution_state.status_details['key'] #=> String
    #   resp.data.execution_state.version_number #=> Integer
    #   resp.data.job_document #=> String
    #
    def update_job_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateJobExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateJobExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateJobExecution
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CertificateValidationException, Errors::InvalidStateTransitionException, Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::ThrottlingException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateJobExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateJobExecution,
        stubs: @stubs,
        params_class: Params::UpdateJobExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_job_execution
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
