# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Braket
  # An API client for Braket
  # See {#initialize} for a full list of supported configuration options
  # <p>The Amazon Braket API Reference provides information about the operations and structures
  #          supported in Amazon Braket.</p>
  #          <p>Additional Resources:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a href="https://docs.aws.amazon.com/braket/latest/developerguide/what-is-braket.html">Amazon Braket Developer Guide</a>
  #                </p>
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
    def initialize(config = AWS::SDK::Braket::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Cancels an Amazon Braket job.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelJobInput}.
    #
    # @option params [String] :job_arn
    #   <p>The ARN of the Amazon Braket job to cancel.</p>
    #
    # @return [Types::CancelJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job(
    #     job_arn: 'jobArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelJobOutput
    #   resp.data.job_arn #=> String
    #   resp.data.cancellation_status #=> String, one of ["CANCELLING", "CANCELLED"]
    #
    def cancel_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServiceException, Errors::ThrottlingException]),
        data_parser: Parsers::CancelJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelJob,
        stubs: @stubs,
        params_class: Params::CancelJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels the specified task.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelQuantumTaskInput}.
    #
    # @option params [String] :quantum_task_arn
    #   <p>The ARN of the task to cancel.</p>
    #
    # @option params [String] :client_token
    #   <p>The client token associated with the request.</p>
    #
    # @return [Types::CancelQuantumTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_quantum_task(
    #     quantum_task_arn: 'quantumTaskArn', # required
    #     client_token: 'clientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelQuantumTaskOutput
    #   resp.data.quantum_task_arn #=> String
    #   resp.data.cancellation_status #=> String, one of ["CANCELLING", "CANCELLED"]
    #
    def cancel_quantum_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelQuantumTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelQuantumTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelQuantumTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServiceException, Errors::ThrottlingException]),
        data_parser: Parsers::CancelQuantumTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelQuantumTask,
        stubs: @stubs,
        params_class: Params::CancelQuantumTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_quantum_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon Braket job.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateJobInput}.
    #
    # @option params [String] :client_token
    #   <p>A unique token that guarantees that the call to this API is idempotent.</p>
    #
    # @option params [AlgorithmSpecification] :algorithm_specification
    #   <p>Definition of the Amazon Braket job to be created. Specifies the container image the job
    #            uses and information about the Python scripts used for entry and training.</p>
    #
    # @option params [Array<InputFileConfig>] :input_data_config
    #   <p>A list of parameters that specify the name and type of input data and where it is
    #            located.</p>
    #
    # @option params [JobOutputDataConfig] :output_data_config
    #   <p>The path to the S3 location where you want to store job artifacts and the encryption key
    #            used to store them.</p>
    #
    # @option params [JobCheckpointConfig] :checkpoint_config
    #   <p>Information about the output locations for job checkpoint data.</p>
    #
    # @option params [String] :job_name
    #   <p>The name of the Amazon Braket job.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that Amazon Braket can assume to perform
    #            tasks on behalf of a user. It can access user resources, run an Amazon Braket job container
    #            on behalf of user, and output resources to the users' s3 buckets.</p>
    #
    # @option params [JobStoppingCondition] :stopping_condition
    #   <p> The user-defined criteria that specifies when a job stops running.</p>
    #
    # @option params [InstanceConfig] :instance_config
    #   <p>Configuration of the resource instances to use while running the hybrid job on Amazon
    #            Braket.</p>
    #
    # @option params [Hash<String, String>] :hyper_parameters
    #   <p>Algorithm-specific parameters used by an Amazon Braket job that influence the quality of
    #            the training job. The values are set with a string of JSON key:value pairs, where the key
    #            is the name of the hyperparameter and the value is the value of th hyperparameter.</p>
    #
    # @option params [DeviceConfig] :device_config
    #   <p>The quantum processing unit (QPU) or simulator used to create an Amazon Braket
    #            job.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A tag object that consists of a key and an optional value, used to manage metadata for
    #            Amazon Braket resources.</p>
    #
    # @return [Types::CreateJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job(
    #     client_token: 'clientToken', # required
    #     algorithm_specification: {
    #       script_mode_config: {
    #         entry_point: 'entryPoint', # required
    #         s3_uri: 's3Uri', # required
    #         compression_type: 'NONE' # accepts ["NONE", "GZIP"]
    #       },
    #       container_image: {
    #         uri: 'uri' # required
    #       }
    #     }, # required
    #     input_data_config: [
    #       {
    #         channel_name: 'channelName', # required
    #         content_type: 'contentType',
    #         data_source: {
    #           s3_data_source: {
    #             s3_uri: 's3Uri' # required
    #           } # required
    #         } # required
    #       }
    #     ],
    #     output_data_config: {
    #       kms_key_id: 'kmsKeyId',
    #       s3_path: 's3Path' # required
    #     }, # required
    #     checkpoint_config: {
    #       local_path: 'localPath',
    #       s3_uri: 's3Uri' # required
    #     },
    #     job_name: 'jobName', # required
    #     role_arn: 'roleArn', # required
    #     stopping_condition: {
    #       max_runtime_in_seconds: 1
    #     },
    #     instance_config: {
    #       instance_type: 'ml.m4.xlarge', # required - accepts ["ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.g4dn.xlarge", "ml.g4dn.2xlarge", "ml.g4dn.4xlarge", "ml.g4dn.8xlarge", "ml.g4dn.12xlarge", "ml.g4dn.16xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.p3dn.24xlarge", "ml.p4d.24xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge", "ml.c5n.xlarge", "ml.c5n.2xlarge", "ml.c5n.4xlarge", "ml.c5n.9xlarge", "ml.c5n.18xlarge"]
    #       volume_size_in_gb: 1, # required
    #       instance_count: 1
    #     }, # required
    #     hyper_parameters: {
    #       'key' => 'value'
    #     },
    #     device_config: {
    #       device: 'device' # required
    #     }, # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateJobOutput
    #   resp.data.job_arn #=> String
    #
    def create_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException, Errors::ServiceQuotaExceededException, Errors::InternalServiceException, Errors::DeviceRetiredException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateJob,
        stubs: @stubs,
        params_class: Params::CreateJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a quantum task.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateQuantumTaskInput}.
    #
    # @option params [String] :client_token
    #   <p>The client token associated with the request.</p>
    #
    # @option params [String] :device_arn
    #   <p>The ARN of the device to run the task on.</p>
    #
    # @option params [String] :device_parameters
    #   <p>The parameters for the device to run the task on.</p>
    #
    # @option params [Integer] :shots
    #   <p>The number of shots to use for the task.</p>
    #
    # @option params [String] :output_s3_bucket
    #   <p>The S3 bucket to store task result files in.</p>
    #
    # @option params [String] :output_s3_key_prefix
    #   <p>The key prefix for the location in the S3 bucket to store task results in.</p>
    #
    # @option params [String] :action
    #   <p>The action associated with the task.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to be added to the quantum task you're creating.</p>
    #
    # @option params [String] :job_token
    #   <p>The token for an Amazon Braket job that associates it with the quantum task.</p>
    #
    # @return [Types::CreateQuantumTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_quantum_task(
    #     client_token: 'clientToken', # required
    #     device_arn: 'deviceArn', # required
    #     device_parameters: 'deviceParameters',
    #     shots: 1, # required
    #     output_s3_bucket: 'outputS3Bucket', # required
    #     output_s3_key_prefix: 'outputS3KeyPrefix', # required
    #     action: 'action', # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     job_token: 'jobToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateQuantumTaskOutput
    #   resp.data.quantum_task_arn #=> String
    #
    def create_quantum_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateQuantumTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateQuantumTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateQuantumTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ServiceQuotaExceededException, Errors::InternalServiceException, Errors::DeviceRetiredException, Errors::DeviceOfflineException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateQuantumTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateQuantumTask,
        stubs: @stubs,
        params_class: Params::CreateQuantumTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_quantum_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the devices available in Amazon Braket.</p>
    #          <note>
    #             <p>For backwards compatibility with older versions of BraketSchemas, OpenQASM
    #             information is omitted from GetDevice API calls. To get this information the user-agent
    #             needs to present a recent version of the BraketSchemas (1.8.0 or later). The Braket SDK
    #             automatically reports this for you. If you do not see OpenQASM results in the GetDevice
    #             response when using a Braket SDK, you may need to set AWS_EXECUTION_ENV environment
    #             variable to configure user-agent. See the code examples provided below for how to do
    #             this for the AWS CLI, Boto3, and the Go, Java, and JavaScript/TypeScript SDKs.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetDeviceInput}.
    #
    # @option params [String] :device_arn
    #   <p>The ARN of the device to retrieve.</p>
    #
    # @return [Types::GetDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device(
    #     device_arn: 'deviceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeviceOutput
    #   resp.data.device_arn #=> String
    #   resp.data.device_name #=> String
    #   resp.data.provider_name #=> String
    #   resp.data.device_type #=> String, one of ["QPU", "SIMULATOR"]
    #   resp.data.device_status #=> String, one of ["ONLINE", "OFFLINE", "RETIRED"]
    #   resp.data.device_capabilities #=> String
    #
    def get_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDevice
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServiceException, Errors::ThrottlingException]),
        data_parser: Parsers::GetDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDevice,
        stubs: @stubs,
        params_class: Params::GetDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the specified Amazon Braket job.</p>
    #
    # @param [Hash] params
    #   See {Types::GetJobInput}.
    #
    # @option params [String] :job_arn
    #   <p>The ARN of the job to retrieve.</p>
    #
    # @return [Types::GetJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job(
    #     job_arn: 'jobArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetJobOutput
    #   resp.data.status #=> String, one of ["QUEUED", "RUNNING", "COMPLETED", "FAILED", "CANCELLING", "CANCELLED"]
    #   resp.data.job_arn #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.failure_reason #=> String
    #   resp.data.job_name #=> String
    #   resp.data.hyper_parameters #=> Hash<String, String>
    #   resp.data.hyper_parameters['key'] #=> String
    #   resp.data.input_data_config #=> Array<InputFileConfig>
    #   resp.data.input_data_config[0] #=> Types::InputFileConfig
    #   resp.data.input_data_config[0].channel_name #=> String
    #   resp.data.input_data_config[0].content_type #=> String
    #   resp.data.input_data_config[0].data_source #=> Types::DataSource
    #   resp.data.input_data_config[0].data_source.s3_data_source #=> Types::S3DataSource
    #   resp.data.input_data_config[0].data_source.s3_data_source.s3_uri #=> String
    #   resp.data.output_data_config #=> Types::JobOutputDataConfig
    #   resp.data.output_data_config.kms_key_id #=> String
    #   resp.data.output_data_config.s3_path #=> String
    #   resp.data.stopping_condition #=> Types::JobStoppingCondition
    #   resp.data.stopping_condition.max_runtime_in_seconds #=> Integer
    #   resp.data.checkpoint_config #=> Types::JobCheckpointConfig
    #   resp.data.checkpoint_config.local_path #=> String
    #   resp.data.checkpoint_config.s3_uri #=> String
    #   resp.data.algorithm_specification #=> Types::AlgorithmSpecification
    #   resp.data.algorithm_specification.script_mode_config #=> Types::ScriptModeConfig
    #   resp.data.algorithm_specification.script_mode_config.entry_point #=> String
    #   resp.data.algorithm_specification.script_mode_config.s3_uri #=> String
    #   resp.data.algorithm_specification.script_mode_config.compression_type #=> String, one of ["NONE", "GZIP"]
    #   resp.data.algorithm_specification.container_image #=> Types::ContainerImage
    #   resp.data.algorithm_specification.container_image.uri #=> String
    #   resp.data.instance_config #=> Types::InstanceConfig
    #   resp.data.instance_config.instance_type #=> String, one of ["ml.m4.xlarge", "ml.m4.2xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.m4.16xlarge", "ml.g4dn.xlarge", "ml.g4dn.2xlarge", "ml.g4dn.4xlarge", "ml.g4dn.8xlarge", "ml.g4dn.12xlarge", "ml.g4dn.16xlarge", "ml.m5.large", "ml.m5.xlarge", "ml.m5.2xlarge", "ml.m5.4xlarge", "ml.m5.12xlarge", "ml.m5.24xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.4xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.p3dn.24xlarge", "ml.p4d.24xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge", "ml.c5n.xlarge", "ml.c5n.2xlarge", "ml.c5n.4xlarge", "ml.c5n.9xlarge", "ml.c5n.18xlarge"]
    #   resp.data.instance_config.volume_size_in_gb #=> Integer
    #   resp.data.instance_config.instance_count #=> Integer
    #   resp.data.created_at #=> Time
    #   resp.data.started_at #=> Time
    #   resp.data.ended_at #=> Time
    #   resp.data.billable_duration #=> Integer
    #   resp.data.device_config #=> Types::DeviceConfig
    #   resp.data.device_config.device #=> String
    #   resp.data.events #=> Array<JobEventDetails>
    #   resp.data.events[0] #=> Types::JobEventDetails
    #   resp.data.events[0].event_type #=> String, one of ["WAITING_FOR_PRIORITY", "QUEUED_FOR_EXECUTION", "STARTING_INSTANCE", "DOWNLOADING_DATA", "RUNNING", "DEPRIORITIZED_DUE_TO_INACTIVITY", "UPLOADING_RESULTS", "COMPLETED", "FAILED", "MAX_RUNTIME_EXCEEDED", "CANCELLED"]
    #   resp.data.events[0].time_of_event #=> Time
    #   resp.data.events[0].message #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServiceException, Errors::ThrottlingException]),
        data_parser: Parsers::GetJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetJob,
        stubs: @stubs,
        params_class: Params::GetJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the specified quantum task.</p>
    #
    # @param [Hash] params
    #   See {Types::GetQuantumTaskInput}.
    #
    # @option params [String] :quantum_task_arn
    #   <p>the ARN of the task to retrieve.</p>
    #
    # @return [Types::GetQuantumTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_quantum_task(
    #     quantum_task_arn: 'quantumTaskArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetQuantumTaskOutput
    #   resp.data.quantum_task_arn #=> String
    #   resp.data.status #=> String, one of ["CREATED", "QUEUED", "RUNNING", "COMPLETED", "FAILED", "CANCELLING", "CANCELLED"]
    #   resp.data.failure_reason #=> String
    #   resp.data.device_arn #=> String
    #   resp.data.device_parameters #=> String
    #   resp.data.shots #=> Integer
    #   resp.data.output_s3_bucket #=> String
    #   resp.data.output_s3_directory #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.ended_at #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.job_arn #=> String
    #
    def get_quantum_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetQuantumTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetQuantumTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetQuantumTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServiceException, Errors::ThrottlingException]),
        data_parser: Parsers::GetQuantumTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetQuantumTask,
        stubs: @stubs,
        params_class: Params::GetQuantumTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_quantum_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Shows the tags associated with this resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>Specify the <code>resourceArn</code> for the resource whose tags to display.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServiceException]),
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

    # <p>Searches for devices using the specified filters.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchDevicesInput}.
    #
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned in the response. Use the token returned
    #            from the previous request continue results where the previous request ended.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @option params [Array<SearchDevicesFilter>] :filters
    #   <p>The filter values to use to search for a device.</p>
    #
    # @return [Types::SearchDevicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_devices(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: 'name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchDevicesOutput
    #   resp.data.devices #=> Array<DeviceSummary>
    #   resp.data.devices[0] #=> Types::DeviceSummary
    #   resp.data.devices[0].device_arn #=> String
    #   resp.data.devices[0].device_name #=> String
    #   resp.data.devices[0].provider_name #=> String
    #   resp.data.devices[0].device_type #=> String, one of ["QPU", "SIMULATOR"]
    #   resp.data.devices[0].device_status #=> String, one of ["ONLINE", "OFFLINE", "RETIRED"]
    #   resp.data.next_token #=> String
    #
    def search_devices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchDevicesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchDevicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchDevices
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServiceException, Errors::ThrottlingException]),
        data_parser: Parsers::SearchDevices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchDevices,
        stubs: @stubs,
        params_class: Params::SearchDevicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_devices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches for Amazon Braket jobs that match the specified filter values.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchJobsInput}.
    #
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned in the response. Use the token returned
    #            from the previous request to continue results where the previous request ended.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    # @option params [Array<SearchJobsFilter>] :filters
    #   <p>The filter values to use when searching for a job.</p>
    #
    # @return [Types::SearchJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_jobs(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: 'name', # required
    #         values: [
    #           'member'
    #         ], # required
    #         operator: 'LT' # required - accepts ["LT", "LTE", "EQUAL", "GT", "GTE", "BETWEEN", "CONTAINS"]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchJobsOutput
    #   resp.data.jobs #=> Array<JobSummary>
    #   resp.data.jobs[0] #=> Types::JobSummary
    #   resp.data.jobs[0].status #=> String, one of ["QUEUED", "RUNNING", "COMPLETED", "FAILED", "CANCELLING", "CANCELLED"]
    #   resp.data.jobs[0].job_arn #=> String
    #   resp.data.jobs[0].job_name #=> String
    #   resp.data.jobs[0].device #=> String
    #   resp.data.jobs[0].created_at #=> Time
    #   resp.data.jobs[0].started_at #=> Time
    #   resp.data.jobs[0].ended_at #=> Time
    #   resp.data.jobs[0].tags #=> Hash<String, String>
    #   resp.data.jobs[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def search_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServiceException, Errors::ThrottlingException]),
        data_parser: Parsers::SearchJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchJobs,
        stubs: @stubs,
        params_class: Params::SearchJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Searches for tasks that match the specified filter values.</p>
    #
    # @param [Hash] params
    #   See {Types::SearchQuantumTasksInput}.
    #
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned in the response. Use the token returned
    #            from the previous request continue results where the previous request ended.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in the response.</p>
    #
    # @option params [Array<SearchQuantumTasksFilter>] :filters
    #   <p>Array of <code>SearchQuantumTasksFilter</code> objects.</p>
    #
    # @return [Types::SearchQuantumTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_quantum_tasks(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: 'name', # required
    #         values: [
    #           'member'
    #         ], # required
    #         operator: 'LT' # required - accepts ["LT", "LTE", "EQUAL", "GT", "GTE", "BETWEEN"]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchQuantumTasksOutput
    #   resp.data.quantum_tasks #=> Array<QuantumTaskSummary>
    #   resp.data.quantum_tasks[0] #=> Types::QuantumTaskSummary
    #   resp.data.quantum_tasks[0].quantum_task_arn #=> String
    #   resp.data.quantum_tasks[0].status #=> String, one of ["CREATED", "QUEUED", "RUNNING", "COMPLETED", "FAILED", "CANCELLING", "CANCELLED"]
    #   resp.data.quantum_tasks[0].device_arn #=> String
    #   resp.data.quantum_tasks[0].shots #=> Integer
    #   resp.data.quantum_tasks[0].output_s3_bucket #=> String
    #   resp.data.quantum_tasks[0].output_s3_directory #=> String
    #   resp.data.quantum_tasks[0].created_at #=> Time
    #   resp.data.quantum_tasks[0].ended_at #=> Time
    #   resp.data.quantum_tasks[0].tags #=> Hash<String, String>
    #   resp.data.quantum_tasks[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def search_quantum_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchQuantumTasksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchQuantumTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchQuantumTasks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServiceException, Errors::ThrottlingException]),
        data_parser: Parsers::SearchQuantumTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchQuantumTasks,
        stubs: @stubs,
        params_class: Params::SearchQuantumTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_quantum_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Add a tag to the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>Specify the <code>resourceArn</code> of the resource to which a tag will be
    #            added.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Specify the tags to add to the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServiceException]),
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

    # <p>Remove tags from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>Specify the <code>resourceArn</code> for the resource from which to remove the
    #            tags.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Specify the keys for the tags to remove from the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServiceException]),
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
