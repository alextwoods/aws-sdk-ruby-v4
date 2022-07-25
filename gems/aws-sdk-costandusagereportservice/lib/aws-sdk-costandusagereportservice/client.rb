# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::CostAndUsageReportService
  # An API client for AWSOrigamiServiceGatewayService
  # See {#initialize} for a full list of supported configuration options
  # <p>The AWS Cost and Usage Report API enables you to programmatically create, query, and delete
  #         AWS Cost and Usage report definitions.</p>
  #          <p>AWS Cost and Usage reports track the monthly AWS costs and usage
  #    associated with your AWS account.
  #
  #         The report contains line items for each unique combination of AWS product,
  #         usage type, and operation that your AWS account uses.
  #
  #         You can configure the AWS Cost and Usage report to show only the data that you want, using the
  #         AWS Cost and Usage API.</p>
  #
  #          <p>Service Endpoint</p>
  #          <p>The AWS Cost and Usage Report API provides the following endpoint:</p>
  #          <ul>
  #             <li>
  #                <p>cur.us-east-1.amazonaws.com</p>
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
    def initialize(config = AWS::SDK::CostAndUsageReportService::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Deletes the specified report.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteReportDefinitionInput}.
    #
    # @option params [String] :report_name
    #   <p>The name of the report that you want to delete. The name must be unique, is case sensitive, and can't include spaces.</p>
    #
    # @return [Types::DeleteReportDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_report_definition(
    #     report_name: 'ReportName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteReportDefinitionOutput
    #   resp.data.response_message #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalErrorException]),
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

    # <p>Lists the AWS Cost and Usage reports available to this account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReportDefinitionsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that AWS returns for the operation.</p>
    #
    # @option params [String] :next_token
    #   <p>A generic string.</p>
    #
    # @return [Types::DescribeReportDefinitionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_report_definitions(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReportDefinitionsOutput
    #   resp.data.report_definitions #=> Array<ReportDefinition>
    #   resp.data.report_definitions[0] #=> Types::ReportDefinition
    #   resp.data.report_definitions[0].report_name #=> String
    #   resp.data.report_definitions[0].time_unit #=> String, one of ["HOURLY", "DAILY", "MONTHLY"]
    #   resp.data.report_definitions[0].format #=> String, one of ["textORcsv", "Parquet"]
    #   resp.data.report_definitions[0].compression #=> String, one of ["ZIP", "GZIP", "Parquet"]
    #   resp.data.report_definitions[0].additional_schema_elements #=> Array<String>
    #   resp.data.report_definitions[0].additional_schema_elements[0] #=> String, one of ["RESOURCES"]
    #   resp.data.report_definitions[0].s3_bucket #=> String
    #   resp.data.report_definitions[0].s3_prefix #=> String
    #   resp.data.report_definitions[0].s3_region #=> String, one of ["af-south-1", "ap-east-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "eu-west-3", "eu-north-1", "eu-south-1", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2", "cn-north-1", "cn-northwest-1"]
    #   resp.data.report_definitions[0].additional_artifacts #=> Array<String>
    #   resp.data.report_definitions[0].additional_artifacts[0] #=> String, one of ["REDSHIFT", "QUICKSIGHT", "ATHENA"]
    #   resp.data.report_definitions[0].refresh_closed_reports #=> Boolean
    #   resp.data.report_definitions[0].report_versioning #=> String, one of ["CREATE_NEW_REPORT", "OVERWRITE_REPORT"]
    #   resp.data.report_definitions[0].billing_view_arn #=> String
    #   resp.data.next_token #=> String
    #
    def describe_report_definitions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReportDefinitionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReportDefinitionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReportDefinitions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException]),
        data_parser: Parsers::DescribeReportDefinitions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReportDefinitions,
        stubs: @stubs,
        params_class: Params::DescribeReportDefinitionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_report_definitions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows you to programatically update your report preferences.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyReportDefinitionInput}.
    #
    # @option params [String] :report_name
    #   <p>The name of the report that you want to create. The name must be unique,
    #           is case sensitive, and can't include spaces. </p>
    #
    # @option params [ReportDefinition] :report_definition
    #   <p>The definition of AWS Cost and Usage Report. You can specify the report name,
    #            time unit, report format, compression format, S3 bucket, additional artifacts, and schema
    #            elements in the definition.
    #       </p>
    #
    # @return [Types::ModifyReportDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_report_definition(
    #     report_name: 'ReportName', # required
    #     report_definition: {
    #       report_name: 'ReportName', # required
    #       time_unit: 'HOURLY', # required - accepts ["HOURLY", "DAILY", "MONTHLY"]
    #       format: 'textORcsv', # required - accepts ["textORcsv", "Parquet"]
    #       compression: 'ZIP', # required - accepts ["ZIP", "GZIP", "Parquet"]
    #       additional_schema_elements: [
    #         'RESOURCES' # accepts ["RESOURCES"]
    #       ], # required
    #       s3_bucket: 'S3Bucket', # required
    #       s3_prefix: 'S3Prefix', # required
    #       s3_region: 'af-south-1', # required - accepts ["af-south-1", "ap-east-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "eu-west-3", "eu-north-1", "eu-south-1", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2", "cn-north-1", "cn-northwest-1"]
    #       additional_artifacts: [
    #         'REDSHIFT' # accepts ["REDSHIFT", "QUICKSIGHT", "ATHENA"]
    #       ],
    #       refresh_closed_reports: false,
    #       report_versioning: 'CREATE_NEW_REPORT', # accepts ["CREATE_NEW_REPORT", "OVERWRITE_REPORT"]
    #       billing_view_arn: 'BillingViewArn'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyReportDefinitionOutput
    #
    def modify_report_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyReportDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyReportDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyReportDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalErrorException]),
        data_parser: Parsers::ModifyReportDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyReportDefinition,
        stubs: @stubs,
        params_class: Params::ModifyReportDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_report_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new report using the description that you provide.</p>
    #
    # @param [Hash] params
    #   See {Types::PutReportDefinitionInput}.
    #
    # @option params [ReportDefinition] :report_definition
    #   <p>Represents the output of the PutReportDefinition operation. The content consists of the detailed
    #         metadata and data file information. </p>
    #
    # @return [Types::PutReportDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_report_definition(
    #     report_definition: {
    #       report_name: 'ReportName', # required
    #       time_unit: 'HOURLY', # required - accepts ["HOURLY", "DAILY", "MONTHLY"]
    #       format: 'textORcsv', # required - accepts ["textORcsv", "Parquet"]
    #       compression: 'ZIP', # required - accepts ["ZIP", "GZIP", "Parquet"]
    #       additional_schema_elements: [
    #         'RESOURCES' # accepts ["RESOURCES"]
    #       ], # required
    #       s3_bucket: 'S3Bucket', # required
    #       s3_prefix: 'S3Prefix', # required
    #       s3_region: 'af-south-1', # required - accepts ["af-south-1", "ap-east-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "eu-west-3", "eu-north-1", "eu-south-1", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2", "cn-north-1", "cn-northwest-1"]
    #       additional_artifacts: [
    #         'REDSHIFT' # accepts ["REDSHIFT", "QUICKSIGHT", "ATHENA"]
    #       ],
    #       refresh_closed_reports: false,
    #       report_versioning: 'CREATE_NEW_REPORT', # accepts ["CREATE_NEW_REPORT", "OVERWRITE_REPORT"]
    #       billing_view_arn: 'BillingViewArn'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutReportDefinitionOutput
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalErrorException, Errors::ReportLimitReachedException, Errors::DuplicateReportNameException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
