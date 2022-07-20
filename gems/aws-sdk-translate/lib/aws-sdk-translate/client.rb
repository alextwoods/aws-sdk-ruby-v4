# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Translate
  # An API client for AWSShineFrontendService_20170701
  # See {#initialize} for a full list of supported configuration options
  # <p>Provides translation between one source language and another of the same set of
  #       languages.</p>
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
    def initialize(config = AWS::SDK::Translate::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a parallel data resource in Amazon Translate by importing an input file from
    #       Amazon S3. Parallel data files contain examples that show how you want segments of text to be
    #       translated. By adding parallel data, you can influence the style, tone, and word choice in
    #       your translation output.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateParallelDataInput}.
    #
    # @option params [String] :name
    #   <p>A custom name for the parallel data resource in Amazon Translate. You must assign a name
    #         that is unique in the account and region.</p>
    #
    # @option params [String] :description
    #   <p>A custom description for the parallel data resource in Amazon Translate.</p>
    #
    # @option params [ParallelDataConfig] :parallel_data_config
    #   <p>Specifies the format and S3 location of the parallel data input file.</p>
    #
    # @option params [EncryptionKey] :encryption_key
    #   <p>The encryption key used to encrypt this object.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique identifier for the request. This token is automatically generated when you use
    #         Amazon Translate through an AWS SDK.</p>
    #
    # @return [Types::CreateParallelDataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_parallel_data(
    #     name: 'Name', # required
    #     description: 'Description',
    #     parallel_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       format: 'TSV' # required - accepts ["TSV", "CSV", "TMX"]
    #     }, # required
    #     encryption_key: {
    #       type: 'KMS', # required - accepts ["KMS"]
    #       id: 'Id' # required
    #     },
    #     client_token: 'ClientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateParallelDataOutput
    #   resp.data.name #=> String
    #   resp.data.status #=> String, one of ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #
    def create_parallel_data(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateParallelDataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateParallelDataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateParallelData
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ConflictException, Errors::InvalidParameterValueException, Errors::InvalidRequestException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateParallelData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateParallelData,
        stubs: @stubs,
        params_class: Params::CreateParallelDataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_parallel_data
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a parallel data resource in Amazon Translate.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteParallelDataInput}.
    #
    # @option params [String] :name
    #   <p>The name of the parallel data resource that is being deleted.</p>
    #
    # @return [Types::DeleteParallelDataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_parallel_data(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteParallelDataOutput
    #   resp.data.name #=> String
    #   resp.data.status #=> String, one of ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #
    def delete_parallel_data(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteParallelDataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteParallelDataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteParallelData
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ConcurrentModificationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteParallelData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteParallelData,
        stubs: @stubs,
        params_class: Params::DeleteParallelDataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_parallel_data
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>A synchronous action that deletes a custom terminology.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTerminologyInput}.
    #
    # @option params [String] :name
    #   <p>The name of the custom terminology being deleted. </p>
    #
    # @return [Types::DeleteTerminologyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_terminology(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTerminologyOutput
    #
    def delete_terminology(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTerminologyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTerminologyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTerminology
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidParameterValueException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteTerminology
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTerminology,
        stubs: @stubs,
        params_class: Params::DeleteTerminologyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_terminology
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the properties associated with an asynchronous batch translation job including name,
    #       ID, status, source and target languages, input/output S3 buckets, and so on.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTextTranslationJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Translate generated for the job. The <a>StartTextTranslationJob</a> operation returns this identifier in its
    #         response.</p>
    #
    # @return [Types::DescribeTextTranslationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_text_translation_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTextTranslationJobOutput
    #   resp.data.text_translation_job_properties #=> Types::TextTranslationJobProperties
    #   resp.data.text_translation_job_properties.job_id #=> String
    #   resp.data.text_translation_job_properties.job_name #=> String
    #   resp.data.text_translation_job_properties.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERROR", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.text_translation_job_properties.job_details #=> Types::JobDetails
    #   resp.data.text_translation_job_properties.job_details.translated_documents_count #=> Integer
    #   resp.data.text_translation_job_properties.job_details.documents_with_errors_count #=> Integer
    #   resp.data.text_translation_job_properties.job_details.input_documents_count #=> Integer
    #   resp.data.text_translation_job_properties.source_language_code #=> String
    #   resp.data.text_translation_job_properties.target_language_codes #=> Array<String>
    #   resp.data.text_translation_job_properties.target_language_codes[0] #=> String
    #   resp.data.text_translation_job_properties.terminology_names #=> Array<String>
    #   resp.data.text_translation_job_properties.terminology_names[0] #=> String
    #   resp.data.text_translation_job_properties.parallel_data_names #=> Array<String>
    #   resp.data.text_translation_job_properties.message #=> String
    #   resp.data.text_translation_job_properties.submitted_time #=> Time
    #   resp.data.text_translation_job_properties.end_time #=> Time
    #   resp.data.text_translation_job_properties.input_data_config #=> Types::InputDataConfig
    #   resp.data.text_translation_job_properties.input_data_config.s3_uri #=> String
    #   resp.data.text_translation_job_properties.input_data_config.content_type #=> String
    #   resp.data.text_translation_job_properties.output_data_config #=> Types::OutputDataConfig
    #   resp.data.text_translation_job_properties.output_data_config.s3_uri #=> String
    #   resp.data.text_translation_job_properties.output_data_config.encryption_key #=> Types::EncryptionKey
    #   resp.data.text_translation_job_properties.output_data_config.encryption_key.type #=> String, one of ["KMS"]
    #   resp.data.text_translation_job_properties.output_data_config.encryption_key.id #=> String
    #   resp.data.text_translation_job_properties.data_access_role_arn #=> String
    #   resp.data.text_translation_job_properties.settings #=> Types::TranslationSettings
    #   resp.data.text_translation_job_properties.settings.formality #=> String, one of ["FORMAL", "INFORMAL"]
    #   resp.data.text_translation_job_properties.settings.profanity #=> String, one of ["MASK"]
    #
    def describe_text_translation_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTextTranslationJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTextTranslationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTextTranslationJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeTextTranslationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTextTranslationJob,
        stubs: @stubs,
        params_class: Params::DescribeTextTranslationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_text_translation_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about a parallel data resource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetParallelDataInput}.
    #
    # @option params [String] :name
    #   <p>The name of the parallel data resource that is being retrieved.</p>
    #
    # @return [Types::GetParallelDataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_parallel_data(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetParallelDataOutput
    #   resp.data.parallel_data_properties #=> Types::ParallelDataProperties
    #   resp.data.parallel_data_properties.name #=> String
    #   resp.data.parallel_data_properties.arn #=> String
    #   resp.data.parallel_data_properties.description #=> String
    #   resp.data.parallel_data_properties.status #=> String, one of ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #   resp.data.parallel_data_properties.source_language_code #=> String
    #   resp.data.parallel_data_properties.target_language_codes #=> Array<String>
    #   resp.data.parallel_data_properties.target_language_codes[0] #=> String
    #   resp.data.parallel_data_properties.parallel_data_config #=> Types::ParallelDataConfig
    #   resp.data.parallel_data_properties.parallel_data_config.s3_uri #=> String
    #   resp.data.parallel_data_properties.parallel_data_config.format #=> String, one of ["TSV", "CSV", "TMX"]
    #   resp.data.parallel_data_properties.message #=> String
    #   resp.data.parallel_data_properties.imported_data_size #=> Integer
    #   resp.data.parallel_data_properties.imported_record_count #=> Integer
    #   resp.data.parallel_data_properties.failed_record_count #=> Integer
    #   resp.data.parallel_data_properties.skipped_record_count #=> Integer
    #   resp.data.parallel_data_properties.encryption_key #=> Types::EncryptionKey
    #   resp.data.parallel_data_properties.encryption_key.type #=> String, one of ["KMS"]
    #   resp.data.parallel_data_properties.encryption_key.id #=> String
    #   resp.data.parallel_data_properties.created_at #=> Time
    #   resp.data.parallel_data_properties.last_updated_at #=> Time
    #   resp.data.parallel_data_properties.latest_update_attempt_status #=> String, one of ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #   resp.data.parallel_data_properties.latest_update_attempt_at #=> Time
    #   resp.data.data_location #=> Types::ParallelDataDataLocation
    #   resp.data.data_location.repository_type #=> String
    #   resp.data.data_location.location #=> String
    #   resp.data.auxiliary_data_location #=> Types::ParallelDataDataLocation
    #   resp.data.latest_update_attempt_auxiliary_data_location #=> Types::ParallelDataDataLocation
    #
    def get_parallel_data(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetParallelDataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetParallelDataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetParallelData
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidParameterValueException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetParallelData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetParallelData,
        stubs: @stubs,
        params_class: Params::GetParallelDataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_parallel_data
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a custom terminology.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTerminologyInput}.
    #
    # @option params [String] :name
    #   <p>The name of the custom terminology being retrieved.</p>
    #
    # @option params [String] :terminology_data_format
    #   <p>The data format of the custom terminology being retrieved.</p>
    #            <p>If you don't specify this parameter, Amazon Translate returns a file that has the same
    #         format as the file that was imported to create the terminology. </p>
    #            <p>If you specify this parameter when you retrieve a multi-directional terminology resource,
    #         you must specify the same format as that of the input file that was imported to create it.
    #         Otherwise, Amazon Translate throws an error.</p>
    #
    # @return [Types::GetTerminologyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_terminology(
    #     name: 'Name', # required
    #     terminology_data_format: 'CSV' # accepts ["CSV", "TMX", "TSV"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTerminologyOutput
    #   resp.data.terminology_properties #=> Types::TerminologyProperties
    #   resp.data.terminology_properties.name #=> String
    #   resp.data.terminology_properties.description #=> String
    #   resp.data.terminology_properties.arn #=> String
    #   resp.data.terminology_properties.source_language_code #=> String
    #   resp.data.terminology_properties.target_language_codes #=> Array<String>
    #   resp.data.terminology_properties.target_language_codes[0] #=> String
    #   resp.data.terminology_properties.encryption_key #=> Types::EncryptionKey
    #   resp.data.terminology_properties.encryption_key.type #=> String, one of ["KMS"]
    #   resp.data.terminology_properties.encryption_key.id #=> String
    #   resp.data.terminology_properties.size_bytes #=> Integer
    #   resp.data.terminology_properties.term_count #=> Integer
    #   resp.data.terminology_properties.created_at #=> Time
    #   resp.data.terminology_properties.last_updated_at #=> Time
    #   resp.data.terminology_properties.directionality #=> String, one of ["UNI", "MULTI"]
    #   resp.data.terminology_properties.message #=> String
    #   resp.data.terminology_properties.skipped_term_count #=> Integer
    #   resp.data.terminology_properties.format #=> String, one of ["CSV", "TMX", "TSV"]
    #   resp.data.terminology_data_location #=> Types::TerminologyDataLocation
    #   resp.data.terminology_data_location.repository_type #=> String
    #   resp.data.terminology_data_location.location #=> String
    #   resp.data.auxiliary_data_location #=> Types::TerminologyDataLocation
    #
    def get_terminology(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTerminologyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTerminologyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTerminology
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidParameterValueException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetTerminology
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTerminology,
        stubs: @stubs,
        params_class: Params::GetTerminologyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_terminology
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates a custom terminology, depending on whether or not one already exists
    #       for the given terminology name. Importing a terminology with the same name as an existing one
    #       will merge the terminologies based on the chosen merge strategy. Currently, the only supported
    #       merge strategy is OVERWRITE, and so the imported terminology will overwrite an existing
    #       terminology of the same name.</p>
    #          <p>If you import a terminology that overwrites an existing one, the new terminology take up
    #       to 10 minutes to fully propagate and be available for use in a translation due to cache
    #       policies with the DataPlane service that performs the translations.</p>
    #
    # @param [Hash] params
    #   See {Types::ImportTerminologyInput}.
    #
    # @option params [String] :name
    #   <p>The name of the custom terminology being imported.</p>
    #
    # @option params [String] :merge_strategy
    #   <p>The merge strategy of the custom terminology being imported. Currently, only the OVERWRITE
    #         merge strategy is supported. In this case, the imported terminology will overwrite an existing
    #         terminology of the same name.</p>
    #
    # @option params [String] :description
    #   <p>The description of the custom terminology being imported.</p>
    #
    # @option params [TerminologyData] :terminology_data
    #   <p>The terminology data for the custom terminology being imported.</p>
    #
    # @option params [EncryptionKey] :encryption_key
    #   <p>The encryption key for the custom terminology being imported.</p>
    #
    # @return [Types::ImportTerminologyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_terminology(
    #     name: 'Name', # required
    #     merge_strategy: 'OVERWRITE', # required - accepts ["OVERWRITE"]
    #     description: 'Description',
    #     terminology_data: {
    #       file: 'File', # required
    #       format: 'CSV', # required - accepts ["CSV", "TMX", "TSV"]
    #       directionality: 'UNI' # accepts ["UNI", "MULTI"]
    #     }, # required
    #     encryption_key: {
    #       type: 'KMS', # required - accepts ["KMS"]
    #       id: 'Id' # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportTerminologyOutput
    #   resp.data.terminology_properties #=> Types::TerminologyProperties
    #   resp.data.terminology_properties.name #=> String
    #   resp.data.terminology_properties.description #=> String
    #   resp.data.terminology_properties.arn #=> String
    #   resp.data.terminology_properties.source_language_code #=> String
    #   resp.data.terminology_properties.target_language_codes #=> Array<String>
    #   resp.data.terminology_properties.target_language_codes[0] #=> String
    #   resp.data.terminology_properties.encryption_key #=> Types::EncryptionKey
    #   resp.data.terminology_properties.encryption_key.type #=> String, one of ["KMS"]
    #   resp.data.terminology_properties.encryption_key.id #=> String
    #   resp.data.terminology_properties.size_bytes #=> Integer
    #   resp.data.terminology_properties.term_count #=> Integer
    #   resp.data.terminology_properties.created_at #=> Time
    #   resp.data.terminology_properties.last_updated_at #=> Time
    #   resp.data.terminology_properties.directionality #=> String, one of ["UNI", "MULTI"]
    #   resp.data.terminology_properties.message #=> String
    #   resp.data.terminology_properties.skipped_term_count #=> Integer
    #   resp.data.terminology_properties.format #=> String, one of ["CSV", "TMX", "TSV"]
    #   resp.data.auxiliary_data_location #=> Types::TerminologyDataLocation
    #   resp.data.auxiliary_data_location.repository_type #=> String
    #   resp.data.auxiliary_data_location.location #=> String
    #
    def import_terminology(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportTerminologyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportTerminologyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportTerminology
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidParameterValueException, Errors::LimitExceededException]),
        data_parser: Parsers::ImportTerminology
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportTerminology,
        stubs: @stubs,
        params_class: Params::ImportTerminologyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_terminology
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a list of your parallel data resources in Amazon Translate.</p>
    #
    # @param [Hash] params
    #   See {Types::ListParallelDataInput}.
    #
    # @option params [String] :next_token
    #   <p>A string that specifies the next page of results to return in a paginated response.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of parallel data resources returned for each request.</p>
    #
    # @return [Types::ListParallelDataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_parallel_data(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListParallelDataOutput
    #   resp.data.parallel_data_properties_list #=> Array<ParallelDataProperties>
    #   resp.data.parallel_data_properties_list[0] #=> Types::ParallelDataProperties
    #   resp.data.parallel_data_properties_list[0].name #=> String
    #   resp.data.parallel_data_properties_list[0].arn #=> String
    #   resp.data.parallel_data_properties_list[0].description #=> String
    #   resp.data.parallel_data_properties_list[0].status #=> String, one of ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #   resp.data.parallel_data_properties_list[0].source_language_code #=> String
    #   resp.data.parallel_data_properties_list[0].target_language_codes #=> Array<String>
    #   resp.data.parallel_data_properties_list[0].target_language_codes[0] #=> String
    #   resp.data.parallel_data_properties_list[0].parallel_data_config #=> Types::ParallelDataConfig
    #   resp.data.parallel_data_properties_list[0].parallel_data_config.s3_uri #=> String
    #   resp.data.parallel_data_properties_list[0].parallel_data_config.format #=> String, one of ["TSV", "CSV", "TMX"]
    #   resp.data.parallel_data_properties_list[0].message #=> String
    #   resp.data.parallel_data_properties_list[0].imported_data_size #=> Integer
    #   resp.data.parallel_data_properties_list[0].imported_record_count #=> Integer
    #   resp.data.parallel_data_properties_list[0].failed_record_count #=> Integer
    #   resp.data.parallel_data_properties_list[0].skipped_record_count #=> Integer
    #   resp.data.parallel_data_properties_list[0].encryption_key #=> Types::EncryptionKey
    #   resp.data.parallel_data_properties_list[0].encryption_key.type #=> String, one of ["KMS"]
    #   resp.data.parallel_data_properties_list[0].encryption_key.id #=> String
    #   resp.data.parallel_data_properties_list[0].created_at #=> Time
    #   resp.data.parallel_data_properties_list[0].last_updated_at #=> Time
    #   resp.data.parallel_data_properties_list[0].latest_update_attempt_status #=> String, one of ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #   resp.data.parallel_data_properties_list[0].latest_update_attempt_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_parallel_data(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListParallelDataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListParallelDataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListParallelData
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::ListParallelData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListParallelData,
        stubs: @stubs,
        params_class: Params::ListParallelDataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_parallel_data
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a list of custom terminologies associated with your account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTerminologiesInput}.
    #
    # @option params [String] :next_token
    #   <p>If the result of the request to ListTerminologies was truncated, include the NextToken to
    #         fetch the next group of custom terminologies. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of custom terminologies returned per list request.</p>
    #
    # @return [Types::ListTerminologiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_terminologies(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTerminologiesOutput
    #   resp.data.terminology_properties_list #=> Array<TerminologyProperties>
    #   resp.data.terminology_properties_list[0] #=> Types::TerminologyProperties
    #   resp.data.terminology_properties_list[0].name #=> String
    #   resp.data.terminology_properties_list[0].description #=> String
    #   resp.data.terminology_properties_list[0].arn #=> String
    #   resp.data.terminology_properties_list[0].source_language_code #=> String
    #   resp.data.terminology_properties_list[0].target_language_codes #=> Array<String>
    #   resp.data.terminology_properties_list[0].target_language_codes[0] #=> String
    #   resp.data.terminology_properties_list[0].encryption_key #=> Types::EncryptionKey
    #   resp.data.terminology_properties_list[0].encryption_key.type #=> String, one of ["KMS"]
    #   resp.data.terminology_properties_list[0].encryption_key.id #=> String
    #   resp.data.terminology_properties_list[0].size_bytes #=> Integer
    #   resp.data.terminology_properties_list[0].term_count #=> Integer
    #   resp.data.terminology_properties_list[0].created_at #=> Time
    #   resp.data.terminology_properties_list[0].last_updated_at #=> Time
    #   resp.data.terminology_properties_list[0].directionality #=> String, one of ["UNI", "MULTI"]
    #   resp.data.terminology_properties_list[0].message #=> String
    #   resp.data.terminology_properties_list[0].skipped_term_count #=> Integer
    #   resp.data.terminology_properties_list[0].format #=> String, one of ["CSV", "TMX", "TSV"]
    #   resp.data.next_token #=> String
    #
    def list_terminologies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTerminologiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTerminologiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTerminologies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::ListTerminologies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTerminologies,
        stubs: @stubs,
        params_class: Params::ListTerminologiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_terminologies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of the batch translation jobs that you have submitted.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTextTranslationJobsInput}.
    #
    # @option params [TextTranslationJobFilter] :filter
    #   <p>The parameters that specify which batch translation jobs to retrieve. Filters include job
    #         name, job status, and submission time. You can only set one filter at a time.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default value is 100.</p>
    #
    # @return [Types::ListTextTranslationJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_text_translation_jobs(
    #     filter: {
    #       job_name: 'JobName',
    #       job_status: 'SUBMITTED', # accepts ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERROR", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #       submitted_before_time: Time.now,
    #       submitted_after_time: Time.now
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTextTranslationJobsOutput
    #   resp.data.text_translation_job_properties_list #=> Array<TextTranslationJobProperties>
    #   resp.data.text_translation_job_properties_list[0] #=> Types::TextTranslationJobProperties
    #   resp.data.text_translation_job_properties_list[0].job_id #=> String
    #   resp.data.text_translation_job_properties_list[0].job_name #=> String
    #   resp.data.text_translation_job_properties_list[0].job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERROR", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   resp.data.text_translation_job_properties_list[0].job_details #=> Types::JobDetails
    #   resp.data.text_translation_job_properties_list[0].job_details.translated_documents_count #=> Integer
    #   resp.data.text_translation_job_properties_list[0].job_details.documents_with_errors_count #=> Integer
    #   resp.data.text_translation_job_properties_list[0].job_details.input_documents_count #=> Integer
    #   resp.data.text_translation_job_properties_list[0].source_language_code #=> String
    #   resp.data.text_translation_job_properties_list[0].target_language_codes #=> Array<String>
    #   resp.data.text_translation_job_properties_list[0].target_language_codes[0] #=> String
    #   resp.data.text_translation_job_properties_list[0].terminology_names #=> Array<String>
    #   resp.data.text_translation_job_properties_list[0].terminology_names[0] #=> String
    #   resp.data.text_translation_job_properties_list[0].parallel_data_names #=> Array<String>
    #   resp.data.text_translation_job_properties_list[0].message #=> String
    #   resp.data.text_translation_job_properties_list[0].submitted_time #=> Time
    #   resp.data.text_translation_job_properties_list[0].end_time #=> Time
    #   resp.data.text_translation_job_properties_list[0].input_data_config #=> Types::InputDataConfig
    #   resp.data.text_translation_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.data.text_translation_job_properties_list[0].input_data_config.content_type #=> String
    #   resp.data.text_translation_job_properties_list[0].output_data_config #=> Types::OutputDataConfig
    #   resp.data.text_translation_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.data.text_translation_job_properties_list[0].output_data_config.encryption_key #=> Types::EncryptionKey
    #   resp.data.text_translation_job_properties_list[0].output_data_config.encryption_key.type #=> String, one of ["KMS"]
    #   resp.data.text_translation_job_properties_list[0].output_data_config.encryption_key.id #=> String
    #   resp.data.text_translation_job_properties_list[0].data_access_role_arn #=> String
    #   resp.data.text_translation_job_properties_list[0].settings #=> Types::TranslationSettings
    #   resp.data.text_translation_job_properties_list[0].settings.formality #=> String, one of ["FORMAL", "INFORMAL"]
    #   resp.data.text_translation_job_properties_list[0].settings.profanity #=> String, one of ["MASK"]
    #   resp.data.next_token #=> String
    #
    def list_text_translation_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTextTranslationJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTextTranslationJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTextTranslationJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::InvalidRequestException, Errors::InvalidFilterException]),
        data_parser: Parsers::ListTextTranslationJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTextTranslationJobs,
        stubs: @stubs,
        params_class: Params::ListTextTranslationJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_text_translation_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an asynchronous batch translation job. Batch translation jobs can be used to
    #       translate large volumes of text across multiple documents at once. For more information, see
    #         <a>async</a>.</p>
    #
    #          <p>Batch translation jobs can be described with the <a>DescribeTextTranslationJob</a> operation, listed with the <a>ListTextTranslationJobs</a> operation, and stopped with the <a>StopTextTranslationJob</a> operation.</p>
    #          <note>
    #             <p>Amazon Translate does not support batch translation of multiple source languages at once.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::StartTextTranslationJobInput}.
    #
    # @option params [String] :job_name
    #   <p>The name of the batch translation job to be performed.</p>
    #
    # @option params [InputDataConfig] :input_data_config
    #   <p>Specifies the format and S3 location of the input documents for the translation
    #         job.</p>
    #
    # @option params [OutputDataConfig] :output_data_config
    #   <p>Specifies the S3 folder to which your job output will be saved.
    #         </p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of an AWS Identity Access and Management (IAM) role
    #         that grants Amazon Translate read access to your input data. For more information, see <a>identity-and-access-management</a>.</p>
    #
    # @option params [String] :source_language_code
    #   <p>The language code of the input language. For a list of language codes, see <a>what-is-languages</a>.</p>
    #            <p>Amazon Translate does not automatically detect a source language during batch translation
    #         jobs.</p>
    #
    # @option params [Array<String>] :target_language_codes
    #   <p>The language code of the output language.</p>
    #
    # @option params [Array<String>] :terminology_names
    #   <p>The name of a custom terminology resource to add to the translation job. This resource
    #         lists examples source terms and the desired translation for each term.</p>
    #            <p>This parameter accepts only one custom terminology resource.</p>
    #            <p>For a list of available custom terminology resources, use the <a>ListTerminologies</a> operation.</p>
    #            <p>For more information, see <a>how-custom-terminology</a>.</p>
    #
    # @option params [Array<String>] :parallel_data_names
    #   <p>The name of a parallel data resource to add to the translation job. This resource consists
    #         of examples that show how you want segments of text to be translated. When you add parallel
    #         data to a translation job, you create an <i>Active Custom Translation</i> job. </p>
    #            <p>This parameter accepts only one parallel data resource.</p>
    #            <note>
    #               <p>Active Custom Translation jobs are priced at a higher rate than other jobs that don't
    #           use parallel data. For more information, see <a href="http://aws.amazon.com/translate/pricing/">Amazon Translate pricing</a>.</p>
    #            </note>
    #            <p>For a list of available parallel data resources, use the <a>ListParallelData</a> operation.</p>
    #            <p>For more information, see <a>customizing-translations-parallel-data</a>.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique identifier for the request. This token is auto-generated when using the Amazon Translate
    #         SDK.</p>
    #
    # @option params [TranslationSettings] :settings
    #   <p>Settings to configure your translation output, including the option to mask profane words
    #         and phrases.</p>
    #
    # @return [Types::StartTextTranslationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_text_translation_job(
    #     job_name: 'JobName',
    #     input_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       content_type: 'ContentType' # required
    #     }, # required
    #     output_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       encryption_key: {
    #         type: 'KMS', # required - accepts ["KMS"]
    #         id: 'Id' # required
    #       }
    #     }, # required
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     source_language_code: 'SourceLanguageCode', # required
    #     target_language_codes: [
    #       'member'
    #     ], # required
    #     terminology_names: [
    #       'member'
    #     ],
    #     client_token: 'ClientToken', # required
    #     settings: {
    #       formality: 'FORMAL', # accepts ["FORMAL", "INFORMAL"]
    #       profanity: 'MASK' # accepts ["MASK"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartTextTranslationJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERROR", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    def start_text_translation_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartTextTranslationJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartTextTranslationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartTextTranslationJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::UnsupportedLanguagePairException, Errors::InvalidParameterValueException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartTextTranslationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartTextTranslationJob,
        stubs: @stubs,
        params_class: Params::StartTextTranslationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_text_translation_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops an asynchronous batch translation job that is in progress.</p>
    #          <p>If the job's state is <code>IN_PROGRESS</code>, the job will be marked for termination and
    #       put into the <code>STOP_REQUESTED</code> state. If the job completes before it can be stopped,
    #       it is put into the <code>COMPLETED</code> state. Otherwise, the job is put into the
    #         <code>STOPPED</code> state.</p>
    #          <p>Asynchronous batch translation jobs are started with the <a>StartTextTranslationJob</a> operation. You can use the <a>DescribeTextTranslationJob</a> or <a>ListTextTranslationJobs</a>
    #       operations to get a batch translation job's <code>JobId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::StopTextTranslationJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The job ID of the job to be stopped.</p>
    #
    # @return [Types::StopTextTranslationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_text_translation_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopTextTranslationJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERROR", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #
    def stop_text_translation_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopTextTranslationJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopTextTranslationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopTextTranslationJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StopTextTranslationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopTextTranslationJob,
        stubs: @stubs,
        params_class: Params::StopTextTranslationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_text_translation_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Translates input text from the source language to the target language. For a list of
    #       available languages and language codes, see <a>what-is-languages</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::TranslateTextInput}.
    #
    # @option params [String] :text
    #   <p>The text to translate. The text string can be a maximum of 5,000 bytes long. Depending on
    #         your character set, this may be fewer than 5,000 characters.</p>
    #
    # @option params [Array<String>] :terminology_names
    #   <p>The name of the terminology list file to be used in the TranslateText request. You can use
    #         1 terminology list at most in a <code>TranslateText</code> request. Terminology lists can
    #         contain a maximum of 256 terms.</p>
    #
    # @option params [String] :source_language_code
    #   <p>The language code for the language of the source text. The language must be a language
    #         supported by Amazon Translate. For a list of language codes, see <a>what-is-languages</a>.</p>
    #            <p>To have Amazon Translate determine the source language of your text, you can specify
    #           <code>auto</code> in the <code>SourceLanguageCode</code> field. If you specify
    #           <code>auto</code>, Amazon Translate will call <a href="https://docs.aws.amazon.com/comprehend/latest/dg/comprehend-general.html">Amazon
    #           Comprehend</a> to determine the source language.</p>
    #
    # @option params [String] :target_language_code
    #   <p>The language code requested for the language of the target text. The language must be a
    #         language supported by Amazon Translate.</p>
    #
    # @option params [TranslationSettings] :settings
    #   <p>Settings to configure your translation output, including the option to mask profane words
    #         and phrases.</p>
    #
    # @return [Types::TranslateTextOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.translate_text(
    #     text: 'Text', # required
    #     terminology_names: [
    #       'member'
    #     ],
    #     source_language_code: 'SourceLanguageCode', # required
    #     target_language_code: 'TargetLanguageCode', # required
    #     settings: {
    #       formality: 'FORMAL', # accepts ["FORMAL", "INFORMAL"]
    #       profanity: 'MASK' # accepts ["MASK"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TranslateTextOutput
    #   resp.data.translated_text #=> String
    #   resp.data.source_language_code #=> String
    #   resp.data.target_language_code #=> String
    #   resp.data.applied_terminologies #=> Array<AppliedTerminology>
    #   resp.data.applied_terminologies[0] #=> Types::AppliedTerminology
    #   resp.data.applied_terminologies[0].name #=> String
    #   resp.data.applied_terminologies[0].terms #=> Array<Term>
    #   resp.data.applied_terminologies[0].terms[0] #=> Types::Term
    #   resp.data.applied_terminologies[0].terms[0].source_text #=> String
    #   resp.data.applied_terminologies[0].terms[0].target_text #=> String
    #   resp.data.applied_settings #=> Types::TranslationSettings
    #   resp.data.applied_settings.formality #=> String, one of ["FORMAL", "INFORMAL"]
    #   resp.data.applied_settings.profanity #=> String, one of ["MASK"]
    #
    def translate_text(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TranslateTextInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TranslateTextInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TranslateText
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ServiceUnavailableException, Errors::TooManyRequestsException, Errors::UnsupportedLanguagePairException, Errors::InvalidRequestException, Errors::TextSizeLimitExceededException, Errors::ResourceNotFoundException, Errors::DetectedLanguageLowConfidenceException]),
        data_parser: Parsers::TranslateText
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TranslateText,
        stubs: @stubs,
        params_class: Params::TranslateTextOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :translate_text
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a previously created parallel data resource by importing a new input file from
    #       Amazon S3.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateParallelDataInput}.
    #
    # @option params [String] :name
    #   <p>The name of the parallel data resource being updated.</p>
    #
    # @option params [String] :description
    #   <p>A custom description for the parallel data resource in Amazon Translate.</p>
    #
    # @option params [ParallelDataConfig] :parallel_data_config
    #   <p>Specifies the format and S3 location of the parallel data input file.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique identifier for the request. This token is automatically generated when you use
    #         Amazon Translate through an AWS SDK.</p>
    #
    # @return [Types::UpdateParallelDataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_parallel_data(
    #     name: 'Name', # required
    #     description: 'Description',
    #     parallel_data_config: {
    #       s3_uri: 'S3Uri', # required
    #       format: 'TSV' # required - accepts ["TSV", "CSV", "TMX"]
    #     }, # required
    #     client_token: 'ClientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateParallelDataOutput
    #   resp.data.name #=> String
    #   resp.data.status #=> String, one of ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #   resp.data.latest_update_attempt_status #=> String, one of ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #   resp.data.latest_update_attempt_at #=> Time
    #
    def update_parallel_data(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateParallelDataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateParallelDataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateParallelData
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ConflictException, Errors::InvalidParameterValueException, Errors::InvalidRequestException, Errors::ConcurrentModificationException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateParallelData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateParallelData,
        stubs: @stubs,
        params_class: Params::UpdateParallelDataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_parallel_data
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
