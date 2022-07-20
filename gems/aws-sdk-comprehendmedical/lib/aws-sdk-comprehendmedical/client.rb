# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ComprehendMedical
  # An API client for ComprehendMedical_20181030
  # See {#initialize} for a full list of supported configuration options
  # <p> Comprehend Medical; extracts structured information from unstructured clinical text. Use these actions
  #       to gain insight in your documents. </p>
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
    def initialize(config = AWS::SDK::ComprehendMedical::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Gets the properties associated with a medical entities detection job. Use this operation
    #       to get the status of a detection job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEntitiesDetectionV2JobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier that Comprehend Medical; generated for the job. The
    #           <code>StartEntitiesDetectionV2Job</code> operation returns this identifier in its
    #         response.</p>
    #
    # @return [Types::DescribeEntitiesDetectionV2JobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_entities_detection_v2_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEntitiesDetectionV2JobOutput
    #   resp.data.comprehend_medical_async_job_properties #=> Types::ComprehendMedicalAsyncJobProperties
    #   resp.data.comprehend_medical_async_job_properties.job_id #=> String
    #   resp.data.comprehend_medical_async_job_properties.job_name #=> String
    #   resp.data.comprehend_medical_async_job_properties.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.comprehend_medical_async_job_properties.message #=> String
    #   resp.data.comprehend_medical_async_job_properties.submit_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties.end_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties.expiration_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties.input_data_config #=> Types::InputDataConfig
    #   resp.data.comprehend_medical_async_job_properties.input_data_config.s3_bucket #=> String
    #   resp.data.comprehend_medical_async_job_properties.input_data_config.s3_key #=> String
    #   resp.data.comprehend_medical_async_job_properties.output_data_config #=> Types::OutputDataConfig
    #   resp.data.comprehend_medical_async_job_properties.output_data_config.s3_bucket #=> String
    #   resp.data.comprehend_medical_async_job_properties.output_data_config.s3_key #=> String
    #   resp.data.comprehend_medical_async_job_properties.language_code #=> String, one of ["en"]
    #   resp.data.comprehend_medical_async_job_properties.data_access_role_arn #=> String
    #   resp.data.comprehend_medical_async_job_properties.manifest_file_path #=> String
    #   resp.data.comprehend_medical_async_job_properties.kms_key #=> String
    #   resp.data.comprehend_medical_async_job_properties.model_version #=> String
    #
    def describe_entities_detection_v2_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEntitiesDetectionV2JobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEntitiesDetectionV2JobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEntitiesDetectionV2Job
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeEntitiesDetectionV2Job
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEntitiesDetectionV2Job,
        stubs: @stubs,
        params_class: Params::DescribeEntitiesDetectionV2JobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_entities_detection_v2_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the properties associated with an InferICD10CM job. Use this operation to get the
    #       status of an inference job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeICD10CMInferenceJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Comprehend Medical generated for the job. <code>The
    #           StartICD10CMInferenceJob</code> operation returns this identifier in its response.</p>
    #
    # @return [Types::DescribeICD10CMInferenceJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_icd10_cm_inference_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeICD10CMInferenceJobOutput
    #   resp.data.comprehend_medical_async_job_properties #=> Types::ComprehendMedicalAsyncJobProperties
    #   resp.data.comprehend_medical_async_job_properties.job_id #=> String
    #   resp.data.comprehend_medical_async_job_properties.job_name #=> String
    #   resp.data.comprehend_medical_async_job_properties.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.comprehend_medical_async_job_properties.message #=> String
    #   resp.data.comprehend_medical_async_job_properties.submit_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties.end_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties.expiration_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties.input_data_config #=> Types::InputDataConfig
    #   resp.data.comprehend_medical_async_job_properties.input_data_config.s3_bucket #=> String
    #   resp.data.comprehend_medical_async_job_properties.input_data_config.s3_key #=> String
    #   resp.data.comprehend_medical_async_job_properties.output_data_config #=> Types::OutputDataConfig
    #   resp.data.comprehend_medical_async_job_properties.output_data_config.s3_bucket #=> String
    #   resp.data.comprehend_medical_async_job_properties.output_data_config.s3_key #=> String
    #   resp.data.comprehend_medical_async_job_properties.language_code #=> String, one of ["en"]
    #   resp.data.comprehend_medical_async_job_properties.data_access_role_arn #=> String
    #   resp.data.comprehend_medical_async_job_properties.manifest_file_path #=> String
    #   resp.data.comprehend_medical_async_job_properties.kms_key #=> String
    #   resp.data.comprehend_medical_async_job_properties.model_version #=> String
    #
    def describe_icd10_cm_inference_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeICD10CMInferenceJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeICD10CMInferenceJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeICD10CMInferenceJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeICD10CMInferenceJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeICD10CMInferenceJob,
        stubs: @stubs,
        params_class: Params::DescribeICD10CMInferenceJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_icd10_cm_inference_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the properties associated with a protected health information (PHI) detection job.
    #       Use this operation to get the status of a detection job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePHIDetectionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier that Comprehend Medical; generated for the job. The <code>StartPHIDetectionJob</code>
    #         operation returns this identifier in its response.</p>
    #
    # @return [Types::DescribePHIDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_phi_detection_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePHIDetectionJobOutput
    #   resp.data.comprehend_medical_async_job_properties #=> Types::ComprehendMedicalAsyncJobProperties
    #   resp.data.comprehend_medical_async_job_properties.job_id #=> String
    #   resp.data.comprehend_medical_async_job_properties.job_name #=> String
    #   resp.data.comprehend_medical_async_job_properties.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.comprehend_medical_async_job_properties.message #=> String
    #   resp.data.comprehend_medical_async_job_properties.submit_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties.end_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties.expiration_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties.input_data_config #=> Types::InputDataConfig
    #   resp.data.comprehend_medical_async_job_properties.input_data_config.s3_bucket #=> String
    #   resp.data.comprehend_medical_async_job_properties.input_data_config.s3_key #=> String
    #   resp.data.comprehend_medical_async_job_properties.output_data_config #=> Types::OutputDataConfig
    #   resp.data.comprehend_medical_async_job_properties.output_data_config.s3_bucket #=> String
    #   resp.data.comprehend_medical_async_job_properties.output_data_config.s3_key #=> String
    #   resp.data.comprehend_medical_async_job_properties.language_code #=> String, one of ["en"]
    #   resp.data.comprehend_medical_async_job_properties.data_access_role_arn #=> String
    #   resp.data.comprehend_medical_async_job_properties.manifest_file_path #=> String
    #   resp.data.comprehend_medical_async_job_properties.kms_key #=> String
    #   resp.data.comprehend_medical_async_job_properties.model_version #=> String
    #
    def describe_phi_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePHIDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePHIDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePHIDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribePHIDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePHIDetectionJob,
        stubs: @stubs,
        params_class: Params::DescribePHIDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_phi_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the properties associated with an InferRxNorm job. Use this operation to get the
    #       status of an inference job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRxNormInferenceJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Comprehend Medical generated for the job. The
    #         StartRxNormInferenceJob operation returns this identifier in its response.</p>
    #
    # @return [Types::DescribeRxNormInferenceJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rx_norm_inference_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRxNormInferenceJobOutput
    #   resp.data.comprehend_medical_async_job_properties #=> Types::ComprehendMedicalAsyncJobProperties
    #   resp.data.comprehend_medical_async_job_properties.job_id #=> String
    #   resp.data.comprehend_medical_async_job_properties.job_name #=> String
    #   resp.data.comprehend_medical_async_job_properties.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.comprehend_medical_async_job_properties.message #=> String
    #   resp.data.comprehend_medical_async_job_properties.submit_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties.end_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties.expiration_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties.input_data_config #=> Types::InputDataConfig
    #   resp.data.comprehend_medical_async_job_properties.input_data_config.s3_bucket #=> String
    #   resp.data.comprehend_medical_async_job_properties.input_data_config.s3_key #=> String
    #   resp.data.comprehend_medical_async_job_properties.output_data_config #=> Types::OutputDataConfig
    #   resp.data.comprehend_medical_async_job_properties.output_data_config.s3_bucket #=> String
    #   resp.data.comprehend_medical_async_job_properties.output_data_config.s3_key #=> String
    #   resp.data.comprehend_medical_async_job_properties.language_code #=> String, one of ["en"]
    #   resp.data.comprehend_medical_async_job_properties.data_access_role_arn #=> String
    #   resp.data.comprehend_medical_async_job_properties.manifest_file_path #=> String
    #   resp.data.comprehend_medical_async_job_properties.kms_key #=> String
    #   resp.data.comprehend_medical_async_job_properties.model_version #=> String
    #
    def describe_rx_norm_inference_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRxNormInferenceJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRxNormInferenceJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRxNormInferenceJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeRxNormInferenceJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRxNormInferenceJob,
        stubs: @stubs,
        params_class: Params::DescribeRxNormInferenceJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_rx_norm_inference_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Gets the properties associated with an InferSNOMEDCT job. Use this operation to get the status of an inference job.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSNOMEDCTInferenceJobInput}.
    #
    # @option params [String] :job_id
    #   <p>
    #         The identifier that Amazon Comprehend Medical generated for the job. The StartSNOMEDCTInferenceJob operation returns this identifier in its response.
    #       </p>
    #
    # @return [Types::DescribeSNOMEDCTInferenceJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_snomedct_inference_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSNOMEDCTInferenceJobOutput
    #   resp.data.comprehend_medical_async_job_properties #=> Types::ComprehendMedicalAsyncJobProperties
    #   resp.data.comprehend_medical_async_job_properties.job_id #=> String
    #   resp.data.comprehend_medical_async_job_properties.job_name #=> String
    #   resp.data.comprehend_medical_async_job_properties.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.comprehend_medical_async_job_properties.message #=> String
    #   resp.data.comprehend_medical_async_job_properties.submit_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties.end_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties.expiration_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties.input_data_config #=> Types::InputDataConfig
    #   resp.data.comprehend_medical_async_job_properties.input_data_config.s3_bucket #=> String
    #   resp.data.comprehend_medical_async_job_properties.input_data_config.s3_key #=> String
    #   resp.data.comprehend_medical_async_job_properties.output_data_config #=> Types::OutputDataConfig
    #   resp.data.comprehend_medical_async_job_properties.output_data_config.s3_bucket #=> String
    #   resp.data.comprehend_medical_async_job_properties.output_data_config.s3_key #=> String
    #   resp.data.comprehend_medical_async_job_properties.language_code #=> String, one of ["en"]
    #   resp.data.comprehend_medical_async_job_properties.data_access_role_arn #=> String
    #   resp.data.comprehend_medical_async_job_properties.manifest_file_path #=> String
    #   resp.data.comprehend_medical_async_job_properties.kms_key #=> String
    #   resp.data.comprehend_medical_async_job_properties.model_version #=> String
    #
    def describe_snomedct_inference_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSNOMEDCTInferenceJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSNOMEDCTInferenceJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSNOMEDCTInferenceJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeSNOMEDCTInferenceJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSNOMEDCTInferenceJob,
        stubs: @stubs,
        params_class: Params::DescribeSNOMEDCTInferenceJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_snomedct_inference_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The <code>DetectEntities</code> operation is deprecated. You should use the <a>DetectEntitiesV2</a> operation instead.</p>
    #          <p> Inspects the clinical text for a variety of medical entities and returns specific
    #       information about them such as entity category, location, and confidence score on that
    #       information .</p>
    #
    # @deprecated
    #   This operation is deprecated, use DetectEntitiesV2 instead.
    #
    # @param [Hash] params
    #   See {Types::DetectEntitiesInput}.
    #
    # @option params [String] :text
    #   <p> A UTF-8 text string containing the clinical content being examined for entities. Each
    #         string must contain fewer than 20,000 bytes of characters.</p>
    #
    # @return [Types::DetectEntitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_entities(
    #     text: 'Text' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectEntitiesOutput
    #   resp.data.entities #=> Array<Entity>
    #   resp.data.entities[0] #=> Types::Entity
    #   resp.data.entities[0].id #=> Integer
    #   resp.data.entities[0].begin_offset #=> Integer
    #   resp.data.entities[0].end_offset #=> Integer
    #   resp.data.entities[0].score #=> Float
    #   resp.data.entities[0].text #=> String
    #   resp.data.entities[0].category #=> String, one of ["MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION"]
    #   resp.data.entities[0].type #=> String, one of ["NAME", "DX_NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "PHONE_OR_FAX", "EMAIL", "IDENTIFIER", "ID", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME"]
    #   resp.data.entities[0].traits #=> Array<Trait>
    #   resp.data.entities[0].traits[0] #=> Types::Trait
    #   resp.data.entities[0].traits[0].name #=> String, one of ["SIGN", "SYMPTOM", "DIAGNOSIS", "NEGATION"]
    #   resp.data.entities[0].traits[0].score #=> Float
    #   resp.data.entities[0].attributes #=> Array<Attribute>
    #   resp.data.entities[0].attributes[0] #=> Types::Attribute
    #   resp.data.entities[0].attributes[0].type #=> String, one of ["NAME", "DX_NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "PHONE_OR_FAX", "EMAIL", "IDENTIFIER", "ID", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME"]
    #   resp.data.entities[0].attributes[0].score #=> Float
    #   resp.data.entities[0].attributes[0].relationship_score #=> Float
    #   resp.data.entities[0].attributes[0].relationship_type #=> String, one of ["EVERY", "WITH_DOSAGE", "ADMINISTERED_VIA", "FOR", "NEGATIVE", "OVERLAP", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "STRENGTH", "RATE", "ACUITY", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "DIRECTION", "SYSTEM_ORGAN_SITE"]
    #   resp.data.entities[0].attributes[0].id #=> Integer
    #   resp.data.entities[0].attributes[0].begin_offset #=> Integer
    #   resp.data.entities[0].attributes[0].end_offset #=> Integer
    #   resp.data.entities[0].attributes[0].text #=> String
    #   resp.data.entities[0].attributes[0].category #=> String, one of ["MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION"]
    #   resp.data.entities[0].attributes[0].traits #=> Array<Trait>
    #   resp.data.unmapped_attributes #=> Array<UnmappedAttribute>
    #   resp.data.unmapped_attributes[0] #=> Types::UnmappedAttribute
    #   resp.data.unmapped_attributes[0].type #=> String, one of ["MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION"]
    #   resp.data.unmapped_attributes[0].attribute #=> Types::Attribute
    #   resp.data.pagination_token #=> String
    #   resp.data.model_version #=> String
    #
    def detect_entities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectEntitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectEntitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectEntities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidEncodingException, Errors::TextSizeLimitExceededException, Errors::ServiceUnavailableException, Errors::InvalidRequestException]),
        data_parser: Parsers::DetectEntities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectEntities,
        stubs: @stubs,
        params_class: Params::DetectEntitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_entities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Inspects the clinical text for a variety of medical entities and returns specific
    #       information about them such as entity category, location, and confidence score on that
    #       information. Amazon Comprehend Medical only detects medical entities in English language
    #       texts.</p>
    #          <p>The <code>DetectEntitiesV2</code> operation replaces the <a>DetectEntities</a>
    #       operation. This new action uses a different model for determining the entities in your medical
    #       text and changes the way that some entities are returned in the output. You should use the
    #         <code>DetectEntitiesV2</code> operation in all new applications.</p>
    #          <p>The <code>DetectEntitiesV2</code> operation returns the <code>Acuity</code> and
    #         <code>Direction</code> entities as attributes instead of types. </p>
    #
    # @param [Hash] params
    #   See {Types::DetectEntitiesV2Input}.
    #
    # @option params [String] :text
    #   <p>A UTF-8 string containing the clinical content being examined for entities. Each string
    #         must contain fewer than 20,000 bytes of characters.</p>
    #
    # @return [Types::DetectEntitiesV2Output]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_entities_v2(
    #     text: 'Text' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectEntitiesV2Output
    #   resp.data.entities #=> Array<Entity>
    #   resp.data.entities[0] #=> Types::Entity
    #   resp.data.entities[0].id #=> Integer
    #   resp.data.entities[0].begin_offset #=> Integer
    #   resp.data.entities[0].end_offset #=> Integer
    #   resp.data.entities[0].score #=> Float
    #   resp.data.entities[0].text #=> String
    #   resp.data.entities[0].category #=> String, one of ["MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION"]
    #   resp.data.entities[0].type #=> String, one of ["NAME", "DX_NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "PHONE_OR_FAX", "EMAIL", "IDENTIFIER", "ID", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME"]
    #   resp.data.entities[0].traits #=> Array<Trait>
    #   resp.data.entities[0].traits[0] #=> Types::Trait
    #   resp.data.entities[0].traits[0].name #=> String, one of ["SIGN", "SYMPTOM", "DIAGNOSIS", "NEGATION"]
    #   resp.data.entities[0].traits[0].score #=> Float
    #   resp.data.entities[0].attributes #=> Array<Attribute>
    #   resp.data.entities[0].attributes[0] #=> Types::Attribute
    #   resp.data.entities[0].attributes[0].type #=> String, one of ["NAME", "DX_NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "PHONE_OR_FAX", "EMAIL", "IDENTIFIER", "ID", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME"]
    #   resp.data.entities[0].attributes[0].score #=> Float
    #   resp.data.entities[0].attributes[0].relationship_score #=> Float
    #   resp.data.entities[0].attributes[0].relationship_type #=> String, one of ["EVERY", "WITH_DOSAGE", "ADMINISTERED_VIA", "FOR", "NEGATIVE", "OVERLAP", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "STRENGTH", "RATE", "ACUITY", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "DIRECTION", "SYSTEM_ORGAN_SITE"]
    #   resp.data.entities[0].attributes[0].id #=> Integer
    #   resp.data.entities[0].attributes[0].begin_offset #=> Integer
    #   resp.data.entities[0].attributes[0].end_offset #=> Integer
    #   resp.data.entities[0].attributes[0].text #=> String
    #   resp.data.entities[0].attributes[0].category #=> String, one of ["MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION"]
    #   resp.data.entities[0].attributes[0].traits #=> Array<Trait>
    #   resp.data.unmapped_attributes #=> Array<UnmappedAttribute>
    #   resp.data.unmapped_attributes[0] #=> Types::UnmappedAttribute
    #   resp.data.unmapped_attributes[0].type #=> String, one of ["MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION"]
    #   resp.data.unmapped_attributes[0].attribute #=> Types::Attribute
    #   resp.data.pagination_token #=> String
    #   resp.data.model_version #=> String
    #
    def detect_entities_v2(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectEntitiesV2Input.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectEntitiesV2Input,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectEntitiesV2
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidEncodingException, Errors::TextSizeLimitExceededException, Errors::ServiceUnavailableException, Errors::InvalidRequestException]),
        data_parser: Parsers::DetectEntitiesV2
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectEntitiesV2,
        stubs: @stubs,
        params_class: Params::DetectEntitiesV2Output
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_entities_v2
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Inspects the clinical text for protected health information (PHI) entities and returns
    #       the entity category, location, and confidence score for each entity. Amazon Comprehend Medical
    #       only detects entities in English language texts.</p>
    #
    # @param [Hash] params
    #   See {Types::DetectPHIInput}.
    #
    # @option params [String] :text
    #   <p> A UTF-8 text string containing the clinical content being examined for PHI entities. Each
    #         string must contain fewer than 20,000 bytes of characters.</p>
    #
    # @return [Types::DetectPHIOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_phi(
    #     text: 'Text' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectPHIOutput
    #   resp.data.entities #=> Array<Entity>
    #   resp.data.entities[0] #=> Types::Entity
    #   resp.data.entities[0].id #=> Integer
    #   resp.data.entities[0].begin_offset #=> Integer
    #   resp.data.entities[0].end_offset #=> Integer
    #   resp.data.entities[0].score #=> Float
    #   resp.data.entities[0].text #=> String
    #   resp.data.entities[0].category #=> String, one of ["MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION"]
    #   resp.data.entities[0].type #=> String, one of ["NAME", "DX_NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "PHONE_OR_FAX", "EMAIL", "IDENTIFIER", "ID", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME"]
    #   resp.data.entities[0].traits #=> Array<Trait>
    #   resp.data.entities[0].traits[0] #=> Types::Trait
    #   resp.data.entities[0].traits[0].name #=> String, one of ["SIGN", "SYMPTOM", "DIAGNOSIS", "NEGATION"]
    #   resp.data.entities[0].traits[0].score #=> Float
    #   resp.data.entities[0].attributes #=> Array<Attribute>
    #   resp.data.entities[0].attributes[0] #=> Types::Attribute
    #   resp.data.entities[0].attributes[0].type #=> String, one of ["NAME", "DX_NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "PHONE_OR_FAX", "EMAIL", "IDENTIFIER", "ID", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME"]
    #   resp.data.entities[0].attributes[0].score #=> Float
    #   resp.data.entities[0].attributes[0].relationship_score #=> Float
    #   resp.data.entities[0].attributes[0].relationship_type #=> String, one of ["EVERY", "WITH_DOSAGE", "ADMINISTERED_VIA", "FOR", "NEGATIVE", "OVERLAP", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "STRENGTH", "RATE", "ACUITY", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "DIRECTION", "SYSTEM_ORGAN_SITE"]
    #   resp.data.entities[0].attributes[0].id #=> Integer
    #   resp.data.entities[0].attributes[0].begin_offset #=> Integer
    #   resp.data.entities[0].attributes[0].end_offset #=> Integer
    #   resp.data.entities[0].attributes[0].text #=> String
    #   resp.data.entities[0].attributes[0].category #=> String, one of ["MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION"]
    #   resp.data.entities[0].attributes[0].traits #=> Array<Trait>
    #   resp.data.pagination_token #=> String
    #   resp.data.model_version #=> String
    #
    def detect_phi(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectPHIInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectPHIInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectPHI
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidEncodingException, Errors::TextSizeLimitExceededException, Errors::ServiceUnavailableException, Errors::InvalidRequestException]),
        data_parser: Parsers::DetectPHI
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectPHI,
        stubs: @stubs,
        params_class: Params::DetectPHIOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_phi
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>InferICD10CM detects medical conditions as entities listed in a patient record and links
    #       those entities to normalized concept identifiers in the ICD-10-CM knowledge base from the
    #       Centers for Disease Control. Amazon Comprehend Medical only detects medical entities in
    #       English language texts.  </p>
    #
    # @param [Hash] params
    #   See {Types::InferICD10CMInput}.
    #
    # @option params [String] :text
    #   <p>The input text used for analysis. The input for InferICD10CM is a string from 1 to 10000
    #         characters.</p>
    #
    # @return [Types::InferICD10CMOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.infer_icd10_cm(
    #     text: 'Text' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InferICD10CMOutput
    #   resp.data.entities #=> Array<ICD10CMEntity>
    #   resp.data.entities[0] #=> Types::ICD10CMEntity
    #   resp.data.entities[0].id #=> Integer
    #   resp.data.entities[0].text #=> String
    #   resp.data.entities[0].category #=> String, one of ["MEDICAL_CONDITION"]
    #   resp.data.entities[0].type #=> String, one of ["DX_NAME", "TIME_EXPRESSION"]
    #   resp.data.entities[0].score #=> Float
    #   resp.data.entities[0].begin_offset #=> Integer
    #   resp.data.entities[0].end_offset #=> Integer
    #   resp.data.entities[0].attributes #=> Array<ICD10CMAttribute>
    #   resp.data.entities[0].attributes[0] #=> Types::ICD10CMAttribute
    #   resp.data.entities[0].attributes[0].type #=> String, one of ["ACUITY", "DIRECTION", "SYSTEM_ORGAN_SITE", "QUALITY", "QUANTITY", "TIME_TO_DX_NAME", "TIME_EXPRESSION"]
    #   resp.data.entities[0].attributes[0].score #=> Float
    #   resp.data.entities[0].attributes[0].relationship_score #=> Float
    #   resp.data.entities[0].attributes[0].id #=> Integer
    #   resp.data.entities[0].attributes[0].begin_offset #=> Integer
    #   resp.data.entities[0].attributes[0].end_offset #=> Integer
    #   resp.data.entities[0].attributes[0].text #=> String
    #   resp.data.entities[0].attributes[0].traits #=> Array<ICD10CMTrait>
    #   resp.data.entities[0].attributes[0].traits[0] #=> Types::ICD10CMTrait
    #   resp.data.entities[0].attributes[0].traits[0].name #=> String, one of ["NEGATION", "DIAGNOSIS", "SIGN", "SYMPTOM"]
    #   resp.data.entities[0].attributes[0].traits[0].score #=> Float
    #   resp.data.entities[0].attributes[0].category #=> String, one of ["DX_NAME", "TIME_EXPRESSION"]
    #   resp.data.entities[0].attributes[0].relationship_type #=> String, one of ["OVERLAP", "SYSTEM_ORGAN_SITE"]
    #   resp.data.entities[0].traits #=> Array<ICD10CMTrait>
    #   resp.data.entities[0].icd10_cm_concepts #=> Array<ICD10CMConcept>
    #   resp.data.entities[0].icd10_cm_concepts[0] #=> Types::ICD10CMConcept
    #   resp.data.entities[0].icd10_cm_concepts[0].description #=> String
    #   resp.data.entities[0].icd10_cm_concepts[0].code #=> String
    #   resp.data.entities[0].icd10_cm_concepts[0].score #=> Float
    #   resp.data.pagination_token #=> String
    #   resp.data.model_version #=> String
    #
    def infer_icd10_cm(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InferICD10CMInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InferICD10CMInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InferICD10CM
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidEncodingException, Errors::TextSizeLimitExceededException, Errors::ServiceUnavailableException, Errors::InvalidRequestException]),
        data_parser: Parsers::InferICD10CM
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InferICD10CM,
        stubs: @stubs,
        params_class: Params::InferICD10CMOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :infer_icd10_cm
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>InferRxNorm detects medications as entities listed in a patient record and links to the
    #       normalized concept identifiers in the RxNorm database from the National Library of Medicine.
    #       Amazon Comprehend Medical only detects medical entities in English language texts.  </p>
    #
    # @param [Hash] params
    #   See {Types::InferRxNormInput}.
    #
    # @option params [String] :text
    #   <p>The input text used for analysis. The input for InferRxNorm is a string from 1 to 10000
    #         characters.</p>
    #
    # @return [Types::InferRxNormOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.infer_rx_norm(
    #     text: 'Text' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InferRxNormOutput
    #   resp.data.entities #=> Array<RxNormEntity>
    #   resp.data.entities[0] #=> Types::RxNormEntity
    #   resp.data.entities[0].id #=> Integer
    #   resp.data.entities[0].text #=> String
    #   resp.data.entities[0].category #=> String, one of ["MEDICATION"]
    #   resp.data.entities[0].type #=> String, one of ["BRAND_NAME", "GENERIC_NAME"]
    #   resp.data.entities[0].score #=> Float
    #   resp.data.entities[0].begin_offset #=> Integer
    #   resp.data.entities[0].end_offset #=> Integer
    #   resp.data.entities[0].attributes #=> Array<RxNormAttribute>
    #   resp.data.entities[0].attributes[0] #=> Types::RxNormAttribute
    #   resp.data.entities[0].attributes[0].type #=> String, one of ["DOSAGE", "DURATION", "FORM", "FREQUENCY", "RATE", "ROUTE_OR_MODE", "STRENGTH"]
    #   resp.data.entities[0].attributes[0].score #=> Float
    #   resp.data.entities[0].attributes[0].relationship_score #=> Float
    #   resp.data.entities[0].attributes[0].id #=> Integer
    #   resp.data.entities[0].attributes[0].begin_offset #=> Integer
    #   resp.data.entities[0].attributes[0].end_offset #=> Integer
    #   resp.data.entities[0].attributes[0].text #=> String
    #   resp.data.entities[0].attributes[0].traits #=> Array<RxNormTrait>
    #   resp.data.entities[0].attributes[0].traits[0] #=> Types::RxNormTrait
    #   resp.data.entities[0].attributes[0].traits[0].name #=> String, one of ["NEGATION"]
    #   resp.data.entities[0].attributes[0].traits[0].score #=> Float
    #   resp.data.entities[0].traits #=> Array<RxNormTrait>
    #   resp.data.entities[0].rx_norm_concepts #=> Array<RxNormConcept>
    #   resp.data.entities[0].rx_norm_concepts[0] #=> Types::RxNormConcept
    #   resp.data.entities[0].rx_norm_concepts[0].description #=> String
    #   resp.data.entities[0].rx_norm_concepts[0].code #=> String
    #   resp.data.entities[0].rx_norm_concepts[0].score #=> Float
    #   resp.data.pagination_token #=> String
    #   resp.data.model_version #=> String
    #
    def infer_rx_norm(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InferRxNormInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InferRxNormInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InferRxNorm
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidEncodingException, Errors::TextSizeLimitExceededException, Errors::ServiceUnavailableException, Errors::InvalidRequestException]),
        data_parser: Parsers::InferRxNorm
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InferRxNorm,
        stubs: @stubs,
        params_class: Params::InferRxNormOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :infer_rx_norm
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       InferSNOMEDCT detects possible medical concepts as entities and links them to codes from the Systematized Nomenclature of Medicine, Clinical Terms (SNOMED-CT) ontology</p>
    #
    # @param [Hash] params
    #   See {Types::InferSNOMEDCTInput}.
    #
    # @option params [String] :text
    #   <p>
    #         The input text to be analyzed using InferSNOMEDCT. The text should be a string with 1 to 10000 characters.
    #       </p>
    #
    # @return [Types::InferSNOMEDCTOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.infer_snomedct(
    #     text: 'Text' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InferSNOMEDCTOutput
    #   resp.data.entities #=> Array<SNOMEDCTEntity>
    #   resp.data.entities[0] #=> Types::SNOMEDCTEntity
    #   resp.data.entities[0].id #=> Integer
    #   resp.data.entities[0].text #=> String
    #   resp.data.entities[0].category #=> String, one of ["MEDICAL_CONDITION", "ANATOMY", "TEST_TREATMENT_PROCEDURE"]
    #   resp.data.entities[0].type #=> String, one of ["DX_NAME", "TEST_NAME", "PROCEDURE_NAME", "TREATMENT_NAME"]
    #   resp.data.entities[0].score #=> Float
    #   resp.data.entities[0].begin_offset #=> Integer
    #   resp.data.entities[0].end_offset #=> Integer
    #   resp.data.entities[0].attributes #=> Array<SNOMEDCTAttribute>
    #   resp.data.entities[0].attributes[0] #=> Types::SNOMEDCTAttribute
    #   resp.data.entities[0].attributes[0].category #=> String, one of ["MEDICAL_CONDITION", "ANATOMY", "TEST_TREATMENT_PROCEDURE"]
    #   resp.data.entities[0].attributes[0].type #=> String, one of ["ACUITY", "QUALITY", "DIRECTION", "SYSTEM_ORGAN_SITE", "TEST_VALUE", "TEST_UNIT"]
    #   resp.data.entities[0].attributes[0].score #=> Float
    #   resp.data.entities[0].attributes[0].relationship_score #=> Float
    #   resp.data.entities[0].attributes[0].relationship_type #=> String, one of ["ACUITY", "QUALITY", "TEST_VALUE", "TEST_UNITS", "DIRECTION", "SYSTEM_ORGAN_SITE"]
    #   resp.data.entities[0].attributes[0].id #=> Integer
    #   resp.data.entities[0].attributes[0].begin_offset #=> Integer
    #   resp.data.entities[0].attributes[0].end_offset #=> Integer
    #   resp.data.entities[0].attributes[0].text #=> String
    #   resp.data.entities[0].attributes[0].traits #=> Array<SNOMEDCTTrait>
    #   resp.data.entities[0].attributes[0].traits[0] #=> Types::SNOMEDCTTrait
    #   resp.data.entities[0].attributes[0].traits[0].name #=> String, one of ["NEGATION", "DIAGNOSIS", "SIGN", "SYMPTOM"]
    #   resp.data.entities[0].attributes[0].traits[0].score #=> Float
    #   resp.data.entities[0].attributes[0].snomedct_concepts #=> Array<SNOMEDCTConcept>
    #   resp.data.entities[0].attributes[0].snomedct_concepts[0] #=> Types::SNOMEDCTConcept
    #   resp.data.entities[0].attributes[0].snomedct_concepts[0].description #=> String
    #   resp.data.entities[0].attributes[0].snomedct_concepts[0].code #=> String
    #   resp.data.entities[0].attributes[0].snomedct_concepts[0].score #=> Float
    #   resp.data.entities[0].traits #=> Array<SNOMEDCTTrait>
    #   resp.data.entities[0].snomedct_concepts #=> Array<SNOMEDCTConcept>
    #   resp.data.pagination_token #=> String
    #   resp.data.model_version #=> String
    #   resp.data.snomedct_details #=> Types::SNOMEDCTDetails
    #   resp.data.snomedct_details.edition #=> String
    #   resp.data.snomedct_details.language #=> String
    #   resp.data.snomedct_details.version_date #=> String
    #   resp.data.characters #=> Types::Characters
    #   resp.data.characters.original_text_characters #=> Integer
    #
    def infer_snomedct(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InferSNOMEDCTInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InferSNOMEDCTInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InferSNOMEDCT
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidEncodingException, Errors::TextSizeLimitExceededException, Errors::ServiceUnavailableException, Errors::InvalidRequestException]),
        data_parser: Parsers::InferSNOMEDCT
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InferSNOMEDCT,
        stubs: @stubs,
        params_class: Params::InferSNOMEDCTOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :infer_snomedct
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of medical entity detection jobs that you have submitted.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEntitiesDetectionV2JobsInput}.
    #
    # @option params [ComprehendMedicalAsyncJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs based on their names, status, or
    #         the date and time that they were submitted. You can only set one filter at a time.</p>
    #
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    # @return [Types::ListEntitiesDetectionV2JobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entities_detection_v2_jobs(
    #     filter: {
    #       job_name: 'JobName',
    #       job_status: 'SUBMITTED', # accepts ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEntitiesDetectionV2JobsOutput
    #   resp.data.comprehend_medical_async_job_properties_list #=> Array<ComprehendMedicalAsyncJobProperties>
    #   resp.data.comprehend_medical_async_job_properties_list[0] #=> Types::ComprehendMedicalAsyncJobProperties
    #   resp.data.comprehend_medical_async_job_properties_list[0].job_id #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].job_name #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.comprehend_medical_async_job_properties_list[0].message #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].submit_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties_list[0].end_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties_list[0].expiration_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties_list[0].input_data_config #=> Types::InputDataConfig
    #   resp.data.comprehend_medical_async_job_properties_list[0].input_data_config.s3_bucket #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].input_data_config.s3_key #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].output_data_config #=> Types::OutputDataConfig
    #   resp.data.comprehend_medical_async_job_properties_list[0].output_data_config.s3_bucket #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].output_data_config.s3_key #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].language_code #=> String, one of ["en"]
    #   resp.data.comprehend_medical_async_job_properties_list[0].data_access_role_arn #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].manifest_file_path #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].kms_key #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].model_version #=> String
    #   resp.data.next_token #=> String
    #
    def list_entities_detection_v2_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEntitiesDetectionV2JobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEntitiesDetectionV2JobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEntitiesDetectionV2Jobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListEntitiesDetectionV2Jobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEntitiesDetectionV2Jobs,
        stubs: @stubs,
        params_class: Params::ListEntitiesDetectionV2JobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_entities_detection_v2_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of InferICD10CM jobs that you have submitted.</p>
    #
    # @param [Hash] params
    #   See {Types::ListICD10CMInferenceJobsInput}.
    #
    # @option params [ComprehendMedicalAsyncJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs based on their names, status, or
    #         the date and time that they were submitted. You can only set one filter at a time.</p>
    #
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    # @return [Types::ListICD10CMInferenceJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_icd10_cm_inference_jobs(
    #     filter: {
    #       job_name: 'JobName',
    #       job_status: 'SUBMITTED', # accepts ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListICD10CMInferenceJobsOutput
    #   resp.data.comprehend_medical_async_job_properties_list #=> Array<ComprehendMedicalAsyncJobProperties>
    #   resp.data.comprehend_medical_async_job_properties_list[0] #=> Types::ComprehendMedicalAsyncJobProperties
    #   resp.data.comprehend_medical_async_job_properties_list[0].job_id #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].job_name #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.comprehend_medical_async_job_properties_list[0].message #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].submit_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties_list[0].end_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties_list[0].expiration_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties_list[0].input_data_config #=> Types::InputDataConfig
    #   resp.data.comprehend_medical_async_job_properties_list[0].input_data_config.s3_bucket #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].input_data_config.s3_key #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].output_data_config #=> Types::OutputDataConfig
    #   resp.data.comprehend_medical_async_job_properties_list[0].output_data_config.s3_bucket #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].output_data_config.s3_key #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].language_code #=> String, one of ["en"]
    #   resp.data.comprehend_medical_async_job_properties_list[0].data_access_role_arn #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].manifest_file_path #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].kms_key #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].model_version #=> String
    #   resp.data.next_token #=> String
    #
    def list_icd10_cm_inference_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListICD10CMInferenceJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListICD10CMInferenceJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListICD10CMInferenceJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListICD10CMInferenceJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListICD10CMInferenceJobs,
        stubs: @stubs,
        params_class: Params::ListICD10CMInferenceJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_icd10_cm_inference_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of protected health information (PHI) detection jobs that you have
    #       submitted.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPHIDetectionJobsInput}.
    #
    # @option params [ComprehendMedicalAsyncJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs based on their names, status, or
    #         the date and time that they were submitted. You can only set one filter at a time.</p>
    #
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #
    # @return [Types::ListPHIDetectionJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_phi_detection_jobs(
    #     filter: {
    #       job_name: 'JobName',
    #       job_status: 'SUBMITTED', # accepts ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPHIDetectionJobsOutput
    #   resp.data.comprehend_medical_async_job_properties_list #=> Array<ComprehendMedicalAsyncJobProperties>
    #   resp.data.comprehend_medical_async_job_properties_list[0] #=> Types::ComprehendMedicalAsyncJobProperties
    #   resp.data.comprehend_medical_async_job_properties_list[0].job_id #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].job_name #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.comprehend_medical_async_job_properties_list[0].message #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].submit_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties_list[0].end_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties_list[0].expiration_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties_list[0].input_data_config #=> Types::InputDataConfig
    #   resp.data.comprehend_medical_async_job_properties_list[0].input_data_config.s3_bucket #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].input_data_config.s3_key #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].output_data_config #=> Types::OutputDataConfig
    #   resp.data.comprehend_medical_async_job_properties_list[0].output_data_config.s3_bucket #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].output_data_config.s3_key #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].language_code #=> String, one of ["en"]
    #   resp.data.comprehend_medical_async_job_properties_list[0].data_access_role_arn #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].manifest_file_path #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].kms_key #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].model_version #=> String
    #   resp.data.next_token #=> String
    #
    def list_phi_detection_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPHIDetectionJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPHIDetectionJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPHIDetectionJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListPHIDetectionJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPHIDetectionJobs,
        stubs: @stubs,
        params_class: Params::ListPHIDetectionJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_phi_detection_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of InferRxNorm jobs that you have submitted.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRxNormInferenceJobsInput}.
    #
    # @option params [ComprehendMedicalAsyncJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs based on their names, status, or
    #         the date and time that they were submitted. You can only set one filter at a time.</p>
    #
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Identifies the next page of results to return.</p>
    #
    # @return [Types::ListRxNormInferenceJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rx_norm_inference_jobs(
    #     filter: {
    #       job_name: 'JobName',
    #       job_status: 'SUBMITTED', # accepts ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRxNormInferenceJobsOutput
    #   resp.data.comprehend_medical_async_job_properties_list #=> Array<ComprehendMedicalAsyncJobProperties>
    #   resp.data.comprehend_medical_async_job_properties_list[0] #=> Types::ComprehendMedicalAsyncJobProperties
    #   resp.data.comprehend_medical_async_job_properties_list[0].job_id #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].job_name #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.comprehend_medical_async_job_properties_list[0].message #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].submit_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties_list[0].end_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties_list[0].expiration_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties_list[0].input_data_config #=> Types::InputDataConfig
    #   resp.data.comprehend_medical_async_job_properties_list[0].input_data_config.s3_bucket #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].input_data_config.s3_key #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].output_data_config #=> Types::OutputDataConfig
    #   resp.data.comprehend_medical_async_job_properties_list[0].output_data_config.s3_bucket #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].output_data_config.s3_key #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].language_code #=> String, one of ["en"]
    #   resp.data.comprehend_medical_async_job_properties_list[0].data_access_role_arn #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].manifest_file_path #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].kms_key #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].model_version #=> String
    #   resp.data.next_token #=> String
    #
    def list_rx_norm_inference_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRxNormInferenceJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRxNormInferenceJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRxNormInferenceJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListRxNormInferenceJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRxNormInferenceJobs,
        stubs: @stubs,
        params_class: Params::ListRxNormInferenceJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_rx_norm_inference_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Gets a list of InferSNOMEDCT jobs a user has submitted.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::ListSNOMEDCTInferenceJobsInput}.
    #
    # @option params [ComprehendMedicalAsyncJobFilter] :filter
    #   <p>Provides information for filtering a list of detection jobs.</p>
    #
    # @option params [String] :next_token
    #   <p>
    #         Identifies the next page of InferSNOMEDCT results to return.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of results to return in each page. The default is 100.
    #       </p>
    #
    # @return [Types::ListSNOMEDCTInferenceJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_snomedct_inference_jobs(
    #     filter: {
    #       job_name: 'JobName',
    #       job_status: 'SUBMITTED', # accepts ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSNOMEDCTInferenceJobsOutput
    #   resp.data.comprehend_medical_async_job_properties_list #=> Array<ComprehendMedicalAsyncJobProperties>
    #   resp.data.comprehend_medical_async_job_properties_list[0] #=> Types::ComprehendMedicalAsyncJobProperties
    #   resp.data.comprehend_medical_async_job_properties_list[0].job_id #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].job_name #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.comprehend_medical_async_job_properties_list[0].message #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].submit_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties_list[0].end_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties_list[0].expiration_time #=> Time
    #   resp.data.comprehend_medical_async_job_properties_list[0].input_data_config #=> Types::InputDataConfig
    #   resp.data.comprehend_medical_async_job_properties_list[0].input_data_config.s3_bucket #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].input_data_config.s3_key #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].output_data_config #=> Types::OutputDataConfig
    #   resp.data.comprehend_medical_async_job_properties_list[0].output_data_config.s3_bucket #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].output_data_config.s3_key #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].language_code #=> String, one of ["en"]
    #   resp.data.comprehend_medical_async_job_properties_list[0].data_access_role_arn #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].manifest_file_path #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].kms_key #=> String
    #   resp.data.comprehend_medical_async_job_properties_list[0].model_version #=> String
    #   resp.data.next_token #=> String
    #
    def list_snomedct_inference_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSNOMEDCTInferenceJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSNOMEDCTInferenceJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSNOMEDCTInferenceJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListSNOMEDCTInferenceJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSNOMEDCTInferenceJobs,
        stubs: @stubs,
        params_class: Params::ListSNOMEDCTInferenceJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_snomedct_inference_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an asynchronous medical entity detection job for a collection of documents. Use the
    #         <code>DescribeEntitiesDetectionV2Job</code> operation to track the status of a job.</p>
    #
    # @param [Hash] params
    #   See {Types::StartEntitiesDetectionV2JobInput}.
    #
    # @option params [InputDataConfig] :input_data_config
    #   <p>The input configuration that specifies the format and location of the input data for the job.</p>
    #
    # @option params [OutputDataConfig] :output_data_config
    #   <p>The output configuration that specifies where to send the output files.</p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Comprehend Medical; read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>
    #
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Comprehend Medical;
    #         generates one for you.</p>
    #
    # @option params [String] :kms_key
    #   <p>An AWS Key Management Service key to encrypt your output files. If you do not specify a
    #         key, the files are written in plain text.</p>
    #
    # @option params [String] :language_code
    #   <p>The language of the input documents. All documents must be in the same language. Comprehend Medical; processes files in US English (en).</p>
    #
    # @return [Types::StartEntitiesDetectionV2JobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_entities_detection_v2_job(
    #     input_data_config: {
    #       s3_bucket: 'S3Bucket', # required
    #       s3_key: 'S3Key'
    #     }, # required
    #     output_data_config: {
    #       s3_bucket: 'S3Bucket', # required
    #       s3_key: 'S3Key'
    #     }, # required
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     job_name: 'JobName',
    #     client_request_token: 'ClientRequestToken',
    #     kms_key: 'KMSKey',
    #     language_code: 'en' # required - accepts ["en"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartEntitiesDetectionV2JobOutput
    #   resp.data.job_id #=> String
    #
    def start_entities_detection_v2_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartEntitiesDetectionV2JobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartEntitiesDetectionV2JobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartEntitiesDetectionV2Job
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartEntitiesDetectionV2Job
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartEntitiesDetectionV2Job,
        stubs: @stubs,
        params_class: Params::StartEntitiesDetectionV2JobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_entities_detection_v2_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an asynchronous job to detect medical conditions and link them to the ICD-10-CM
    #       ontology. Use the <code>DescribeICD10CMInferenceJob</code> operation to track the status of a
    #       job.</p>
    #
    # @param [Hash] params
    #   See {Types::StartICD10CMInferenceJobInput}.
    #
    # @option params [InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #
    # @option params [OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files.</p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Comprehend Medical; read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>
    #
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Comprehend Medical;
    #         generates one.</p>
    #
    # @option params [String] :kms_key
    #   <p>An AWS Key Management Service key to encrypt your output files. If you do not specify a
    #         key, the files are written in plain text.</p>
    #
    # @option params [String] :language_code
    #   <p>The language of the input documents. All documents must be in the same language.</p>
    #
    # @return [Types::StartICD10CMInferenceJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_icd10_cm_inference_job(
    #     input_data_config: {
    #       s3_bucket: 'S3Bucket', # required
    #       s3_key: 'S3Key'
    #     }, # required
    #     output_data_config: {
    #       s3_bucket: 'S3Bucket', # required
    #       s3_key: 'S3Key'
    #     }, # required
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     job_name: 'JobName',
    #     client_request_token: 'ClientRequestToken',
    #     kms_key: 'KMSKey',
    #     language_code: 'en' # required - accepts ["en"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartICD10CMInferenceJobOutput
    #   resp.data.job_id #=> String
    #
    def start_icd10_cm_inference_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartICD10CMInferenceJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartICD10CMInferenceJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartICD10CMInferenceJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartICD10CMInferenceJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartICD10CMInferenceJob,
        stubs: @stubs,
        params_class: Params::StartICD10CMInferenceJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_icd10_cm_inference_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an asynchronous job to detect protected health information (PHI). Use the
    #         <code>DescribePHIDetectionJob</code> operation to track the status of a job.</p>
    #
    # @param [Hash] params
    #   See {Types::StartPHIDetectionJobInput}.
    #
    # @option params [InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #
    # @option params [OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files.</p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Comprehend Medical; read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>
    #
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Comprehend Medical;
    #         generates one.</p>
    #
    # @option params [String] :kms_key
    #   <p>An AWS Key Management Service key to encrypt your output files. If you do not specify a
    #         key, the files are written in plain text.</p>
    #
    # @option params [String] :language_code
    #   <p>The language of the input documents. All documents must be in the same language.</p>
    #
    # @return [Types::StartPHIDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_phi_detection_job(
    #     input_data_config: {
    #       s3_bucket: 'S3Bucket', # required
    #       s3_key: 'S3Key'
    #     }, # required
    #     output_data_config: {
    #       s3_bucket: 'S3Bucket', # required
    #       s3_key: 'S3Key'
    #     }, # required
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     job_name: 'JobName',
    #     client_request_token: 'ClientRequestToken',
    #     kms_key: 'KMSKey',
    #     language_code: 'en' # required - accepts ["en"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartPHIDetectionJobOutput
    #   resp.data.job_id #=> String
    #
    def start_phi_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartPHIDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartPHIDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartPHIDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartPHIDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartPHIDetectionJob,
        stubs: @stubs,
        params_class: Params::StartPHIDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_phi_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an asynchronous job to detect medication entities and link them to the RxNorm
    #       ontology. Use the <code>DescribeRxNormInferenceJob</code> operation to track the status of a
    #       job.</p>
    #
    # @param [Hash] params
    #   See {Types::StartRxNormInferenceJobInput}.
    #
    # @option params [InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #
    # @option params [OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files.</p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Comprehend Medical; read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>
    #
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Comprehend Medical;
    #         generates one.</p>
    #
    # @option params [String] :kms_key
    #   <p>An AWS Key Management Service key to encrypt your output files. If you do not specify a
    #         key, the files are written in plain text.</p>
    #
    # @option params [String] :language_code
    #   <p>The language of the input documents. All documents must be in the same language.</p>
    #
    # @return [Types::StartRxNormInferenceJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_rx_norm_inference_job(
    #     input_data_config: {
    #       s3_bucket: 'S3Bucket', # required
    #       s3_key: 'S3Key'
    #     }, # required
    #     output_data_config: {
    #       s3_bucket: 'S3Bucket', # required
    #       s3_key: 'S3Key'
    #     }, # required
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     job_name: 'JobName',
    #     client_request_token: 'ClientRequestToken',
    #     kms_key: 'KMSKey',
    #     language_code: 'en' # required - accepts ["en"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartRxNormInferenceJobOutput
    #   resp.data.job_id #=> String
    #
    def start_rx_norm_inference_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartRxNormInferenceJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartRxNormInferenceJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartRxNormInferenceJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartRxNormInferenceJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartRxNormInferenceJob,
        stubs: @stubs,
        params_class: Params::StartRxNormInferenceJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_rx_norm_inference_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Starts an asynchronous job to detect medical concepts and link them to the SNOMED-CT ontology. Use the DescribeSNOMEDCTInferenceJob operation to track the status of a job.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::StartSNOMEDCTInferenceJobInput}.
    #
    # @option params [InputDataConfig] :input_data_config
    #   <p>The input properties for an entities detection job. This includes the name of the S3
    #         bucket and the path to the files to be analyzed. </p>
    #
    # @option params [OutputDataConfig] :output_data_config
    #   <p>The output properties for a detection job.</p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend Medical read access to your input data.
    #       </p>
    #
    # @option params [String] :job_name
    #   <p>
    #         The user generated name the asynchronous InferSNOMEDCT job.
    #       </p>
    #
    # @option params [String] :client_request_token
    #   <p>
    #         A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical generates one.
    #       </p>
    #
    # @option params [String] :kms_key
    #   <p>
    #         An AWS Key Management Service key used to encrypt your output files. If you do not specify a key, the files are written in plain text.
    #       </p>
    #
    # @option params [String] :language_code
    #   <p>
    #         The language of the input documents. All documents must be in the same language.
    #       </p>
    #
    # @return [Types::StartSNOMEDCTInferenceJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_snomedct_inference_job(
    #     input_data_config: {
    #       s3_bucket: 'S3Bucket', # required
    #       s3_key: 'S3Key'
    #     }, # required
    #     output_data_config: {
    #       s3_bucket: 'S3Bucket', # required
    #       s3_key: 'S3Key'
    #     }, # required
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     job_name: 'JobName',
    #     client_request_token: 'ClientRequestToken',
    #     kms_key: 'KMSKey',
    #     language_code: 'en' # required - accepts ["en"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartSNOMEDCTInferenceJobOutput
    #   resp.data.job_id #=> String
    #
    def start_snomedct_inference_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartSNOMEDCTInferenceJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartSNOMEDCTInferenceJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartSNOMEDCTInferenceJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartSNOMEDCTInferenceJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartSNOMEDCTInferenceJob,
        stubs: @stubs,
        params_class: Params::StartSNOMEDCTInferenceJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_snomedct_inference_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a medical entities detection job in progress.</p>
    #
    # @param [Hash] params
    #   See {Types::StopEntitiesDetectionV2JobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier of the medical entities job to stop.</p>
    #
    # @return [Types::StopEntitiesDetectionV2JobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_entities_detection_v2_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopEntitiesDetectionV2JobOutput
    #   resp.data.job_id #=> String
    #
    def stop_entities_detection_v2_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopEntitiesDetectionV2JobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopEntitiesDetectionV2JobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopEntitiesDetectionV2Job
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StopEntitiesDetectionV2Job
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopEntitiesDetectionV2Job,
        stubs: @stubs,
        params_class: Params::StopEntitiesDetectionV2JobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_entities_detection_v2_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops an InferICD10CM inference job in progress.</p>
    #
    # @param [Hash] params
    #   See {Types::StopICD10CMInferenceJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier of the job.</p>
    #
    # @return [Types::StopICD10CMInferenceJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_icd10_cm_inference_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopICD10CMInferenceJobOutput
    #   resp.data.job_id #=> String
    #
    def stop_icd10_cm_inference_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopICD10CMInferenceJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopICD10CMInferenceJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopICD10CMInferenceJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StopICD10CMInferenceJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopICD10CMInferenceJob,
        stubs: @stubs,
        params_class: Params::StopICD10CMInferenceJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_icd10_cm_inference_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a protected health information (PHI) detection job in progress.</p>
    #
    # @param [Hash] params
    #   See {Types::StopPHIDetectionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier of the PHI detection job to stop.</p>
    #
    # @return [Types::StopPHIDetectionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_phi_detection_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopPHIDetectionJobOutput
    #   resp.data.job_id #=> String
    #
    def stop_phi_detection_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopPHIDetectionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopPHIDetectionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopPHIDetectionJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StopPHIDetectionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopPHIDetectionJob,
        stubs: @stubs,
        params_class: Params::StopPHIDetectionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_phi_detection_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops an InferRxNorm inference job in progress.</p>
    #
    # @param [Hash] params
    #   See {Types::StopRxNormInferenceJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier of the job.</p>
    #
    # @return [Types::StopRxNormInferenceJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_rx_norm_inference_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopRxNormInferenceJobOutput
    #   resp.data.job_id #=> String
    #
    def stop_rx_norm_inference_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopRxNormInferenceJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopRxNormInferenceJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopRxNormInferenceJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StopRxNormInferenceJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopRxNormInferenceJob,
        stubs: @stubs,
        params_class: Params::StopRxNormInferenceJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_rx_norm_inference_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Stops an InferSNOMEDCT inference job in progress.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::StopSNOMEDCTInferenceJobInput}.
    #
    # @option params [String] :job_id
    #   <p>
    #         The job id of the asynchronous InferSNOMEDCT job to be stopped.
    #       </p>
    #
    # @return [Types::StopSNOMEDCTInferenceJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_snomedct_inference_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopSNOMEDCTInferenceJobOutput
    #   resp.data.job_id #=> String
    #
    def stop_snomedct_inference_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopSNOMEDCTInferenceJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopSNOMEDCTInferenceJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopSNOMEDCTInferenceJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StopSNOMEDCTInferenceJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopSNOMEDCTInferenceJob,
        stubs: @stubs,
        params_class: Params::StopSNOMEDCTInferenceJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_snomedct_inference_job
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
