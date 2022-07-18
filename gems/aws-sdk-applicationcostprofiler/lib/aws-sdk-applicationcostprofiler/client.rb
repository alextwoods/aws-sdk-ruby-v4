# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ApplicationCostProfiler
  # An API client for AWSApplicationCostProfiler
  # See {#initialize} for a full list of supported configuration options
  # <p>This reference provides descriptions of the AWS Application Cost Profiler API.</p>
  #          <p>The AWS Application Cost Profiler API provides programmatic access to view, create, update, and delete
  #       application cost report definitions, as well as to import your usage data into the Application Cost Profiler
  #       service.</p>
  #          <p>For more information about using this service, see the <a href="https://docs.aws.amazon.com/application-cost-profiler/latest/userguide/introduction.html">AWS Application Cost
  #         Profiler User Guide</a>.</p>
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
    def initialize(config = AWS::SDK::ApplicationCostProfiler::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Deletes the specified report definition in AWS Application Cost Profiler. This stops the report from being
    #       generated.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteReportDefinitionInput}.
    #
    # @option params [String] :report_id
    #   <p>Required. ID of the report to delete.</p>
    #
    # @return [Types::DeleteReportDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_report_definition(
    #     report_id: 'reportId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteReportDefinitionOutput
    #   resp.data.report_id #=> String
    #
    def delete_report_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteReportDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteReportDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteReportDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteReportDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteReportDefinition,
        stubs: @stubs,
        params_class: Params::DeleteReportDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_report_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the definition of a report already configured in AWS Application Cost Profiler.</p>
    #
    # @param [Hash] params
    #   See {Types::GetReportDefinitionInput}.
    #
    # @option params [String] :report_id
    #   <p>ID of the report to retrieve.</p>
    #
    # @return [Types::GetReportDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_report_definition(
    #     report_id: 'reportId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetReportDefinitionOutput
    #   resp.data.report_id #=> String
    #   resp.data.report_description #=> String
    #   resp.data.report_frequency #=> String, one of ["MONTHLY", "DAILY", "ALL"]
    #   resp.data.format #=> String, one of ["CSV", "PARQUET"]
    #   resp.data.destination_s3_location #=> Types::S3Location
    #   resp.data.destination_s3_location.bucket #=> String
    #   resp.data.destination_s3_location.prefix #=> String
    #   resp.data.created_at #=> Time
    #   resp.data.last_updated #=> Time
    #
    def get_report_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetReportDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetReportDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetReportDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::GetReportDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetReportDefinition,
        stubs: @stubs,
        params_class: Params::GetReportDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_report_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Ingests application usage data from Amazon Simple Storage Service (Amazon S3).</p>
    #          <p>The data must already exist in the S3 location. As part of the action, AWS Application Cost Profiler
    #       copies the object from your S3 bucket to an S3 bucket owned by Amazon for processing
    #       asynchronously.</p>
    #
    # @param [Hash] params
    #   See {Types::ImportApplicationUsageInput}.
    #
    # @option params [SourceS3Location] :source_s3_location
    #   <p>Amazon S3 location to import application usage data from.</p>
    #
    # @return [Types::ImportApplicationUsageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_application_usage(
    #     source_s3_location: {
    #       bucket: 'bucket', # required
    #       key: 'key', # required
    #       region: 'ap-east-1' # accepts ["ap-east-1", "me-south-1", "eu-south-1", "af-south-1"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportApplicationUsageOutput
    #   resp.data.import_id #=> String
    #
    def import_application_usage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportApplicationUsageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportApplicationUsageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportApplicationUsage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ImportApplicationUsage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportApplicationUsage,
        stubs: @stubs,
        params_class: Params::ImportApplicationUsageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_application_usage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of all reports and their configurations for your AWS account.</p>
    #          <p>The maximum number of reports is one.</p>
    #
    # @param [Hash] params
    #   See {Types::ListReportDefinitionsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token value from a previous call to access the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @return [Types::ListReportDefinitionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_report_definitions(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListReportDefinitionsOutput
    #   resp.data.report_definitions #=> Array<ReportDefinition>
    #   resp.data.report_definitions[0] #=> Types::ReportDefinition
    #   resp.data.report_definitions[0].report_id #=> String
    #   resp.data.report_definitions[0].report_description #=> String
    #   resp.data.report_definitions[0].report_frequency #=> String, one of ["MONTHLY", "DAILY", "ALL"]
    #   resp.data.report_definitions[0].format #=> String, one of ["CSV", "PARQUET"]
    #   resp.data.report_definitions[0].destination_s3_location #=> Types::S3Location
    #   resp.data.report_definitions[0].destination_s3_location.bucket #=> String
    #   resp.data.report_definitions[0].destination_s3_location.prefix #=> String
    #   resp.data.report_definitions[0].created_at #=> Time
    #   resp.data.report_definitions[0].last_updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_report_definitions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListReportDefinitionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListReportDefinitionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListReportDefinitions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListReportDefinitions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListReportDefinitions,
        stubs: @stubs,
        params_class: Params::ListReportDefinitionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_report_definitions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates the report definition for a report in Application Cost Profiler.</p>
    #
    # @param [Hash] params
    #   See {Types::PutReportDefinitionInput}.
    #
    # @option params [String] :report_id
    #   <p>Required. ID of the report. You can choose any valid string matching the pattern for the
    #         ID.</p>
    #
    # @option params [String] :report_description
    #   <p>Required. Description of the report.</p>
    #
    # @option params [String] :report_frequency
    #   <p>Required. The cadence to generate the report.</p>
    #
    # @option params [String] :format
    #   <p>Required. The format to use for the generated report.</p>
    #
    # @option params [S3Location] :destination_s3_location
    #   <p>Required. Amazon Simple Storage Service (Amazon S3) location where Application Cost Profiler uploads the
    #         report.</p>
    #
    # @return [Types::PutReportDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_report_definition(
    #     report_id: 'reportId', # required
    #     report_description: 'reportDescription', # required
    #     report_frequency: 'MONTHLY', # required - accepts ["MONTHLY", "DAILY", "ALL"]
    #     format: 'CSV', # required - accepts ["CSV", "PARQUET"]
    #     destination_s3_location: {
    #       bucket: 'bucket', # required
    #       prefix: 'prefix' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutReportDefinitionOutput
    #   resp.data.report_id #=> String
    #
    def put_report_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutReportDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutReportDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutReportDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::PutReportDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutReportDefinition,
        stubs: @stubs,
        params_class: Params::PutReportDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_report_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates existing report in AWS Application Cost Profiler.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateReportDefinitionInput}.
    #
    # @option params [String] :report_id
    #   <p>Required. ID of the report to update.</p>
    #
    # @option params [String] :report_description
    #   <p>Required. Description of the report.</p>
    #
    # @option params [String] :report_frequency
    #   <p>Required. The cadence to generate the report.</p>
    #
    # @option params [String] :format
    #   <p>Required. The format to use for the generated report.</p>
    #
    # @option params [S3Location] :destination_s3_location
    #   <p>Required. Amazon Simple Storage Service (Amazon S3) location where Application Cost Profiler uploads the
    #         report.</p>
    #
    # @return [Types::UpdateReportDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_report_definition(
    #     report_id: 'reportId', # required
    #     report_description: 'reportDescription', # required
    #     report_frequency: 'MONTHLY', # required - accepts ["MONTHLY", "DAILY", "ALL"]
    #     format: 'CSV', # required - accepts ["CSV", "PARQUET"]
    #     destination_s3_location: {
    #       bucket: 'bucket', # required
    #       prefix: 'prefix' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateReportDefinitionOutput
    #   resp.data.report_id #=> String
    #
    def update_report_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateReportDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateReportDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateReportDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::UpdateReportDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateReportDefinition,
        stubs: @stubs,
        params_class: Params::UpdateReportDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_report_definition
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
