# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::HealthLake
  # An API client for HealthLake
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon HealthLake is a HIPAA eligibile service that allows customers to store,
  #          transform, query, and analyze their FHIR-formatted data in a consistent fashion in the cloud.</p>
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
    def initialize(config = AWS::SDK::HealthLake::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a Data Store that can ingest and export FHIR formatted data.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFHIRDatastoreInput}.
    #
    # @option params [String] :datastore_name
    #   <p>The user generated name for the Data Store.</p>
    #
    # @option params [String] :datastore_type_version
    #   <p>The FHIR version of the Data Store. The only supported version is R4.</p>
    #
    # @option params [SseConfiguration] :sse_configuration
    #   <p>
    #               The server-side encryption key configuration for a customer provided encryption key specified for creating a Data Store.
    #            </p>
    #
    # @option params [PreloadDataConfig] :preload_data_config
    #   <p>Optional parameter to preload data upon creation of the Data Store. Currently, the only
    #            supported preloaded data is synthetic data generated from Synthea.</p>
    #
    # @option params [String] :client_token
    #   <p>Optional user provided token used for ensuring idempotency.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>
    #               Resource tags that are applied to a Data Store when it is created.
    #            </p>
    #
    # @return [Types::CreateFHIRDatastoreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fhir_datastore(
    #     datastore_name: 'DatastoreName',
    #     datastore_type_version: 'R4', # required - accepts ["R4"]
    #     sse_configuration: {
    #       kms_encryption_config: {
    #         cmk_type: 'CUSTOMER_MANAGED_KMS_KEY', # required - accepts ["CUSTOMER_MANAGED_KMS_KEY", "AWS_OWNED_KMS_KEY"]
    #         kms_key_id: 'KmsKeyId'
    #       } # required
    #     },
    #     preload_data_config: {
    #       preload_data_type: 'SYNTHEA' # required - accepts ["SYNTHEA"]
    #     },
    #     client_token: 'ClientToken',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFHIRDatastoreOutput
    #   resp.data.datastore_id #=> String
    #   resp.data.datastore_arn #=> String
    #   resp.data.datastore_status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "DELETED"]
    #   resp.data.datastore_endpoint #=> String
    #
    def create_fhir_datastore(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFHIRDatastoreInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFHIRDatastoreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFHIRDatastore
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::CreateFHIRDatastore
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFHIRDatastore,
        stubs: @stubs,
        params_class: Params::CreateFHIRDatastoreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_fhir_datastore
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Data Store. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFHIRDatastoreInput}.
    #
    # @option params [String] :datastore_id
    #   <p> The AWS-generated ID for the Data Store to be deleted.</p>
    #
    # @return [Types::DeleteFHIRDatastoreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fhir_datastore(
    #     datastore_id: 'DatastoreId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFHIRDatastoreOutput
    #   resp.data.datastore_id #=> String
    #   resp.data.datastore_arn #=> String
    #   resp.data.datastore_status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "DELETED"]
    #   resp.data.datastore_endpoint #=> String
    #
    def delete_fhir_datastore(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFHIRDatastoreInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFHIRDatastoreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFHIRDatastore
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ConflictException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteFHIRDatastore
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFHIRDatastore,
        stubs: @stubs,
        params_class: Params::DeleteFHIRDatastoreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_fhir_datastore
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the properties associated with the FHIR Data Store, including the Data Store ID,
    #          Data Store ARN, Data Store name, Data Store status, created at, Data Store type version, and
    #          Data Store endpoint.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFHIRDatastoreInput}.
    #
    # @option params [String] :datastore_id
    #   <p>The AWS-generated Data Store id. This is part of the ‘CreateFHIRDatastore’ output.</p>
    #
    # @return [Types::DescribeFHIRDatastoreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fhir_datastore(
    #     datastore_id: 'DatastoreId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFHIRDatastoreOutput
    #   resp.data.datastore_properties #=> Types::DatastoreProperties
    #   resp.data.datastore_properties.datastore_id #=> String
    #   resp.data.datastore_properties.datastore_arn #=> String
    #   resp.data.datastore_properties.datastore_name #=> String
    #   resp.data.datastore_properties.datastore_status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "DELETED"]
    #   resp.data.datastore_properties.created_at #=> Time
    #   resp.data.datastore_properties.datastore_type_version #=> String, one of ["R4"]
    #   resp.data.datastore_properties.datastore_endpoint #=> String
    #   resp.data.datastore_properties.sse_configuration #=> Types::SseConfiguration
    #   resp.data.datastore_properties.sse_configuration.kms_encryption_config #=> Types::KmsEncryptionConfig
    #   resp.data.datastore_properties.sse_configuration.kms_encryption_config.cmk_type #=> String, one of ["CUSTOMER_MANAGED_KMS_KEY", "AWS_OWNED_KMS_KEY"]
    #   resp.data.datastore_properties.sse_configuration.kms_encryption_config.kms_key_id #=> String
    #   resp.data.datastore_properties.preload_data_config #=> Types::PreloadDataConfig
    #   resp.data.datastore_properties.preload_data_config.preload_data_type #=> String, one of ["SYNTHEA"]
    #
    def describe_fhir_datastore(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFHIRDatastoreInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFHIRDatastoreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFHIRDatastore
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeFHIRDatastore
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFHIRDatastore,
        stubs: @stubs,
        params_class: Params::DescribeFHIRDatastoreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fhir_datastore
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays the properties of a FHIR export job, including the ID, ARN, name, and the status of the job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFHIRExportJobInput}.
    #
    # @option params [String] :datastore_id
    #   <p>The AWS generated ID for the Data Store from which files are being exported from for an export job.</p>
    #
    # @option params [String] :job_id
    #   <p>The AWS generated ID for an export job.</p>
    #
    # @return [Types::DescribeFHIRExportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fhir_export_job(
    #     datastore_id: 'DatastoreId', # required
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFHIRExportJobOutput
    #   resp.data.export_job_properties #=> Types::ExportJobProperties
    #   resp.data.export_job_properties.job_id #=> String
    #   resp.data.export_job_properties.job_name #=> String
    #   resp.data.export_job_properties.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED"]
    #   resp.data.export_job_properties.submit_time #=> Time
    #   resp.data.export_job_properties.end_time #=> Time
    #   resp.data.export_job_properties.datastore_id #=> String
    #   resp.data.export_job_properties.output_data_config #=> Types::OutputDataConfig, one of [S3Configuration]
    #   resp.data.export_job_properties.output_data_config.s3_configuration #=> Types::S3Configuration
    #   resp.data.export_job_properties.output_data_config.s3_configuration.s3_uri #=> String
    #   resp.data.export_job_properties.output_data_config.s3_configuration.kms_key_id #=> String
    #   resp.data.export_job_properties.data_access_role_arn #=> String
    #   resp.data.export_job_properties.message #=> String
    #
    def describe_fhir_export_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFHIRExportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFHIRExportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFHIRExportJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeFHIRExportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFHIRExportJob,
        stubs: @stubs,
        params_class: Params::DescribeFHIRExportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fhir_export_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays the properties of a FHIR import job, including the ID, ARN, name, and the status of the job. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFHIRImportJobInput}.
    #
    # @option params [String] :datastore_id
    #   <p>The AWS-generated ID of the Data Store.</p>
    #
    # @option params [String] :job_id
    #   <p>The AWS-generated job ID.</p>
    #
    # @return [Types::DescribeFHIRImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fhir_import_job(
    #     datastore_id: 'DatastoreId', # required
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFHIRImportJobOutput
    #   resp.data.import_job_properties #=> Types::ImportJobProperties
    #   resp.data.import_job_properties.job_id #=> String
    #   resp.data.import_job_properties.job_name #=> String
    #   resp.data.import_job_properties.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED"]
    #   resp.data.import_job_properties.submit_time #=> Time
    #   resp.data.import_job_properties.end_time #=> Time
    #   resp.data.import_job_properties.datastore_id #=> String
    #   resp.data.import_job_properties.input_data_config #=> Types::InputDataConfig, one of [S3Uri]
    #   resp.data.import_job_properties.input_data_config.s3_uri #=> String
    #   resp.data.import_job_properties.job_output_data_config #=> Types::OutputDataConfig, one of [S3Configuration]
    #   resp.data.import_job_properties.job_output_data_config.s3_configuration #=> Types::S3Configuration
    #   resp.data.import_job_properties.job_output_data_config.s3_configuration.s3_uri #=> String
    #   resp.data.import_job_properties.job_output_data_config.s3_configuration.kms_key_id #=> String
    #   resp.data.import_job_properties.data_access_role_arn #=> String
    #   resp.data.import_job_properties.message #=> String
    #
    def describe_fhir_import_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFHIRImportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFHIRImportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFHIRImportJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeFHIRImportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFHIRImportJob,
        stubs: @stubs,
        params_class: Params::DescribeFHIRImportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fhir_import_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all FHIR Data Stores that are in the user’s account, regardless of Data Store
    #          status.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFHIRDatastoresInput}.
    #
    # @option params [DatastoreFilter] :filter
    #   <p>Lists all filters associated with a FHIR Data Store request.</p>
    #
    # @option params [String] :next_token
    #   <p>Fetches the next page of Data Stores when results are paginated.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of Data Stores returned in a single page of a
    #            ListFHIRDatastoresRequest call.</p>
    #
    # @return [Types::ListFHIRDatastoresOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fhir_datastores(
    #     filter: {
    #       datastore_name: 'DatastoreName',
    #       datastore_status: 'CREATING', # accepts ["CREATING", "ACTIVE", "DELETING", "DELETED"]
    #       created_before: Time.now,
    #       created_after: Time.now
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFHIRDatastoresOutput
    #   resp.data.datastore_properties_list #=> Array<DatastoreProperties>
    #   resp.data.datastore_properties_list[0] #=> Types::DatastoreProperties
    #   resp.data.datastore_properties_list[0].datastore_id #=> String
    #   resp.data.datastore_properties_list[0].datastore_arn #=> String
    #   resp.data.datastore_properties_list[0].datastore_name #=> String
    #   resp.data.datastore_properties_list[0].datastore_status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "DELETED"]
    #   resp.data.datastore_properties_list[0].created_at #=> Time
    #   resp.data.datastore_properties_list[0].datastore_type_version #=> String, one of ["R4"]
    #   resp.data.datastore_properties_list[0].datastore_endpoint #=> String
    #   resp.data.datastore_properties_list[0].sse_configuration #=> Types::SseConfiguration
    #   resp.data.datastore_properties_list[0].sse_configuration.kms_encryption_config #=> Types::KmsEncryptionConfig
    #   resp.data.datastore_properties_list[0].sse_configuration.kms_encryption_config.cmk_type #=> String, one of ["CUSTOMER_MANAGED_KMS_KEY", "AWS_OWNED_KMS_KEY"]
    #   resp.data.datastore_properties_list[0].sse_configuration.kms_encryption_config.kms_key_id #=> String
    #   resp.data.datastore_properties_list[0].preload_data_config #=> Types::PreloadDataConfig
    #   resp.data.datastore_properties_list[0].preload_data_config.preload_data_type #=> String, one of ["SYNTHEA"]
    #   resp.data.next_token #=> String
    #
    def list_fhir_datastores(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFHIRDatastoresInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFHIRDatastoresInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFHIRDatastores
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListFHIRDatastores
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFHIRDatastores,
        stubs: @stubs,
        params_class: Params::ListFHIRDatastoresOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_fhir_datastores
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             Lists all FHIR export jobs associated with an account and their statuses.
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::ListFHIRExportJobsInput}.
    #
    # @option params [String] :datastore_id
    #   <p>
    #               This parameter limits the response to the export job with the specified Data Store ID.
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>
    #               A pagination token used to identify the next page of results to return for a ListFHIRExportJobs query.
    #            </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #               This parameter limits the number of results returned for a ListFHIRExportJobs to a maximum quantity specified by the user.
    #            </p>
    #
    # @option params [String] :job_name
    #   <p>
    #               This parameter limits the response to the export job with the specified job name.
    #            </p>
    #
    # @option params [String] :job_status
    #   <p>
    #               This parameter limits the response to the export jobs with the specified job status.
    #            </p>
    #
    # @option params [Time] :submitted_before
    #   <p>
    #               This parameter limits the response to FHIR export jobs submitted before a user specified date.
    #            </p>
    #
    # @option params [Time] :submitted_after
    #   <p>
    #               This parameter limits the response to FHIR export jobs submitted after a user specified date.
    #            </p>
    #
    # @return [Types::ListFHIRExportJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fhir_export_jobs(
    #     datastore_id: 'DatastoreId', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     job_name: 'JobName',
    #     job_status: 'SUBMITTED', # accepts ["SUBMITTED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED"]
    #     submitted_before: Time.now,
    #     submitted_after: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFHIRExportJobsOutput
    #   resp.data.export_job_properties_list #=> Array<ExportJobProperties>
    #   resp.data.export_job_properties_list[0] #=> Types::ExportJobProperties
    #   resp.data.export_job_properties_list[0].job_id #=> String
    #   resp.data.export_job_properties_list[0].job_name #=> String
    #   resp.data.export_job_properties_list[0].job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED"]
    #   resp.data.export_job_properties_list[0].submit_time #=> Time
    #   resp.data.export_job_properties_list[0].end_time #=> Time
    #   resp.data.export_job_properties_list[0].datastore_id #=> String
    #   resp.data.export_job_properties_list[0].output_data_config #=> Types::OutputDataConfig, one of [S3Configuration]
    #   resp.data.export_job_properties_list[0].output_data_config.s3_configuration #=> Types::S3Configuration
    #   resp.data.export_job_properties_list[0].output_data_config.s3_configuration.s3_uri #=> String
    #   resp.data.export_job_properties_list[0].output_data_config.s3_configuration.kms_key_id #=> String
    #   resp.data.export_job_properties_list[0].data_access_role_arn #=> String
    #   resp.data.export_job_properties_list[0].message #=> String
    #   resp.data.next_token #=> String
    #
    def list_fhir_export_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFHIRExportJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFHIRExportJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFHIRExportJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListFHIRExportJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFHIRExportJobs,
        stubs: @stubs,
        params_class: Params::ListFHIRExportJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_fhir_export_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             Lists all FHIR import jobs associated with an account and their statuses.
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::ListFHIRImportJobsInput}.
    #
    # @option params [String] :datastore_id
    #   <p>
    #               This parameter limits the response to the import job with the specified Data Store ID.
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>
    #               A pagination token used to identify the next page of results to return for a ListFHIRImportJobs query.
    #            </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #               This parameter limits the number of results returned for a ListFHIRImportJobs to a maximum quantity specified by the user.
    #            </p>
    #
    # @option params [String] :job_name
    #   <p>
    #               This parameter limits the response to the import job with the specified job name.
    #            </p>
    #
    # @option params [String] :job_status
    #   <p>
    #               This parameter limits the response to the import job with the specified job status.
    #            </p>
    #
    # @option params [Time] :submitted_before
    #   <p>
    #               This parameter limits the response to FHIR import jobs submitted before a user specified date.
    #            </p>
    #
    # @option params [Time] :submitted_after
    #   <p>
    #               This parameter limits the response to FHIR import jobs submitted after a user specified date.
    #            </p>
    #
    # @return [Types::ListFHIRImportJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fhir_import_jobs(
    #     datastore_id: 'DatastoreId', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     job_name: 'JobName',
    #     job_status: 'SUBMITTED', # accepts ["SUBMITTED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED"]
    #     submitted_before: Time.now,
    #     submitted_after: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFHIRImportJobsOutput
    #   resp.data.import_job_properties_list #=> Array<ImportJobProperties>
    #   resp.data.import_job_properties_list[0] #=> Types::ImportJobProperties
    #   resp.data.import_job_properties_list[0].job_id #=> String
    #   resp.data.import_job_properties_list[0].job_name #=> String
    #   resp.data.import_job_properties_list[0].job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED"]
    #   resp.data.import_job_properties_list[0].submit_time #=> Time
    #   resp.data.import_job_properties_list[0].end_time #=> Time
    #   resp.data.import_job_properties_list[0].datastore_id #=> String
    #   resp.data.import_job_properties_list[0].input_data_config #=> Types::InputDataConfig, one of [S3Uri]
    #   resp.data.import_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.data.import_job_properties_list[0].job_output_data_config #=> Types::OutputDataConfig, one of [S3Configuration]
    #   resp.data.import_job_properties_list[0].job_output_data_config.s3_configuration #=> Types::S3Configuration
    #   resp.data.import_job_properties_list[0].job_output_data_config.s3_configuration.s3_uri #=> String
    #   resp.data.import_job_properties_list[0].job_output_data_config.s3_configuration.kms_key_id #=> String
    #   resp.data.import_job_properties_list[0].data_access_role_arn #=> String
    #   resp.data.import_job_properties_list[0].message #=> String
    #   resp.data.next_token #=> String
    #
    def list_fhir_import_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFHIRImportJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFHIRImportJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFHIRImportJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListFHIRImportJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFHIRImportJobs,
        stubs: @stubs,
        params_class: Params::ListFHIRImportJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_fhir_import_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             Returns a list of all existing tags associated with a Data Store.
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #               The Amazon Resource Name(ARN) of the Data Store for which tags are being added.
    #            </p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>Begins a FHIR export job.</p>
    #
    # @param [Hash] params
    #   See {Types::StartFHIRExportJobInput}.
    #
    # @option params [String] :job_name
    #   <p>The user generated name for an export job.</p>
    #
    # @option params [OutputDataConfig] :output_data_config
    #   <p>The output data configuration that was supplied when the export job was created.</p>
    #
    # @option params [String] :datastore_id
    #   <p>The AWS generated ID for the Data Store from which files are being exported for an export job.</p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name used during the initiation of the job.</p>
    #
    # @option params [String] :client_token
    #   <p>An optional user provided token used for ensuring idempotency.</p>
    #
    # @return [Types::StartFHIRExportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_fhir_export_job(
    #     job_name: 'JobName',
    #     output_data_config: {
    #       # One of:
    #       s3_configuration: {
    #         s3_uri: 'S3Uri', # required
    #         kms_key_id: 'KmsKeyId' # required
    #       }
    #     }, # required
    #     datastore_id: 'DatastoreId', # required
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     client_token: 'ClientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartFHIRExportJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED"]
    #   resp.data.datastore_id #=> String
    #
    def start_fhir_export_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartFHIRExportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartFHIRExportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartFHIRExportJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartFHIRExportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartFHIRExportJob,
        stubs: @stubs,
        params_class: Params::StartFHIRExportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_fhir_export_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Begins a FHIR Import job.</p>
    #
    # @param [Hash] params
    #   See {Types::StartFHIRImportJobInput}.
    #
    # @option params [String] :job_name
    #   <p>The name of the FHIR Import job in the StartFHIRImport job request.</p>
    #
    # @option params [InputDataConfig] :input_data_config
    #   <p>The input properties of the FHIR Import job in the StartFHIRImport job request.</p>
    #
    # @option params [OutputDataConfig] :job_output_data_config
    #   <p>The output data configuration that was supplied when the export job was created.</p>
    #
    # @option params [String] :datastore_id
    #   <p>The AWS-generated Data Store ID.</p>
    #
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) that gives Amazon HealthLake access permission.</p>
    #
    # @option params [String] :client_token
    #   <p>Optional user provided token used for ensuring idempotency.</p>
    #
    # @return [Types::StartFHIRImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_fhir_import_job(
    #     job_name: 'JobName',
    #     input_data_config: {
    #       # One of:
    #       s3_uri: 'S3Uri'
    #     }, # required
    #     job_output_data_config: {
    #       # One of:
    #       s3_configuration: {
    #         s3_uri: 'S3Uri', # required
    #         kms_key_id: 'KmsKeyId' # required
    #       }
    #     }, # required
    #     datastore_id: 'DatastoreId', # required
    #     data_access_role_arn: 'DataAccessRoleArn', # required
    #     client_token: 'ClientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartFHIRImportJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.job_status #=> String, one of ["SUBMITTED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED"]
    #   resp.data.datastore_id #=> String
    #
    def start_fhir_import_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartFHIRImportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartFHIRImportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartFHIRImportJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartFHIRImportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartFHIRImportJob,
        stubs: @stubs,
        params_class: Params::StartFHIRImportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_fhir_import_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             Adds a user specifed key and value tag to a Data Store.
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #               The Amazon Resource Name(ARN)that gives Amazon HealthLake access to the Data Store which tags are being added to.
    #            </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>
    #               The user specified key and value pair tags being added to a Data Store.
    #            </p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceARN', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>
    #             Removes tags from a Data Store.
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #               "The Amazon Resource Name(ARN) of the Data Store for which tags are being removed
    #            </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>
    #               The keys for the tags to be removed from the Healthlake Data Store.
    #            </p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceARN', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ResourceNotFoundException]),
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
