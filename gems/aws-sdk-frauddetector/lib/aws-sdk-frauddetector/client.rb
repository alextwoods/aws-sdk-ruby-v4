# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::FraudDetector
  # An API client for AWSHawksNestServiceFacade
  # See {#initialize} for a full list of supported configuration options
  # <p>This is the Amazon Fraud Detector API Reference. This guide is for developers who need
  #             detailed information about Amazon Fraud Detector API actions, data types, and errors. For
  #             more information about Amazon Fraud Detector features, see the <a href="https://docs.aws.amazon.com/frauddetector/latest/ug/">Amazon Fraud Detector User Guide</a>.</p>
  #
  #         <p>We provide the Query API as well as AWS software development kits (SDK) for Amazon Fraud Detector in Java and Python programming languages.</p>
  #         <p>The Amazon Fraud Detector Query API provides HTTPS requests that use the HTTP verb GET or POST and a Query parameter <code>Action</code>. AWS SDK provides libraries,
  #             sample code, tutorials, and other resources for software developers who prefer to build applications using language-specific APIs instead of submitting a request over
  #             HTTP or HTTPS. These libraries provide basic functions that automatically take care of tasks such as cryptographically signing your requests, retrying requests, and
  #             handling error responses, so that it is easier for you to get started. For more information about the AWS SDKs, see <a href="https://docs.aws.amazon.com/https:/aws.amazon.com/tools/">Tools to build on AWS</a>.
  #             </p>
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
    def initialize(config = AWS::SDK::FraudDetector::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a batch of variables.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchCreateVariableInput}.
    #
    # @option params [Array<VariableEntry>] :variable_entries
    #   <p>The list of variables for the batch create variable request.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    #
    # @return [Types::BatchCreateVariableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_variable(
    #     variable_entries: [
    #       {
    #         name: 'name',
    #         data_type: 'dataType',
    #         data_source: 'dataSource',
    #         default_value: 'defaultValue',
    #         description: 'description',
    #         variable_type: 'variableType'
    #       }
    #     ], # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchCreateVariableOutput
    #   resp.data.errors #=> Array<BatchCreateVariableError>
    #   resp.data.errors[0] #=> Types::BatchCreateVariableError
    #   resp.data.errors[0].name #=> String
    #   resp.data.errors[0].code #=> Integer
    #   resp.data.errors[0].message #=> String
    #
    def batch_create_variable(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchCreateVariableInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchCreateVariableInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchCreateVariable
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::BatchCreateVariable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchCreateVariable,
        stubs: @stubs,
        params_class: Params::BatchCreateVariableOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_create_variable
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a batch of variables.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetVariableInput}.
    #
    # @option params [Array<String>] :names
    #   <p>The list of variable names to get.</p>
    #
    # @return [Types::BatchGetVariableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_variable(
    #     names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetVariableOutput
    #   resp.data.variables #=> Array<Variable>
    #   resp.data.variables[0] #=> Types::Variable
    #   resp.data.variables[0].name #=> String
    #   resp.data.variables[0].data_type #=> String, one of ["STRING", "INTEGER", "FLOAT", "BOOLEAN"]
    #   resp.data.variables[0].data_source #=> String, one of ["EVENT", "MODEL_SCORE", "EXTERNAL_MODEL_SCORE"]
    #   resp.data.variables[0].default_value #=> String
    #   resp.data.variables[0].description #=> String
    #   resp.data.variables[0].variable_type #=> String
    #   resp.data.variables[0].last_updated_time #=> String
    #   resp.data.variables[0].created_time #=> String
    #   resp.data.variables[0].arn #=> String
    #   resp.data.errors #=> Array<BatchGetVariableError>
    #   resp.data.errors[0] #=> Types::BatchGetVariableError
    #   resp.data.errors[0].name #=> String
    #   resp.data.errors[0].code #=> Integer
    #   resp.data.errors[0].message #=> String
    #
    def batch_get_variable(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetVariableInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetVariableInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetVariable
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::BatchGetVariable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetVariable,
        stubs: @stubs,
        params_class: Params::BatchGetVariableOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_variable
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Cancels an in-progress batch import job.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelBatchImportJobInput}.
    #
    # @option params [String] :job_id
    #   <p> The ID of an in-progress batch import job to cancel. </p>
    #            <p>Amazon Fraud Detector will throw an error if the batch import job is in <code>FAILED</code>, <code>CANCELED</code>, or  <code>COMPLETED</code> state.</p>
    #
    # @return [Types::CancelBatchImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_batch_import_job(
    #     job_id: 'jobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelBatchImportJobOutput
    #
    def cancel_batch_import_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelBatchImportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelBatchImportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelBatchImportJob
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::CancelBatchImportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelBatchImportJob,
        stubs: @stubs,
        params_class: Params::CancelBatchImportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_batch_import_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels the specified batch prediction job.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelBatchPredictionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID of the batch prediction job to cancel.</p>
    #
    # @return [Types::CancelBatchPredictionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_batch_prediction_job(
    #     job_id: 'jobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelBatchPredictionJobOutput
    #
    def cancel_batch_prediction_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelBatchPredictionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelBatchPredictionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelBatchPredictionJob
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::CancelBatchPredictionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelBatchPredictionJob,
        stubs: @stubs,
        params_class: Params::CancelBatchPredictionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_batch_prediction_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a batch import job. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateBatchImportJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID of the batch import job. The ID cannot be of a past job, unless the job exists in <code>CREATE_FAILED</code> state.</p>
    #
    # @option params [String] :input_path
    #   <p>The URI that points to the Amazon S3 location of your data file.</p>
    #
    # @option params [String] :output_path
    #   <p>The URI that points to the Amazon S3 location for storing your results. </p>
    #
    # @option params [String] :event_type_name
    #   <p>The name of the event type.</p>
    #
    # @option params [String] :iam_role_arn
    #   <p>The ARN of the IAM role created for Amazon S3 bucket that holds your data file.
    #            The IAM role must have read and write permissions to both input and output S3 buckets.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A collection of key-value pairs associated with this request.  </p>
    #
    # @return [Types::CreateBatchImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_batch_import_job(
    #     job_id: 'jobId', # required
    #     input_path: 'inputPath', # required
    #     output_path: 'outputPath', # required
    #     event_type_name: 'eventTypeName', # required
    #     iam_role_arn: 'iamRoleArn', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBatchImportJobOutput
    #
    def create_batch_import_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBatchImportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBatchImportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBatchImportJob
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateBatchImportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBatchImportJob,
        stubs: @stubs,
        params_class: Params::CreateBatchImportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_batch_import_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a batch prediction job.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateBatchPredictionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID of the batch prediction job.</p>
    #
    # @option params [String] :input_path
    #   <p>The Amazon S3 location of your training file.</p>
    #
    # @option params [String] :output_path
    #   <p>The Amazon S3 location of your output file.</p>
    #
    # @option params [String] :event_type_name
    #   <p>The name of the event type.</p>
    #
    # @option params [String] :detector_name
    #   <p>The name of the detector.</p>
    #
    # @option params [String] :detector_version
    #   <p>The detector version.</p>
    #
    # @option params [String] :iam_role_arn
    #   <p>The ARN of the IAM role to use for this job request.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    #
    # @return [Types::CreateBatchPredictionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_batch_prediction_job(
    #     job_id: 'jobId', # required
    #     input_path: 'inputPath', # required
    #     output_path: 'outputPath', # required
    #     event_type_name: 'eventTypeName', # required
    #     detector_name: 'detectorName', # required
    #     detector_version: 'detectorVersion',
    #     iam_role_arn: 'iamRoleArn', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBatchPredictionJobOutput
    #
    def create_batch_prediction_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBatchPredictionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBatchPredictionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBatchPredictionJob
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateBatchPredictionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBatchPredictionJob,
        stubs: @stubs,
        params_class: Params::CreateBatchPredictionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_batch_prediction_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a detector version. The detector version starts in a <code>DRAFT</code> status.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDetectorVersionInput}.
    #
    # @option params [String] :detector_id
    #   <p>The ID of the detector under which you want to create a new version.</p>
    #
    # @option params [String] :description
    #   <p>The description of the detector version.</p>
    #
    # @option params [Array<String>] :external_model_endpoints
    #   <p>The Amazon Sagemaker model endpoints to include in the detector version.</p>
    #
    # @option params [Array<Rule>] :rules
    #   <p>The rules to include in the detector version.</p>
    #
    # @option params [Array<ModelVersion>] :model_versions
    #   <p>The model versions to include in the detector version.</p>
    #
    # @option params [String] :rule_execution_mode
    #   <p>The rule execution mode for the rules included in the detector version.</p>
    #   	        <p>You can define and edit the rule mode at the detector version level, when it is in draft status.</p>
    #   	        <p>If you specify <code>FIRST_MATCHED</code>, Amazon Fraud Detector evaluates rules sequentially, first to last, stopping at the first matched rule. Amazon Fraud dectector then provides the outcomes for that single rule.</p>
    #   	        <p>If you specifiy <code>ALL_MATCHED</code>, Amazon Fraud Detector evaluates all rules and returns the outcomes for all matched rules. </p>
    #            <p>The default behavior is <code>FIRST_MATCHED</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    #
    # @return [Types::CreateDetectorVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_detector_version(
    #     detector_id: 'detectorId', # required
    #     description: 'description',
    #     external_model_endpoints: [
    #       'member'
    #     ],
    #     rules: [
    #       {
    #         detector_id: 'detectorId', # required
    #         rule_id: 'ruleId', # required
    #         rule_version: 'ruleVersion' # required
    #       }
    #     ], # required
    #     model_versions: [
    #       {
    #         model_id: 'modelId', # required
    #         model_type: 'ONLINE_FRAUD_INSIGHTS', # required - accepts ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #         model_version_number: 'modelVersionNumber', # required
    #         arn: 'arn'
    #       }
    #     ],
    #     rule_execution_mode: 'ALL_MATCHED', # accepts ["ALL_MATCHED", "FIRST_MATCHED"]
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDetectorVersionOutput
    #   resp.data.detector_id #=> String
    #   resp.data.detector_version_id #=> String
    #   resp.data.status #=> String, one of ["DRAFT", "ACTIVE", "INACTIVE"]
    #
    def create_detector_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDetectorVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDetectorVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDetectorVersion
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateDetectorVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDetectorVersion,
        stubs: @stubs,
        params_class: Params::CreateDetectorVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_detector_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a model using the specified model type.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateModelInput}.
    #
    # @option params [String] :model_id
    #   <p>The model ID.</p>
    #
    # @option params [String] :model_type
    #   <p>The model type. </p>
    #
    # @option params [String] :description
    #   <p>The model description. </p>
    #
    # @option params [String] :event_type_name
    #   <p>The name of the event type.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    #
    # @return [Types::CreateModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model(
    #     model_id: 'modelId', # required
    #     model_type: 'ONLINE_FRAUD_INSIGHTS', # required - accepts ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #     description: 'description',
    #     event_type_name: 'eventTypeName', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateModelOutput
    #
    def create_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateModel
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateModel,
        stubs: @stubs,
        params_class: Params::CreateModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a version of the model using the specified model type and model id.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::CreateModelVersionInput}.
    #
    # @option params [String] :model_id
    #   <p>The model ID. </p>
    #
    # @option params [String] :model_type
    #   <p>The model type.</p>
    #
    # @option params [String] :training_data_source
    #   <p>The training data source location in Amazon S3. </p>
    #
    # @option params [TrainingDataSchema] :training_data_schema
    #   <p>The training data schema.</p>
    #
    # @option params [ExternalEventsDetail] :external_events_detail
    #   <p>Details of the external events data used for model version training. Required if <code>trainingDataSource</code> is <code>EXTERNAL_EVENTS</code>.</p>
    #
    # @option params [IngestedEventsDetail] :ingested_events_detail
    #   <p>Details of the ingested events data used for model version training. Required if <code>trainingDataSource</code> is <code>INGESTED_EVENTS</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    #
    # @return [Types::CreateModelVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model_version(
    #     model_id: 'modelId', # required
    #     model_type: 'ONLINE_FRAUD_INSIGHTS', # required - accepts ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #     training_data_source: 'EXTERNAL_EVENTS', # required - accepts ["EXTERNAL_EVENTS", "INGESTED_EVENTS"]
    #     training_data_schema: {
    #       model_variables: [
    #         'member'
    #       ], # required
    #       label_schema: {
    #         label_mapper: {
    #           'key' => [
    #             'member'
    #           ]
    #         }, # required
    #         unlabeled_events_treatment: 'IGNORE' # accepts ["IGNORE", "FRAUD", "LEGIT"]
    #       } # required
    #     }, # required
    #     external_events_detail: {
    #       data_location: 'dataLocation', # required
    #       data_access_role_arn: 'dataAccessRoleArn' # required
    #     },
    #     ingested_events_detail: {
    #       ingested_events_time_window: {
    #         start_time: 'startTime', # required
    #         end_time: 'endTime' # required
    #       } # required
    #     },
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateModelVersionOutput
    #   resp.data.model_id #=> String
    #   resp.data.model_type #=> String, one of ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #   resp.data.model_version_number #=> String
    #   resp.data.status #=> String
    #
    def create_model_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateModelVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateModelVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateModelVersion
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateModelVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateModelVersion,
        stubs: @stubs,
        params_class: Params::CreateModelVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_model_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a rule for use with the specified detector. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateRuleInput}.
    #
    # @option params [String] :rule_id
    #   <p>The rule ID.</p>
    #
    # @option params [String] :detector_id
    #   <p>The detector ID for the rule's parent detector.</p>
    #
    # @option params [String] :description
    #   <p>The rule description.</p>
    #
    # @option params [String] :expression
    #   <p>The rule expression.</p>
    #
    # @option params [String] :language
    #   <p>The language of the rule.</p>
    #
    # @option params [Array<String>] :outcomes
    #   <p>The outcome or outcomes returned when the rule expression matches.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    #
    # @return [Types::CreateRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule(
    #     rule_id: 'ruleId', # required
    #     detector_id: 'detectorId', # required
    #     description: 'description',
    #     expression: 'expression', # required
    #     language: 'DETECTORPL', # required - accepts ["DETECTORPL"]
    #     outcomes: [
    #       'member'
    #     ], # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRuleOutput
    #   resp.data.rule #=> Types::Rule
    #   resp.data.rule.detector_id #=> String
    #   resp.data.rule.rule_id #=> String
    #   resp.data.rule.rule_version #=> String
    #
    def create_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRule
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRule,
        stubs: @stubs,
        params_class: Params::CreateRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a variable.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateVariableInput}.
    #
    # @option params [String] :name
    #   <p>The name of the variable.</p>
    #
    # @option params [String] :data_type
    #   <p>The data type.</p>
    #
    # @option params [String] :data_source
    #   <p>The source of the data.</p>
    #
    # @option params [String] :default_value
    #   <p>The default value for the variable when no value is received.</p>
    #
    # @option params [String] :description
    #   <p>The description.</p>
    #
    # @option params [String] :variable_type
    #   <p>The variable type. For more information see <a href="https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types">Variable types</a>.
    #   				</p>
    #            <p>Valid Values: <code>AUTH_CODE | AVS | BILLING_ADDRESS_L1 | BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME | BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL | FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE | PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 | SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY | SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP | USERAGENT</code>
    #            </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    #
    # @return [Types::CreateVariableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_variable(
    #     name: 'name', # required
    #     data_type: 'STRING', # required - accepts ["STRING", "INTEGER", "FLOAT", "BOOLEAN"]
    #     data_source: 'EVENT', # required - accepts ["EVENT", "MODEL_SCORE", "EXTERNAL_MODEL_SCORE"]
    #     default_value: 'defaultValue', # required
    #     description: 'description',
    #     variable_type: 'variableType',
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateVariableOutput
    #
    def create_variable(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVariableInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVariableInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVariable
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateVariable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVariable,
        stubs: @stubs,
        params_class: Params::CreateVariableOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_variable
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified batch import job ID record. This action does not delete the data that was batch imported.  </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBatchImportJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID of the batch import job to delete. </p>
    #
    # @return [Types::DeleteBatchImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_batch_import_job(
    #     job_id: 'jobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBatchImportJobOutput
    #
    def delete_batch_import_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBatchImportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBatchImportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBatchImportJob
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteBatchImportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBatchImportJob,
        stubs: @stubs,
        params_class: Params::DeleteBatchImportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_batch_import_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a batch prediction job.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBatchPredictionJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID of the batch prediction job to delete.</p>
    #
    # @return [Types::DeleteBatchPredictionJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_batch_prediction_job(
    #     job_id: 'jobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBatchPredictionJobOutput
    #
    def delete_batch_prediction_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBatchPredictionJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBatchPredictionJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBatchPredictionJob
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteBatchPredictionJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBatchPredictionJob,
        stubs: @stubs,
        params_class: Params::DeleteBatchPredictionJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_batch_prediction_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the detector. Before deleting a detector, you must first delete all detector versions and rule versions associated with the detector.</p>
    # 	        <p>When you delete a detector, Amazon Fraud Detector permanently deletes the detector and the data is no longer stored in Amazon Fraud Detector.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDetectorInput}.
    #
    # @option params [String] :detector_id
    #   <p>The ID of the detector to delete.</p>
    #
    # @return [Types::DeleteDetectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_detector(
    #     detector_id: 'detectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDetectorOutput
    #
    def delete_detector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDetectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDetectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDetector
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteDetector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDetector,
        stubs: @stubs,
        params_class: Params::DeleteDetectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_detector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the detector version. You cannot delete detector versions that are in <code>ACTIVE</code> status.</p>
    # 	  	     <p>When you delete a detector version, Amazon Fraud Detector permanently deletes the detector and the data is no longer stored in Amazon Fraud Detector.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDetectorVersionInput}.
    #
    # @option params [String] :detector_id
    #   <p>The ID of the parent detector for the detector version to delete.</p>
    #
    # @option params [String] :detector_version_id
    #   <p>The ID of the detector version to delete.</p>
    #
    # @return [Types::DeleteDetectorVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_detector_version(
    #     detector_id: 'detectorId', # required
    #     detector_version_id: 'detectorVersionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDetectorVersionOutput
    #
    def delete_detector_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDetectorVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDetectorVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDetectorVersion
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteDetectorVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDetectorVersion,
        stubs: @stubs,
        params_class: Params::DeleteDetectorVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_detector_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an entity type.</p>
    # 	        <p>You cannot delete an entity type that is included in an event type.</p>
    # 	        <p>When you delete an entity type, Amazon Fraud Detector permanently deletes that entity type and the data is no longer stored in Amazon Fraud Detector.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEntityTypeInput}.
    #
    # @option params [String] :name
    #   <p>The name of the entity type to delete.</p>
    #
    # @return [Types::DeleteEntityTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_entity_type(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEntityTypeOutput
    #
    def delete_entity_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEntityTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEntityTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEntityType
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteEntityType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEntityType,
        stubs: @stubs,
        params_class: Params::DeleteEntityTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_entity_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified event.</p>
    # 	        <p>When you delete an event, Amazon Fraud Detector permanently deletes that event and the event data is no longer stored in Amazon Fraud Detector.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEventInput}.
    #
    # @option params [String] :event_id
    #   <p>The ID of the event to delete.</p>
    #
    # @option params [String] :event_type_name
    #   <p>The name of the event type.</p>
    #
    # @option params [Boolean] :delete_audit_history
    #   <p>Specifies whether or not to delete any predictions associated with the event.</p>
    #
    # @return [Types::DeleteEventOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event(
    #     event_id: 'eventId', # required
    #     event_type_name: 'eventTypeName', # required
    #     delete_audit_history: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEventOutput
    #
    def delete_event(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEventInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEventInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEvent
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteEvent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEvent,
        stubs: @stubs,
        params_class: Params::DeleteEventOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_event
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an event type.</p>
    # 	        <p>You cannot delete an event type that is used in a detector or a model.</p>
    # 	        <p>When you delete an event type, Amazon Fraud Detector permanently deletes that event type and the data is no longer stored in Amazon Fraud Detector.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEventTypeInput}.
    #
    # @option params [String] :name
    #   <p>The name of the event type to delete.</p>
    #
    # @return [Types::DeleteEventTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_type(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEventTypeOutput
    #
    def delete_event_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEventTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEventTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEventType
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteEventType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEventType,
        stubs: @stubs,
        params_class: Params::DeleteEventTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_event_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes all events of a particular event type.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEventsByEventTypeInput}.
    #
    # @option params [String] :event_type_name
    #   <p>The name of the event type.</p>
    #
    # @return [Types::DeleteEventsByEventTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_events_by_event_type(
    #     event_type_name: 'eventTypeName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEventsByEventTypeOutput
    #   resp.data.event_type_name #=> String
    #   resp.data.events_deletion_status #=> String
    #
    def delete_events_by_event_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEventsByEventTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEventsByEventTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEventsByEventType
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteEventsByEventType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEventsByEventType,
        stubs: @stubs,
        params_class: Params::DeleteEventsByEventTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_events_by_event_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a SageMaker model from Amazon Fraud Detector.</p>
    # 	        <p>You can remove an Amazon SageMaker model if it is not associated with a detector version. Removing a SageMaker model disconnects it from Amazon Fraud Detector, but the model remains available in SageMaker.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteExternalModelInput}.
    #
    # @option params [String] :model_endpoint
    #   <p>The endpoint of the Amazon Sagemaker model to delete.</p>
    #
    # @return [Types::DeleteExternalModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_external_model(
    #     model_endpoint: 'modelEndpoint' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteExternalModelOutput
    #
    def delete_external_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteExternalModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteExternalModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteExternalModel
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteExternalModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteExternalModel,
        stubs: @stubs,
        params_class: Params::DeleteExternalModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_external_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a label.</p>
    # 	        <p>You cannot delete labels that are included in an event type in Amazon Fraud Detector.</p>
    #          <p>You cannot delete a label assigned to an event ID. You must first delete the relevant event ID.</p>
    #
    #          <p>When you delete a label, Amazon Fraud Detector permanently deletes that label and the data is no longer stored in Amazon Fraud Detector.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLabelInput}.
    #
    # @option params [String] :name
    #   <p>The name of the label to delete.</p>
    #
    # @return [Types::DeleteLabelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_label(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLabelOutput
    #
    def delete_label(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLabelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLabelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLabel
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteLabel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLabel,
        stubs: @stubs,
        params_class: Params::DeleteLabelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_label
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a model.</p>
    # 	        <p>You can delete models and model versions in Amazon Fraud Detector, provided that they are not associated with a detector version.</p>
    # 	        <p> When you delete a model, Amazon Fraud Detector permanently deletes that model and the data is no longer stored in Amazon Fraud Detector.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteModelInput}.
    #
    # @option params [String] :model_id
    #   <p>The model ID of the model to delete.</p>
    #
    # @option params [String] :model_type
    #   <p>The model type of the model to delete.</p>
    #
    # @return [Types::DeleteModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_model(
    #     model_id: 'modelId', # required
    #     model_type: 'ONLINE_FRAUD_INSIGHTS' # required - accepts ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteModelOutput
    #
    def delete_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteModel
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteModel,
        stubs: @stubs,
        params_class: Params::DeleteModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a model version.</p>
    # 	        <p>You can delete models and model versions in Amazon Fraud Detector, provided that they are not associated with a detector version.</p>
    # 	        <p> When you delete a model version, Amazon Fraud Detector permanently deletes that model version and the data is no longer stored in Amazon Fraud Detector.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteModelVersionInput}.
    #
    # @option params [String] :model_id
    #   <p>The model ID of the model version to delete.</p>
    #
    # @option params [String] :model_type
    #   <p>The model type of the model version to delete.</p>
    #
    # @option params [String] :model_version_number
    #   <p>The model version number of the model version to delete.</p>
    #
    # @return [Types::DeleteModelVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_model_version(
    #     model_id: 'modelId', # required
    #     model_type: 'ONLINE_FRAUD_INSIGHTS', # required - accepts ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #     model_version_number: 'modelVersionNumber' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteModelVersionOutput
    #
    def delete_model_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteModelVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteModelVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteModelVersion
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteModelVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteModelVersion,
        stubs: @stubs,
        params_class: Params::DeleteModelVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_model_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an outcome.</p>
    # 	        <p>You cannot delete an outcome that is used in a rule version.</p>
    # 	        <p>When you delete an outcome, Amazon Fraud Detector permanently deletes that outcome and the data is no longer stored in Amazon Fraud Detector.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteOutcomeInput}.
    #
    # @option params [String] :name
    #   <p>The name of the outcome to delete.</p>
    #
    # @return [Types::DeleteOutcomeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_outcome(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteOutcomeOutput
    #
    def delete_outcome(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteOutcomeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteOutcomeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteOutcome
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteOutcome
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteOutcome,
        stubs: @stubs,
        params_class: Params::DeleteOutcomeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_outcome
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the rule. You cannot delete a rule if it is used by an <code>ACTIVE</code> or <code>INACTIVE</code> detector version.</p>
    # 	  	     <p>When you delete a rule, Amazon Fraud Detector permanently deletes that rule and the data is no longer stored in Amazon Fraud Detector.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRuleInput}.
    #
    # @option params [Rule] :rule
    #   <p>A rule.</p>
    #
    # @return [Types::DeleteRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule(
    #     rule: {
    #       detector_id: 'detectorId', # required
    #       rule_id: 'ruleId', # required
    #       rule_version: 'ruleVersion' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRuleOutput
    #
    def delete_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRule
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRule,
        stubs: @stubs,
        params_class: Params::DeleteRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a variable.</p>
    # 	        <p>You can't delete variables that are included in an event type in Amazon Fraud Detector.</p>
    # 	        <p>Amazon Fraud Detector automatically deletes model output variables and SageMaker model output variables when you delete the model. You can't delete these variables manually.</p>
    # 	        <p>When you delete a variable, Amazon Fraud Detector permanently deletes that variable and the data is no longer stored in Amazon Fraud Detector.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVariableInput}.
    #
    # @option params [String] :name
    #   <p>The name of the variable to delete.</p>
    #
    # @return [Types::DeleteVariableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_variable(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVariableOutput
    #
    def delete_variable(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVariableInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVariableInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVariable
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteVariable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVariable,
        stubs: @stubs,
        params_class: Params::DeleteVariableOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_variable
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets all versions for a specified detector.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDetectorInput}.
    #
    # @option params [String] :detector_id
    #   <p>The detector ID.</p>
    #
    # @option params [String] :next_token
    #   <p>The next token from the previous response.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for the request.</p>
    #
    # @return [Types::DescribeDetectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_detector(
    #     detector_id: 'detectorId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDetectorOutput
    #   resp.data.detector_id #=> String
    #   resp.data.detector_version_summaries #=> Array<DetectorVersionSummary>
    #   resp.data.detector_version_summaries[0] #=> Types::DetectorVersionSummary
    #   resp.data.detector_version_summaries[0].detector_version_id #=> String
    #   resp.data.detector_version_summaries[0].status #=> String, one of ["DRAFT", "ACTIVE", "INACTIVE"]
    #   resp.data.detector_version_summaries[0].description #=> String
    #   resp.data.detector_version_summaries[0].last_updated_time #=> String
    #   resp.data.next_token #=> String
    #   resp.data.arn #=> String
    #
    def describe_detector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDetectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDetectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDetector
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeDetector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDetector,
        stubs: @stubs,
        params_class: Params::DescribeDetectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_detector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets all of the model versions for the specified model type or for the specified model type and model ID. You can also get details for a single, specified model version. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeModelVersionsInput}.
    #
    # @option params [String] :model_id
    #   <p>The model ID.</p>
    #
    # @option params [String] :model_version_number
    #   <p>The model version number.</p>
    #
    # @option params [String] :model_type
    #   <p>The model type.</p>
    #
    # @option params [String] :next_token
    #   <p>The next token from the previous results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @return [Types::DescribeModelVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_model_versions(
    #     model_id: 'modelId',
    #     model_version_number: 'modelVersionNumber',
    #     model_type: 'ONLINE_FRAUD_INSIGHTS', # accepts ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeModelVersionsOutput
    #   resp.data.model_version_details #=> Array<ModelVersionDetail>
    #   resp.data.model_version_details[0] #=> Types::ModelVersionDetail
    #   resp.data.model_version_details[0].model_id #=> String
    #   resp.data.model_version_details[0].model_type #=> String, one of ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #   resp.data.model_version_details[0].model_version_number #=> String
    #   resp.data.model_version_details[0].status #=> String
    #   resp.data.model_version_details[0].training_data_source #=> String, one of ["EXTERNAL_EVENTS", "INGESTED_EVENTS"]
    #   resp.data.model_version_details[0].training_data_schema #=> Types::TrainingDataSchema
    #   resp.data.model_version_details[0].training_data_schema.model_variables #=> Array<String>
    #   resp.data.model_version_details[0].training_data_schema.model_variables[0] #=> String
    #   resp.data.model_version_details[0].training_data_schema.label_schema #=> Types::LabelSchema
    #   resp.data.model_version_details[0].training_data_schema.label_schema.label_mapper #=> Hash<String, Array<String>>
    #   resp.data.model_version_details[0].training_data_schema.label_schema.label_mapper['key'] #=> Array<String>
    #   resp.data.model_version_details[0].training_data_schema.label_schema.label_mapper['key'][0] #=> String
    #   resp.data.model_version_details[0].training_data_schema.label_schema.unlabeled_events_treatment #=> String, one of ["IGNORE", "FRAUD", "LEGIT"]
    #   resp.data.model_version_details[0].external_events_detail #=> Types::ExternalEventsDetail
    #   resp.data.model_version_details[0].external_events_detail.data_location #=> String
    #   resp.data.model_version_details[0].external_events_detail.data_access_role_arn #=> String
    #   resp.data.model_version_details[0].ingested_events_detail #=> Types::IngestedEventsDetail
    #   resp.data.model_version_details[0].ingested_events_detail.ingested_events_time_window #=> Types::IngestedEventsTimeWindow
    #   resp.data.model_version_details[0].ingested_events_detail.ingested_events_time_window.start_time #=> String
    #   resp.data.model_version_details[0].ingested_events_detail.ingested_events_time_window.end_time #=> String
    #   resp.data.model_version_details[0].training_result #=> Types::TrainingResult
    #   resp.data.model_version_details[0].training_result.data_validation_metrics #=> Types::DataValidationMetrics
    #   resp.data.model_version_details[0].training_result.data_validation_metrics.file_level_messages #=> Array<FileValidationMessage>
    #   resp.data.model_version_details[0].training_result.data_validation_metrics.file_level_messages[0] #=> Types::FileValidationMessage
    #   resp.data.model_version_details[0].training_result.data_validation_metrics.file_level_messages[0].title #=> String
    #   resp.data.model_version_details[0].training_result.data_validation_metrics.file_level_messages[0].content #=> String
    #   resp.data.model_version_details[0].training_result.data_validation_metrics.file_level_messages[0].type #=> String
    #   resp.data.model_version_details[0].training_result.data_validation_metrics.field_level_messages #=> Array<FieldValidationMessage>
    #   resp.data.model_version_details[0].training_result.data_validation_metrics.field_level_messages[0] #=> Types::FieldValidationMessage
    #   resp.data.model_version_details[0].training_result.data_validation_metrics.field_level_messages[0].field_name #=> String
    #   resp.data.model_version_details[0].training_result.data_validation_metrics.field_level_messages[0].identifier #=> String
    #   resp.data.model_version_details[0].training_result.data_validation_metrics.field_level_messages[0].title #=> String
    #   resp.data.model_version_details[0].training_result.data_validation_metrics.field_level_messages[0].content #=> String
    #   resp.data.model_version_details[0].training_result.data_validation_metrics.field_level_messages[0].type #=> String
    #   resp.data.model_version_details[0].training_result.training_metrics #=> Types::TrainingMetrics
    #   resp.data.model_version_details[0].training_result.training_metrics.auc #=> Float
    #   resp.data.model_version_details[0].training_result.training_metrics.metric_data_points #=> Array<MetricDataPoint>
    #   resp.data.model_version_details[0].training_result.training_metrics.metric_data_points[0] #=> Types::MetricDataPoint
    #   resp.data.model_version_details[0].training_result.training_metrics.metric_data_points[0].fpr #=> Float
    #   resp.data.model_version_details[0].training_result.training_metrics.metric_data_points[0].precision #=> Float
    #   resp.data.model_version_details[0].training_result.training_metrics.metric_data_points[0].tpr #=> Float
    #   resp.data.model_version_details[0].training_result.training_metrics.metric_data_points[0].threshold #=> Float
    #   resp.data.model_version_details[0].training_result.variable_importance_metrics #=> Types::VariableImportanceMetrics
    #   resp.data.model_version_details[0].training_result.variable_importance_metrics.log_odds_metrics #=> Array<LogOddsMetric>
    #   resp.data.model_version_details[0].training_result.variable_importance_metrics.log_odds_metrics[0] #=> Types::LogOddsMetric
    #   resp.data.model_version_details[0].training_result.variable_importance_metrics.log_odds_metrics[0].variable_name #=> String
    #   resp.data.model_version_details[0].training_result.variable_importance_metrics.log_odds_metrics[0].variable_type #=> String
    #   resp.data.model_version_details[0].training_result.variable_importance_metrics.log_odds_metrics[0].variable_importance #=> Float
    #   resp.data.model_version_details[0].last_updated_time #=> String
    #   resp.data.model_version_details[0].created_time #=> String
    #   resp.data.model_version_details[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def describe_model_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeModelVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeModelVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeModelVersions
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeModelVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeModelVersions,
        stubs: @stubs,
        params_class: Params::DescribeModelVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_model_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets all batch import jobs or a specific job of the specified ID. This is a paginated API. If you provide a null <code>maxResults</code>,
    #          this action retrieves a maximum of 50 records per page. If you provide a <code>maxResults</code>, the value must be between 1 and 50.
    #          To get the next page results, provide the pagination token from the <code>GetBatchImportJobsResponse</code> as part of your request.
    #          A null pagination token fetches the records from the beginning.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBatchImportJobsInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID of the batch import job to get.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return for request.</p>
    #
    # @option params [String] :next_token
    #   <p>The next token from the previous request.</p>
    #
    # @return [Types::GetBatchImportJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_batch_import_jobs(
    #     job_id: 'jobId',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBatchImportJobsOutput
    #   resp.data.batch_imports #=> Array<BatchImport>
    #   resp.data.batch_imports[0] #=> Types::BatchImport
    #   resp.data.batch_imports[0].job_id #=> String
    #   resp.data.batch_imports[0].status #=> String, one of ["IN_PROGRESS_INITIALIZING", "IN_PROGRESS", "CANCEL_IN_PROGRESS", "CANCELED", "COMPLETE", "FAILED"]
    #   resp.data.batch_imports[0].failure_reason #=> String
    #   resp.data.batch_imports[0].start_time #=> String
    #   resp.data.batch_imports[0].completion_time #=> String
    #   resp.data.batch_imports[0].input_path #=> String
    #   resp.data.batch_imports[0].output_path #=> String
    #   resp.data.batch_imports[0].event_type_name #=> String
    #   resp.data.batch_imports[0].iam_role_arn #=> String
    #   resp.data.batch_imports[0].arn #=> String
    #   resp.data.batch_imports[0].processed_records_count #=> Integer
    #   resp.data.batch_imports[0].failed_records_count #=> Integer
    #   resp.data.batch_imports[0].total_records_count #=> Integer
    #   resp.data.next_token #=> String
    #
    def get_batch_import_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBatchImportJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBatchImportJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBatchImportJobs
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetBatchImportJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBatchImportJobs,
        stubs: @stubs,
        params_class: Params::GetBatchImportJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_batch_import_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets all batch prediction jobs or a specific job if you specify a job ID. This is a paginated API. If you provide a null maxResults, this action retrieves a maximum of 50 records per page. If you provide a maxResults, the value must be between 1 and 50. To get the next page results, provide the pagination token from the GetBatchPredictionJobsResponse as part of your request. A null pagination token fetches the records from the beginning.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBatchPredictionJobsInput}.
    #
    # @option params [String] :job_id
    #   <p>The batch prediction job for which to get the details.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return for the request.</p>
    #
    # @option params [String] :next_token
    #   <p>The next token from the previous request.</p>
    #
    # @return [Types::GetBatchPredictionJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_batch_prediction_jobs(
    #     job_id: 'jobId',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBatchPredictionJobsOutput
    #   resp.data.batch_predictions #=> Array<BatchPrediction>
    #   resp.data.batch_predictions[0] #=> Types::BatchPrediction
    #   resp.data.batch_predictions[0].job_id #=> String
    #   resp.data.batch_predictions[0].status #=> String, one of ["IN_PROGRESS_INITIALIZING", "IN_PROGRESS", "CANCEL_IN_PROGRESS", "CANCELED", "COMPLETE", "FAILED"]
    #   resp.data.batch_predictions[0].failure_reason #=> String
    #   resp.data.batch_predictions[0].start_time #=> String
    #   resp.data.batch_predictions[0].completion_time #=> String
    #   resp.data.batch_predictions[0].last_heartbeat_time #=> String
    #   resp.data.batch_predictions[0].input_path #=> String
    #   resp.data.batch_predictions[0].output_path #=> String
    #   resp.data.batch_predictions[0].event_type_name #=> String
    #   resp.data.batch_predictions[0].detector_name #=> String
    #   resp.data.batch_predictions[0].detector_version #=> String
    #   resp.data.batch_predictions[0].iam_role_arn #=> String
    #   resp.data.batch_predictions[0].arn #=> String
    #   resp.data.batch_predictions[0].processed_records_count #=> Integer
    #   resp.data.batch_predictions[0].total_records_count #=> Integer
    #   resp.data.next_token #=> String
    #
    def get_batch_prediction_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBatchPredictionJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBatchPredictionJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBatchPredictionJobs
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetBatchPredictionJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBatchPredictionJobs,
        stubs: @stubs,
        params_class: Params::GetBatchPredictionJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_batch_prediction_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the status of a <code>DeleteEventsByEventType</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDeleteEventsByEventTypeStatusInput}.
    #
    # @option params [String] :event_type_name
    #   <p>Name of event type for which to get the deletion status.</p>
    #
    # @return [Types::GetDeleteEventsByEventTypeStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_delete_events_by_event_type_status(
    #     event_type_name: 'eventTypeName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeleteEventsByEventTypeStatusOutput
    #   resp.data.event_type_name #=> String
    #   resp.data.events_deletion_status #=> String, one of ["IN_PROGRESS_INITIALIZING", "IN_PROGRESS", "CANCEL_IN_PROGRESS", "CANCELED", "COMPLETE", "FAILED"]
    #
    def get_delete_events_by_event_type_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeleteEventsByEventTypeStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeleteEventsByEventTypeStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeleteEventsByEventTypeStatus
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetDeleteEventsByEventTypeStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeleteEventsByEventTypeStatus,
        stubs: @stubs,
        params_class: Params::GetDeleteEventsByEventTypeStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_delete_events_by_event_type_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a particular detector version. </p>
    #
    # @param [Hash] params
    #   See {Types::GetDetectorVersionInput}.
    #
    # @option params [String] :detector_id
    #   <p>The detector ID.</p>
    #
    # @option params [String] :detector_version_id
    #   <p>The detector version ID.</p>
    #
    # @return [Types::GetDetectorVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_detector_version(
    #     detector_id: 'detectorId', # required
    #     detector_version_id: 'detectorVersionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDetectorVersionOutput
    #   resp.data.detector_id #=> String
    #   resp.data.detector_version_id #=> String
    #   resp.data.description #=> String
    #   resp.data.external_model_endpoints #=> Array<String>
    #   resp.data.external_model_endpoints[0] #=> String
    #   resp.data.model_versions #=> Array<ModelVersion>
    #   resp.data.model_versions[0] #=> Types::ModelVersion
    #   resp.data.model_versions[0].model_id #=> String
    #   resp.data.model_versions[0].model_type #=> String, one of ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #   resp.data.model_versions[0].model_version_number #=> String
    #   resp.data.model_versions[0].arn #=> String
    #   resp.data.rules #=> Array<Rule>
    #   resp.data.rules[0] #=> Types::Rule
    #   resp.data.rules[0].detector_id #=> String
    #   resp.data.rules[0].rule_id #=> String
    #   resp.data.rules[0].rule_version #=> String
    #   resp.data.status #=> String, one of ["DRAFT", "ACTIVE", "INACTIVE"]
    #   resp.data.last_updated_time #=> String
    #   resp.data.created_time #=> String
    #   resp.data.rule_execution_mode #=> String, one of ["ALL_MATCHED", "FIRST_MATCHED"]
    #   resp.data.arn #=> String
    #
    def get_detector_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDetectorVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDetectorVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDetectorVersion
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetDetectorVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDetectorVersion,
        stubs: @stubs,
        params_class: Params::GetDetectorVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_detector_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets all detectors or a single detector if a <code>detectorId</code> is specified. This is a paginated API. If you
    #          provide a null <code>maxResults</code>, this action retrieves a maximum of 10 records
    #          per page. If you provide a <code>maxResults</code>, the value must be between 5 and 10.
    #          To get the next page results, provide the pagination token from the
    #             <code>GetDetectorsResponse</code> as part of your request. A null pagination token
    #          fetches the records from the beginning. </p>
    #
    # @param [Hash] params
    #   See {Types::GetDetectorsInput}.
    #
    # @option params [String] :detector_id
    #   <p>The detector ID.</p>
    #
    # @option params [String] :next_token
    #   <p>The next token for the subsequent request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return for the request.</p>
    #
    # @return [Types::GetDetectorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_detectors(
    #     detector_id: 'detectorId',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDetectorsOutput
    #   resp.data.detectors #=> Array<Detector>
    #   resp.data.detectors[0] #=> Types::Detector
    #   resp.data.detectors[0].detector_id #=> String
    #   resp.data.detectors[0].description #=> String
    #   resp.data.detectors[0].event_type_name #=> String
    #   resp.data.detectors[0].last_updated_time #=> String
    #   resp.data.detectors[0].created_time #=> String
    #   resp.data.detectors[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def get_detectors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDetectorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDetectorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDetectors
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetDetectors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDetectors,
        stubs: @stubs,
        params_class: Params::GetDetectorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_detectors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets all entity types or a specific entity type if a name is specified. This is a paginated API. If you
    #          provide a null <code>maxResults</code>, this action retrieves a maximum of 10 records
    #          per page. If you provide a <code>maxResults</code>, the value must be between 5 and 10.
    #          To get the next page results, provide the pagination token from the
    #          <code>GetEntityTypesResponse</code> as part of your request. A null pagination token
    #          fetches the records from the beginning. </p>
    #
    # @param [Hash] params
    #   See {Types::GetEntityTypesInput}.
    #
    # @option params [String] :name
    #   <p>The name.</p>
    #
    # @option params [String] :next_token
    #   <p>The next token for the subsequent request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return for the request.</p>
    #
    # @return [Types::GetEntityTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_entity_types(
    #     name: 'name',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEntityTypesOutput
    #   resp.data.entity_types #=> Array<EntityType>
    #   resp.data.entity_types[0] #=> Types::EntityType
    #   resp.data.entity_types[0].name #=> String
    #   resp.data.entity_types[0].description #=> String
    #   resp.data.entity_types[0].last_updated_time #=> String
    #   resp.data.entity_types[0].created_time #=> String
    #   resp.data.entity_types[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def get_entity_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEntityTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEntityTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEntityTypes
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetEntityTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEntityTypes,
        stubs: @stubs,
        params_class: Params::GetEntityTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_entity_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves details of events stored with Amazon Fraud Detector. This action does not retrieve prediction results.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEventInput}.
    #
    # @option params [String] :event_id
    #   <p>The ID of the event to retrieve.</p>
    #
    # @option params [String] :event_type_name
    #   <p>The event type of the event to retrieve.</p>
    #
    # @return [Types::GetEventOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event(
    #     event_id: 'eventId', # required
    #     event_type_name: 'eventTypeName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEventOutput
    #   resp.data.event #=> Types::Event
    #   resp.data.event.event_id #=> String
    #   resp.data.event.event_type_name #=> String
    #   resp.data.event.event_timestamp #=> String
    #   resp.data.event.event_variables #=> Hash<String, String>
    #   resp.data.event.event_variables['key'] #=> String
    #   resp.data.event.current_label #=> String
    #   resp.data.event.label_timestamp #=> String
    #   resp.data.event.entities #=> Array<Entity>
    #   resp.data.event.entities[0] #=> Types::Entity
    #   resp.data.event.entities[0].entity_type #=> String
    #   resp.data.event.entities[0].entity_id #=> String
    #
    def get_event(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEventInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEventInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEvent
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetEvent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEvent,
        stubs: @stubs,
        params_class: Params::GetEventOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_event
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Evaluates an event against a detector version. If a version ID is not provided, the detector’s (<code>ACTIVE</code>) version is used.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEventPredictionInput}.
    #
    # @option params [String] :detector_id
    #   <p>The detector ID.</p>
    #
    # @option params [String] :detector_version_id
    #   <p>The detector version ID.</p>
    #
    # @option params [String] :event_id
    #   <p>The unique ID used to identify the event.</p>
    #
    # @option params [String] :event_type_name
    #   <p>The event type associated with the detector specified for the prediction.</p>
    #
    # @option params [Array<Entity>] :entities
    #   <p>The entity type (associated with the detector's event type) and specific entity ID representing who performed the event. If an entity id is not available, use "UNKNOWN."</p>
    #
    # @option params [String] :event_timestamp
    #   <p>Timestamp that defines when the event under evaluation occurred. The timestamp must be specified using ISO 8601 standard in UTC.</p>
    #
    # @option params [Hash<String, String>] :event_variables
    #   <p>Names of the event type's variables you defined in Amazon Fraud Detector to represent data elements and
    #            their corresponding values for the event you are sending for evaluation.</p>
    #            <important>
    #               <p>You must provide at least one eventVariable</p>
    #            </important>
    #
    #            <p>To ensure most accurate fraud prediction and to simplify your data preparation, Amazon Fraud Detector will replace all missing variables or values as follows:</p>
    #
    #            <p>
    #               <b>For Amazon Fraud Detector trained models:</b>
    #            </p>
    #            <p>If a null value is provided explicitly for a variable or if a variable is missing, model will replace the null value or the missing variable (no variable name in the eventVariables map)
    #            with calculated default mean/medians for numeric variables and with special values for categorical variables.</p>
    #
    #            <p>
    #               <b>For imported SageMaker models:</b>
    #            </p>
    #            <p>If a null value is provided explicitly for a variable, the model and rules will use “null” as the value. If a variable is not provided (no variable name in the eventVariables map), model and rules
    #            will use the default value that is provided for the variable. </p>
    #
    # @option params [Hash<String, ModelEndpointDataBlob>] :external_model_endpoint_data_blobs
    #   <p>The Amazon SageMaker model endpoint input data blobs.</p>
    #
    # @return [Types::GetEventPredictionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_prediction(
    #     detector_id: 'detectorId', # required
    #     detector_version_id: 'detectorVersionId',
    #     event_id: 'eventId', # required
    #     event_type_name: 'eventTypeName', # required
    #     entities: [
    #       {
    #         entity_type: 'entityType', # required
    #         entity_id: 'entityId' # required
    #       }
    #     ], # required
    #     event_timestamp: 'eventTimestamp', # required
    #     event_variables: {
    #       'key' => 'value'
    #     }, # required
    #     external_model_endpoint_data_blobs: {
    #       'key' => {
    #         byte_buffer: 'byteBuffer',
    #         content_type: 'contentType'
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEventPredictionOutput
    #   resp.data.model_scores #=> Array<ModelScores>
    #   resp.data.model_scores[0] #=> Types::ModelScores
    #   resp.data.model_scores[0].model_version #=> Types::ModelVersion
    #   resp.data.model_scores[0].model_version.model_id #=> String
    #   resp.data.model_scores[0].model_version.model_type #=> String, one of ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #   resp.data.model_scores[0].model_version.model_version_number #=> String
    #   resp.data.model_scores[0].model_version.arn #=> String
    #   resp.data.model_scores[0].scores #=> Hash<String, Float>
    #   resp.data.model_scores[0].scores['key'] #=> Float
    #   resp.data.rule_results #=> Array<RuleResult>
    #   resp.data.rule_results[0] #=> Types::RuleResult
    #   resp.data.rule_results[0].rule_id #=> String
    #   resp.data.rule_results[0].outcomes #=> Array<String>
    #   resp.data.rule_results[0].outcomes[0] #=> String
    #   resp.data.external_model_outputs #=> Array<ExternalModelOutputs>
    #   resp.data.external_model_outputs[0] #=> Types::ExternalModelOutputs
    #   resp.data.external_model_outputs[0].external_model #=> Types::ExternalModelSummary
    #   resp.data.external_model_outputs[0].external_model.model_endpoint #=> String
    #   resp.data.external_model_outputs[0].external_model.model_source #=> String, one of ["SAGEMAKER"]
    #   resp.data.external_model_outputs[0].outputs #=> Hash<String, String>
    #   resp.data.external_model_outputs[0].outputs['key'] #=> String
    #
    def get_event_prediction(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEventPredictionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEventPredictionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEventPrediction
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ResourceUnavailableException, Errors::ThrottlingException]),
        data_parser: Parsers::GetEventPrediction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEventPrediction,
        stubs: @stubs,
        params_class: Params::GetEventPredictionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_event_prediction
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    # Gets details of the past fraud predictions for the specified event ID, event type, detector ID, and detector version ID that was generated in the specified time period.
    # </p>
    #
    # @param [Hash] params
    #   See {Types::GetEventPredictionMetadataInput}.
    #
    # @option params [String] :event_id
    #   <p>
    #   The event ID.
    #   </p>
    #
    # @option params [String] :event_type_name
    #   <p>
    #   The event type associated with the detector specified for the prediction.
    #   </p>
    #
    # @option params [String] :detector_id
    #   <p>
    #   The detector ID.
    #   </p>
    #
    # @option params [String] :detector_version_id
    #   <p>
    #   The detector version ID.
    #   </p>
    #
    # @option params [String] :prediction_timestamp
    #   <p>
    #       The timestamp that defines when the prediction was generated. The timestamp must be specified using ISO 8601 standard in UTC.</p>
    #            <p>We recommend calling <a href="https://docs.aws.amazon.com/frauddetector/latest/api/API_ListEventPredictions.html">ListEventPredictions</a>
    #           first, and using the <code>predictionTimestamp</code> value in the response to provide an accurate prediction timestamp value.</p>
    #
    # @return [Types::GetEventPredictionMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_prediction_metadata(
    #     event_id: 'eventId', # required
    #     event_type_name: 'eventTypeName', # required
    #     detector_id: 'detectorId', # required
    #     detector_version_id: 'detectorVersionId', # required
    #     prediction_timestamp: 'predictionTimestamp' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEventPredictionMetadataOutput
    #   resp.data.event_id #=> String
    #   resp.data.event_type_name #=> String
    #   resp.data.entity_id #=> String
    #   resp.data.entity_type #=> String
    #   resp.data.event_timestamp #=> String
    #   resp.data.detector_id #=> String
    #   resp.data.detector_version_id #=> String
    #   resp.data.detector_version_status #=> String
    #   resp.data.event_variables #=> Array<EventVariableSummary>
    #   resp.data.event_variables[0] #=> Types::EventVariableSummary
    #   resp.data.event_variables[0].name #=> String
    #   resp.data.event_variables[0].value #=> String
    #   resp.data.event_variables[0].source #=> String
    #   resp.data.rules #=> Array<EvaluatedRule>
    #   resp.data.rules[0] #=> Types::EvaluatedRule
    #   resp.data.rules[0].rule_id #=> String
    #   resp.data.rules[0].rule_version #=> String
    #   resp.data.rules[0].expression #=> String
    #   resp.data.rules[0].expression_with_values #=> String
    #   resp.data.rules[0].outcomes #=> Array<String>
    #   resp.data.rules[0].outcomes[0] #=> String
    #   resp.data.rules[0].evaluated #=> Boolean
    #   resp.data.rules[0].matched #=> Boolean
    #   resp.data.rule_execution_mode #=> String, one of ["ALL_MATCHED", "FIRST_MATCHED"]
    #   resp.data.outcomes #=> Array<String>
    #   resp.data.evaluated_model_versions #=> Array<EvaluatedModelVersion>
    #   resp.data.evaluated_model_versions[0] #=> Types::EvaluatedModelVersion
    #   resp.data.evaluated_model_versions[0].model_id #=> String
    #   resp.data.evaluated_model_versions[0].model_version #=> String
    #   resp.data.evaluated_model_versions[0].model_type #=> String
    #   resp.data.evaluated_model_versions[0].evaluations #=> Array<ModelVersionEvaluation>
    #   resp.data.evaluated_model_versions[0].evaluations[0] #=> Types::ModelVersionEvaluation
    #   resp.data.evaluated_model_versions[0].evaluations[0].output_variable_name #=> String
    #   resp.data.evaluated_model_versions[0].evaluations[0].evaluation_score #=> String
    #   resp.data.evaluated_model_versions[0].evaluations[0].prediction_explanations #=> Types::PredictionExplanations
    #   resp.data.evaluated_model_versions[0].evaluations[0].prediction_explanations.variable_impact_explanations #=> Array<VariableImpactExplanation>
    #   resp.data.evaluated_model_versions[0].evaluations[0].prediction_explanations.variable_impact_explanations[0] #=> Types::VariableImpactExplanation
    #   resp.data.evaluated_model_versions[0].evaluations[0].prediction_explanations.variable_impact_explanations[0].event_variable_name #=> String
    #   resp.data.evaluated_model_versions[0].evaluations[0].prediction_explanations.variable_impact_explanations[0].relative_impact #=> String
    #   resp.data.evaluated_model_versions[0].evaluations[0].prediction_explanations.variable_impact_explanations[0].log_odds_impact #=> Float
    #   resp.data.evaluated_external_models #=> Array<EvaluatedExternalModel>
    #   resp.data.evaluated_external_models[0] #=> Types::EvaluatedExternalModel
    #   resp.data.evaluated_external_models[0].model_endpoint #=> String
    #   resp.data.evaluated_external_models[0].use_event_variables #=> Boolean
    #   resp.data.evaluated_external_models[0].input_variables #=> Hash<String, String>
    #   resp.data.evaluated_external_models[0].input_variables['key'] #=> String
    #   resp.data.evaluated_external_models[0].output_variables #=> Hash<String, String>
    #   resp.data.prediction_timestamp #=> String
    #
    def get_event_prediction_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEventPredictionMetadataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEventPredictionMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEventPredictionMetadata
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetEventPredictionMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEventPredictionMetadata,
        stubs: @stubs,
        params_class: Params::GetEventPredictionMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_event_prediction_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets all event types or a specific event type if name is provided. This is a paginated API. If you
    #          provide a null <code>maxResults</code>, this action retrieves a maximum of 10 records
    #          per page. If you provide a <code>maxResults</code>, the value must be between 5 and 10.
    #          To get the next page results, provide the pagination token from the
    #             <code>GetEventTypesResponse</code> as part of your request. A null pagination token
    #          fetches the records from the beginning. </p>
    #
    # @param [Hash] params
    #   See {Types::GetEventTypesInput}.
    #
    # @option params [String] :name
    #   <p>The name.</p>
    #
    # @option params [String] :next_token
    #   <p>The next token for the subsequent request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return for the request.</p>
    #
    # @return [Types::GetEventTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_types(
    #     name: 'name',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEventTypesOutput
    #   resp.data.event_types #=> Array<EventType>
    #   resp.data.event_types[0] #=> Types::EventType
    #   resp.data.event_types[0].name #=> String
    #   resp.data.event_types[0].description #=> String
    #   resp.data.event_types[0].event_variables #=> Array<String>
    #   resp.data.event_types[0].event_variables[0] #=> String
    #   resp.data.event_types[0].labels #=> Array<String>
    #   resp.data.event_types[0].entity_types #=> Array<String>
    #   resp.data.event_types[0].entity_types[0] #=> String
    #   resp.data.event_types[0].event_ingestion #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.event_types[0].ingested_event_statistics #=> Types::IngestedEventStatistics
    #   resp.data.event_types[0].ingested_event_statistics.number_of_events #=> Integer
    #   resp.data.event_types[0].ingested_event_statistics.event_data_size_in_bytes #=> Integer
    #   resp.data.event_types[0].ingested_event_statistics.least_recent_event #=> String
    #   resp.data.event_types[0].ingested_event_statistics.most_recent_event #=> String
    #   resp.data.event_types[0].ingested_event_statistics.last_updated_time #=> String
    #   resp.data.event_types[0].last_updated_time #=> String
    #   resp.data.event_types[0].created_time #=> String
    #   resp.data.event_types[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def get_event_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEventTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEventTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEventTypes
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetEventTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEventTypes,
        stubs: @stubs,
        params_class: Params::GetEventTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_event_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the details for one or more Amazon SageMaker models that have been imported into the
    #          service. This is a paginated API. If you provide a null <code>maxResults</code>, this
    #          actions retrieves a maximum of 10 records per page. If you provide a
    #             <code>maxResults</code>, the value must be between 5 and 10. To get the next page
    #          results, provide the pagination token from the <code>GetExternalModelsResult</code> as part
    #          of your request. A null pagination token fetches the records from the beginning. </p>
    #
    # @param [Hash] params
    #   See {Types::GetExternalModelsInput}.
    #
    # @option params [String] :model_endpoint
    #   <p>The Amazon SageMaker model endpoint.</p>
    #
    # @option params [String] :next_token
    #   <p>The next page token for the request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return for the request.</p>
    #
    # @return [Types::GetExternalModelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_external_models(
    #     model_endpoint: 'modelEndpoint',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetExternalModelsOutput
    #   resp.data.external_models #=> Array<ExternalModel>
    #   resp.data.external_models[0] #=> Types::ExternalModel
    #   resp.data.external_models[0].model_endpoint #=> String
    #   resp.data.external_models[0].model_source #=> String, one of ["SAGEMAKER"]
    #   resp.data.external_models[0].invoke_model_endpoint_role_arn #=> String
    #   resp.data.external_models[0].input_configuration #=> Types::ModelInputConfiguration
    #   resp.data.external_models[0].input_configuration.event_type_name #=> String
    #   resp.data.external_models[0].input_configuration.format #=> String, one of ["TEXT_CSV", "APPLICATION_JSON"]
    #   resp.data.external_models[0].input_configuration.use_event_variables #=> Boolean
    #   resp.data.external_models[0].input_configuration.json_input_template #=> String
    #   resp.data.external_models[0].input_configuration.csv_input_template #=> String
    #   resp.data.external_models[0].output_configuration #=> Types::ModelOutputConfiguration
    #   resp.data.external_models[0].output_configuration.format #=> String, one of ["TEXT_CSV", "APPLICATION_JSONLINES"]
    #   resp.data.external_models[0].output_configuration.json_key_to_variable_map #=> Hash<String, String>
    #   resp.data.external_models[0].output_configuration.json_key_to_variable_map['key'] #=> String
    #   resp.data.external_models[0].output_configuration.csv_index_to_variable_map #=> Hash<String, String>
    #   resp.data.external_models[0].output_configuration.csv_index_to_variable_map['key'] #=> String
    #   resp.data.external_models[0].model_endpoint_status #=> String, one of ["ASSOCIATED", "DISSOCIATED"]
    #   resp.data.external_models[0].last_updated_time #=> String
    #   resp.data.external_models[0].created_time #=> String
    #   resp.data.external_models[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def get_external_models(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetExternalModelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetExternalModelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetExternalModels
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetExternalModels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetExternalModels,
        stubs: @stubs,
        params_class: Params::GetExternalModelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_external_models
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the encryption key if a KMS key has been specified to be used to encrypt content in Amazon Fraud Detector.</p>
    #
    # @param [Hash] params
    #   See {Types::GetKMSEncryptionKeyInput}.
    #
    # @return [Types::GetKMSEncryptionKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_kms_encryption_key()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetKMSEncryptionKeyOutput
    #   resp.data.kms_key #=> Types::KMSKey
    #   resp.data.kms_key.kms_encryption_key_arn #=> String
    #
    def get_kms_encryption_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetKMSEncryptionKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetKMSEncryptionKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetKMSEncryptionKey
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetKMSEncryptionKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetKMSEncryptionKey,
        stubs: @stubs,
        params_class: Params::GetKMSEncryptionKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_kms_encryption_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets all labels or a specific label if name is provided. This is a paginated API. If you
    #          provide a null <code>maxResults</code>, this action retrieves a maximum of 50 records
    #          per page. If you provide a <code>maxResults</code>, the value must be between 10 and 50.
    #          To get the next page results, provide the pagination token from the
    #          <code>GetGetLabelsResponse</code> as part of your request. A null pagination token
    #          fetches the records from the beginning. </p>
    #
    # @param [Hash] params
    #   See {Types::GetLabelsInput}.
    #
    # @option params [String] :name
    #   <p>The name of the label or labels to get.</p>
    #
    # @option params [String] :next_token
    #   <p>The next token for the subsequent request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return for the request.</p>
    #
    # @return [Types::GetLabelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_labels(
    #     name: 'name',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLabelsOutput
    #   resp.data.labels #=> Array<Label>
    #   resp.data.labels[0] #=> Types::Label
    #   resp.data.labels[0].name #=> String
    #   resp.data.labels[0].description #=> String
    #   resp.data.labels[0].last_updated_time #=> String
    #   resp.data.labels[0].created_time #=> String
    #   resp.data.labels[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def get_labels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLabelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLabelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLabels
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetLabels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLabels,
        stubs: @stubs,
        params_class: Params::GetLabelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_labels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the details of the specified model version.</p>
    #
    # @param [Hash] params
    #   See {Types::GetModelVersionInput}.
    #
    # @option params [String] :model_id
    #   <p>The model ID.</p>
    #
    # @option params [String] :model_type
    #   <p>The model type.</p>
    #
    # @option params [String] :model_version_number
    #   <p>The model version number.</p>
    #
    # @return [Types::GetModelVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_model_version(
    #     model_id: 'modelId', # required
    #     model_type: 'ONLINE_FRAUD_INSIGHTS', # required - accepts ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #     model_version_number: 'modelVersionNumber' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetModelVersionOutput
    #   resp.data.model_id #=> String
    #   resp.data.model_type #=> String, one of ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #   resp.data.model_version_number #=> String
    #   resp.data.training_data_source #=> String, one of ["EXTERNAL_EVENTS", "INGESTED_EVENTS"]
    #   resp.data.training_data_schema #=> Types::TrainingDataSchema
    #   resp.data.training_data_schema.model_variables #=> Array<String>
    #   resp.data.training_data_schema.model_variables[0] #=> String
    #   resp.data.training_data_schema.label_schema #=> Types::LabelSchema
    #   resp.data.training_data_schema.label_schema.label_mapper #=> Hash<String, Array<String>>
    #   resp.data.training_data_schema.label_schema.label_mapper['key'] #=> Array<String>
    #   resp.data.training_data_schema.label_schema.label_mapper['key'][0] #=> String
    #   resp.data.training_data_schema.label_schema.unlabeled_events_treatment #=> String, one of ["IGNORE", "FRAUD", "LEGIT"]
    #   resp.data.external_events_detail #=> Types::ExternalEventsDetail
    #   resp.data.external_events_detail.data_location #=> String
    #   resp.data.external_events_detail.data_access_role_arn #=> String
    #   resp.data.ingested_events_detail #=> Types::IngestedEventsDetail
    #   resp.data.ingested_events_detail.ingested_events_time_window #=> Types::IngestedEventsTimeWindow
    #   resp.data.ingested_events_detail.ingested_events_time_window.start_time #=> String
    #   resp.data.ingested_events_detail.ingested_events_time_window.end_time #=> String
    #   resp.data.status #=> String
    #   resp.data.arn #=> String
    #
    def get_model_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetModelVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetModelVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetModelVersion
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetModelVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetModelVersion,
        stubs: @stubs,
        params_class: Params::GetModelVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_model_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets one or more models. Gets all models for the Amazon Web Services account if no model type and no model id provided. Gets all models for the Amazon Web Services account and model type, if the model type is specified but model id is not provided. Gets a specific model if (model type, model id) tuple is specified. </p>
    #          <p>This is a paginated API. If you
    #          provide a null <code>maxResults</code>, this action retrieves a maximum of 10 records
    #          per page. If you provide a <code>maxResults</code>, the value must be between 1 and 10.
    #          To get the next page results, provide the pagination token from the
    #             response as part of your request. A null pagination token
    #          fetches the records from the beginning.</p>
    #
    # @param [Hash] params
    #   See {Types::GetModelsInput}.
    #
    # @option params [String] :model_id
    #   <p>The model ID.</p>
    #
    # @option params [String] :model_type
    #   <p>The model type.</p>
    #
    # @option params [String] :next_token
    #   <p>The next token for the subsequent request.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return for the request. </p>
    #
    # @return [Types::GetModelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_models(
    #     model_id: 'modelId',
    #     model_type: 'ONLINE_FRAUD_INSIGHTS', # accepts ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetModelsOutput
    #   resp.data.next_token #=> String
    #   resp.data.models #=> Array<Model>
    #   resp.data.models[0] #=> Types::Model
    #   resp.data.models[0].model_id #=> String
    #   resp.data.models[0].model_type #=> String, one of ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #   resp.data.models[0].description #=> String
    #   resp.data.models[0].event_type_name #=> String
    #   resp.data.models[0].created_time #=> String
    #   resp.data.models[0].last_updated_time #=> String
    #   resp.data.models[0].arn #=> String
    #
    def get_models(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetModelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetModelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetModels
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetModels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetModels,
        stubs: @stubs,
        params_class: Params::GetModelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_models
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets one or more outcomes. This is a paginated
    #          API. If you provide a null <code>maxResults</code>, this actions retrieves a maximum of
    #          100 records per page. If you provide a <code>maxResults</code>, the value must be
    #          between 50 and 100. To get the next page results, provide the pagination token from the
    #         <code>GetOutcomesResult</code> as part of your request. A null pagination token
    #          fetches the records from the beginning. </p>
    #
    # @param [Hash] params
    #   See {Types::GetOutcomesInput}.
    #
    # @option params [String] :name
    #   <p>The name of the outcome or outcomes to get.</p>
    #
    # @option params [String] :next_token
    #   <p>The next page token for the request. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return for the request. </p>
    #
    # @return [Types::GetOutcomesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_outcomes(
    #     name: 'name',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetOutcomesOutput
    #   resp.data.outcomes #=> Array<Outcome>
    #   resp.data.outcomes[0] #=> Types::Outcome
    #   resp.data.outcomes[0].name #=> String
    #   resp.data.outcomes[0].description #=> String
    #   resp.data.outcomes[0].last_updated_time #=> String
    #   resp.data.outcomes[0].created_time #=> String
    #   resp.data.outcomes[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def get_outcomes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetOutcomesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetOutcomesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetOutcomes
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetOutcomes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetOutcomes,
        stubs: @stubs,
        params_class: Params::GetOutcomesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_outcomes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get all rules for a detector (paginated) if <code>ruleId</code> and <code>ruleVersion</code> are not specified. Gets all rules for the detector and the <code>ruleId</code> if present (paginated). Gets a specific rule if both the <code>ruleId</code> and the <code>ruleVersion</code> are specified.</p>
    #          <p>This is a paginated API. Providing null maxResults results in retrieving maximum of 100 records per page. If you provide maxResults the value must be between 50 and 100. To get the next page result, a provide a pagination token from GetRulesResult as part of your request. Null pagination token fetches the records from the beginning.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRulesInput}.
    #
    # @option params [String] :rule_id
    #   <p>The rule ID.</p>
    #
    # @option params [String] :detector_id
    #   <p>The detector ID.</p>
    #
    # @option params [String] :rule_version
    #   <p>The rule version.</p>
    #
    # @option params [String] :next_token
    #   <p>The next page token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of rules to return for the request.</p>
    #
    # @return [Types::GetRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rules(
    #     rule_id: 'ruleId',
    #     detector_id: 'detectorId', # required
    #     rule_version: 'ruleVersion',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRulesOutput
    #   resp.data.rule_details #=> Array<RuleDetail>
    #   resp.data.rule_details[0] #=> Types::RuleDetail
    #   resp.data.rule_details[0].rule_id #=> String
    #   resp.data.rule_details[0].description #=> String
    #   resp.data.rule_details[0].detector_id #=> String
    #   resp.data.rule_details[0].rule_version #=> String
    #   resp.data.rule_details[0].expression #=> String
    #   resp.data.rule_details[0].language #=> String, one of ["DETECTORPL"]
    #   resp.data.rule_details[0].outcomes #=> Array<String>
    #   resp.data.rule_details[0].outcomes[0] #=> String
    #   resp.data.rule_details[0].last_updated_time #=> String
    #   resp.data.rule_details[0].created_time #=> String
    #   resp.data.rule_details[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def get_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRules
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRules,
        stubs: @stubs,
        params_class: Params::GetRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets all of the variables or the specific variable. This is a
    #          paginated API. Providing null <code>maxSizePerPage</code> results in retrieving maximum of
    #          100 records per page. If you provide <code>maxSizePerPage</code> the value must be between
    #          50 and 100. To get the next page result, a provide a pagination token from
    #         <code>GetVariablesResult</code> as part of your request. Null pagination token
    #          fetches the records from the beginning. </p>
    #
    # @param [Hash] params
    #   See {Types::GetVariablesInput}.
    #
    # @option params [String] :name
    #   <p>The name of the variable. </p>
    #
    # @option params [String] :next_token
    #   <p>The next page token of the get variable request. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The max size per page determined for the get variable request. </p>
    #
    # @return [Types::GetVariablesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_variables(
    #     name: 'name',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVariablesOutput
    #   resp.data.variables #=> Array<Variable>
    #   resp.data.variables[0] #=> Types::Variable
    #   resp.data.variables[0].name #=> String
    #   resp.data.variables[0].data_type #=> String, one of ["STRING", "INTEGER", "FLOAT", "BOOLEAN"]
    #   resp.data.variables[0].data_source #=> String, one of ["EVENT", "MODEL_SCORE", "EXTERNAL_MODEL_SCORE"]
    #   resp.data.variables[0].default_value #=> String
    #   resp.data.variables[0].description #=> String
    #   resp.data.variables[0].variable_type #=> String
    #   resp.data.variables[0].last_updated_time #=> String
    #   resp.data.variables[0].created_time #=> String
    #   resp.data.variables[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def get_variables(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVariablesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVariablesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVariables
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetVariables
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVariables,
        stubs: @stubs,
        params_class: Params::GetVariablesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_variables
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of past predictions. The list can be filtered by detector ID, detector version ID, event ID, event type, or by specifying a time period.
    #     If filter is not specified, the most recent prediction is returned.</p>
    #
    #          <p>For example, the following filter lists all past predictions for <code>xyz</code> event type -
    #     <code>{
    #         "eventType":{
    #         "value": "xyz" }”
    #         }  </code>
    #          </p>
    #
    #          <p>This is a paginated API. If you provide a null <code>maxResults</code>, this action will retrieve a maximum of 10 records per page.
    #   If you provide a <code>maxResults</code>, the value must be between 50 and 100. To get the next page results, provide
    #   the <code>nextToken</code> from the response as part of your request. A null <code>nextToken</code> fetches the records from the beginning.
    # </p>
    #
    # @param [Hash] params
    #   See {Types::ListEventPredictionsInput}.
    #
    # @option params [FilterCondition] :event_id
    #   <p>
    #   The event ID.
    #   </p>
    #
    # @option params [FilterCondition] :event_type
    #   <p>
    #   The event type associated with the detector.
    #   </p>
    #
    # @option params [FilterCondition] :detector_id
    #   <p>
    #   The detector ID.
    #   </p>
    #
    # @option params [FilterCondition] :detector_version_id
    #   <p>
    #   The detector version ID.
    #   </p>
    #
    # @option params [PredictionTimeRange] :prediction_time_range
    #   <p>
    #   The time period for when the predictions were generated.
    #   </p>
    #
    # @option params [String] :next_token
    #   <p>
    #   Identifies the next page of results to return. Use the token to make the call again to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
    #   </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #   The maximum number of predictions to return for the request.
    #   </p>
    #
    # @return [Types::ListEventPredictionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_predictions(
    #     event_id: {
    #       value: 'value'
    #     },
    #     prediction_time_range: {
    #       start_time: 'startTime', # required
    #       end_time: 'endTime' # required
    #     },
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEventPredictionsOutput
    #   resp.data.event_prediction_summaries #=> Array<EventPredictionSummary>
    #   resp.data.event_prediction_summaries[0] #=> Types::EventPredictionSummary
    #   resp.data.event_prediction_summaries[0].event_id #=> String
    #   resp.data.event_prediction_summaries[0].event_type_name #=> String
    #   resp.data.event_prediction_summaries[0].event_timestamp #=> String
    #   resp.data.event_prediction_summaries[0].prediction_timestamp #=> String
    #   resp.data.event_prediction_summaries[0].detector_id #=> String
    #   resp.data.event_prediction_summaries[0].detector_version_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_event_predictions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEventPredictionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEventPredictionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEventPredictions
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::ListEventPredictions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEventPredictions,
        stubs: @stubs,
        params_class: Params::ListEventPredictionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_event_predictions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all tags associated with the resource. This is a paginated API. To get the next page results, provide the pagination token from the
    #             response as part of your request. A null pagination token
    #          fetches the records from the beginning. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN that specifies the resource whose tags you want to list.</p>
    #
    # @option params [String] :next_token
    #   <p>The next token from the previous results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return for the request. </p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceARN', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_token #=> String
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
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
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

    # <p>Creates or updates a detector. </p>
    #
    # @param [Hash] params
    #   See {Types::PutDetectorInput}.
    #
    # @option params [String] :detector_id
    #   <p>The detector ID. </p>
    #
    # @option params [String] :description
    #   <p>The description of the detector.</p>
    #
    # @option params [String] :event_type_name
    #   <p>The name of the event type.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    #
    # @return [Types::PutDetectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_detector(
    #     detector_id: 'detectorId', # required
    #     description: 'description',
    #     event_type_name: 'eventTypeName', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutDetectorOutput
    #
    def put_detector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutDetectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutDetectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutDetector
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::PutDetector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutDetector,
        stubs: @stubs,
        params_class: Params::PutDetectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_detector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates an entity type. An entity represents who is performing the event. As part of a fraud prediction, you pass the entity ID to indicate the specific entity who performed the event. An entity type classifies the entity. Example classifications include customer, merchant, or account.</p>
    #
    # @param [Hash] params
    #   See {Types::PutEntityTypeInput}.
    #
    # @option params [String] :name
    #   <p>The name of the entity type.</p>
    #
    # @option params [String] :description
    #   <p>The description.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    #
    # @return [Types::PutEntityTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_entity_type(
    #     name: 'name', # required
    #     description: 'description',
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutEntityTypeOutput
    #
    def put_entity_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutEntityTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutEntityTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutEntityType
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::PutEntityType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutEntityType,
        stubs: @stubs,
        params_class: Params::PutEntityTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_entity_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates an event type. An event is a business activity that is evaluated for fraud risk. With Amazon Fraud Detector, you generate fraud predictions for events. An event type defines the structure for an event sent to Amazon Fraud Detector. This includes the variables sent as part of the event, the entity performing the event (such as a customer), and the labels that classify the event. Example event types include online payment transactions, account registrations, and authentications.</p>
    #
    # @param [Hash] params
    #   See {Types::PutEventTypeInput}.
    #
    # @option params [String] :name
    #   <p>The name.</p>
    #
    # @option params [String] :description
    #   <p>The description of the event type.</p>
    #
    # @option params [Array<String>] :event_variables
    #   <p>The event type variables.</p>
    #
    # @option params [Array<String>] :labels
    #   <p>The event type labels.</p>
    #
    # @option params [Array<String>] :entity_types
    #   <p>The entity type for the event type. Example entity types: customer, merchant, account.</p>
    #
    # @option params [String] :event_ingestion
    #   <p>Specifies if ingenstion is enabled or disabled.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    #
    # @return [Types::PutEventTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_event_type(
    #     name: 'name', # required
    #     description: 'description',
    #     event_variables: [
    #       'member'
    #     ], # required
    #     labels: [
    #       'member'
    #     ],
    #     event_ingestion: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutEventTypeOutput
    #
    def put_event_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutEventTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutEventTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutEventType
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::PutEventType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutEventType,
        stubs: @stubs,
        params_class: Params::PutEventTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_event_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates an Amazon SageMaker model endpoint. You can also use this action to update the configuration of the model endpoint, including the IAM role and/or the mapped variables.  </p>
    #
    # @param [Hash] params
    #   See {Types::PutExternalModelInput}.
    #
    # @option params [String] :model_endpoint
    #   <p>The model endpoints name.</p>
    #
    # @option params [String] :model_source
    #   <p>The source of the model.</p>
    #
    # @option params [String] :invoke_model_endpoint_role_arn
    #   <p>The IAM role used to invoke the model endpoint.</p>
    #
    # @option params [ModelInputConfiguration] :input_configuration
    #   <p>The model endpoint input configuration.</p>
    #
    # @option params [ModelOutputConfiguration] :output_configuration
    #   <p>The model endpoint output configuration.</p>
    #
    # @option params [String] :model_endpoint_status
    #   <p>The model endpoint’s status in Amazon Fraud Detector.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    #
    # @return [Types::PutExternalModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_external_model(
    #     model_endpoint: 'modelEndpoint', # required
    #     model_source: 'SAGEMAKER', # required - accepts ["SAGEMAKER"]
    #     invoke_model_endpoint_role_arn: 'invokeModelEndpointRoleArn', # required
    #     input_configuration: {
    #       event_type_name: 'eventTypeName',
    #       format: 'TEXT_CSV', # accepts ["TEXT_CSV", "APPLICATION_JSON"]
    #       use_event_variables: false, # required
    #       json_input_template: 'jsonInputTemplate',
    #       csv_input_template: 'csvInputTemplate'
    #     }, # required
    #     output_configuration: {
    #       format: 'TEXT_CSV', # required - accepts ["TEXT_CSV", "APPLICATION_JSONLINES"]
    #       json_key_to_variable_map: {
    #         'key' => 'value'
    #       },
    #       csv_index_to_variable_map: {
    #         'key' => 'value'
    #       }
    #     }, # required
    #     model_endpoint_status: 'ASSOCIATED', # required - accepts ["ASSOCIATED", "DISSOCIATED"]
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutExternalModelOutput
    #
    def put_external_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutExternalModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutExternalModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutExternalModel
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::PutExternalModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutExternalModel,
        stubs: @stubs,
        params_class: Params::PutExternalModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_external_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Specifies the KMS key to be used to encrypt content in Amazon Fraud Detector.</p>
    #
    # @param [Hash] params
    #   See {Types::PutKMSEncryptionKeyInput}.
    #
    # @option params [String] :kms_encryption_key_arn
    #   <p>The KMS encryption key ARN.</p>
    #
    # @return [Types::PutKMSEncryptionKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_kms_encryption_key(
    #     kms_encryption_key_arn: 'kmsEncryptionKeyArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutKMSEncryptionKeyOutput
    #
    def put_kms_encryption_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutKMSEncryptionKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutKMSEncryptionKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutKMSEncryptionKey
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::PutKMSEncryptionKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutKMSEncryptionKey,
        stubs: @stubs,
        params_class: Params::PutKMSEncryptionKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_kms_encryption_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates label. A label classifies an event as fraudulent or legitimate. Labels are associated with event types and used to train supervised machine learning models in Amazon Fraud Detector. </p>
    #
    # @param [Hash] params
    #   See {Types::PutLabelInput}.
    #
    # @option params [String] :name
    #   <p>The label name.</p>
    #
    # @option params [String] :description
    #   <p>The label description.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p></p>
    #
    # @return [Types::PutLabelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_label(
    #     name: 'name', # required
    #     description: 'description',
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutLabelOutput
    #
    def put_label(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutLabelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutLabelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutLabel
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::PutLabel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutLabel,
        stubs: @stubs,
        params_class: Params::PutLabelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_label
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates an outcome. </p>
    #
    # @param [Hash] params
    #   See {Types::PutOutcomeInput}.
    #
    # @option params [String] :name
    #   <p>The name of the outcome.</p>
    #
    # @option params [String] :description
    #   <p>The outcome description.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    #
    # @return [Types::PutOutcomeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_outcome(
    #     name: 'name', # required
    #     description: 'description',
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutOutcomeOutput
    #
    def put_outcome(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutOutcomeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutOutcomeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutOutcome
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::PutOutcome
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutOutcome,
        stubs: @stubs,
        params_class: Params::PutOutcomeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_outcome
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stores events in Amazon Fraud Detector without generating fraud predictions for those events. For example, you can use <code>SendEvent</code> to upload a historical dataset, which you can then later use to train a model.</p>
    #
    # @param [Hash] params
    #   See {Types::SendEventInput}.
    #
    # @option params [String] :event_id
    #   <p>The event ID to upload.</p>
    #
    # @option params [String] :event_type_name
    #   <p>The event type name of the event.</p>
    #
    # @option params [String] :event_timestamp
    #   <p>The timestamp that defines when the event under evaluation occurred. The timestamp must be specified using ISO 8601 standard in UTC.</p>
    #
    # @option params [Hash<String, String>] :event_variables
    #   <p>Names of the event type's variables you defined in Amazon Fraud Detector to represent data elements and their corresponding values for the event you are sending for evaluation.</p>
    #
    # @option params [String] :assigned_label
    #   <p>The label to associate with the event. Required if specifying <code>labelTimestamp</code>.</p>
    #
    # @option params [String] :label_timestamp
    #   <p>The timestamp associated with the label. Required if specifying <code>assignedLabel</code>.</p>
    #
    # @option params [Array<Entity>] :entities
    #   <p>An array of entities.</p>
    #
    # @return [Types::SendEventOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_event(
    #     event_id: 'eventId', # required
    #     event_type_name: 'eventTypeName', # required
    #     event_timestamp: 'eventTimestamp', # required
    #     event_variables: {
    #       'key' => 'value'
    #     }, # required
    #     assigned_label: 'assignedLabel',
    #     label_timestamp: 'labelTimestamp',
    #     entities: [
    #       {
    #         entity_type: 'entityType', # required
    #         entity_id: 'entityId' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendEventOutput
    #
    def send_event(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendEventInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendEventInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendEvent
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::SendEvent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendEvent,
        stubs: @stubs,
        params_class: Params::SendEventOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_event
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns tags to a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to assign to the resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceARN', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ] # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
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

    # <p>Removes tags from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource from which to remove the tag.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The resource ARN.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceARN', # required
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
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
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

    # <p> Updates a detector version. The detector version attributes that you can update include models, external model endpoints, rules, rule execution mode, and description. You can only update a <code>DRAFT</code> detector version.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDetectorVersionInput}.
    #
    # @option params [String] :detector_id
    #   <p>The parent detector ID for the detector version you want to update.</p>
    #
    # @option params [String] :detector_version_id
    #   <p>The detector version ID. </p>
    #
    # @option params [Array<String>] :external_model_endpoints
    #   <p>The Amazon SageMaker model endpoints to include in the detector version.</p>
    #
    # @option params [Array<Rule>] :rules
    #   <p>The rules to include in the detector version.</p>
    #
    # @option params [String] :description
    #   <p>The detector version description. </p>
    #
    # @option params [Array<ModelVersion>] :model_versions
    #   <p>The model versions to include in the detector version.</p>
    #
    # @option params [String] :rule_execution_mode
    #   <p>The rule execution mode to add to the detector.</p>
    #   	        <p>If you specify <code>FIRST_MATCHED</code>, Amazon Fraud Detector evaluates rules sequentially, first to last, stopping at the first matched rule. Amazon Fraud dectector then provides the outcomes for that single rule.</p>
    #   	        <p>If you specifiy <code>ALL_MATCHED</code>, Amazon Fraud Detector evaluates all rules and returns the outcomes for all matched rules. You can define and edit the rule mode at the detector version level, when it is in draft status.</p>
    #            <p>The default behavior is <code>FIRST_MATCHED</code>.</p>
    #
    # @return [Types::UpdateDetectorVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_detector_version(
    #     detector_id: 'detectorId', # required
    #     detector_version_id: 'detectorVersionId', # required
    #     external_model_endpoints: [
    #       'member'
    #     ], # required
    #     rules: [
    #       {
    #         detector_id: 'detectorId', # required
    #         rule_id: 'ruleId', # required
    #         rule_version: 'ruleVersion' # required
    #       }
    #     ], # required
    #     description: 'description',
    #     model_versions: [
    #       {
    #         model_id: 'modelId', # required
    #         model_type: 'ONLINE_FRAUD_INSIGHTS', # required - accepts ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #         model_version_number: 'modelVersionNumber', # required
    #         arn: 'arn'
    #       }
    #     ],
    #     rule_execution_mode: 'ALL_MATCHED' # accepts ["ALL_MATCHED", "FIRST_MATCHED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDetectorVersionOutput
    #
    def update_detector_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDetectorVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDetectorVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDetectorVersion
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateDetectorVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDetectorVersion,
        stubs: @stubs,
        params_class: Params::UpdateDetectorVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_detector_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the detector version's description. You can update the metadata for any detector version (<code>DRAFT, ACTIVE,</code> or
    #                 <code>INACTIVE</code>). </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDetectorVersionMetadataInput}.
    #
    # @option params [String] :detector_id
    #   <p>The detector ID.</p>
    #
    # @option params [String] :detector_version_id
    #   <p>The detector version ID. </p>
    #
    # @option params [String] :description
    #   <p>The description.</p>
    #
    # @return [Types::UpdateDetectorVersionMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_detector_version_metadata(
    #     detector_id: 'detectorId', # required
    #     detector_version_id: 'detectorVersionId', # required
    #     description: 'description' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDetectorVersionMetadataOutput
    #
    def update_detector_version_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDetectorVersionMetadataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDetectorVersionMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDetectorVersionMetadata
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateDetectorVersionMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDetectorVersionMetadata,
        stubs: @stubs,
        params_class: Params::UpdateDetectorVersionMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_detector_version_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the detector version’s status. You can perform the following promotions or
    #             demotions using <code>UpdateDetectorVersionStatus</code>: <code>DRAFT</code> to <code>ACTIVE</code>, <code>ACTIVE</code> to <code>INACTIVE</code>, and <code>INACTIVE</code> to <code>ACTIVE</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDetectorVersionStatusInput}.
    #
    # @option params [String] :detector_id
    #   <p>The detector ID. </p>
    #
    # @option params [String] :detector_version_id
    #   <p>The detector version ID. </p>
    #
    # @option params [String] :status
    #   <p>The new status.</p>
    #
    # @return [Types::UpdateDetectorVersionStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_detector_version_status(
    #     detector_id: 'detectorId', # required
    #     detector_version_id: 'detectorVersionId', # required
    #     status: 'DRAFT' # required - accepts ["DRAFT", "ACTIVE", "INACTIVE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDetectorVersionStatusOutput
    #
    def update_detector_version_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDetectorVersionStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDetectorVersionStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDetectorVersionStatus
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateDetectorVersionStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDetectorVersionStatus,
        stubs: @stubs,
        params_class: Params::UpdateDetectorVersionStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_detector_version_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified event with a new label.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEventLabelInput}.
    #
    # @option params [String] :event_id
    #   <p>The ID of the event associated with the label to update.</p>
    #
    # @option params [String] :event_type_name
    #   <p>The event type of the event associated with the label to update.</p>
    #
    # @option params [String] :assigned_label
    #   <p>The new label to assign to the event.</p>
    #
    # @option params [String] :label_timestamp
    #   <p>The timestamp associated with the label. The timestamp must be specified using ISO 8601 standard in UTC. </p>
    #
    # @return [Types::UpdateEventLabelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_label(
    #     event_id: 'eventId', # required
    #     event_type_name: 'eventTypeName', # required
    #     assigned_label: 'assignedLabel', # required
    #     label_timestamp: 'labelTimestamp' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEventLabelOutput
    #
    def update_event_label(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEventLabelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEventLabelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEventLabel
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateEventLabel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEventLabel,
        stubs: @stubs,
        params_class: Params::UpdateEventLabelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_event_label
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates model description.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateModelInput}.
    #
    # @option params [String] :model_id
    #   <p>The model ID.</p>
    #
    # @option params [String] :model_type
    #   <p>The model type.</p>
    #
    # @option params [String] :description
    #   <p>The new model description.</p>
    #
    # @return [Types::UpdateModelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_model(
    #     model_id: 'modelId', # required
    #     model_type: 'ONLINE_FRAUD_INSIGHTS', # required - accepts ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #     description: 'description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateModelOutput
    #
    def update_model(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateModelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateModelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateModel
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateModel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateModel,
        stubs: @stubs,
        params_class: Params::UpdateModelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_model
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a model version. Updating a model version retrains an existing model version using updated training data and produces a new minor version of the model. You can update the training data set location and data access role attributes using this action. This action creates and trains a new minor version of the model, for example version 1.01, 1.02, 1.03.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateModelVersionInput}.
    #
    # @option params [String] :model_id
    #   <p>The model ID.</p>
    #
    # @option params [String] :model_type
    #   <p>The model type.</p>
    #
    # @option params [String] :major_version_number
    #   <p>The major version number.</p>
    #
    # @option params [ExternalEventsDetail] :external_events_detail
    #   <p>The details of the external events data used for training the model version. Required if <code>trainingDataSource</code> is <code>EXTERNAL_EVENTS</code>.</p>
    #
    # @option params [IngestedEventsDetail] :ingested_events_detail
    #   <p>The details of the ingested event used for training the model version. Required if your <code>trainingDataSource</code> is <code>INGESTED_EVENTS</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    #
    # @return [Types::UpdateModelVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_model_version(
    #     model_id: 'modelId', # required
    #     model_type: 'ONLINE_FRAUD_INSIGHTS', # required - accepts ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #     major_version_number: 'majorVersionNumber', # required
    #     external_events_detail: {
    #       data_location: 'dataLocation', # required
    #       data_access_role_arn: 'dataAccessRoleArn' # required
    #     },
    #     ingested_events_detail: {
    #       ingested_events_time_window: {
    #         start_time: 'startTime', # required
    #         end_time: 'endTime' # required
    #       } # required
    #     },
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateModelVersionOutput
    #   resp.data.model_id #=> String
    #   resp.data.model_type #=> String, one of ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #   resp.data.model_version_number #=> String
    #   resp.data.status #=> String
    #
    def update_model_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateModelVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateModelVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateModelVersion
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateModelVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateModelVersion,
        stubs: @stubs,
        params_class: Params::UpdateModelVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_model_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the status of a model version.</p>
    #          <p>You can perform the following status updates:</p>
    #          <ol>
    #             <li>
    #                <p>Change the <code>TRAINING_IN_PROGRESS</code> status to <code>TRAINING_CANCELLED</code>.</p>
    #             </li>
    #             <li>
    #                <p>Change the <code>TRAINING_COMPLETE</code> status to <code>ACTIVE</code>.</p>
    #             </li>
    #             <li>
    #                <p>Change <code>ACTIVE</code> to <code>INACTIVE</code>.</p>
    #             </li>
    #          </ol>
    #
    # @param [Hash] params
    #   See {Types::UpdateModelVersionStatusInput}.
    #
    # @option params [String] :model_id
    #   <p>The model ID of the model version to update.</p>
    #
    # @option params [String] :model_type
    #   <p>The model type.</p>
    #
    # @option params [String] :model_version_number
    #   <p>The model version number.</p>
    #
    # @option params [String] :status
    #   <p>The model version status.</p>
    #
    # @return [Types::UpdateModelVersionStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_model_version_status(
    #     model_id: 'modelId', # required
    #     model_type: 'ONLINE_FRAUD_INSIGHTS', # required - accepts ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS"]
    #     model_version_number: 'modelVersionNumber', # required
    #     status: 'ACTIVE' # required - accepts ["ACTIVE", "INACTIVE", "TRAINING_CANCELLED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateModelVersionStatusOutput
    #
    def update_model_version_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateModelVersionStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateModelVersionStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateModelVersionStatus
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateModelVersionStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateModelVersionStatus,
        stubs: @stubs,
        params_class: Params::UpdateModelVersionStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_model_version_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a rule's metadata. The description attribute can be updated.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRuleMetadataInput}.
    #
    # @option params [Rule] :rule
    #   <p>The rule to update.</p>
    #
    # @option params [String] :description
    #   <p>The rule description.</p>
    #
    # @return [Types::UpdateRuleMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rule_metadata(
    #     rule: {
    #       detector_id: 'detectorId', # required
    #       rule_id: 'ruleId', # required
    #       rule_version: 'ruleVersion' # required
    #     }, # required
    #     description: 'description' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRuleMetadataOutput
    #
    def update_rule_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRuleMetadataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRuleMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRuleMetadata
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateRuleMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRuleMetadata,
        stubs: @stubs,
        params_class: Params::UpdateRuleMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_rule_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a rule version resulting in a new rule version. Updates a rule version resulting in a new rule version (version 1, 2, 3 ...). </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRuleVersionInput}.
    #
    # @option params [Rule] :rule
    #   <p>The rule to update.</p>
    #
    # @option params [String] :description
    #   <p>The description.</p>
    #
    # @option params [String] :expression
    #   <p>The rule expression.</p>
    #
    # @option params [String] :language
    #   <p>The language.</p>
    #
    # @option params [Array<String>] :outcomes
    #   <p>The outcomes.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to assign to the rule version.</p>
    #
    # @return [Types::UpdateRuleVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rule_version(
    #     rule: {
    #       detector_id: 'detectorId', # required
    #       rule_id: 'ruleId', # required
    #       rule_version: 'ruleVersion' # required
    #     }, # required
    #     description: 'description',
    #     expression: 'expression', # required
    #     language: 'DETECTORPL', # required - accepts ["DETECTORPL"]
    #     outcomes: [
    #       'member'
    #     ], # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRuleVersionOutput
    #   resp.data.rule #=> Types::Rule
    #   resp.data.rule.detector_id #=> String
    #   resp.data.rule.rule_id #=> String
    #   resp.data.rule.rule_version #=> String
    #
    def update_rule_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRuleVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRuleVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRuleVersion
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateRuleVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRuleVersion,
        stubs: @stubs,
        params_class: Params::UpdateRuleVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_rule_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a variable.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateVariableInput}.
    #
    # @option params [String] :name
    #   <p>The name of the variable.</p>
    #
    # @option params [String] :default_value
    #   <p>The new default value of the variable.</p>
    #
    # @option params [String] :description
    #   <p>The new description.</p>
    #
    # @option params [String] :variable_type
    #   <p>The variable type. For more information see <a href="https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types">Variable types</a>.</p>
    #
    # @return [Types::UpdateVariableOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_variable(
    #     name: 'name', # required
    #     default_value: 'defaultValue',
    #     description: 'description',
    #     variable_type: 'variableType'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateVariableOutput
    #
    def update_variable(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateVariableInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateVariableInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateVariable
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateVariable
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateVariable,
        stubs: @stubs,
        params_class: Params::UpdateVariableOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_variable
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
