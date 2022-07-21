# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::KinesisAnalyticsV2
  # An API client for KinesisAnalytics_20180523
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Kinesis Data Analytics is a fully managed service that you can use to process and analyze streaming data using Java, SQL, or Scala. The service
  #       enables you to quickly author and run Java, SQL, or Scala code against streaming sources to perform time
  #       series analytics, feed real-time dashboards, and create real-time metrics.</p>
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
    def initialize(config = AWS::SDK::KinesisAnalyticsV2::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds an Amazon CloudWatch log stream to monitor application configuration errors.</p>
    #
    # @param [Hash] params
    #   See {Types::AddApplicationCloudWatchLoggingOptionInput}.
    #
    # @option params [String] :application_name
    #   <p>The Kinesis Data Analytics application name.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>The version ID of the Kinesis Data Analytics application. You must provide the
    #           <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>.You can
    #         retrieve the application version ID using <a>DescribeApplication</a>. For better
    #         concurrency support, use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    #
    # @option params [CloudWatchLoggingOption] :cloud_watch_logging_option
    #   <p>Provides the Amazon CloudWatch log stream Amazon Resource Name (ARN). </p>
    #
    # @option params [String] :conditional_token
    #   <p>A value you use to implement strong concurrency for application updates. You must
    #         provide the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You
    #         get the application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the
    #           <code>ConditionalToken</code> parameter instead of
    #         <code>CurrentApplicationVersionId</code>.</p>
    #
    # @return [Types::AddApplicationCloudWatchLoggingOptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_application_cloud_watch_logging_option(
    #     application_name: 'ApplicationName', # required
    #     current_application_version_id: 1,
    #     cloud_watch_logging_option: {
    #       log_stream_arn: 'LogStreamARN' # required
    #     }, # required
    #     conditional_token: 'ConditionalToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddApplicationCloudWatchLoggingOptionOutput
    #   resp.data.application_arn #=> String
    #   resp.data.application_version_id #=> Integer
    #   resp.data.cloud_watch_logging_option_descriptions #=> Array<CloudWatchLoggingOptionDescription>
    #   resp.data.cloud_watch_logging_option_descriptions[0] #=> Types::CloudWatchLoggingOptionDescription
    #   resp.data.cloud_watch_logging_option_descriptions[0].cloud_watch_logging_option_id #=> String
    #   resp.data.cloud_watch_logging_option_descriptions[0].log_stream_arn #=> String
    #   resp.data.cloud_watch_logging_option_descriptions[0].role_arn #=> String
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidApplicationConfigurationException, Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
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

    # <p>
    #       Adds a streaming source to your SQL-based Kinesis Data Analytics application.
    #     </p>
    #          <p>You can add a streaming source when you create an application, or you can use this
    #       operation to add a streaming source after you create an application. For more information, see
    #         <a>CreateApplication</a>.</p>
    #          <p>Any configuration update, including adding a streaming source using this operation,
    #       results in a new version of the application. You can use the <a>DescribeApplication</a> operation
    #       to find the current application version.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::AddApplicationInputInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of your existing application to which you want to add the streaming
    #         source.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>The current version of your application.
    #           You must provide the <code>ApplicationVersionID</code> or the <code>ConditionalToken</code>.You can use the <a>DescribeApplication</a> operation to find the current application version.</p>
    #
    # @option params [Input] :input
    #   <p>The <a>Input</a> to add.</p>
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
    #           resource_arn: 'ResourceARN' # required
    #         } # required
    #       },
    #       kinesis_streams_input: {
    #         resource_arn: 'ResourceARN' # required
    #       },
    #       kinesis_firehose_input: {
    #         resource_arn: 'ResourceARN' # required
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
    #   resp.data.application_arn #=> String
    #   resp.data.application_version_id #=> Integer
    #   resp.data.input_descriptions #=> Array<InputDescription>
    #   resp.data.input_descriptions[0] #=> Types::InputDescription
    #   resp.data.input_descriptions[0].input_id #=> String
    #   resp.data.input_descriptions[0].name_prefix #=> String
    #   resp.data.input_descriptions[0].in_app_stream_names #=> Array<String>
    #   resp.data.input_descriptions[0].in_app_stream_names[0] #=> String
    #   resp.data.input_descriptions[0].input_processing_configuration_description #=> Types::InputProcessingConfigurationDescription
    #   resp.data.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description #=> Types::InputLambdaProcessorDescription
    #   resp.data.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.resource_arn #=> String
    #   resp.data.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.role_arn #=> String
    #   resp.data.input_descriptions[0].kinesis_streams_input_description #=> Types::KinesisStreamsInputDescription
    #   resp.data.input_descriptions[0].kinesis_streams_input_description.resource_arn #=> String
    #   resp.data.input_descriptions[0].kinesis_streams_input_description.role_arn #=> String
    #   resp.data.input_descriptions[0].kinesis_firehose_input_description #=> Types::KinesisFirehoseInputDescription
    #   resp.data.input_descriptions[0].kinesis_firehose_input_description.resource_arn #=> String
    #   resp.data.input_descriptions[0].kinesis_firehose_input_description.role_arn #=> String
    #   resp.data.input_descriptions[0].input_schema #=> Types::SourceSchema
    #   resp.data.input_descriptions[0].input_schema.record_format #=> Types::RecordFormat
    #   resp.data.input_descriptions[0].input_schema.record_format.record_format_type #=> String, one of ["JSON", "CSV"]
    #   resp.data.input_descriptions[0].input_schema.record_format.mapping_parameters #=> Types::MappingParameters
    #   resp.data.input_descriptions[0].input_schema.record_format.mapping_parameters.json_mapping_parameters #=> Types::JSONMappingParameters
    #   resp.data.input_descriptions[0].input_schema.record_format.mapping_parameters.json_mapping_parameters.record_row_path #=> String
    #   resp.data.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters #=> Types::CSVMappingParameters
    #   resp.data.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_row_delimiter #=> String
    #   resp.data.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_column_delimiter #=> String
    #   resp.data.input_descriptions[0].input_schema.record_encoding #=> String
    #   resp.data.input_descriptions[0].input_schema.record_columns #=> Array<RecordColumn>
    #   resp.data.input_descriptions[0].input_schema.record_columns[0] #=> Types::RecordColumn
    #   resp.data.input_descriptions[0].input_schema.record_columns[0].name #=> String
    #   resp.data.input_descriptions[0].input_schema.record_columns[0].mapping #=> String
    #   resp.data.input_descriptions[0].input_schema.record_columns[0].sql_type #=> String
    #   resp.data.input_descriptions[0].input_parallelism #=> Types::InputParallelism
    #   resp.data.input_descriptions[0].input_parallelism.count #=> Integer
    #   resp.data.input_descriptions[0].input_starting_position_configuration #=> Types::InputStartingPositionConfiguration
    #   resp.data.input_descriptions[0].input_starting_position_configuration.input_starting_position #=> String, one of ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CodeValidationException, Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Adds an <a>InputProcessingConfiguration</a> to a SQL-based Kinesis Data Analytics application. An input processor pre-processes records
    #       on the input stream before the
    #       application's SQL code executes. Currently, the only input processor available is <a href="https://docs.aws.amazon.com/lambda/">Amazon Lambda</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::AddApplicationInputProcessingConfigurationInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application to which you want to add the input processing
    #         configuration.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>The version of the application to which you want to add the input processing
    #         configuration. You can use the <a>DescribeApplication</a> operation to get the
    #         current application version. If the version specified is not the current version, the
    #           <code>ConcurrentModificationException</code> is returned.</p>
    #
    # @option params [String] :input_id
    #   <p>The ID of the input configuration to add the input processing configuration to. You
    #         can get a list of the input IDs for an application using the <a>DescribeApplication</a> operation.</p>
    #
    # @option params [InputProcessingConfiguration] :input_processing_configuration
    #   <p>The <a>InputProcessingConfiguration</a> to add to the application.</p>
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
    #         resource_arn: 'ResourceARN' # required
    #       } # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddApplicationInputProcessingConfigurationOutput
    #   resp.data.application_arn #=> String
    #   resp.data.application_version_id #=> Integer
    #   resp.data.input_id #=> String
    #   resp.data.input_processing_configuration_description #=> Types::InputProcessingConfigurationDescription
    #   resp.data.input_processing_configuration_description.input_lambda_processor_description #=> Types::InputLambdaProcessorDescription
    #   resp.data.input_processing_configuration_description.input_lambda_processor_description.resource_arn #=> String
    #   resp.data.input_processing_configuration_description.input_lambda_processor_description.role_arn #=> String
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Adds an external destination to your SQL-based Kinesis Data Analytics application.</p>
    #          <p>If you want Kinesis Data Analytics to deliver data from an in-application stream within
    #       your application to an external destination (such as an Kinesis data stream, a Kinesis Data
    #       Firehose delivery stream, or an Amazon Lambda function), you add the relevant configuration to
    #       your application using this operation. You can configure one or more outputs for your
    #       application. Each output configuration maps an in-application stream and an external
    #       destination.</p>
    #          <p> You can use one of the output configurations to deliver data from your
    #       in-application error stream to an external destination so that you can analyze the
    #       errors.  </p>
    #          <p> Any configuration update, including adding a streaming source using this
    #       operation, results in a new version of the application. You can use the <a>DescribeApplication</a> operation to find the current application
    #       version.</p>
    #
    # @param [Hash] params
    #   See {Types::AddApplicationOutputInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application to which you want to add the output configuration.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>The version of the application to which you want to add the output configuration. You can
    #         use the <a>DescribeApplication</a> operation to get the current application
    #         version. If the version specified is not the current version, the
    #           <code>ConcurrentModificationException</code> is returned. </p>
    #
    # @option params [Output] :output
    #   <p>An array of objects, each describing one output configuration. In the output
    #         configuration, you specify the name of an in-application stream, a destination (that is, a
    #         Kinesis data stream, a Kinesis Data Firehose delivery stream, or an Amazon Lambda function), and
    #         record the formation to use when writing to the destination.</p>
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
    #         resource_arn: 'ResourceARN' # required
    #       },
    #       kinesis_firehose_output: {
    #         resource_arn: 'ResourceARN' # required
    #       },
    #       lambda_output: {
    #         resource_arn: 'ResourceARN' # required
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
    #   resp.data.application_arn #=> String
    #   resp.data.application_version_id #=> Integer
    #   resp.data.output_descriptions #=> Array<OutputDescription>
    #   resp.data.output_descriptions[0] #=> Types::OutputDescription
    #   resp.data.output_descriptions[0].output_id #=> String
    #   resp.data.output_descriptions[0].name #=> String
    #   resp.data.output_descriptions[0].kinesis_streams_output_description #=> Types::KinesisStreamsOutputDescription
    #   resp.data.output_descriptions[0].kinesis_streams_output_description.resource_arn #=> String
    #   resp.data.output_descriptions[0].kinesis_streams_output_description.role_arn #=> String
    #   resp.data.output_descriptions[0].kinesis_firehose_output_description #=> Types::KinesisFirehoseOutputDescription
    #   resp.data.output_descriptions[0].kinesis_firehose_output_description.resource_arn #=> String
    #   resp.data.output_descriptions[0].kinesis_firehose_output_description.role_arn #=> String
    #   resp.data.output_descriptions[0].lambda_output_description #=> Types::LambdaOutputDescription
    #   resp.data.output_descriptions[0].lambda_output_description.resource_arn #=> String
    #   resp.data.output_descriptions[0].lambda_output_description.role_arn #=> String
    #   resp.data.output_descriptions[0].destination_schema #=> Types::DestinationSchema
    #   resp.data.output_descriptions[0].destination_schema.record_format_type #=> String, one of ["JSON", "CSV"]
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Adds a reference data source to an existing SQL-based Kinesis Data Analytics application.</p>
    #          <p>Kinesis Data Analytics reads reference data (that is, an Amazon S3 object) and creates an
    #       in-application table within your application. In the request, you provide the source (S3
    #       bucket name and object key name), name of the in-application table to create, and the
    #       necessary mapping information that describes how data in an Amazon S3 object maps to columns
    #       in the resulting in-application table.</p>
    #
    # @param [Hash] params
    #   See {Types::AddApplicationReferenceDataSourceInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of an existing application.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>The version of the application for which you are adding the reference data source.
    #           You can
    #         use the <a>DescribeApplication</a> operation to get the current application
    #         version. If the version specified is not the current version, the
    #           <code>ConcurrentModificationException</code> is returned.</p>
    #
    # @option params [ReferenceDataSource] :reference_data_source
    #   <p>The reference data source can be an object in your Amazon S3 bucket. Kinesis Data Analytics reads the object and copies the data
    #         into the in-application table that is created. You provide an S3 bucket, object key name, and the resulting
    #         in-application table that is
    #         created. </p>
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
    #         bucket_arn: 'BucketARN',
    #         file_key: 'FileKey'
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
    #   resp.data.application_arn #=> String
    #   resp.data.application_version_id #=> Integer
    #   resp.data.reference_data_source_descriptions #=> Array<ReferenceDataSourceDescription>
    #   resp.data.reference_data_source_descriptions[0] #=> Types::ReferenceDataSourceDescription
    #   resp.data.reference_data_source_descriptions[0].reference_id #=> String
    #   resp.data.reference_data_source_descriptions[0].table_name #=> String
    #   resp.data.reference_data_source_descriptions[0].s3_reference_data_source_description #=> Types::S3ReferenceDataSourceDescription
    #   resp.data.reference_data_source_descriptions[0].s3_reference_data_source_description.bucket_arn #=> String
    #   resp.data.reference_data_source_descriptions[0].s3_reference_data_source_description.file_key #=> String
    #   resp.data.reference_data_source_descriptions[0].s3_reference_data_source_description.reference_role_arn #=> String
    #   resp.data.reference_data_source_descriptions[0].reference_schema #=> Types::SourceSchema
    #   resp.data.reference_data_source_descriptions[0].reference_schema.record_format #=> Types::RecordFormat
    #   resp.data.reference_data_source_descriptions[0].reference_schema.record_format.record_format_type #=> String, one of ["JSON", "CSV"]
    #   resp.data.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters #=> Types::MappingParameters
    #   resp.data.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters.json_mapping_parameters #=> Types::JSONMappingParameters
    #   resp.data.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters.json_mapping_parameters.record_row_path #=> String
    #   resp.data.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters.csv_mapping_parameters #=> Types::CSVMappingParameters
    #   resp.data.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters.csv_mapping_parameters.record_row_delimiter #=> String
    #   resp.data.reference_data_source_descriptions[0].reference_schema.record_format.mapping_parameters.csv_mapping_parameters.record_column_delimiter #=> String
    #   resp.data.reference_data_source_descriptions[0].reference_schema.record_encoding #=> String
    #   resp.data.reference_data_source_descriptions[0].reference_schema.record_columns #=> Array<RecordColumn>
    #   resp.data.reference_data_source_descriptions[0].reference_schema.record_columns[0] #=> Types::RecordColumn
    #   resp.data.reference_data_source_descriptions[0].reference_schema.record_columns[0].name #=> String
    #   resp.data.reference_data_source_descriptions[0].reference_schema.record_columns[0].mapping #=> String
    #   resp.data.reference_data_source_descriptions[0].reference_schema.record_columns[0].sql_type #=> String
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Adds a Virtual Private Cloud (VPC) configuration to the application. Applications can use VPCs to store
    #         and access resources securely.</p>
    #          <p>Note the following about VPC configurations for Kinesis Data Analytics applications:</p>
    #          <ul>
    #             <li>
    #                <p>VPC configurations are not supported for SQL applications.</p>
    #             </li>
    #             <li>
    #                <p>When a VPC is added to a Kinesis Data Analytics application, the application can no longer be accessed from the
    #            Internet directly. To enable Internet access to the application, add an Internet gateway to your VPC.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::AddApplicationVpcConfigurationInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of an existing application.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>The version of the application to which you want to add the VPC configuration. You must
    #         provide the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You
    #         can use the <a>DescribeApplication</a> operation to get the current application
    #         version. If the version specified is not the current version, the
    #           <code>ConcurrentModificationException</code> is returned. For better concurrency support,
    #         use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    #
    # @option params [VpcConfiguration] :vpc_configuration
    #   <p>Description of the VPC to add to the application.</p>
    #
    # @option params [String] :conditional_token
    #   <p>A value you use to implement strong concurrency for application updates. You must
    #         provide the <code>ApplicationVersionID</code> or the <code>ConditionalToken</code>. You get
    #         the application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the
    #           <code>ConditionalToken</code> parameter instead of
    #         <code>CurrentApplicationVersionId</code>.</p>
    #
    # @return [Types::AddApplicationVpcConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_application_vpc_configuration(
    #     application_name: 'ApplicationName', # required
    #     current_application_version_id: 1,
    #     vpc_configuration: {
    #       subnet_ids: [
    #         'member'
    #       ], # required
    #       security_group_ids: [
    #         'member'
    #       ] # required
    #     }, # required
    #     conditional_token: 'ConditionalToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddApplicationVpcConfigurationOutput
    #   resp.data.application_arn #=> String
    #   resp.data.application_version_id #=> Integer
    #   resp.data.vpc_configuration_description #=> Types::VpcConfigurationDescription
    #   resp.data.vpc_configuration_description.vpc_configuration_id #=> String
    #   resp.data.vpc_configuration_description.vpc_id #=> String
    #   resp.data.vpc_configuration_description.subnet_ids #=> Array<String>
    #   resp.data.vpc_configuration_description.subnet_ids[0] #=> String
    #   resp.data.vpc_configuration_description.security_group_ids #=> Array<String>
    #   resp.data.vpc_configuration_description.security_group_ids[0] #=> String
    #
    def add_application_vpc_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddApplicationVpcConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddApplicationVpcConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddApplicationVpcConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidApplicationConfigurationException, Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AddApplicationVpcConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddApplicationVpcConfiguration,
        stubs: @stubs,
        params_class: Params::AddApplicationVpcConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_application_vpc_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Kinesis Data Analytics application. For information about creating a
    #           Kinesis Data Analytics application, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/getting-started.html">Creating an
    #         Application</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApplicationInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of your application (for example, <code>sample-app</code>).</p>
    #
    # @option params [String] :application_description
    #   <p>A summary description of the application.</p>
    #
    # @option params [String] :runtime_environment
    #   <p>The runtime environment for the application (<code>SQL-1_0</code>, <code>FLINK-1_6</code>, <code>FLINK-1_8</code>, or <code>FLINK-1_11</code>).</p>
    #
    # @option params [String] :service_execution_role
    #   <p>The IAM role used by the application to access Kinesis data streams, Kinesis Data Firehose
    #         delivery streams, Amazon S3 objects, and other external resources.</p>
    #
    # @option params [ApplicationConfiguration] :application_configuration
    #   <p>Use this parameter to configure the application.</p>
    #
    # @option params [Array<CloudWatchLoggingOption>] :cloud_watch_logging_options
    #   <p>Use this parameter to configure an Amazon CloudWatch log stream to monitor application
    #         configuration errors.
    #         </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of one or more tags to assign to the application. A tag is a key-value pair that identifies an
    #           application. Note that the maximum number of application tags includes system tags. The maximum number of
    #           user-defined application tags is 50.
    #           For more information, see
    #           <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html">Using Tagging</a>.</p>
    #
    # @option params [String] :application_mode
    #   <p>Use the <code>STREAMING</code> mode to create a Kinesis Data Analytics Studio notebook. To create a Kinesis Data Analytics Studio notebook, use the
    #       <code>INTERACTIVE</code> mode.</p>
    #
    # @return [Types::CreateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application(
    #     application_name: 'ApplicationName', # required
    #     application_description: 'ApplicationDescription',
    #     runtime_environment: 'SQL-1_0', # required - accepts ["SQL-1_0", "FLINK-1_6", "FLINK-1_8", "ZEPPELIN-FLINK-1_0", "FLINK-1_11", "FLINK-1_13", "ZEPPELIN-FLINK-2_0"]
    #     service_execution_role: 'ServiceExecutionRole', # required
    #     application_configuration: {
    #       sql_application_configuration: {
    #         inputs: [
    #           {
    #             name_prefix: 'NamePrefix', # required
    #             input_processing_configuration: {
    #               input_lambda_processor: {
    #                 resource_arn: 'ResourceARN' # required
    #               } # required
    #             },
    #             kinesis_streams_input: {
    #               resource_arn: 'ResourceARN' # required
    #             },
    #             kinesis_firehose_input: {
    #               resource_arn: 'ResourceARN' # required
    #             },
    #             input_parallelism: {
    #               count: 1
    #             },
    #             input_schema: {
    #               record_format: {
    #                 record_format_type: 'JSON', # required - accepts ["JSON", "CSV"]
    #                 mapping_parameters: {
    #                   json_mapping_parameters: {
    #                     record_row_path: 'RecordRowPath' # required
    #                   },
    #                   csv_mapping_parameters: {
    #                     record_row_delimiter: 'RecordRowDelimiter', # required
    #                     record_column_delimiter: 'RecordColumnDelimiter' # required
    #                   }
    #                 }
    #               }, # required
    #               record_encoding: 'RecordEncoding',
    #               record_columns: [
    #                 {
    #                   name: 'Name', # required
    #                   mapping: 'Mapping',
    #                   sql_type: 'SqlType' # required
    #                 }
    #               ] # required
    #             } # required
    #           }
    #         ],
    #         outputs: [
    #           {
    #             name: 'Name', # required
    #             kinesis_streams_output: {
    #               resource_arn: 'ResourceARN' # required
    #             },
    #             kinesis_firehose_output: {
    #               resource_arn: 'ResourceARN' # required
    #             },
    #             lambda_output: {
    #               resource_arn: 'ResourceARN' # required
    #             },
    #             destination_schema: {
    #               record_format_type: 'JSON' # required - accepts ["JSON", "CSV"]
    #             } # required
    #           }
    #         ],
    #         reference_data_sources: [
    #           {
    #             table_name: 'TableName', # required
    #             s3_reference_data_source: {
    #               bucket_arn: 'BucketARN',
    #               file_key: 'FileKey'
    #             },
    #           }
    #         ]
    #       },
    #       flink_application_configuration: {
    #         checkpoint_configuration: {
    #           configuration_type: 'DEFAULT', # required - accepts ["DEFAULT", "CUSTOM"]
    #           checkpointing_enabled: false,
    #           checkpoint_interval: 1,
    #           min_pause_between_checkpoints: 1
    #         },
    #         monitoring_configuration: {
    #           configuration_type: 'DEFAULT', # required - accepts ["DEFAULT", "CUSTOM"]
    #           metrics_level: 'APPLICATION', # accepts ["APPLICATION", "TASK", "OPERATOR", "PARALLELISM"]
    #           log_level: 'INFO' # accepts ["INFO", "WARN", "ERROR", "DEBUG"]
    #         },
    #         parallelism_configuration: {
    #           configuration_type: 'DEFAULT', # required - accepts ["DEFAULT", "CUSTOM"]
    #           parallelism: 1,
    #           parallelism_per_kpu: 1,
    #           auto_scaling_enabled: false
    #         }
    #       },
    #       environment_properties: {
    #         property_groups: [
    #           {
    #             property_group_id: 'PropertyGroupId', # required
    #             property_map: {
    #               'key' => 'value'
    #             } # required
    #           }
    #         ] # required
    #       },
    #       application_code_configuration: {
    #         code_content: {
    #           text_content: 'TextContent',
    #           zip_file_content: 'ZipFileContent',
    #           s3_content_location: {
    #             bucket_arn: 'BucketARN', # required
    #             file_key: 'FileKey', # required
    #             object_version: 'ObjectVersion'
    #           }
    #         },
    #         code_content_type: 'PLAINTEXT' # required - accepts ["PLAINTEXT", "ZIPFILE"]
    #       },
    #       application_snapshot_configuration: {
    #         snapshots_enabled: false # required
    #       },
    #       vpc_configurations: [
    #         {
    #           subnet_ids: [
    #             'member'
    #           ], # required
    #           security_group_ids: [
    #             'member'
    #           ] # required
    #         }
    #       ],
    #       zeppelin_application_configuration: {
    #         monitoring_configuration: {
    #           log_level: 'INFO' # required - accepts ["INFO", "WARN", "ERROR", "DEBUG"]
    #         },
    #         catalog_configuration: {
    #           glue_data_catalog_configuration: {
    #             database_arn: 'DatabaseARN' # required
    #           } # required
    #         },
    #         deploy_as_application_configuration: {
    #           s3_content_location: {
    #             bucket_arn: 'BucketARN', # required
    #             base_path: 'BasePath'
    #           } # required
    #         },
    #         custom_artifacts_configuration: [
    #           {
    #             artifact_type: 'UDF', # required - accepts ["UDF", "DEPENDENCY_JAR"]
    #             maven_reference: {
    #               group_id: 'GroupId', # required
    #               artifact_id: 'ArtifactId', # required
    #               version: 'Version' # required
    #             }
    #           }
    #         ]
    #       }
    #     },
    #     cloud_watch_logging_options: [
    #       {
    #         log_stream_arn: 'LogStreamARN' # required
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ],
    #     application_mode: 'STREAMING' # accepts ["STREAMING", "INTERACTIVE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApplicationOutput
    #   resp.data.application_detail #=> Types::ApplicationDetail
    #   resp.data.application_detail.application_arn #=> String
    #   resp.data.application_detail.application_description #=> String
    #   resp.data.application_detail.application_name #=> String
    #   resp.data.application_detail.runtime_environment #=> String, one of ["SQL-1_0", "FLINK-1_6", "FLINK-1_8", "ZEPPELIN-FLINK-1_0", "FLINK-1_11", "FLINK-1_13", "ZEPPELIN-FLINK-2_0"]
    #   resp.data.application_detail.service_execution_role #=> String
    #   resp.data.application_detail.application_status #=> String, one of ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING", "ROLLING_BACK", "MAINTENANCE", "ROLLED_BACK"]
    #   resp.data.application_detail.application_version_id #=> Integer
    #   resp.data.application_detail.create_timestamp #=> Time
    #   resp.data.application_detail.last_update_timestamp #=> Time
    #   resp.data.application_detail.application_configuration_description #=> Types::ApplicationConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description #=> Types::SqlApplicationConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions #=> Array<InputDescription>
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0] #=> Types::InputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_id #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].name_prefix #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].in_app_stream_names #=> Array<String>
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].in_app_stream_names[0] #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description #=> Types::InputProcessingConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description #=> Types::InputLambdaProcessorDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description #=> Types::KinesisStreamsInputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description #=> Types::KinesisFirehoseInputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema #=> Types::SourceSchema
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format #=> Types::RecordFormat
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.record_format_type #=> String, one of ["JSON", "CSV"]
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters #=> Types::MappingParameters
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.json_mapping_parameters #=> Types::JSONMappingParameters
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.json_mapping_parameters.record_row_path #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters #=> Types::CSVMappingParameters
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_row_delimiter #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_column_delimiter #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_encoding #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns #=> Array<RecordColumn>
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0] #=> Types::RecordColumn
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].name #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].mapping #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].sql_type #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_parallelism #=> Types::InputParallelism
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_parallelism.count #=> Integer
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_starting_position_configuration #=> Types::InputStartingPositionConfiguration
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_starting_position_configuration.input_starting_position #=> String, one of ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions #=> Array<OutputDescription>
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0] #=> Types::OutputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].output_id #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].name #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description #=> Types::KinesisStreamsOutputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description #=> Types::KinesisFirehoseOutputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description #=> Types::LambdaOutputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].destination_schema #=> Types::DestinationSchema
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].destination_schema.record_format_type #=> String, one of ["JSON", "CSV"]
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions #=> Array<ReferenceDataSourceDescription>
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0] #=> Types::ReferenceDataSourceDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_id #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].table_name #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description #=> Types::S3ReferenceDataSourceDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.bucket_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.file_key #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.reference_role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema #=> Types::SourceSchema
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description #=> Types::ApplicationCodeConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_type #=> String, one of ["PLAINTEXT", "ZIPFILE"]
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description #=> Types::CodeContentDescription
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.text_content #=> String
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.code_md5 #=> String
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.code_size #=> Integer
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description #=> Types::S3ApplicationCodeLocationDescription
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.bucket_arn #=> String
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.file_key #=> String
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.object_version #=> String
    #   resp.data.application_detail.application_configuration_description.run_configuration_description #=> Types::RunConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description #=> Types::ApplicationRestoreConfiguration
    #   resp.data.application_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description.application_restore_type #=> String, one of ["SKIP_RESTORE_FROM_SNAPSHOT", "RESTORE_FROM_LATEST_SNAPSHOT", "RESTORE_FROM_CUSTOM_SNAPSHOT"]
    #   resp.data.application_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description.snapshot_name #=> String
    #   resp.data.application_detail.application_configuration_description.run_configuration_description.flink_run_configuration_description #=> Types::FlinkRunConfiguration
    #   resp.data.application_detail.application_configuration_description.run_configuration_description.flink_run_configuration_description.allow_non_restored_state #=> Boolean
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description #=> Types::FlinkApplicationConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description #=> Types::CheckpointConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.configuration_type #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.checkpointing_enabled #=> Boolean
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.checkpoint_interval #=> Integer
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.min_pause_between_checkpoints #=> Integer
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description #=> Types::MonitoringConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.configuration_type #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.metrics_level #=> String, one of ["APPLICATION", "TASK", "OPERATOR", "PARALLELISM"]
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.log_level #=> String, one of ["INFO", "WARN", "ERROR", "DEBUG"]
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description #=> Types::ParallelismConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.configuration_type #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.parallelism #=> Integer
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.parallelism_per_kpu #=> Integer
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.current_parallelism #=> Integer
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.auto_scaling_enabled #=> Boolean
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.job_plan_description #=> String
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions #=> Types::EnvironmentPropertyDescriptions
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions #=> Array<PropertyGroup>
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0] #=> Types::PropertyGroup
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_group_id #=> String
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_map #=> Hash<String, String>
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_map['key'] #=> String
    #   resp.data.application_detail.application_configuration_description.application_snapshot_configuration_description #=> Types::ApplicationSnapshotConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.application_snapshot_configuration_description.snapshots_enabled #=> Boolean
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions #=> Array<VpcConfigurationDescription>
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0] #=> Types::VpcConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].vpc_configuration_id #=> String
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].vpc_id #=> String
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].subnet_ids #=> Array<String>
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].subnet_ids[0] #=> String
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].security_group_ids #=> Array<String>
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].security_group_ids[0] #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description #=> Types::ZeppelinApplicationConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.monitoring_configuration_description #=> Types::ZeppelinMonitoringConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.monitoring_configuration_description.log_level #=> String, one of ["INFO", "WARN", "ERROR", "DEBUG"]
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.catalog_configuration_description #=> Types::CatalogConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.catalog_configuration_description.glue_data_catalog_configuration_description #=> Types::GlueDataCatalogConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.catalog_configuration_description.glue_data_catalog_configuration_description.database_arn #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.deploy_as_application_configuration_description #=> Types::DeployAsApplicationConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.deploy_as_application_configuration_description.s3_content_location_description #=> Types::S3ContentBaseLocationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.deploy_as_application_configuration_description.s3_content_location_description.bucket_arn #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.deploy_as_application_configuration_description.s3_content_location_description.base_path #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description #=> Array<CustomArtifactConfigurationDescription>
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0] #=> Types::CustomArtifactConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].artifact_type #=> String, one of ["UDF", "DEPENDENCY_JAR"]
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].s3_content_location_description #=> Types::S3ContentLocation
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].s3_content_location_description.bucket_arn #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].s3_content_location_description.file_key #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].s3_content_location_description.object_version #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].maven_reference_description #=> Types::MavenReference
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].maven_reference_description.group_id #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].maven_reference_description.artifact_id #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].maven_reference_description.version #=> String
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions #=> Array<CloudWatchLoggingOptionDescription>
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions[0] #=> Types::CloudWatchLoggingOptionDescription
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions[0].cloud_watch_logging_option_id #=> String
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions[0].log_stream_arn #=> String
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions[0].role_arn #=> String
    #   resp.data.application_detail.application_maintenance_configuration_description #=> Types::ApplicationMaintenanceConfigurationDescription
    #   resp.data.application_detail.application_maintenance_configuration_description.application_maintenance_window_start_time #=> String
    #   resp.data.application_detail.application_maintenance_configuration_description.application_maintenance_window_end_time #=> String
    #   resp.data.application_detail.application_version_updated_from #=> Integer
    #   resp.data.application_detail.application_version_rolled_back_from #=> Integer
    #   resp.data.application_detail.conditional_token #=> String
    #   resp.data.application_detail.application_version_rolled_back_to #=> Integer
    #   resp.data.application_detail.application_mode #=> String, one of ["STREAMING", "INTERACTIVE"]
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationException, Errors::CodeValidationException, Errors::TooManyTagsException, Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::InvalidRequestException, Errors::LimitExceededException]),
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

    # <p>Creates and returns a URL that you can use to connect to
    #             an application's extension. Currently, the only
    #             available extension is the Apache Flink dashboard.</p>
    #         <p>The IAM role or user used to call this API defines the permissions to access the
    #       extension. After the presigned URL is created, no additional permission is required to access
    #       this URL. IAM authorization policies for this API are also enforced for every HTTP request
    #       that attempts to connect to the extension. </p>
    #         <p>You    control the amount of time that the URL will be valid using the <code>SessionExpirationDurationInSeconds</code>
    #         parameter. If you do not provide this parameter, the returned URL is valid for twelve hours.</p>
    #         <note>
    #             <p>The URL that you get from a call to CreateApplicationPresignedUrl must be used within 3 minutes
    #             to be valid.
    #             If you first try to use the URL after the 3-minute limit expires, the service returns an HTTP 403 Forbidden error.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateApplicationPresignedUrlInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application.</p>
    #
    # @option params [String] :url_type
    #   <p>The type of the extension for which to create and return a URL. Currently, the only valid
    #               extension URL type is <code>FLINK_DASHBOARD_URL</code>. </p>
    #
    # @option params [Integer] :session_expiration_duration_in_seconds
    #   <p>The duration in seconds for which the returned URL will be valid.</p>
    #
    # @return [Types::CreateApplicationPresignedUrlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application_presigned_url(
    #     application_name: 'ApplicationName', # required
    #     url_type: 'FLINK_DASHBOARD_URL', # required - accepts ["FLINK_DASHBOARD_URL", "ZEPPELIN_UI_URL"]
    #     session_expiration_duration_in_seconds: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApplicationPresignedUrlOutput
    #   resp.data.authorized_url #=> String
    #
    def create_application_presigned_url(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApplicationPresignedUrlInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateApplicationPresignedUrlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApplicationPresignedUrl
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateApplicationPresignedUrl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApplicationPresignedUrl,
        stubs: @stubs,
        params_class: Params::CreateApplicationPresignedUrlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_application_presigned_url
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a snapshot of the application's state data.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApplicationSnapshotInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of an existing application</p>
    #
    # @option params [String] :snapshot_name
    #   <p>An identifier for the application snapshot.</p>
    #
    # @return [Types::CreateApplicationSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application_snapshot(
    #     application_name: 'ApplicationName', # required
    #     snapshot_name: 'SnapshotName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApplicationSnapshotOutput
    #
    def create_application_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApplicationSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateApplicationSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApplicationSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationException, Errors::InvalidApplicationConfigurationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateApplicationSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApplicationSnapshot,
        stubs: @stubs,
        params_class: Params::CreateApplicationSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_application_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified application. Kinesis Data Analytics halts application execution and deletes the application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application to delete.</p>
    #
    # @option params [Time] :create_timestamp
    #   <p>Use the <code>DescribeApplication</code> operation to get this value.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidApplicationConfigurationException, Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Deletes an Amazon CloudWatch log stream from an Kinesis Data Analytics application. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationCloudWatchLoggingOptionInput}.
    #
    # @option params [String] :application_name
    #   <p>The application name.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>The version ID of the application. You must provide the
    #           <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You can
    #         retrieve the application version ID using <a>DescribeApplication</a>. For better
    #         concurrency support, use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    #
    # @option params [String] :cloud_watch_logging_option_id
    #   <p>The <code>CloudWatchLoggingOptionId</code> of the Amazon CloudWatch logging option to
    #            delete. You can get the <code>CloudWatchLoggingOptionId</code> by using the <a>DescribeApplication</a> operation. </p>
    #
    # @option params [String] :conditional_token
    #   <p>A value you use to implement strong concurrency for application updates. You must provide
    #         the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You get the
    #         application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    #
    # @return [Types::DeleteApplicationCloudWatchLoggingOptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_cloud_watch_logging_option(
    #     application_name: 'ApplicationName', # required
    #     current_application_version_id: 1,
    #     cloud_watch_logging_option_id: 'CloudWatchLoggingOptionId', # required
    #     conditional_token: 'ConditionalToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApplicationCloudWatchLoggingOptionOutput
    #   resp.data.application_arn #=> String
    #   resp.data.application_version_id #=> Integer
    #   resp.data.cloud_watch_logging_option_descriptions #=> Array<CloudWatchLoggingOptionDescription>
    #   resp.data.cloud_watch_logging_option_descriptions[0] #=> Types::CloudWatchLoggingOptionDescription
    #   resp.data.cloud_watch_logging_option_descriptions[0].cloud_watch_logging_option_id #=> String
    #   resp.data.cloud_watch_logging_option_descriptions[0].log_stream_arn #=> String
    #   resp.data.cloud_watch_logging_option_descriptions[0].role_arn #=> String
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidApplicationConfigurationException, Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Deletes an <a>InputProcessingConfiguration</a> from an input.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationInputProcessingConfigurationInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>The application version.
    #         You can use the <a>DescribeApplication</a> operation to get the current application version.
    #         If the version specified is not the current version, the
    #         <code>ConcurrentModificationException</code> is returned.
    #       </p>
    #
    # @option params [String] :input_id
    #   <p>The ID of the input configuration from which to delete the input processing
    #         configuration. You can get a list of the input IDs for an application by using the <a>DescribeApplication</a> operation.</p>
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
    #   resp.data.application_arn #=> String
    #   resp.data.application_version_id #=> Integer
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Deletes the output destination configuration from your SQL-based Kinesis Data Analytics application's configuration.
    #       Kinesis Data Analytics will no longer write data from
    #       the corresponding in-application stream to the external output destination.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationOutputInput}.
    #
    # @option params [String] :application_name
    #   <p>The application name.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>The application version.
    #         You can use the <a>DescribeApplication</a> operation to get the current application version.
    #         If the version specified is not the current version, the
    #         <code>ConcurrentModificationException</code> is returned.
    #       </p>
    #
    # @option params [String] :output_id
    #   <p>The ID of the configuration to delete. Each output configuration that is added to the
    #         application (either when the application is created or later) using the <a>AddApplicationOutput</a> operation has a unique ID. You need to provide the ID to
    #         uniquely identify the output configuration that you want to delete from the application
    #         configuration. You can use the <a>DescribeApplication</a> operation to get the
    #         specific <code>OutputId</code>. </p>
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
    #   resp.data.application_arn #=> String
    #   resp.data.application_version_id #=> Integer
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Deletes a reference data source configuration from the specified SQL-based Kinesis Data Analytics application's configuration.</p>
    #          <p>If the application is running, Kinesis Data Analytics immediately removes the in-application table
    #       that you created using the <a>AddApplicationReferenceDataSource</a> operation.  </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationReferenceDataSourceInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of an existing application.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>The current application version.
    #         You can use the <a>DescribeApplication</a> operation to get the current application version.
    #         If the version specified
    #         is not the current version, the <code>ConcurrentModificationException</code> is returned.</p>
    #
    # @option params [String] :reference_id
    #   <p>The ID of the reference data source. When you add a reference data source to your
    #         application using the <a>AddApplicationReferenceDataSource</a>, Kinesis Data Analytics assigns an ID.
    #         You can use the <a>DescribeApplication</a> operation to
    #         get the reference ID. </p>
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
    #   resp.data.application_arn #=> String
    #   resp.data.application_version_id #=> Integer
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Deletes a snapshot of application state.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationSnapshotInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of an existing application.</p>
    #
    # @option params [String] :snapshot_name
    #   <p>The identifier for the snapshot delete.</p>
    #
    # @option params [Time] :snapshot_creation_timestamp
    #   <p>The creation timestamp of the application snapshot to delete. You can retrieve this value
    #         using
    #         or .</p>
    #
    # @return [Types::DeleteApplicationSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_snapshot(
    #     application_name: 'ApplicationName', # required
    #     snapshot_name: 'SnapshotName', # required
    #     snapshot_creation_timestamp: Time.now # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApplicationSnapshotOutput
    #
    def delete_application_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApplicationSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApplicationSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApplicationSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteApplicationSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApplicationSnapshot,
        stubs: @stubs,
        params_class: Params::DeleteApplicationSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_application_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a VPC configuration from a Kinesis Data Analytics application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationVpcConfigurationInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of an existing application.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>The current application version ID. You must provide the
    #           <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You can
    #         retrieve the application version ID using <a>DescribeApplication</a>. For better
    #         concurrency support, use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    #
    # @option params [String] :vpc_configuration_id
    #   <p>The ID of the VPC configuration to delete.</p>
    #
    # @option params [String] :conditional_token
    #   <p>A value you use to implement strong concurrency for application updates. You must provide
    #         the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You get the
    #         application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    #
    # @return [Types::DeleteApplicationVpcConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_vpc_configuration(
    #     application_name: 'ApplicationName', # required
    #     current_application_version_id: 1,
    #     vpc_configuration_id: 'VpcConfigurationId', # required
    #     conditional_token: 'ConditionalToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApplicationVpcConfigurationOutput
    #   resp.data.application_arn #=> String
    #   resp.data.application_version_id #=> Integer
    #
    def delete_application_vpc_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApplicationVpcConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApplicationVpcConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApplicationVpcConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidApplicationConfigurationException, Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteApplicationVpcConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApplicationVpcConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteApplicationVpcConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_application_vpc_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a specific Kinesis Data Analytics application.</p>
    #          <p>If you want to retrieve a list of all applications in your account,
    #       use the <a>ListApplications</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeApplicationInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application.</p>
    #
    # @option params [Boolean] :include_additional_details
    #   <p>Displays verbose information about a Kinesis Data Analytics application, including the application's job plan.</p>
    #
    # @return [Types::DescribeApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application(
    #     application_name: 'ApplicationName', # required
    #     include_additional_details: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeApplicationOutput
    #   resp.data.application_detail #=> Types::ApplicationDetail
    #   resp.data.application_detail.application_arn #=> String
    #   resp.data.application_detail.application_description #=> String
    #   resp.data.application_detail.application_name #=> String
    #   resp.data.application_detail.runtime_environment #=> String, one of ["SQL-1_0", "FLINK-1_6", "FLINK-1_8", "ZEPPELIN-FLINK-1_0", "FLINK-1_11", "FLINK-1_13", "ZEPPELIN-FLINK-2_0"]
    #   resp.data.application_detail.service_execution_role #=> String
    #   resp.data.application_detail.application_status #=> String, one of ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING", "ROLLING_BACK", "MAINTENANCE", "ROLLED_BACK"]
    #   resp.data.application_detail.application_version_id #=> Integer
    #   resp.data.application_detail.create_timestamp #=> Time
    #   resp.data.application_detail.last_update_timestamp #=> Time
    #   resp.data.application_detail.application_configuration_description #=> Types::ApplicationConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description #=> Types::SqlApplicationConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions #=> Array<InputDescription>
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0] #=> Types::InputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_id #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].name_prefix #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].in_app_stream_names #=> Array<String>
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].in_app_stream_names[0] #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description #=> Types::InputProcessingConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description #=> Types::InputLambdaProcessorDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description #=> Types::KinesisStreamsInputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description #=> Types::KinesisFirehoseInputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema #=> Types::SourceSchema
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format #=> Types::RecordFormat
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.record_format_type #=> String, one of ["JSON", "CSV"]
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters #=> Types::MappingParameters
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.json_mapping_parameters #=> Types::JSONMappingParameters
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.json_mapping_parameters.record_row_path #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters #=> Types::CSVMappingParameters
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_row_delimiter #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_column_delimiter #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_encoding #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns #=> Array<RecordColumn>
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0] #=> Types::RecordColumn
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].name #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].mapping #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].sql_type #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_parallelism #=> Types::InputParallelism
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_parallelism.count #=> Integer
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_starting_position_configuration #=> Types::InputStartingPositionConfiguration
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_starting_position_configuration.input_starting_position #=> String, one of ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions #=> Array<OutputDescription>
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0] #=> Types::OutputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].output_id #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].name #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description #=> Types::KinesisStreamsOutputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description #=> Types::KinesisFirehoseOutputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description #=> Types::LambdaOutputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].destination_schema #=> Types::DestinationSchema
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].destination_schema.record_format_type #=> String, one of ["JSON", "CSV"]
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions #=> Array<ReferenceDataSourceDescription>
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0] #=> Types::ReferenceDataSourceDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_id #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].table_name #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description #=> Types::S3ReferenceDataSourceDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.bucket_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.file_key #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.reference_role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema #=> Types::SourceSchema
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description #=> Types::ApplicationCodeConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_type #=> String, one of ["PLAINTEXT", "ZIPFILE"]
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description #=> Types::CodeContentDescription
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.text_content #=> String
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.code_md5 #=> String
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.code_size #=> Integer
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description #=> Types::S3ApplicationCodeLocationDescription
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.bucket_arn #=> String
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.file_key #=> String
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.object_version #=> String
    #   resp.data.application_detail.application_configuration_description.run_configuration_description #=> Types::RunConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description #=> Types::ApplicationRestoreConfiguration
    #   resp.data.application_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description.application_restore_type #=> String, one of ["SKIP_RESTORE_FROM_SNAPSHOT", "RESTORE_FROM_LATEST_SNAPSHOT", "RESTORE_FROM_CUSTOM_SNAPSHOT"]
    #   resp.data.application_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description.snapshot_name #=> String
    #   resp.data.application_detail.application_configuration_description.run_configuration_description.flink_run_configuration_description #=> Types::FlinkRunConfiguration
    #   resp.data.application_detail.application_configuration_description.run_configuration_description.flink_run_configuration_description.allow_non_restored_state #=> Boolean
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description #=> Types::FlinkApplicationConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description #=> Types::CheckpointConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.configuration_type #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.checkpointing_enabled #=> Boolean
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.checkpoint_interval #=> Integer
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.min_pause_between_checkpoints #=> Integer
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description #=> Types::MonitoringConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.configuration_type #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.metrics_level #=> String, one of ["APPLICATION", "TASK", "OPERATOR", "PARALLELISM"]
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.log_level #=> String, one of ["INFO", "WARN", "ERROR", "DEBUG"]
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description #=> Types::ParallelismConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.configuration_type #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.parallelism #=> Integer
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.parallelism_per_kpu #=> Integer
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.current_parallelism #=> Integer
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.auto_scaling_enabled #=> Boolean
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.job_plan_description #=> String
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions #=> Types::EnvironmentPropertyDescriptions
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions #=> Array<PropertyGroup>
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0] #=> Types::PropertyGroup
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_group_id #=> String
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_map #=> Hash<String, String>
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_map['key'] #=> String
    #   resp.data.application_detail.application_configuration_description.application_snapshot_configuration_description #=> Types::ApplicationSnapshotConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.application_snapshot_configuration_description.snapshots_enabled #=> Boolean
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions #=> Array<VpcConfigurationDescription>
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0] #=> Types::VpcConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].vpc_configuration_id #=> String
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].vpc_id #=> String
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].subnet_ids #=> Array<String>
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].subnet_ids[0] #=> String
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].security_group_ids #=> Array<String>
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].security_group_ids[0] #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description #=> Types::ZeppelinApplicationConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.monitoring_configuration_description #=> Types::ZeppelinMonitoringConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.monitoring_configuration_description.log_level #=> String, one of ["INFO", "WARN", "ERROR", "DEBUG"]
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.catalog_configuration_description #=> Types::CatalogConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.catalog_configuration_description.glue_data_catalog_configuration_description #=> Types::GlueDataCatalogConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.catalog_configuration_description.glue_data_catalog_configuration_description.database_arn #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.deploy_as_application_configuration_description #=> Types::DeployAsApplicationConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.deploy_as_application_configuration_description.s3_content_location_description #=> Types::S3ContentBaseLocationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.deploy_as_application_configuration_description.s3_content_location_description.bucket_arn #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.deploy_as_application_configuration_description.s3_content_location_description.base_path #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description #=> Array<CustomArtifactConfigurationDescription>
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0] #=> Types::CustomArtifactConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].artifact_type #=> String, one of ["UDF", "DEPENDENCY_JAR"]
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].s3_content_location_description #=> Types::S3ContentLocation
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].s3_content_location_description.bucket_arn #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].s3_content_location_description.file_key #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].s3_content_location_description.object_version #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].maven_reference_description #=> Types::MavenReference
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].maven_reference_description.group_id #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].maven_reference_description.artifact_id #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].maven_reference_description.version #=> String
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions #=> Array<CloudWatchLoggingOptionDescription>
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions[0] #=> Types::CloudWatchLoggingOptionDescription
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions[0].cloud_watch_logging_option_id #=> String
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions[0].log_stream_arn #=> String
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions[0].role_arn #=> String
    #   resp.data.application_detail.application_maintenance_configuration_description #=> Types::ApplicationMaintenanceConfigurationDescription
    #   resp.data.application_detail.application_maintenance_configuration_description.application_maintenance_window_start_time #=> String
    #   resp.data.application_detail.application_maintenance_configuration_description.application_maintenance_window_end_time #=> String
    #   resp.data.application_detail.application_version_updated_from #=> Integer
    #   resp.data.application_detail.application_version_rolled_back_from #=> Integer
    #   resp.data.application_detail.conditional_token #=> String
    #   resp.data.application_detail.application_version_rolled_back_to #=> Integer
    #   resp.data.application_detail.application_mode #=> String, one of ["STREAMING", "INTERACTIVE"]
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgumentException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Returns information about a snapshot of application state data.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeApplicationSnapshotInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of an existing application.</p>
    #
    # @option params [String] :snapshot_name
    #   <p>The identifier of an application snapshot. You can retrieve this value using
    #         .</p>
    #
    # @return [Types::DescribeApplicationSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application_snapshot(
    #     application_name: 'ApplicationName', # required
    #     snapshot_name: 'SnapshotName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeApplicationSnapshotOutput
    #   resp.data.snapshot_details #=> Types::SnapshotDetails
    #   resp.data.snapshot_details.snapshot_name #=> String
    #   resp.data.snapshot_details.snapshot_status #=> String, one of ["CREATING", "READY", "DELETING", "FAILED"]
    #   resp.data.snapshot_details.application_version_id #=> Integer
    #   resp.data.snapshot_details.snapshot_creation_timestamp #=> Time
    #
    def describe_application_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeApplicationSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeApplicationSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeApplicationSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeApplicationSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeApplicationSnapshot,
        stubs: @stubs,
        params_class: Params::DescribeApplicationSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_application_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides a detailed description of a specified version of the application. To see a list of all the versions of an application, invoke the <a>ListApplicationVersions</a> operation.</p>
    #          <note>
    #             <p>This operation is supported only for Amazon Kinesis Data Analytics for Apache Flink.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeApplicationVersionInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application for which you want to get the version description.</p>
    #
    # @option params [Integer] :application_version_id
    #   <p>The ID of the application version for which you want to get the description.</p>
    #
    # @return [Types::DescribeApplicationVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application_version(
    #     application_name: 'ApplicationName', # required
    #     application_version_id: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeApplicationVersionOutput
    #   resp.data.application_version_detail #=> Types::ApplicationDetail
    #   resp.data.application_version_detail.application_arn #=> String
    #   resp.data.application_version_detail.application_description #=> String
    #   resp.data.application_version_detail.application_name #=> String
    #   resp.data.application_version_detail.runtime_environment #=> String, one of ["SQL-1_0", "FLINK-1_6", "FLINK-1_8", "ZEPPELIN-FLINK-1_0", "FLINK-1_11", "FLINK-1_13", "ZEPPELIN-FLINK-2_0"]
    #   resp.data.application_version_detail.service_execution_role #=> String
    #   resp.data.application_version_detail.application_status #=> String, one of ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING", "ROLLING_BACK", "MAINTENANCE", "ROLLED_BACK"]
    #   resp.data.application_version_detail.application_version_id #=> Integer
    #   resp.data.application_version_detail.create_timestamp #=> Time
    #   resp.data.application_version_detail.last_update_timestamp #=> Time
    #   resp.data.application_version_detail.application_configuration_description #=> Types::ApplicationConfigurationDescription
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description #=> Types::SqlApplicationConfigurationDescription
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions #=> Array<InputDescription>
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0] #=> Types::InputDescription
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_id #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].name_prefix #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].in_app_stream_names #=> Array<String>
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].in_app_stream_names[0] #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description #=> Types::InputProcessingConfigurationDescription
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description #=> Types::InputLambdaProcessorDescription
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.resource_arn #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.role_arn #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description #=> Types::KinesisStreamsInputDescription
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description.resource_arn #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description.role_arn #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description #=> Types::KinesisFirehoseInputDescription
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description.resource_arn #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description.role_arn #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema #=> Types::SourceSchema
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format #=> Types::RecordFormat
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.record_format_type #=> String, one of ["JSON", "CSV"]
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters #=> Types::MappingParameters
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.json_mapping_parameters #=> Types::JSONMappingParameters
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.json_mapping_parameters.record_row_path #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters #=> Types::CSVMappingParameters
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_row_delimiter #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_column_delimiter #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_encoding #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns #=> Array<RecordColumn>
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0] #=> Types::RecordColumn
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].name #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].mapping #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].sql_type #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_parallelism #=> Types::InputParallelism
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_parallelism.count #=> Integer
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_starting_position_configuration #=> Types::InputStartingPositionConfiguration
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_starting_position_configuration.input_starting_position #=> String, one of ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.output_descriptions #=> Array<OutputDescription>
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0] #=> Types::OutputDescription
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].output_id #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].name #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description #=> Types::KinesisStreamsOutputDescription
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description.resource_arn #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description.role_arn #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description #=> Types::KinesisFirehoseOutputDescription
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description.resource_arn #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description.role_arn #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description #=> Types::LambdaOutputDescription
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description.resource_arn #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description.role_arn #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].destination_schema #=> Types::DestinationSchema
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].destination_schema.record_format_type #=> String, one of ["JSON", "CSV"]
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions #=> Array<ReferenceDataSourceDescription>
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0] #=> Types::ReferenceDataSourceDescription
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_id #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].table_name #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description #=> Types::S3ReferenceDataSourceDescription
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.bucket_arn #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.file_key #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.reference_role_arn #=> String
    #   resp.data.application_version_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema #=> Types::SourceSchema
    #   resp.data.application_version_detail.application_configuration_description.application_code_configuration_description #=> Types::ApplicationCodeConfigurationDescription
    #   resp.data.application_version_detail.application_configuration_description.application_code_configuration_description.code_content_type #=> String, one of ["PLAINTEXT", "ZIPFILE"]
    #   resp.data.application_version_detail.application_configuration_description.application_code_configuration_description.code_content_description #=> Types::CodeContentDescription
    #   resp.data.application_version_detail.application_configuration_description.application_code_configuration_description.code_content_description.text_content #=> String
    #   resp.data.application_version_detail.application_configuration_description.application_code_configuration_description.code_content_description.code_md5 #=> String
    #   resp.data.application_version_detail.application_configuration_description.application_code_configuration_description.code_content_description.code_size #=> Integer
    #   resp.data.application_version_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description #=> Types::S3ApplicationCodeLocationDescription
    #   resp.data.application_version_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.bucket_arn #=> String
    #   resp.data.application_version_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.file_key #=> String
    #   resp.data.application_version_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.object_version #=> String
    #   resp.data.application_version_detail.application_configuration_description.run_configuration_description #=> Types::RunConfigurationDescription
    #   resp.data.application_version_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description #=> Types::ApplicationRestoreConfiguration
    #   resp.data.application_version_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description.application_restore_type #=> String, one of ["SKIP_RESTORE_FROM_SNAPSHOT", "RESTORE_FROM_LATEST_SNAPSHOT", "RESTORE_FROM_CUSTOM_SNAPSHOT"]
    #   resp.data.application_version_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description.snapshot_name #=> String
    #   resp.data.application_version_detail.application_configuration_description.run_configuration_description.flink_run_configuration_description #=> Types::FlinkRunConfiguration
    #   resp.data.application_version_detail.application_configuration_description.run_configuration_description.flink_run_configuration_description.allow_non_restored_state #=> Boolean
    #   resp.data.application_version_detail.application_configuration_description.flink_application_configuration_description #=> Types::FlinkApplicationConfigurationDescription
    #   resp.data.application_version_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description #=> Types::CheckpointConfigurationDescription
    #   resp.data.application_version_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.configuration_type #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.application_version_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.checkpointing_enabled #=> Boolean
    #   resp.data.application_version_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.checkpoint_interval #=> Integer
    #   resp.data.application_version_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.min_pause_between_checkpoints #=> Integer
    #   resp.data.application_version_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description #=> Types::MonitoringConfigurationDescription
    #   resp.data.application_version_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.configuration_type #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.application_version_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.metrics_level #=> String, one of ["APPLICATION", "TASK", "OPERATOR", "PARALLELISM"]
    #   resp.data.application_version_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.log_level #=> String, one of ["INFO", "WARN", "ERROR", "DEBUG"]
    #   resp.data.application_version_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description #=> Types::ParallelismConfigurationDescription
    #   resp.data.application_version_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.configuration_type #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.application_version_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.parallelism #=> Integer
    #   resp.data.application_version_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.parallelism_per_kpu #=> Integer
    #   resp.data.application_version_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.current_parallelism #=> Integer
    #   resp.data.application_version_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.auto_scaling_enabled #=> Boolean
    #   resp.data.application_version_detail.application_configuration_description.flink_application_configuration_description.job_plan_description #=> String
    #   resp.data.application_version_detail.application_configuration_description.environment_property_descriptions #=> Types::EnvironmentPropertyDescriptions
    #   resp.data.application_version_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions #=> Array<PropertyGroup>
    #   resp.data.application_version_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0] #=> Types::PropertyGroup
    #   resp.data.application_version_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_group_id #=> String
    #   resp.data.application_version_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_map #=> Hash<String, String>
    #   resp.data.application_version_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_map['key'] #=> String
    #   resp.data.application_version_detail.application_configuration_description.application_snapshot_configuration_description #=> Types::ApplicationSnapshotConfigurationDescription
    #   resp.data.application_version_detail.application_configuration_description.application_snapshot_configuration_description.snapshots_enabled #=> Boolean
    #   resp.data.application_version_detail.application_configuration_description.vpc_configuration_descriptions #=> Array<VpcConfigurationDescription>
    #   resp.data.application_version_detail.application_configuration_description.vpc_configuration_descriptions[0] #=> Types::VpcConfigurationDescription
    #   resp.data.application_version_detail.application_configuration_description.vpc_configuration_descriptions[0].vpc_configuration_id #=> String
    #   resp.data.application_version_detail.application_configuration_description.vpc_configuration_descriptions[0].vpc_id #=> String
    #   resp.data.application_version_detail.application_configuration_description.vpc_configuration_descriptions[0].subnet_ids #=> Array<String>
    #   resp.data.application_version_detail.application_configuration_description.vpc_configuration_descriptions[0].subnet_ids[0] #=> String
    #   resp.data.application_version_detail.application_configuration_description.vpc_configuration_descriptions[0].security_group_ids #=> Array<String>
    #   resp.data.application_version_detail.application_configuration_description.vpc_configuration_descriptions[0].security_group_ids[0] #=> String
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description #=> Types::ZeppelinApplicationConfigurationDescription
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description.monitoring_configuration_description #=> Types::ZeppelinMonitoringConfigurationDescription
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description.monitoring_configuration_description.log_level #=> String, one of ["INFO", "WARN", "ERROR", "DEBUG"]
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description.catalog_configuration_description #=> Types::CatalogConfigurationDescription
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description.catalog_configuration_description.glue_data_catalog_configuration_description #=> Types::GlueDataCatalogConfigurationDescription
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description.catalog_configuration_description.glue_data_catalog_configuration_description.database_arn #=> String
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description.deploy_as_application_configuration_description #=> Types::DeployAsApplicationConfigurationDescription
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description.deploy_as_application_configuration_description.s3_content_location_description #=> Types::S3ContentBaseLocationDescription
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description.deploy_as_application_configuration_description.s3_content_location_description.bucket_arn #=> String
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description.deploy_as_application_configuration_description.s3_content_location_description.base_path #=> String
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description #=> Array<CustomArtifactConfigurationDescription>
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0] #=> Types::CustomArtifactConfigurationDescription
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].artifact_type #=> String, one of ["UDF", "DEPENDENCY_JAR"]
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].s3_content_location_description #=> Types::S3ContentLocation
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].s3_content_location_description.bucket_arn #=> String
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].s3_content_location_description.file_key #=> String
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].s3_content_location_description.object_version #=> String
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].maven_reference_description #=> Types::MavenReference
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].maven_reference_description.group_id #=> String
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].maven_reference_description.artifact_id #=> String
    #   resp.data.application_version_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].maven_reference_description.version #=> String
    #   resp.data.application_version_detail.cloud_watch_logging_option_descriptions #=> Array<CloudWatchLoggingOptionDescription>
    #   resp.data.application_version_detail.cloud_watch_logging_option_descriptions[0] #=> Types::CloudWatchLoggingOptionDescription
    #   resp.data.application_version_detail.cloud_watch_logging_option_descriptions[0].cloud_watch_logging_option_id #=> String
    #   resp.data.application_version_detail.cloud_watch_logging_option_descriptions[0].log_stream_arn #=> String
    #   resp.data.application_version_detail.cloud_watch_logging_option_descriptions[0].role_arn #=> String
    #   resp.data.application_version_detail.application_maintenance_configuration_description #=> Types::ApplicationMaintenanceConfigurationDescription
    #   resp.data.application_version_detail.application_maintenance_configuration_description.application_maintenance_window_start_time #=> String
    #   resp.data.application_version_detail.application_maintenance_configuration_description.application_maintenance_window_end_time #=> String
    #   resp.data.application_version_detail.application_version_updated_from #=> Integer
    #   resp.data.application_version_detail.application_version_rolled_back_from #=> Integer
    #   resp.data.application_version_detail.conditional_token #=> String
    #   resp.data.application_version_detail.application_version_rolled_back_to #=> Integer
    #   resp.data.application_version_detail.application_mode #=> String, one of ["STREAMING", "INTERACTIVE"]
    #
    def describe_application_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeApplicationVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeApplicationVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeApplicationVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeApplicationVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeApplicationVersion,
        stubs: @stubs,
        params_class: Params::DescribeApplicationVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_application_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Infers a schema for a SQL-based Kinesis Data Analytics application by evaluating
    #       sample records on the specified streaming source (Kinesis data stream or Kinesis Data Firehose
    #       delivery stream) or Amazon S3 object. In the response, the operation returns the inferred
    #       schema and also the sample records that the operation used to infer the schema.</p>
    #          <p> You can use the inferred schema when configuring a streaming source for your application.
    #       When you create an application using the Kinesis Data Analytics console, the console uses this
    #       operation to infer a schema and show it in the console user interface. </p>
    #
    # @param [Hash] params
    #   See {Types::DiscoverInputSchemaInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the streaming source.</p>
    #
    # @option params [String] :service_execution_role
    #   <p>The ARN of the role that is used to access the streaming source.</p>
    #
    # @option params [InputStartingPositionConfiguration] :input_starting_position_configuration
    #   <p>The point at which you want Kinesis Data Analytics to start reading records from the
    #         specified streaming source discovery purposes.</p>
    #
    # @option params [S3Configuration] :s3_configuration
    #   <p>Specify this parameter to discover a schema from data in an Amazon S3
    #         object.</p>
    #
    # @option params [InputProcessingConfiguration] :input_processing_configuration
    #   <p>The <a>InputProcessingConfiguration</a> to use to preprocess the records
    #         before discovering the schema of the records.</p>
    #
    # @return [Types::DiscoverInputSchemaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.discover_input_schema(
    #     resource_arn: 'ResourceARN',
    #     service_execution_role: 'ServiceExecutionRole', # required
    #     input_starting_position_configuration: {
    #       input_starting_position: 'NOW' # accepts ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #     },
    #     s3_configuration: {
    #       bucket_arn: 'BucketARN', # required
    #       file_key: 'FileKey' # required
    #     },
    #     input_processing_configuration: {
    #       input_lambda_processor: {
    #         resource_arn: 'ResourceARN' # required
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::UnsupportedOperationException, Errors::ResourceProvisionedThroughputExceededException, Errors::UnableToDetectSchemaException, Errors::InvalidArgumentException, Errors::InvalidRequestException]),
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

    # <p>Lists information about the current application snapshots.</p>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationSnapshotsInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of an existing application.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of application snapshots to list.</p>
    #
    # @option params [String] :next_token
    #   <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more
    #         output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should
    #         continue from. </p>
    #
    # @return [Types::ListApplicationSnapshotsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_snapshots(
    #     application_name: 'ApplicationName', # required
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationSnapshotsOutput
    #   resp.data.snapshot_summaries #=> Array<SnapshotDetails>
    #   resp.data.snapshot_summaries[0] #=> Types::SnapshotDetails
    #   resp.data.snapshot_summaries[0].snapshot_name #=> String
    #   resp.data.snapshot_summaries[0].snapshot_status #=> String, one of ["CREATING", "READY", "DELETING", "FAILED"]
    #   resp.data.snapshot_summaries[0].application_version_id #=> Integer
    #   resp.data.snapshot_summaries[0].snapshot_creation_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_application_snapshots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApplicationSnapshotsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApplicationSnapshotsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApplicationSnapshots
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationException, Errors::InvalidArgumentException]),
        data_parser: Parsers::ListApplicationSnapshots
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApplicationSnapshots,
        stubs: @stubs,
        params_class: Params::ListApplicationSnapshotsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_application_snapshots
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the versions for the specified application, including versions that were rolled back. The response also includes a summary of the configuration
    #       associated with each version.</p>
    #
    #          <p>To get the complete description of a specific application version, invoke the <a>DescribeApplicationVersion</a> operation.</p>
    #          <note>
    #             <p>This operation is supported only for Amazon Kinesis Data Analytics for Apache Flink.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationVersionsInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application for which you want to list all versions.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of versions to list in this invocation of the operation.</p>
    #
    # @option params [String] :next_token
    #   <p>If a previous invocation of this operation returned a pagination token, pass it into this value to retrieve the next set of results. For more information about pagination, see
    #         <a href="https://docs.aws.amazon.com/cli/latest/userguide/pagination.html">Using the Amazon Command Line Interface's Pagination Options</a>.</p>
    #
    # @return [Types::ListApplicationVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_versions(
    #     application_name: 'ApplicationName', # required
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationVersionsOutput
    #   resp.data.application_version_summaries #=> Array<ApplicationVersionSummary>
    #   resp.data.application_version_summaries[0] #=> Types::ApplicationVersionSummary
    #   resp.data.application_version_summaries[0].application_version_id #=> Integer
    #   resp.data.application_version_summaries[0].application_status #=> String, one of ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING", "ROLLING_BACK", "MAINTENANCE", "ROLLED_BACK"]
    #   resp.data.next_token #=> String
    #
    def list_application_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApplicationVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApplicationVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApplicationVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListApplicationVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApplicationVersions,
        stubs: @stubs,
        params_class: Params::ListApplicationVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_application_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of Kinesis Data Analytics applications in your account. For each
    #       application, the response includes the application name, Amazon Resource Name (ARN), and
    #       status. </p>
    #          <p>If you want detailed information about a specific application, use
    #       <a>DescribeApplication</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationsInput}.
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of applications to list.</p>
    #
    # @option params [String] :next_token
    #   <p>If a previous command returned a pagination token,
    #         pass it into this value to retrieve the next set of results.
    #         For more information about pagination, see
    #         <a href="https://docs.aws.amazon.com/cli/latest/userguide/pagination.html">Using the Amazon Command Line Interface's Pagination Options</a>.</p>
    #
    # @return [Types::ListApplicationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications(
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationsOutput
    #   resp.data.application_summaries #=> Array<ApplicationSummary>
    #   resp.data.application_summaries[0] #=> Types::ApplicationSummary
    #   resp.data.application_summaries[0].application_name #=> String
    #   resp.data.application_summaries[0].application_arn #=> String
    #   resp.data.application_summaries[0].application_status #=> String, one of ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING", "ROLLING_BACK", "MAINTENANCE", "ROLLED_BACK"]
    #   resp.data.application_summaries[0].application_version_id #=> Integer
    #   resp.data.application_summaries[0].runtime_environment #=> String, one of ["SQL-1_0", "FLINK-1_6", "FLINK-1_8", "ZEPPELIN-FLINK-1_0", "FLINK-1_11", "FLINK-1_13", "ZEPPELIN-FLINK-2_0"]
    #   resp.data.application_summaries[0].application_mode #=> String, one of ["STREAMING", "INTERACTIVE"]
    #   resp.data.next_token #=> String
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException]),
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

    # <p>Retrieves the list of key-value tags assigned to the application. For more information, see
    #         <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html">Using Tagging</a>.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
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

    # <p>Reverts the application to the previous running version. You can
    #             roll back an application if you suspect it is stuck in a transient status. </p>
    #         <p>You can roll back an application only if it is in the <code>UPDATING</code>
    #             or <code>AUTOSCALING</code> status.</p>
    #         <p>When you rollback an application, it loads state data from the last successful snapshot.
    #         If the application has no snapshots, Kinesis Data Analytics rejects the rollback request.</p>
    #         <p>This action is not supported for Kinesis Data Analytics for SQL applications.</p>
    #
    # @param [Hash] params
    #   See {Types::RollbackApplicationInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>The current application version ID. You can retrieve the application version ID using
    #               <a>DescribeApplication</a>.</p>
    #
    # @return [Types::RollbackApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rollback_application(
    #     application_name: 'ApplicationName', # required
    #     current_application_version_id: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RollbackApplicationOutput
    #   resp.data.application_detail #=> Types::ApplicationDetail
    #   resp.data.application_detail.application_arn #=> String
    #   resp.data.application_detail.application_description #=> String
    #   resp.data.application_detail.application_name #=> String
    #   resp.data.application_detail.runtime_environment #=> String, one of ["SQL-1_0", "FLINK-1_6", "FLINK-1_8", "ZEPPELIN-FLINK-1_0", "FLINK-1_11", "FLINK-1_13", "ZEPPELIN-FLINK-2_0"]
    #   resp.data.application_detail.service_execution_role #=> String
    #   resp.data.application_detail.application_status #=> String, one of ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING", "ROLLING_BACK", "MAINTENANCE", "ROLLED_BACK"]
    #   resp.data.application_detail.application_version_id #=> Integer
    #   resp.data.application_detail.create_timestamp #=> Time
    #   resp.data.application_detail.last_update_timestamp #=> Time
    #   resp.data.application_detail.application_configuration_description #=> Types::ApplicationConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description #=> Types::SqlApplicationConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions #=> Array<InputDescription>
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0] #=> Types::InputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_id #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].name_prefix #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].in_app_stream_names #=> Array<String>
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].in_app_stream_names[0] #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description #=> Types::InputProcessingConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description #=> Types::InputLambdaProcessorDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description #=> Types::KinesisStreamsInputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description #=> Types::KinesisFirehoseInputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema #=> Types::SourceSchema
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format #=> Types::RecordFormat
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.record_format_type #=> String, one of ["JSON", "CSV"]
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters #=> Types::MappingParameters
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.json_mapping_parameters #=> Types::JSONMappingParameters
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.json_mapping_parameters.record_row_path #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters #=> Types::CSVMappingParameters
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_row_delimiter #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_column_delimiter #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_encoding #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns #=> Array<RecordColumn>
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0] #=> Types::RecordColumn
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].name #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].mapping #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].sql_type #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_parallelism #=> Types::InputParallelism
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_parallelism.count #=> Integer
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_starting_position_configuration #=> Types::InputStartingPositionConfiguration
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_starting_position_configuration.input_starting_position #=> String, one of ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions #=> Array<OutputDescription>
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0] #=> Types::OutputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].output_id #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].name #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description #=> Types::KinesisStreamsOutputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description #=> Types::KinesisFirehoseOutputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description #=> Types::LambdaOutputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].destination_schema #=> Types::DestinationSchema
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].destination_schema.record_format_type #=> String, one of ["JSON", "CSV"]
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions #=> Array<ReferenceDataSourceDescription>
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0] #=> Types::ReferenceDataSourceDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_id #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].table_name #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description #=> Types::S3ReferenceDataSourceDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.bucket_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.file_key #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.reference_role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema #=> Types::SourceSchema
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description #=> Types::ApplicationCodeConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_type #=> String, one of ["PLAINTEXT", "ZIPFILE"]
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description #=> Types::CodeContentDescription
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.text_content #=> String
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.code_md5 #=> String
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.code_size #=> Integer
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description #=> Types::S3ApplicationCodeLocationDescription
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.bucket_arn #=> String
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.file_key #=> String
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.object_version #=> String
    #   resp.data.application_detail.application_configuration_description.run_configuration_description #=> Types::RunConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description #=> Types::ApplicationRestoreConfiguration
    #   resp.data.application_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description.application_restore_type #=> String, one of ["SKIP_RESTORE_FROM_SNAPSHOT", "RESTORE_FROM_LATEST_SNAPSHOT", "RESTORE_FROM_CUSTOM_SNAPSHOT"]
    #   resp.data.application_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description.snapshot_name #=> String
    #   resp.data.application_detail.application_configuration_description.run_configuration_description.flink_run_configuration_description #=> Types::FlinkRunConfiguration
    #   resp.data.application_detail.application_configuration_description.run_configuration_description.flink_run_configuration_description.allow_non_restored_state #=> Boolean
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description #=> Types::FlinkApplicationConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description #=> Types::CheckpointConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.configuration_type #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.checkpointing_enabled #=> Boolean
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.checkpoint_interval #=> Integer
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.min_pause_between_checkpoints #=> Integer
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description #=> Types::MonitoringConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.configuration_type #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.metrics_level #=> String, one of ["APPLICATION", "TASK", "OPERATOR", "PARALLELISM"]
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.log_level #=> String, one of ["INFO", "WARN", "ERROR", "DEBUG"]
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description #=> Types::ParallelismConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.configuration_type #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.parallelism #=> Integer
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.parallelism_per_kpu #=> Integer
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.current_parallelism #=> Integer
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.auto_scaling_enabled #=> Boolean
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.job_plan_description #=> String
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions #=> Types::EnvironmentPropertyDescriptions
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions #=> Array<PropertyGroup>
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0] #=> Types::PropertyGroup
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_group_id #=> String
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_map #=> Hash<String, String>
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_map['key'] #=> String
    #   resp.data.application_detail.application_configuration_description.application_snapshot_configuration_description #=> Types::ApplicationSnapshotConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.application_snapshot_configuration_description.snapshots_enabled #=> Boolean
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions #=> Array<VpcConfigurationDescription>
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0] #=> Types::VpcConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].vpc_configuration_id #=> String
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].vpc_id #=> String
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].subnet_ids #=> Array<String>
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].subnet_ids[0] #=> String
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].security_group_ids #=> Array<String>
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].security_group_ids[0] #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description #=> Types::ZeppelinApplicationConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.monitoring_configuration_description #=> Types::ZeppelinMonitoringConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.monitoring_configuration_description.log_level #=> String, one of ["INFO", "WARN", "ERROR", "DEBUG"]
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.catalog_configuration_description #=> Types::CatalogConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.catalog_configuration_description.glue_data_catalog_configuration_description #=> Types::GlueDataCatalogConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.catalog_configuration_description.glue_data_catalog_configuration_description.database_arn #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.deploy_as_application_configuration_description #=> Types::DeployAsApplicationConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.deploy_as_application_configuration_description.s3_content_location_description #=> Types::S3ContentBaseLocationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.deploy_as_application_configuration_description.s3_content_location_description.bucket_arn #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.deploy_as_application_configuration_description.s3_content_location_description.base_path #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description #=> Array<CustomArtifactConfigurationDescription>
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0] #=> Types::CustomArtifactConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].artifact_type #=> String, one of ["UDF", "DEPENDENCY_JAR"]
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].s3_content_location_description #=> Types::S3ContentLocation
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].s3_content_location_description.bucket_arn #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].s3_content_location_description.file_key #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].s3_content_location_description.object_version #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].maven_reference_description #=> Types::MavenReference
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].maven_reference_description.group_id #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].maven_reference_description.artifact_id #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].maven_reference_description.version #=> String
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions #=> Array<CloudWatchLoggingOptionDescription>
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions[0] #=> Types::CloudWatchLoggingOptionDescription
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions[0].cloud_watch_logging_option_id #=> String
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions[0].log_stream_arn #=> String
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions[0].role_arn #=> String
    #   resp.data.application_detail.application_maintenance_configuration_description #=> Types::ApplicationMaintenanceConfigurationDescription
    #   resp.data.application_detail.application_maintenance_configuration_description.application_maintenance_window_start_time #=> String
    #   resp.data.application_detail.application_maintenance_configuration_description.application_maintenance_window_end_time #=> String
    #   resp.data.application_detail.application_version_updated_from #=> Integer
    #   resp.data.application_detail.application_version_rolled_back_from #=> Integer
    #   resp.data.application_detail.conditional_token #=> String
    #   resp.data.application_detail.application_version_rolled_back_to #=> Integer
    #   resp.data.application_detail.application_mode #=> String, one of ["STREAMING", "INTERACTIVE"]
    #
    def rollback_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RollbackApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RollbackApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RollbackApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationException, Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::RollbackApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RollbackApplication,
        stubs: @stubs,
        params_class: Params::RollbackApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :rollback_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the specified Kinesis Data Analytics application. After creating an application, you must exclusively call this operation to
    #       start your application.</p>
    #
    # @param [Hash] params
    #   See {Types::StartApplicationInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application.</p>
    #
    # @option params [RunConfiguration] :run_configuration
    #   <p>Identifies the run configuration (start parameters) of a Kinesis Data Analytics application.</p>
    #
    # @return [Types::StartApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_application(
    #     application_name: 'ApplicationName', # required
    #     run_configuration: {
    #       flink_run_configuration: {
    #         allow_non_restored_state: false
    #       },
    #       sql_run_configurations: [
    #         {
    #           input_id: 'InputId', # required
    #           input_starting_position_configuration: {
    #             input_starting_position: 'NOW' # accepts ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #           } # required
    #         }
    #       ],
    #       application_restore_configuration: {
    #         application_restore_type: 'SKIP_RESTORE_FROM_SNAPSHOT', # required - accepts ["SKIP_RESTORE_FROM_SNAPSHOT", "RESTORE_FROM_LATEST_SNAPSHOT", "RESTORE_FROM_CUSTOM_SNAPSHOT"]
    #         snapshot_name: 'SnapshotName'
    #       }
    #     }
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidApplicationConfigurationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Stops the application from processing data. You can stop
    #       an application only if it is in the running status, unless you set the <code>Force</code>
    #         parameter to <code>true</code>.</p>
    #          <p>You can use the <a>DescribeApplication</a> operation to find the application status.
    #        </p>
    #          <p>Kinesis Data Analytics takes a snapshot when the application is stopped, unless <code>Force</code> is set
    #           to <code>true</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::StopApplicationInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the running application to stop.</p>
    #
    # @option params [Boolean] :force
    #   <p>Set to <code>true</code> to force the application to stop. If you set <code>Force</code>
    #             to <code>true</code>, Kinesis Data Analytics stops the application without taking a snapshot.
    #         </p>
    #             <note>
    #               <p>Force-stopping your application may lead to data loss or duplication.
    #                 To prevent data loss or duplicate processing of data during application restarts,
    #                 we recommend you to take frequent snapshots of your application.</p>
    #            </note>
    #            <p>You can only force stop a Flink-based Kinesis Data Analytics application. You can't force stop a SQL-based Kinesis Data Analytics application.</p>
    #            <p>The application must be in the
    #             <code>STARTING</code>, <code>UPDATING</code>, <code>STOPPING</code>, <code>AUTOSCALING</code>, or
    #             <code>RUNNING</code> status. </p>
    #
    # @return [Types::StopApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_application(
    #     application_name: 'ApplicationName', # required
    #     force: false
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidApplicationConfigurationException, Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::InvalidRequestException, Errors::ResourceNotFoundException]),
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

    # <p>Adds one or more key-value tags to a Kinesis Data Analytics application. Note that the maximum number of application
    #         tags includes system tags. The maximum number of user-defined application tags is 50.
    #       For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html">Using Tagging</a>.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
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

    # <p>Removes one or more tags from a Kinesis Data Analytics application. For more information, see
    #         <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html">Using Tagging</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the Kinesis Data Analytics application from which to remove the tags.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
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

    # <p>Updates an existing Kinesis Data Analytics application. Using this operation, you
    #       can update application code, input configuration, and output configuration. </p>
    #          <p>Kinesis Data Analytics updates the <code>ApplicationVersionId</code> each time you update
    #       your application. </p>
    #          <note>
    #             <p>You cannot update the <code>RuntimeEnvironment</code> of an existing application. If you
    #     need to update an application's <code>RuntimeEnvironment</code>, you must delete the application
    #     and create it again.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateApplicationInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application to update.</p>
    #
    # @option params [Integer] :current_application_version_id
    #   <p>The current application version ID. You must provide the
    #           <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>.You can
    #         retrieve the application version ID using <a>DescribeApplication</a>. For better
    #         concurrency support, use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    #
    # @option params [ApplicationConfigurationUpdate] :application_configuration_update
    #   <p>Describes application configuration updates.</p>
    #
    # @option params [String] :service_execution_role_update
    #   <p>Describes updates to the service execution role.</p>
    #
    # @option params [RunConfigurationUpdate] :run_configuration_update
    #   <p>Describes updates to the application's starting parameters.</p>
    #
    # @option params [Array<CloudWatchLoggingOptionUpdate>] :cloud_watch_logging_option_updates
    #   <p>Describes application Amazon CloudWatch logging option updates. You can only update
    #         existing CloudWatch logging options with this action. To add a new CloudWatch logging option,
    #         use <a>AddApplicationCloudWatchLoggingOption</a>.</p>
    #
    # @option params [String] :conditional_token
    #   <p>A value you use to implement strong concurrency for application updates. You must
    #         provide the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You
    #         get the application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the
    #           <code>ConditionalToken</code> parameter instead of
    #         <code>CurrentApplicationVersionId</code>.</p>
    #
    # @return [Types::UpdateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application(
    #     application_name: 'ApplicationName', # required
    #     current_application_version_id: 1,
    #     application_configuration_update: {
    #       sql_application_configuration_update: {
    #         input_updates: [
    #           {
    #             input_id: 'InputId', # required
    #             name_prefix_update: 'NamePrefixUpdate',
    #             input_processing_configuration_update: {
    #               input_lambda_processor_update: {
    #                 resource_arn_update: 'ResourceARNUpdate' # required
    #               } # required
    #             },
    #             kinesis_streams_input_update: {
    #               resource_arn_update: 'ResourceARNUpdate' # required
    #             },
    #             kinesis_firehose_input_update: {
    #               resource_arn_update: 'ResourceARNUpdate' # required
    #             },
    #             input_schema_update: {
    #               record_format_update: {
    #                 record_format_type: 'JSON', # required - accepts ["JSON", "CSV"]
    #                 mapping_parameters: {
    #                   json_mapping_parameters: {
    #                     record_row_path: 'RecordRowPath' # required
    #                   },
    #                   csv_mapping_parameters: {
    #                     record_row_delimiter: 'RecordRowDelimiter', # required
    #                     record_column_delimiter: 'RecordColumnDelimiter' # required
    #                   }
    #                 }
    #               },
    #               record_encoding_update: 'RecordEncodingUpdate',
    #               record_column_updates: [
    #                 {
    #                   name: 'Name', # required
    #                   mapping: 'Mapping',
    #                   sql_type: 'SqlType' # required
    #                 }
    #               ]
    #             },
    #             input_parallelism_update: {
    #               count_update: 1 # required
    #             }
    #           }
    #         ],
    #         output_updates: [
    #           {
    #             output_id: 'OutputId', # required
    #             name_update: 'NameUpdate',
    #             kinesis_streams_output_update: {
    #               resource_arn_update: 'ResourceARNUpdate' # required
    #             },
    #             kinesis_firehose_output_update: {
    #               resource_arn_update: 'ResourceARNUpdate' # required
    #             },
    #             lambda_output_update: {
    #               resource_arn_update: 'ResourceARNUpdate' # required
    #             },
    #             destination_schema_update: {
    #               record_format_type: 'JSON' # required - accepts ["JSON", "CSV"]
    #             }
    #           }
    #         ],
    #         reference_data_source_updates: [
    #           {
    #             reference_id: 'ReferenceId', # required
    #             table_name_update: 'TableNameUpdate',
    #             s3_reference_data_source_update: {
    #               bucket_arn_update: 'BucketARNUpdate',
    #               file_key_update: 'FileKeyUpdate'
    #             },
    #             reference_schema_update: {
    #               record_encoding: 'RecordEncoding',
    #             }
    #           }
    #         ]
    #       },
    #       application_code_configuration_update: {
    #         code_content_type_update: 'PLAINTEXT', # accepts ["PLAINTEXT", "ZIPFILE"]
    #         code_content_update: {
    #           text_content_update: 'TextContentUpdate',
    #           zip_file_content_update: 'ZipFileContentUpdate',
    #           s3_content_location_update: {
    #             bucket_arn_update: 'BucketARNUpdate',
    #             file_key_update: 'FileKeyUpdate',
    #             object_version_update: 'ObjectVersionUpdate'
    #           }
    #         }
    #       },
    #       flink_application_configuration_update: {
    #         checkpoint_configuration_update: {
    #           configuration_type_update: 'DEFAULT', # accepts ["DEFAULT", "CUSTOM"]
    #           checkpointing_enabled_update: false,
    #           checkpoint_interval_update: 1,
    #           min_pause_between_checkpoints_update: 1
    #         },
    #         monitoring_configuration_update: {
    #           configuration_type_update: 'DEFAULT', # accepts ["DEFAULT", "CUSTOM"]
    #           metrics_level_update: 'APPLICATION', # accepts ["APPLICATION", "TASK", "OPERATOR", "PARALLELISM"]
    #           log_level_update: 'INFO' # accepts ["INFO", "WARN", "ERROR", "DEBUG"]
    #         },
    #         parallelism_configuration_update: {
    #           configuration_type_update: 'DEFAULT', # accepts ["DEFAULT", "CUSTOM"]
    #           parallelism_update: 1,
    #           parallelism_per_kpu_update: 1,
    #           auto_scaling_enabled_update: false
    #         }
    #       },
    #       environment_property_updates: {
    #         property_groups: [
    #           {
    #             property_group_id: 'PropertyGroupId', # required
    #             property_map: {
    #               'key' => 'value'
    #             } # required
    #           }
    #         ] # required
    #       },
    #       application_snapshot_configuration_update: {
    #         snapshots_enabled_update: false # required
    #       },
    #       vpc_configuration_updates: [
    #         {
    #           vpc_configuration_id: 'VpcConfigurationId', # required
    #           subnet_id_updates: [
    #             'member'
    #           ],
    #           security_group_id_updates: [
    #             'member'
    #           ]
    #         }
    #       ],
    #       zeppelin_application_configuration_update: {
    #         monitoring_configuration_update: {
    #           log_level_update: 'INFO' # required - accepts ["INFO", "WARN", "ERROR", "DEBUG"]
    #         },
    #         catalog_configuration_update: {
    #           glue_data_catalog_configuration_update: {
    #             database_arn_update: 'DatabaseARNUpdate' # required
    #           } # required
    #         },
    #         deploy_as_application_configuration_update: {
    #           s3_content_location_update: {
    #             bucket_arn_update: 'BucketARNUpdate',
    #             base_path_update: 'BasePathUpdate'
    #           }
    #         },
    #         custom_artifacts_configuration_update: [
    #           {
    #             artifact_type: 'UDF', # required - accepts ["UDF", "DEPENDENCY_JAR"]
    #             s3_content_location: {
    #               bucket_arn: 'BucketARN', # required
    #               file_key: 'FileKey', # required
    #               object_version: 'ObjectVersion'
    #             },
    #             maven_reference: {
    #               group_id: 'GroupId', # required
    #               artifact_id: 'ArtifactId', # required
    #               version: 'Version' # required
    #             }
    #           }
    #         ]
    #       }
    #     },
    #     service_execution_role_update: 'ServiceExecutionRoleUpdate',
    #     run_configuration_update: {
    #       flink_run_configuration: {
    #         allow_non_restored_state: false
    #       },
    #       application_restore_configuration: {
    #         application_restore_type: 'SKIP_RESTORE_FROM_SNAPSHOT', # required - accepts ["SKIP_RESTORE_FROM_SNAPSHOT", "RESTORE_FROM_LATEST_SNAPSHOT", "RESTORE_FROM_CUSTOM_SNAPSHOT"]
    #         snapshot_name: 'SnapshotName'
    #       }
    #     },
    #     cloud_watch_logging_option_updates: [
    #       {
    #         cloud_watch_logging_option_id: 'CloudWatchLoggingOptionId', # required
    #         log_stream_arn_update: 'LogStreamARNUpdate'
    #       }
    #     ],
    #     conditional_token: 'ConditionalToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApplicationOutput
    #   resp.data.application_detail #=> Types::ApplicationDetail
    #   resp.data.application_detail.application_arn #=> String
    #   resp.data.application_detail.application_description #=> String
    #   resp.data.application_detail.application_name #=> String
    #   resp.data.application_detail.runtime_environment #=> String, one of ["SQL-1_0", "FLINK-1_6", "FLINK-1_8", "ZEPPELIN-FLINK-1_0", "FLINK-1_11", "FLINK-1_13", "ZEPPELIN-FLINK-2_0"]
    #   resp.data.application_detail.service_execution_role #=> String
    #   resp.data.application_detail.application_status #=> String, one of ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING", "ROLLING_BACK", "MAINTENANCE", "ROLLED_BACK"]
    #   resp.data.application_detail.application_version_id #=> Integer
    #   resp.data.application_detail.create_timestamp #=> Time
    #   resp.data.application_detail.last_update_timestamp #=> Time
    #   resp.data.application_detail.application_configuration_description #=> Types::ApplicationConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description #=> Types::SqlApplicationConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions #=> Array<InputDescription>
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0] #=> Types::InputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_id #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].name_prefix #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].in_app_stream_names #=> Array<String>
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].in_app_stream_names[0] #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description #=> Types::InputProcessingConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description #=> Types::InputLambdaProcessorDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_processing_configuration_description.input_lambda_processor_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description #=> Types::KinesisStreamsInputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_streams_input_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description #=> Types::KinesisFirehoseInputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].kinesis_firehose_input_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema #=> Types::SourceSchema
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format #=> Types::RecordFormat
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.record_format_type #=> String, one of ["JSON", "CSV"]
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters #=> Types::MappingParameters
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.json_mapping_parameters #=> Types::JSONMappingParameters
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.json_mapping_parameters.record_row_path #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters #=> Types::CSVMappingParameters
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_row_delimiter #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_format.mapping_parameters.csv_mapping_parameters.record_column_delimiter #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_encoding #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns #=> Array<RecordColumn>
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0] #=> Types::RecordColumn
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].name #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].mapping #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_schema.record_columns[0].sql_type #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_parallelism #=> Types::InputParallelism
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_parallelism.count #=> Integer
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_starting_position_configuration #=> Types::InputStartingPositionConfiguration
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.input_descriptions[0].input_starting_position_configuration.input_starting_position #=> String, one of ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions #=> Array<OutputDescription>
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0] #=> Types::OutputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].output_id #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].name #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description #=> Types::KinesisStreamsOutputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_streams_output_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description #=> Types::KinesisFirehoseOutputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].kinesis_firehose_output_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description #=> Types::LambdaOutputDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description.resource_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].lambda_output_description.role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].destination_schema #=> Types::DestinationSchema
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.output_descriptions[0].destination_schema.record_format_type #=> String, one of ["JSON", "CSV"]
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions #=> Array<ReferenceDataSourceDescription>
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0] #=> Types::ReferenceDataSourceDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_id #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].table_name #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description #=> Types::S3ReferenceDataSourceDescription
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.bucket_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.file_key #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].s3_reference_data_source_description.reference_role_arn #=> String
    #   resp.data.application_detail.application_configuration_description.sql_application_configuration_description.reference_data_source_descriptions[0].reference_schema #=> Types::SourceSchema
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description #=> Types::ApplicationCodeConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_type #=> String, one of ["PLAINTEXT", "ZIPFILE"]
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description #=> Types::CodeContentDescription
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.text_content #=> String
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.code_md5 #=> String
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.code_size #=> Integer
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description #=> Types::S3ApplicationCodeLocationDescription
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.bucket_arn #=> String
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.file_key #=> String
    #   resp.data.application_detail.application_configuration_description.application_code_configuration_description.code_content_description.s3_application_code_location_description.object_version #=> String
    #   resp.data.application_detail.application_configuration_description.run_configuration_description #=> Types::RunConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description #=> Types::ApplicationRestoreConfiguration
    #   resp.data.application_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description.application_restore_type #=> String, one of ["SKIP_RESTORE_FROM_SNAPSHOT", "RESTORE_FROM_LATEST_SNAPSHOT", "RESTORE_FROM_CUSTOM_SNAPSHOT"]
    #   resp.data.application_detail.application_configuration_description.run_configuration_description.application_restore_configuration_description.snapshot_name #=> String
    #   resp.data.application_detail.application_configuration_description.run_configuration_description.flink_run_configuration_description #=> Types::FlinkRunConfiguration
    #   resp.data.application_detail.application_configuration_description.run_configuration_description.flink_run_configuration_description.allow_non_restored_state #=> Boolean
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description #=> Types::FlinkApplicationConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description #=> Types::CheckpointConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.configuration_type #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.checkpointing_enabled #=> Boolean
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.checkpoint_interval #=> Integer
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.checkpoint_configuration_description.min_pause_between_checkpoints #=> Integer
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description #=> Types::MonitoringConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.configuration_type #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.metrics_level #=> String, one of ["APPLICATION", "TASK", "OPERATOR", "PARALLELISM"]
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.monitoring_configuration_description.log_level #=> String, one of ["INFO", "WARN", "ERROR", "DEBUG"]
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description #=> Types::ParallelismConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.configuration_type #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.parallelism #=> Integer
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.parallelism_per_kpu #=> Integer
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.current_parallelism #=> Integer
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.parallelism_configuration_description.auto_scaling_enabled #=> Boolean
    #   resp.data.application_detail.application_configuration_description.flink_application_configuration_description.job_plan_description #=> String
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions #=> Types::EnvironmentPropertyDescriptions
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions #=> Array<PropertyGroup>
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0] #=> Types::PropertyGroup
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_group_id #=> String
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_map #=> Hash<String, String>
    #   resp.data.application_detail.application_configuration_description.environment_property_descriptions.property_group_descriptions[0].property_map['key'] #=> String
    #   resp.data.application_detail.application_configuration_description.application_snapshot_configuration_description #=> Types::ApplicationSnapshotConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.application_snapshot_configuration_description.snapshots_enabled #=> Boolean
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions #=> Array<VpcConfigurationDescription>
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0] #=> Types::VpcConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].vpc_configuration_id #=> String
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].vpc_id #=> String
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].subnet_ids #=> Array<String>
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].subnet_ids[0] #=> String
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].security_group_ids #=> Array<String>
    #   resp.data.application_detail.application_configuration_description.vpc_configuration_descriptions[0].security_group_ids[0] #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description #=> Types::ZeppelinApplicationConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.monitoring_configuration_description #=> Types::ZeppelinMonitoringConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.monitoring_configuration_description.log_level #=> String, one of ["INFO", "WARN", "ERROR", "DEBUG"]
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.catalog_configuration_description #=> Types::CatalogConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.catalog_configuration_description.glue_data_catalog_configuration_description #=> Types::GlueDataCatalogConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.catalog_configuration_description.glue_data_catalog_configuration_description.database_arn #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.deploy_as_application_configuration_description #=> Types::DeployAsApplicationConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.deploy_as_application_configuration_description.s3_content_location_description #=> Types::S3ContentBaseLocationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.deploy_as_application_configuration_description.s3_content_location_description.bucket_arn #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.deploy_as_application_configuration_description.s3_content_location_description.base_path #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description #=> Array<CustomArtifactConfigurationDescription>
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0] #=> Types::CustomArtifactConfigurationDescription
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].artifact_type #=> String, one of ["UDF", "DEPENDENCY_JAR"]
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].s3_content_location_description #=> Types::S3ContentLocation
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].s3_content_location_description.bucket_arn #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].s3_content_location_description.file_key #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].s3_content_location_description.object_version #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].maven_reference_description #=> Types::MavenReference
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].maven_reference_description.group_id #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].maven_reference_description.artifact_id #=> String
    #   resp.data.application_detail.application_configuration_description.zeppelin_application_configuration_description.custom_artifacts_configuration_description[0].maven_reference_description.version #=> String
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions #=> Array<CloudWatchLoggingOptionDescription>
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions[0] #=> Types::CloudWatchLoggingOptionDescription
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions[0].cloud_watch_logging_option_id #=> String
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions[0].log_stream_arn #=> String
    #   resp.data.application_detail.cloud_watch_logging_option_descriptions[0].role_arn #=> String
    #   resp.data.application_detail.application_maintenance_configuration_description #=> Types::ApplicationMaintenanceConfigurationDescription
    #   resp.data.application_detail.application_maintenance_configuration_description.application_maintenance_window_start_time #=> String
    #   resp.data.application_detail.application_maintenance_configuration_description.application_maintenance_window_end_time #=> String
    #   resp.data.application_detail.application_version_updated_from #=> Integer
    #   resp.data.application_detail.application_version_rolled_back_from #=> Integer
    #   resp.data.application_detail.conditional_token #=> String
    #   resp.data.application_detail.application_version_rolled_back_to #=> Integer
    #   resp.data.application_detail.application_mode #=> String, one of ["STREAMING", "INTERACTIVE"]
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CodeValidationException, Errors::InvalidApplicationConfigurationException, Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
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

    # <p>Updates the maintenance configuration of the Kinesis Data Analytics application. </p>
    #          <p>You can invoke this operation on an application that is in one of the two following
    #       states: <code>READY</code> or <code>RUNNING</code>. If you invoke it when the application is
    #       in a state other than these two states, it throws a <code>ResourceInUseException</code>. The
    #       service makes use of the updated configuration the next time it schedules maintenance for the
    #       application. If you invoke this operation after the service schedules maintenance, the service
    #       will apply the configuration update the next time it schedules maintenance for the
    #       application. This means that you might not see the maintenance configuration update applied to
    #       the maintenance process that follows a successful invocation of this operation, but to the
    #       following maintenance process instead.</p>
    #          <p>To see the current maintenance configuration of your application, invoke the
    #       <a>DescribeApplication</a> operation.</p>
    #          <p>For information about application maintenance, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/maintenance.html">Kinesis Data Analytics for Apache Flink Maintenance</a>.</p>
    #          <note>
    #             <p>This operation is supported only for Amazon Kinesis Data Analytics for Apache Flink.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateApplicationMaintenanceConfigurationInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application for which you want to update the maintenance configuration.</p>
    #
    # @option params [ApplicationMaintenanceConfigurationUpdate] :application_maintenance_configuration_update
    #   <p>Describes the application maintenance configuration update.</p>
    #
    # @return [Types::UpdateApplicationMaintenanceConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application_maintenance_configuration(
    #     application_name: 'ApplicationName', # required
    #     application_maintenance_configuration_update: {
    #       application_maintenance_window_start_time_update: 'ApplicationMaintenanceWindowStartTimeUpdate' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApplicationMaintenanceConfigurationOutput
    #   resp.data.application_arn #=> String
    #   resp.data.application_maintenance_configuration_description #=> Types::ApplicationMaintenanceConfigurationDescription
    #   resp.data.application_maintenance_configuration_description.application_maintenance_window_start_time #=> String
    #   resp.data.application_maintenance_configuration_description.application_maintenance_window_end_time #=> String
    #
    def update_application_maintenance_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApplicationMaintenanceConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApplicationMaintenanceConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApplicationMaintenanceConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedOperationException, Errors::ConcurrentModificationException, Errors::ResourceInUseException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateApplicationMaintenanceConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApplicationMaintenanceConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateApplicationMaintenanceConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_application_maintenance_configuration
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
