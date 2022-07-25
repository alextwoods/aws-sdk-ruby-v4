# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::KinesisAnalytics
  # An API client for KinesisAnalytics_20150814
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Kinesis Analytics</fullname>
  #         <p>
  #             <b>Overview</b>
  #          </p>
  #         <note>
  #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
  #          </note>
  #         <p>This is the <i>Amazon Kinesis Analytics v1 API Reference</i>.
  #             The Amazon Kinesis Analytics Developer Guide provides additional information.
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
    def initialize(config = AWS::SDK::KinesisAnalytics::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note>
    #         <p>Adds a CloudWatch log stream to monitor application configuration errors. For more
    #             information about using CloudWatch log streams with Amazon Kinesis Analytics
    #             applications, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html">Working with Amazon
    #                 CloudWatch Logs</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::AddApplicationCloudWatchLoggingOptionInput}.
    #
    # @option params [String] :application_name
    #   <p>The Kinesis Analytics application name.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>The version ID of the Kinesis Analytics application.</p>
    #
    # @option params [CloudWatchLoggingOption] :cloud_watch_logging_option
    #   <p>Provides the CloudWatch log stream Amazon Resource Name (ARN) and the IAM role ARN.
    #               Note: To write application messages to CloudWatch, the IAM role that is used must have
    #               the <code>PutLogEvents</code> policy action enabled.</p>
    #
    # @return [Types::AddApplicationCloudWatchLoggingOptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_application_cloud_watch_logging_option(
    #     application_name: 'ApplicationName', # required
    #     current_application_version_id: 1, # required
    #     cloud_watch_logging_option: {
    #       log_stream_arn: 'LogStreamARN', # required
    #       role_arn: 'RoleARN' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddApplicationCloudWatchLoggingOptionOutput
    #
    def add_application_cloud_watch_logging_option(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddApplicationCloudWatchLoggingOptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddApplicationCloudWatchLoggingOptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddApplicationCloudWatchLoggingOption
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::UnsupportedOperationException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AddApplicationCloudWatchLoggingOption
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddApplicationCloudWatchLoggingOption,
        stubs: @stubs,
        params_class: Params::AddApplicationCloudWatchLoggingOptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_application_cloud_watch_logging_option
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note>
    #         <p>
    #             Adds a streaming source to your Amazon Kinesis application.
    #             For conceptual information,
    #             see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>.
    #         </p>
    #         <p>You can add a streaming source either when you create an application or you can use
    #             this operation to add a streaming source after you create an application. For more information, see
    #            <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_CreateApplication.html">CreateApplication</a>.</p>
    #         <p>Any configuration update, including adding a streaming source using this operation,
    #             results in a new version of the application. You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation
    #             to find the current application version.
    #         </p>
    #         <p>This operation requires permissions to perform the
    #             <code>kinesisanalytics:AddApplicationInput</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::AddApplicationInputInput}.
    #
    # @option params [String] :application_name
    #   <p>Name of your existing Amazon Kinesis Analytics application to which you want to add the streaming source.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>Current version of your Amazon Kinesis Analytics application. You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation
    #               to find the current application version.</p>
    #
    # @option params [Input] :input
    #   <p>The <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_Input.html">Input</a> to add.</p>
    #
    # @return [Types::AddApplicationInputOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_application_input(
    #     application_name: 'ApplicationName', # required
    #     current_application_version_id: 1, # required
    #     input: {
    #       name_prefix: 'NamePrefix', # required
    #       input_processing_configuration: {
    #         input_lambda_processor: {
    #           resource_arn: 'ResourceARN', # required
    #           role_arn: 'RoleARN' # required
    #         } # required
    #       },
    #       kinesis_streams_input: {
    #         resource_arn: 'ResourceARN', # required
    #         role_arn: 'RoleARN' # required
    #       },
    #       kinesis_firehose_input: {
    #         resource_arn: 'ResourceARN', # required
    #         role_arn: 'RoleARN' # required
    #       },
    #       input_parallelism: {
    #         count: 1
    #       },
    #       input_schema: {
    #         record_format: {
    #           record_format_type: 'JSON', # required - accepts ["JSON", "CSV"]
    #           mapping_parameters: {
    #             json_mapping_parameters: {
    #               record_row_path: 'RecordRowPath' # required
    #             },
    #             csv_mapping_parameters: {
    #               record_row_delimiter: 'RecordRowDelimiter', # required
    #               record_column_delimiter: 'RecordColumnDelimiter' # required
    #             }
    #           }
    #         }, # required
    #         record_encoding: 'RecordEncoding',
    #         record_columns: [
    #           {
    #             name: 'Name', # required
    #             mapping: 'Mapping',
    #             sql_type: 'SqlType' # required
    #           }
    #         ] # required
    #       } # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddApplicationInputOutput
    #
    def add_application_input(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddApplicationInputInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddApplicationInputInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddApplicationInput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CodeValidationException, Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::UnsupportedOperationException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AddApplicationInput
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddApplicationInput,
        stubs: @stubs,
        params_class: Params::AddApplicationInputOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_application_input
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note>
    #         <p>Adds an <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html">InputProcessingConfiguration</a> to an application. An input processor preprocesses records on the input stream
    #             before the application's SQL code executes. Currently, the only input processor available is
    #             <a href="https://docs.aws.amazon.com/lambda/">AWS Lambda</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::AddApplicationInputProcessingConfigurationInput}.
    #
    # @option params [String] :application_name
    #   <p>Name of the application to which you want to add the input processing configuration.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>Version of the application to which you want to add the input processing configuration. You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a>
    #               operation to get the current application version.  If the version specified is not the current version, the
    #               <code>ConcurrentModificationException</code> is returned.</p>
    #
    # @option params [String] :input_id
    #   <p>The ID of the input configuration to add the input processing configuration to. You
    #               can get a list of the input IDs for an application using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation.</p>
    #
    # @option params [InputProcessingConfiguration] :input_processing_configuration
    #   <p>The <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html">InputProcessingConfiguration</a> to add to the application.</p>
    #
    # @return [Types::AddApplicationInputProcessingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_application_input_processing_configuration(
    #     application_name: 'ApplicationName', # required
    #     current_application_version_id: 1, # required
    #     input_id: 'InputId', # required
    #     input_processing_configuration: {
    #       input_lambda_processor: {
    #         resource_arn: 'ResourceARN', # required
    #         role_arn: 'RoleARN' # required
    #       } # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddApplicationInputProcessingConfigurationOutput
    #
    def add_application_input_processing_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddApplicationInputProcessingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddApplicationInputProcessingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddApplicationInputProcessingConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::UnsupportedOperationException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AddApplicationInputProcessingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddApplicationInputProcessingConfiguration,
        stubs: @stubs,
        params_class: Params::AddApplicationInputProcessingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_application_input_processing_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note>
    #         <p>Adds an external destination to your Amazon Kinesis Analytics application.</p>
    #         <p>If you want Amazon Kinesis Analytics to deliver data from an in-application stream
    #             within your application to an external destination (such as an Amazon Kinesis stream, an
    #             Amazon Kinesis Firehose delivery stream, or an AWS Lambda function), you add the
    #             relevant configuration to your application using this operation. You can configure one
    #             or more outputs for your application. Each output configuration maps an in-application
    #             stream and an external destination.</p>
    #         <p> You can use one of the output configurations to deliver data from your
    #             in-application error stream to an external destination so that you can analyze the
    #             errors. For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html">Understanding Application
    #                 Output (Destination)</a>. </p>
    #         <p> Any configuration update, including adding a streaming source using this
    #             operation, results in a new version of the application. You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to find the current application
    #             version.</p>
    #         <p>For the limits on the number of application inputs and outputs
    #             you can configure, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>.</p>
    #         <p>This operation requires permissions to perform the <code>kinesisanalytics:AddApplicationOutput</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::AddApplicationOutputInput}.
    #
    # @option params [String] :application_name
    #   <p>Name of the application to which you want to add the output configuration.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>Version of the application to which you want to add the output configuration. You
    #               can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get the current
    #               application version. If the version specified is not the current version, the
    #                   <code>ConcurrentModificationException</code> is returned. </p>
    #
    # @option params [Output] :output
    #   <p>An array of objects, each describing one output configuration. In the output
    #               configuration, you specify the name of an in-application stream, a destination (that is,
    #               an Amazon Kinesis stream, an Amazon Kinesis Firehose delivery stream, or an AWS Lambda
    #               function), and record the formation to use when writing to the destination.</p>
    #
    # @return [Types::AddApplicationOutputOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_application_output(
    #     application_name: 'ApplicationName', # required
    #     current_application_version_id: 1, # required
    #     output: {
    #       name: 'Name', # required
    #       kinesis_streams_output: {
    #         resource_arn: 'ResourceARN', # required
    #         role_arn: 'RoleARN' # required
    #       },
    #       kinesis_firehose_output: {
    #         resource_arn: 'ResourceARN', # required
    #         role_arn: 'RoleARN' # required
    #       },
    #       lambda_output: {
    #         resource_arn: 'ResourceARN', # required
    #         role_arn: 'RoleARN' # required
    #       },
    #       destination_schema: {
    #         record_format_type: 'JSON' # required - accepts ["JSON", "CSV"]
    #       } # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddApplicationOutputOutput
    #
    def add_application_output(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddApplicationOutputInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddApplicationOutputInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddApplicationOutput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::UnsupportedOperationException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AddApplicationOutput
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddApplicationOutput,
        stubs: @stubs,
        params_class: Params::AddApplicationOutputOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_application_output
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note>
    #         <p>Adds a reference data source to an existing application.</p>
    #          <p>Amazon Kinesis Analytics reads reference data (that is, an Amazon S3 object) and creates an in-application table within your application. In the request, you provide the source (S3 bucket name and object key name), name of the in-application table to create, and the necessary mapping information that describes how data in Amazon S3 object maps to columns in the resulting in-application table.</p>
    #         <p>
    #             For conceptual information,
    #             see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>.
    #             For the limits on data sources you can add to your application, see
    #             <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>.
    #         </p>
    #         <p>
    #             This operation requires permissions to perform the <code>kinesisanalytics:AddApplicationOutput</code> action.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::AddApplicationReferenceDataSourceInput}.
    #
    # @option params [String] :application_name
    #   <p>Name of an existing application.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>Version of the application for which you are adding the reference data source.
    #               You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get the current application version.
    #               If the version specified is not the current version, the
    #               <code>ConcurrentModificationException</code> is returned.</p>
    #
    # @option params [ReferenceDataSource] :reference_data_source
    #   <p>The reference data source can be an object in your Amazon S3 bucket. Amazon Kinesis Analytics reads the object and copies the data into the in-application table that is created. You provide an S3 bucket, object key name, and the resulting in-application table that is created. You must also provide an IAM role with the necessary permissions that Amazon Kinesis Analytics can assume to read the object from your S3 bucket on your behalf.</p>
    #
    # @return [Types::AddApplicationReferenceDataSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_application_reference_data_source(
    #     application_name: 'ApplicationName', # required
    #     current_application_version_id: 1, # required
    #     reference_data_source: {
    #       table_name: 'TableName', # required
    #       s3_reference_data_source: {
    #         bucket_arn: 'BucketARN', # required
    #         file_key: 'FileKey', # required
    #         reference_role_arn: 'ReferenceRoleARN' # required
    #       },
    #       reference_schema: {
    #         record_format: {
    #           record_format_type: 'JSON', # required - accepts ["JSON", "CSV"]
    #           mapping_parameters: {
    #             json_mapping_parameters: {
    #               record_row_path: 'RecordRowPath' # required
    #             },
    #             csv_mapping_parameters: {
    #               record_row_delimiter: 'RecordRowDelimiter', # required
    #               record_column_delimiter: 'RecordColumnDelimiter' # required
    #             }
    #           }
    #         }, # required
    #         record_encoding: 'RecordEncoding',
    #         record_columns: [
    #           {
    #             name: 'Name', # required
    #             mapping: 'Mapping',
    #             sql_type: 'SqlType' # required
    #           }
    #         ] # required
    #       } # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddApplicationReferenceDataSourceOutput
    #
    def add_application_reference_data_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddApplicationReferenceDataSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddApplicationReferenceDataSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddApplicationReferenceDataSource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::UnsupportedOperationException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AddApplicationReferenceDataSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddApplicationReferenceDataSource,
        stubs: @stubs,
        params_class: Params::AddApplicationReferenceDataSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_application_reference_data_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note>
    #
    #         <p>
    #             Creates an Amazon Kinesis Analytics application.
    #             You can configure each application with one streaming source as input,
    #             application code to process the input, and up to
    #             three destinations where
    #             you want Amazon Kinesis Analytics to write the output data from your application.
    #             For an overview, see
    #             <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works.html">How it Works</a>.
    #         </p>
    #         <p>In the input configuration, you map the streaming source to an in-application stream, which you can think of as a constantly updating table. In the mapping, you must provide a schema for the in-application stream and map each data column in the in-application stream to a
    #             data element in the streaming source.</p>
    #
    #         <p>Your application code is one or more SQL statements that read input data, transform it, and generate output. Your application code can create one or more SQL artifacts like SQL streams or pumps.</p>
    #         <p>In the output configuration, you can configure the application to write data from in-application streams created in your applications to up to three destinations.</p>
    #         <p>
    #             To read data from your source stream or write data to destination streams, Amazon Kinesis Analytics
    #             needs your permissions. You grant these permissions by creating IAM roles. This operation requires permissions to perform the
    #             <code>kinesisanalytics:CreateApplication</code> action.
    #         </p>
    #         <p>
    #             For introductory exercises to create an Amazon Kinesis Analytics application, see
    #             <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/getting-started.html">Getting Started</a>.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::CreateApplicationInput}.
    #
    # @option params [String] :application_name
    #   <p>Name of your Amazon Kinesis Analytics application (for example, <code>sample-app</code>).</p>
    #
    # @option params [String] :application_description
    #   <p>Summary description of the application.</p>
    #
    # @option params [Array<Input>] :inputs
    #   <p>Use this parameter to configure the application input.</p>
    #           <p>You can configure your application to receive input from a single streaming source. In this configuration, you map this streaming source to an in-application stream that is created. Your application code can then query the in-application stream like a table (you can think of it as a constantly updating table).</p>
    #           <p>For the streaming source, you provide its Amazon Resource Name (ARN) and format of
    #               data on the stream (for example, JSON, CSV, etc.). You also must provide an IAM role
    #               that Amazon Kinesis Analytics can assume to read this stream on your behalf.</p>
    #           <p>To create the in-application stream, you need to specify a schema to transform your data into a schematized version used in SQL. In the schema, you provide the necessary mapping of the data elements in the streaming source to record columns in the in-app stream.</p>
    #
    # @option params [Array<Output>] :outputs
    #   <p>You can configure application output to write data from any of the in-application streams to up to three destinations.</p>
    #           <p>These destinations can be Amazon Kinesis streams, Amazon Kinesis Firehose delivery
    #               streams, AWS Lambda destinations, or any combination of the three.</p>
    #           <p>In the configuration, you specify the in-application stream name, the destination stream or Lambda function Amazon Resource Name (ARN), and the format to use when writing data. You must also provide an IAM role that Amazon Kinesis Analytics can assume to write to the
    #               destination stream or Lambda function on your behalf.</p>
    #           <p>In the output configuration, you also provide the output stream or Lambda function ARN. For stream destinations, you provide the format
    #               of data in the stream (for example, JSON, CSV). You also must provide an IAM role that
    #               Amazon Kinesis Analytics can assume to write to the stream or Lambda function on your behalf.</p>
    #
    # @option params [Array<CloudWatchLoggingOption>] :cloud_watch_logging_options
    #   <p>Use this parameter to configure a CloudWatch log stream to monitor application
    #               configuration errors. For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html">Working with Amazon
    #                   CloudWatch Logs</a>.</p>
    #
    # @option params [String] :application_code
    #   <p>One or more SQL statements that read input data, transform it, and generate output.
    #               For example, you can write a SQL statement that reads data from one in-application
    #               stream, generates a running average of the number of advertisement clicks by vendor, and
    #               insert resulting rows in another in-application stream using pumps. For more information
    #               about the typical pattern, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-app-code.html">Application
    #                   Code</a>. </p>
    #
    #           <p>You can provide such series of SQL statements,
    #               where output of one statement can be
    #               used as the input for the next statement. You store
    #               intermediate results by creating in-application streams and pumps.</p>
    #
    #           <p>Note that the application code must create the streams with names
    #               specified in the <code>Outputs</code>. For example,
    #               if your <code>Outputs</code> defines output streams named
    #               <code>ExampleOutputStream1</code> and <code>ExampleOutputStream2</code>,
    #               then your application code must create these streams. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of one or more tags to assign to the application. A tag is a key-value pair that identifies an application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50.
    #           For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html">Using Tagging</a>.</p>
    #
    # @return [Types::CreateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application(
    #     application_name: 'ApplicationName', # required
    #     application_description: 'ApplicationDescription',
    #     inputs: [
    #       {
    #         name_prefix: 'NamePrefix', # required
    #         input_processing_configuration: {
    #           input_lambda_processor: {
    #             resource_arn: 'ResourceARN', # required
    #             role_arn: 'RoleARN' # required
    #           } # required
    #         },
    #         kinesis_streams_input: {
    #           resource_arn: 'ResourceARN', # required
    #           role_arn: 'RoleARN' # required
    #         },
    #         kinesis_firehose_input: {
    #           resource_arn: 'ResourceARN', # required
    #           role_arn: 'RoleARN' # required
    #         },
    #         input_parallelism: {
    #           count: 1
    #         },
    #         input_schema: {
    #           record_format: {
    #             record_format_type: 'JSON', # required - accepts ["JSON", "CSV"]
    #             mapping_parameters: {
    #               json_mapping_parameters: {
    #                 record_row_path: 'RecordRowPath' # required
    #               },
    #               csv_mapping_parameters: {
    #                 record_row_delimiter: 'RecordRowDelimiter', # required
    #                 record_column_delimiter: 'RecordColumnDelimiter' # required
    #               }
    #             }
    #           }, # required
    #           record_encoding: 'RecordEncoding',
    #           record_columns: [
    #             {
    #               name: 'Name', # required
    #               mapping: 'Mapping',
    #               sql_type: 'SqlType' # required
    #             }
    #           ] # required
    #         } # required
    #       }
    #     ],
    #     outputs: [
    #       {
    #         name: 'Name', # required
    #         kinesis_streams_output: {
    #           resource_arn: 'ResourceARN', # required
    #           role_arn: 'RoleARN' # required
    #         },
    #         kinesis_firehose_output: {
    #           resource_arn: 'ResourceARN', # required
    #           role_arn: 'RoleARN' # required
    #         },
    #         lambda_output: {
    #           resource_arn: 'ResourceARN', # required
    #           role_arn: 'RoleARN' # required
    #         },
    #         destination_schema: {
    #           record_format_type: 'JSON' # required - accepts ["JSON", "CSV"]
    #         } # required
    #       }
    #     ],
    #     cloud_watch_logging_options: [
    #       {
    #         log_stream_arn: 'LogStreamARN', # required
    #         role_arn: 'RoleARN' # required
    #       }
    #     ],
    #     application_code: 'ApplicationCode',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApplicationOutput
    #   resp.data.application_summary #=> Types::ApplicationSummary
    #   resp.data.application_summary.application_name #=> String
    #   resp.data.application_summary.application_arn #=> String
    #   resp.data.application_summary.application_status #=> String, one of ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING"]
    #
    def create_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApplicationInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CodeValidationException, Errors::TooManyTagsException, Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::LimitExceededException]),
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

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note>
    #         <p>Deletes the specified application. Amazon Kinesis Analytics halts application execution and deletes the application, including any application artifacts (such as in-application streams, reference table, and application code).</p>
    #
    #         <p>This operation requires permissions to perform the <code>kinesisanalytics:DeleteApplication</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationInput}.
    #
    # @option params [String] :application_name
    #   <p>Name of the Amazon Kinesis Analytics application to delete.</p>
    #
    # @option params [Time] :create_timestamp
    #   <p>
    #               You can use the <code>DescribeApplication</code> operation to get this value.
    #           </p>
    #
    # @return [Types::DeleteApplicationOperationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application(
    #     application_name: 'ApplicationName', # required
    #     create_timestamp: Time.now # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApplicationOperationOutput
    #
    def delete_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::UnsupportedOperationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApplication,
        stubs: @stubs,
        params_class: Params::DeleteApplicationOperationOutput
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

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note>
    #         <p>Deletes a CloudWatch log stream from an application. For more information about
    #             using CloudWatch log streams with Amazon Kinesis Analytics applications, see
    #             <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html">Working with Amazon CloudWatch Logs</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationCloudWatchLoggingOptionInput}.
    #
    # @option params [String] :application_name
    #   <p>The Kinesis Analytics application name.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>The version ID of the Kinesis Analytics application.</p>
    #
    # @option params [String] :cloud_watch_logging_option_id
    #   <p>The <code>CloudWatchLoggingOptionId</code> of the CloudWatch logging option to
    #               delete. You can get the <code>CloudWatchLoggingOptionId</code> by using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation. </p>
    #
    # @return [Types::DeleteApplicationCloudWatchLoggingOptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_cloud_watch_logging_option(
    #     application_name: 'ApplicationName', # required
    #     current_application_version_id: 1, # required
    #     cloud_watch_logging_option_id: 'CloudWatchLoggingOptionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApplicationCloudWatchLoggingOptionOutput
    #
    def delete_application_cloud_watch_logging_option(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApplicationCloudWatchLoggingOptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApplicationCloudWatchLoggingOptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApplicationCloudWatchLoggingOption
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::UnsupportedOperationException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteApplicationCloudWatchLoggingOption
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApplicationCloudWatchLoggingOption,
        stubs: @stubs,
        params_class: Params::DeleteApplicationCloudWatchLoggingOptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_application_cloud_watch_logging_option
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note>
    #         <p>Deletes an <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html">InputProcessingConfiguration</a> from an input.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationInputProcessingConfigurationInput}.
    #
    # @option params [String] :application_name
    #   <p>The Kinesis Analytics application name.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>The version ID of the Kinesis Analytics application.</p>
    #
    # @option params [String] :input_id
    #   <p>The ID of the input configuration from which to delete the input processing
    #               configuration. You can get a list of the input IDs for an application by using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation.</p>
    #
    # @return [Types::DeleteApplicationInputProcessingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_input_processing_configuration(
    #     application_name: 'ApplicationName', # required
    #     current_application_version_id: 1, # required
    #     input_id: 'InputId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApplicationInputProcessingConfigurationOutput
    #
    def delete_application_input_processing_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApplicationInputProcessingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApplicationInputProcessingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApplicationInputProcessingConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::UnsupportedOperationException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteApplicationInputProcessingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApplicationInputProcessingConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteApplicationInputProcessingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_application_input_processing_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note>
    #         <p>Deletes output destination configuration from your application configuration. Amazon Kinesis Analytics will no longer write data from the corresponding in-application stream to the external output destination.</p>
    #         <p>This operation requires permissions to perform the
    #             <code>kinesisanalytics:DeleteApplicationOutput</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationOutputInput}.
    #
    # @option params [String] :application_name
    #   <p>Amazon Kinesis Analytics application name.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>Amazon Kinesis Analytics application version.
    #               You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get the current application version.
    #               If the version specified is not the current version, the
    #               <code>ConcurrentModificationException</code> is returned.
    #           </p>
    #
    # @option params [String] :output_id
    #   <p>The ID of the configuration to delete.
    #               Each output configuration that is added to the application, either when the application is
    #               created or later using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationOutput.html">AddApplicationOutput</a> operation, has a unique ID.
    #               You need to provide the ID to uniquely identify the output configuration that you want to
    #               delete from the application configuration.
    #               You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get the specific
    #               <code>OutputId</code>.
    #           </p>
    #
    # @return [Types::DeleteApplicationOutputOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_output(
    #     application_name: 'ApplicationName', # required
    #     current_application_version_id: 1, # required
    #     output_id: 'OutputId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApplicationOutputOutput
    #
    def delete_application_output(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApplicationOutputInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApplicationOutputInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApplicationOutput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::UnsupportedOperationException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteApplicationOutput
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApplicationOutput,
        stubs: @stubs,
        params_class: Params::DeleteApplicationOutputOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_application_output
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note>
    #         <p>Deletes a reference data source configuration from the specified application configuration.</p>
    #         <p>If the application is running, Amazon Kinesis Analytics immediately removes the in-application table
    #             that you created using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html">AddApplicationReferenceDataSource</a> operation.  </p>
    #
    #         <p>This operation requires permissions to perform the <code>kinesisanalytics.DeleteApplicationReferenceDataSource</code>
    #         action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationReferenceDataSourceInput}.
    #
    # @option params [String] :application_name
    #   <p>Name of an existing application.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>Version of the application.
    #               You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get the current application version.
    #               If the version specified
    #               is not the current version, the <code>ConcurrentModificationException</code> is returned.</p>
    #
    # @option params [String] :reference_id
    #   <p>ID of the reference data source. When you add a reference data source to your
    #               application using the
    #               <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html">AddApplicationReferenceDataSource</a>, Amazon Kinesis Analytics assigns an ID.
    #               You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get the reference ID.
    #           </p>
    #
    # @return [Types::DeleteApplicationReferenceDataSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_reference_data_source(
    #     application_name: 'ApplicationName', # required
    #     current_application_version_id: 1, # required
    #     reference_id: 'ReferenceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApplicationReferenceDataSourceOutput
    #
    def delete_application_reference_data_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApplicationReferenceDataSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApplicationReferenceDataSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApplicationReferenceDataSource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::UnsupportedOperationException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteApplicationReferenceDataSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApplicationReferenceDataSource,
        stubs: @stubs,
        params_class: Params::DeleteApplicationReferenceDataSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_application_reference_data_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note>
    #         <p>Returns information about a specific Amazon Kinesis Analytics application.</p>
    #         <p>If you want to retrieve a list of all applications in your account,
    #             use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_ListApplications.html">ListApplications</a> operation.</p>
    #         <p>This operation requires permissions to perform the <code>kinesisanalytics:DescribeApplication</code>
    #             action. You can use <code>DescribeApplication</code> to get the current application versionId, which you need to call other
    #             operations such as <code>Update</code>.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeApplicationInput}.
    #
    # @option params [String] :application_name
    #   <p>Name of the application.</p>
    #
    # @return [Types::DescribeApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application(
    #     application_name: 'ApplicationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeApplicationOutput
    #   resp.data.application_detail #=> Types::ApplicationDetail
    #   resp.data.application_detail.application_name #=> String
    #   resp.data.application_detail.application_description #=> String
    #   resp.data.application_detail.application_arn #=> String
    #   resp.data.application_detail.application_status #=> String, one of ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING"]
    #   resp.data.application_detail.create_timestamp #=> Time
    #   resp.data.application_detail.last_update_timestamp #=> Time
    #   resp.data.application_detail.input_descriptions #=> Array<InputDescription>
    #   resp.data.application_detail.input_descriptions[0] #=> Types::InputDescription
    #   resp.data.application_detail.input_descriptions[0].input_id #=> String
    #   resp.data.application_detail.input_descriptions[0].name_prefix #=> String
    #   resp.data.application_detail.input_descriptions[0].in_app_stream_names #=> Array<String>
    #   resp.data.application_detail.input_descriptions[0].in_app_stream_names[0] #=> String
    #   resp.data.application_detail.input_descriptions[0].input_processing_configuration_description #=> Types::InputProcessingConfigurationDescription
    #   resp.data.application_detail.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description #=> Types::InputLambdaProcessorDescription
    #   resp.data.application_detail.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.resource_arn #=> String
    #   resp.data.application_detail.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.role_arn #=> String
    #   resp.data.application_detail.input_descriptions[0].kinesis_streams_input_description #=> Types::KinesisStreamsInputDescription
    #   resp.data.application_detail.input_descriptions[0].kinesis_streams_input_description.resource_arn #=> String
    #   resp.data.application_detail.input_descriptions[0].kinesis_streams_input_description.role_arn #=> String
    #   resp.data.application_detail.input_descriptions[0].kinesis_firehose_input_description #=> Types::KinesisFirehoseInputDescription
    #   resp.data.application_detail.input_descriptions[0].kinesis_firehose_input_description.resource_arn #=> String
    #   resp.data.application_detail.input_descriptions[0].kinesis_firehose_input_description.role_arn #=> String
    #   resp.data.application_detail.input_descriptions[0].input_schema #=> Types::SourceSchema
    #   resp.data.application_detail.input_descriptions[0].input_schema.record_format #=> Types::RecordFormat
    #   resp.data.application_detail.input_descriptions[0].input_schema.record_format.record_format_type #=> String, one of ["JSON", "CSV"]
    #   resp.data.application_detail.input_descriptions[0].input_schema.record_format.mapping_parameters #=> Types::MappingParameters
    #   resp.data.application_detail.input_descriptions[0].input_schema.record_format.mapping_parameters.json_mapping_parameters #=> Types::JSONMappingParameters
    #   resp.data.application_detail.input_descriptions[0].input_schema.record_format.mapping_parameters.json_mapping_parameters.record_row_path #=> String
    #   resp.data.application_detail.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters #=> Types::CSVMappingParameters
    #   resp.data.application_detail.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_row_delimiter #=> String
    #   resp.data.application_detail.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_column_delimiter #=> String
    #   resp.data.application_detail.input_descriptions[0].input_schema.record_encoding #=> String
    #   resp.data.application_detail.input_descriptions[0].input_schema.record_columns #=> Array<RecordColumn>
    #   resp.data.application_detail.input_descriptions[0].input_schema.record_columns[0] #=> Types::RecordColumn
    #   resp.data.application_detail.input_descriptions[0].input_schema.record_columns[0].name #=> String
    #   resp.data.application_detail.input_descriptions[0].input_schema.record_columns[0].mapping #=> String
    #   resp.data.application_detail.input_descriptions[0].input_schema.record_columns[0].sql_type #=> String
    #   resp.data.application_detail.input_descriptions[0].input_parallelism #=> Types::InputParallelism
    #   resp.data.application_detail.input_descriptions[0].input_parallelism.count #=> Integer
    #   resp.data.application_detail.input_descriptions[0].input_starting_position_configuration #=> Types::InputStartingPositionConfiguration
    #   resp.data.application_detail.input_descriptions[0].input_starting_position_configuration.input_starting_position #=> String, one of ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #   resp.data.application_detail.output_descriptions #=> Array<OutputDescription>
    #   resp.data.application_detail.output_descriptions[0] #=> Types::OutputDescription
    #   resp.data.application_detail.output_descriptions[0].output_id #=> String
    #   resp.data.application_detail.output_descriptions[0].name #=> String
    #   resp.data.application_detail.output_descriptions[0].kinesis_streams_output_description #=> Types::KinesisStreamsOutputDescription
    #   resp.data.application_detail.output_descriptions[0].kinesis_streams_output_description.resource_arn #=> String
    #   resp.data.application_detail.output_descriptions[0].kinesis_streams_output_description.role_arn #=> String
    #   resp.data.application_detail.output_descriptions[0].kinesis_firehose_output_description #=> Types::KinesisFirehoseOutputDescription
    #   resp.data.application_detail.output_descriptions[0].kinesis_firehose_output_description.resource_arn #=> String
    #   resp.data.application_detail.output_descriptions[0].kinesis_firehose_output_description.role_arn #=> String
    #   resp.data.application_detail.output_descriptions[0].lambda_output_description #=> Types::LambdaOutputDescription
    #   resp.data.application_detail.output_descriptions[0].lambda_output_description.resource_arn #=> String
    #   resp.data.application_detail.output_descriptions[0].lambda_output_description.role_arn #=> String
    #   resp.data.application_detail.output_descriptions[0].destination_schema #=> Types::DestinationSchema
    #   resp.data.application_detail.output_descriptions[0].destination_schema.record_format_type #=> String, one of ["JSON", "CSV"]
    #   resp.data.application_detail.reference_data_source_descriptions #=> Array<ReferenceDataSourceDescription>
    #   resp.data.application_detail.reference_data_source_descriptions[0] #=> Types::ReferenceDataSourceDescription
    #   resp.data.application_detail.reference_data_source_descriptions[0].reference_id #=> String
    #   resp.data.application_detail.reference_data_source_descriptions[0].table_name #=> String
    #   resp.data.application_detail.reference_data_source_descriptions[0].s3_reference_data_source_description #=> Types::S3ReferenceDataSourceDescription
    #   resp.data.application_detail.reference_data_source_descriptions[0].s3_reference_data_source_description.bucket_arn #=> String
    #   resp.data.application_detail.reference_data_source_descriptions[0].s3_reference_data_source_description.file_key #=> String
    #   resp.data.application_detail.reference_data_source_descriptions[0].s3_reference_data_source_description.reference_role_arn #=> String
    #   resp.data.application_detail.reference_data_source_descriptions[0].reference_schema #=> Types::SourceSchema
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions #=> Array<CloudWatchLoggingOptionDescription>
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions[0] #=> Types::CloudWatchLoggingOptionDescription
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions[0].cloud_watch_logging_option_id #=> String
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions[0].log_stream_arn #=> String
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions[0].role_arn #=> String
    #   resp.data.application_detail.application_code #=> String
    #   resp.data.application_detail.application_version_id #=> Integer
    #
    def describe_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeApplication,
        stubs: @stubs,
        params_class: Params::DescribeApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note>
    #         <p>Infers a schema by evaluating sample records on the specified streaming source (Amazon Kinesis stream or Amazon Kinesis Firehose delivery stream) or S3 object. In the response, the operation returns the inferred schema and also the sample records that the operation used to infer the schema.</p>
    #         <p>
    #             You can use the inferred schema when configuring a streaming source
    #             for your application. For conceptual information,
    #             see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>.
    #             Note that when you create an application using the Amazon Kinesis Analytics console,
    #             the console uses this operation to infer a schema and show it in the console user interface.
    #         </p>
    #         <p>
    #             This operation requires permissions to perform the
    #             <code>kinesisanalytics:DiscoverInputSchema</code> action.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::DiscoverInputSchemaInput}.
    #
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the streaming source.</p>
    #
    # @option params [String] :role_arn
    #   <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf.</p>
    #
    # @option params [InputStartingPositionConfiguration] :input_starting_position_configuration
    #   <p>Point at which you want Amazon Kinesis Analytics to start reading records from the specified streaming source discovery purposes.</p>
    #
    # @option params [S3Configuration] :s3_configuration
    #   <p>Specify this parameter to discover a schema from data in an Amazon S3
    #               object.</p>
    #
    # @option params [InputProcessingConfiguration] :input_processing_configuration
    #   <p>The <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html">InputProcessingConfiguration</a> to use to preprocess the records before discovering the schema of the records.</p>
    #
    # @return [Types::DiscoverInputSchemaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.discover_input_schema(
    #     resource_arn: 'ResourceARN',
    #     role_arn: 'RoleARN',
    #     input_starting_position_configuration: {
    #       input_starting_position: 'NOW' # accepts ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #     },
    #     s3_configuration: {
    #       role_arn: 'RoleARN', # required
    #       bucket_arn: 'BucketARN', # required
    #       file_key: 'FileKey' # required
    #     },
    #     input_processing_configuration: {
    #       input_lambda_processor: {
    #         resource_arn: 'ResourceARN', # required
    #         role_arn: 'RoleARN' # required
    #       } # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DiscoverInputSchemaOutput
    #   resp.data.input_schema #=> Types::SourceSchema
    #   resp.data.input_schema.record_format #=> Types::RecordFormat
    #   resp.data.input_schema.record_format.record_format_type #=> String, one of ["JSON", "CSV"]
    #   resp.data.input_schema.record_format.mapping_parameters #=> Types::MappingParameters
    #   resp.data.input_schema.record_format.mapping_parameters.json_mapping_parameters #=> Types::JSONMappingParameters
    #   resp.data.input_schema.record_format.mapping_parameters.json_mapping_parameters.record_row_path #=> String
    #   resp.data.input_schema.record_format.mapping_parameters.csv_mapping_parameters #=> Types::CSVMappingParameters
    #   resp.data.input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_row_delimiter #=> String
    #   resp.data.input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_column_delimiter #=> String
    #   resp.data.input_schema.record_encoding #=> String
    #   resp.data.input_schema.record_columns #=> Array<RecordColumn>
    #   resp.data.input_schema.record_columns[0] #=> Types::RecordColumn
    #   resp.data.input_schema.record_columns[0].name #=> String
    #   resp.data.input_schema.record_columns[0].mapping #=> String
    #   resp.data.input_schema.record_columns[0].sql_type #=> String
    #   resp.data.parsed_input_records #=> Array<Array<String>>
    #   resp.data.parsed_input_records[0] #=> Array<String>
    #   resp.data.parsed_input_records[0][0] #=> String
    #   resp.data.processed_input_records #=> Array<String>
    #   resp.data.processed_input_records[0] #=> String
    #   resp.data.raw_input_records #=> Array<String>
    #   resp.data.raw_input_records[0] #=> String
    #
    def discover_input_schema(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DiscoverInputSchemaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DiscoverInputSchemaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DiscoverInputSchema
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnableToDetectSchemaException, Errors::ServiceUnavailableException, Errors::InvalidArgumentException, Errors::ResourceProvisionedThroughputExceededException]),
        data_parser: Parsers::DiscoverInputSchema
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DiscoverInputSchema,
        stubs: @stubs,
        params_class: Params::DiscoverInputSchemaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :discover_input_schema
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note>
    #         <p>Returns a list of Amazon Kinesis Analytics applications in your account.
    #             For each application, the response includes the application name,
    #             Amazon Resource Name (ARN), and status.
    #
    #             If the response returns the <code>HasMoreApplications</code> value as true,
    #             you can send another request by adding the
    #             <code>ExclusiveStartApplicationName</code> in the request body, and
    #             set the value of this to the last application name from
    #             the previous response.
    #         </p>
    #         <p>If you want detailed information about a specific application, use
    #             <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a>.</p>
    #         <p>This operation requires permissions to perform the
    #             <code>kinesisanalytics:ListApplications</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationsInput}.
    #
    # @option params [Integer] :limit
    #   <p>Maximum number of applications to list.</p>
    #
    # @option params [String] :exclusive_start_application_name
    #   <p>Name of the application to start the list with. When using pagination to retrieve the list, you don't need to specify this parameter in the first request. However, in subsequent requests, you add the last application name from the previous response to get the next page of applications.</p>
    #
    # @return [Types::ListApplicationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications(
    #     limit: 1,
    #     exclusive_start_application_name: 'ExclusiveStartApplicationName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationsOutput
    #   resp.data.application_summaries #=> Array<ApplicationSummary>
    #   resp.data.application_summaries[0] #=> Types::ApplicationSummary
    #   resp.data.application_summaries[0].application_name #=> String
    #   resp.data.application_summaries[0].application_arn #=> String
    #   resp.data.application_summaries[0].application_status #=> String, one of ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING"]
    #   resp.data.has_more_applications #=> Boolean
    #
    def list_applications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApplicationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApplicationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApplications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
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

    # <p>Retrieves the list of key-value tags assigned to the application. For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html">Using Tagging</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the application for which to retrieve tags.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
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

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note>
    #         <p>Starts the specified Amazon Kinesis Analytics application. After creating an application, you must exclusively call this operation to start your application.</p>
    #         <p>After the application starts, it begins consuming the input data, processes it, and writes the output to the configured destination.</p>
    #         <p>
    #             The application status must be <code>READY</code> for you to start an application. You can
    #             get the application status in the console or using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation.</p>
    #         <p>After you start the application, you can stop the application from processing
    #             the input by calling the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_StopApplication.html">StopApplication</a> operation.</p>
    #         <p>This operation requires permissions to perform the
    #             <code>kinesisanalytics:StartApplication</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::StartApplicationInput}.
    #
    # @option params [String] :application_name
    #   <p>Name of the application.</p>
    #
    # @option params [Array<InputConfiguration>] :input_configurations
    #   <p>Identifies the specific input, by ID, that the application starts consuming. Amazon Kinesis Analytics starts reading the streaming source associated with the input. You can also specify where in the streaming source you want Amazon Kinesis Analytics to start reading.</p>
    #
    # @return [Types::StartApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_application(
    #     application_name: 'ApplicationName', # required
    #     input_configurations: [
    #       {
    #         id: 'Id', # required
    #         input_starting_position_configuration: {
    #           input_starting_position: 'NOW' # accepts ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #         } # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartApplicationOutput
    #
    def start_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseException, Errors::InvalidApplicationConfigurationException, Errors::UnsupportedOperationException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
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

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note>
    #         <p>Stops the application from processing input data. You can stop
    #             an application only if it is in the running state.
    #             You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to find the application state.
    #             After the application is stopped,
    #             Amazon Kinesis Analytics stops reading data from the input, the
    #             application stops processing data, and there is no output written to the destination. </p>
    #         <p>This operation requires permissions to perform the
    #             <code>kinesisanalytics:StopApplication</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::StopApplicationInput}.
    #
    # @option params [String] :application_name
    #   <p>Name of the running application to stop.</p>
    #
    # @return [Types::StopApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_application(
    #     application_name: 'ApplicationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopApplicationOutput
    #
    def stop_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopApplicationInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseException, Errors::UnsupportedOperationException, Errors::ResourceNotFoundException]),
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

    # <p>Adds one or more key-value tags to a Kinesis Analytics application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50.
    #       For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html">Using Tagging</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the application to assign the tags.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The key-value tags to assign to the application.</p>
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
    #         value: 'Value'
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyTagsException, Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
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

    # <p>Removes one or more tags from a Kinesis Analytics application. For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html">Using Tagging</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the Kinesis Analytics application from which to remove the tags.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of keys of tags to remove from the specified application.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyTagsException, Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
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

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note>
    #         <p>Updates an existing Amazon Kinesis Analytics application. Using this API,
    #             you can update application code, input configuration, and
    #             output configuration. </p>
    #         <p>Note that Amazon Kinesis Analytics updates the <code>CurrentApplicationVersionId</code>
    #             each time you update your application. </p>
    #         <p>This operation requires permission for the
    #             <code>kinesisanalytics:UpdateApplication</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApplicationInput}.
    #
    # @option params [String] :application_name
    #   <p>Name of the Amazon Kinesis Analytics application to update.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>The current application version ID. You can use the
    #               <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get this value.</p>
    #
    # @option params [ApplicationUpdate] :application_update
    #   <p>Describes application updates.</p>
    #
    # @return [Types::UpdateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application(
    #     application_name: 'ApplicationName', # required
    #     current_application_version_id: 1, # required
    #     application_update: {
    #       input_updates: [
    #         {
    #           input_id: 'InputId', # required
    #           name_prefix_update: 'NamePrefixUpdate',
    #           input_processing_configuration_update: {
    #             input_lambda_processor_update: {
    #               resource_arn_update: 'ResourceARNUpdate',
    #               role_arn_update: 'RoleARNUpdate'
    #             } # required
    #           },
    #           kinesis_streams_input_update: {
    #             resource_arn_update: 'ResourceARNUpdate',
    #             role_arn_update: 'RoleARNUpdate'
    #           },
    #           kinesis_firehose_input_update: {
    #             resource_arn_update: 'ResourceARNUpdate',
    #             role_arn_update: 'RoleARNUpdate'
    #           },
    #           input_schema_update: {
    #             record_format_update: {
    #               record_format_type: 'JSON', # required - accepts ["JSON", "CSV"]
    #               mapping_parameters: {
    #                 json_mapping_parameters: {
    #                   record_row_path: 'RecordRowPath' # required
    #                 },
    #                 csv_mapping_parameters: {
    #                   record_row_delimiter: 'RecordRowDelimiter', # required
    #                   record_column_delimiter: 'RecordColumnDelimiter' # required
    #                 }
    #               }
    #             },
    #             record_encoding_update: 'RecordEncodingUpdate',
    #             record_column_updates: [
    #               {
    #                 name: 'Name', # required
    #                 mapping: 'Mapping',
    #                 sql_type: 'SqlType' # required
    #               }
    #             ]
    #           },
    #           input_parallelism_update: {
    #             count_update: 1
    #           }
    #         }
    #       ],
    #       application_code_update: 'ApplicationCodeUpdate',
    #       output_updates: [
    #         {
    #           output_id: 'OutputId', # required
    #           name_update: 'NameUpdate',
    #           kinesis_streams_output_update: {
    #             resource_arn_update: 'ResourceARNUpdate',
    #             role_arn_update: 'RoleARNUpdate'
    #           },
    #           kinesis_firehose_output_update: {
    #             resource_arn_update: 'ResourceARNUpdate',
    #             role_arn_update: 'RoleARNUpdate'
    #           },
    #           lambda_output_update: {
    #             resource_arn_update: 'ResourceARNUpdate',
    #             role_arn_update: 'RoleARNUpdate'
    #           },
    #           destination_schema_update: {
    #             record_format_type: 'JSON' # required - accepts ["JSON", "CSV"]
    #           }
    #         }
    #       ],
    #       reference_data_source_updates: [
    #         {
    #           reference_id: 'ReferenceId', # required
    #           table_name_update: 'TableNameUpdate',
    #           s3_reference_data_source_update: {
    #             bucket_arn_update: 'BucketARNUpdate',
    #             file_key_update: 'FileKeyUpdate',
    #             reference_role_arn_update: 'ReferenceRoleARNUpdate'
    #           },
    #           reference_schema_update: {
    #             record_encoding: 'RecordEncoding',
    #           }
    #         }
    #       ],
    #       cloud_watch_logging_option_updates: [
    #         {
    #           cloud_watch_logging_option_id: 'CloudWatchLoggingOptionId', # required
    #           log_stream_arn_update: 'LogStreamARNUpdate',
    #           role_arn_update: 'RoleARNUpdate'
    #         }
    #       ]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApplicationOutput
    #
    def update_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApplicationInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CodeValidationException, Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::UnsupportedOperationException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
