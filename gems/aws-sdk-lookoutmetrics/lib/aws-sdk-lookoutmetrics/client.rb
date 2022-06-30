# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::LookoutMetrics
  # An API client for LookoutMetrics
  # See {#initialize} for a full list of supported configuration options
  # <p>This is the <i>Amazon Lookout for Metrics API Reference</i>. For an introduction to the service
  #       with tutorials for getting started, visit <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev">Amazon
  #         Lookout for Metrics Developer Guide</a>.</p>
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
    def initialize(config = AWS::SDK::LookoutMetrics::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Activates an anomaly detector.</p>
    #
    # @param [Hash] params
    #   See {Types::ActivateAnomalyDetectorInput}.
    #
    # @option params [String] :anomaly_detector_arn
    #   <p>The ARN of the anomaly detector.</p>
    #
    # @return [Types::ActivateAnomalyDetectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_anomaly_detector(
    #     anomaly_detector_arn: 'AnomalyDetectorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ActivateAnomalyDetectorOutput
    #
    def activate_anomaly_detector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ActivateAnomalyDetectorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ActivateAnomalyDetectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ActivateAnomalyDetector
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::ActivateAnomalyDetector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ActivateAnomalyDetector,
        stubs: @stubs,
        params_class: Params::ActivateAnomalyDetectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :activate_anomaly_detector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Runs a backtest for anomaly detection for the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::BackTestAnomalyDetectorInput}.
    #
    # @option params [String] :anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #
    # @return [Types::BackTestAnomalyDetectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.back_test_anomaly_detector(
    #     anomaly_detector_arn: 'AnomalyDetectorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BackTestAnomalyDetectorOutput
    #
    def back_test_anomaly_detector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BackTestAnomalyDetectorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BackTestAnomalyDetectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BackTestAnomalyDetector
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::BackTestAnomalyDetector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BackTestAnomalyDetector,
        stubs: @stubs,
        params_class: Params::BackTestAnomalyDetectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :back_test_anomaly_detector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an alert for an anomaly detector.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAlertInput}.
    #
    # @option params [String] :alert_name
    #   <p>The name of the alert.</p>
    #
    # @option params [Integer] :alert_sensitivity_threshold
    #   <p>An integer from 0 to 100 specifying the alert sensitivity threshold.</p>
    #
    # @option params [String] :alert_description
    #   <p>A description of the alert.</p>
    #
    # @option params [String] :anomaly_detector_arn
    #   <p>The ARN of the detector to which the alert is attached.</p>
    #
    # @option params [Action] :action
    #   <p>Action that will be triggered when there is an alert.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a> to apply to the alert.</p>
    #
    # @return [Types::CreateAlertOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alert(
    #     alert_name: 'AlertName', # required
    #     alert_sensitivity_threshold: 1, # required
    #     alert_description: 'AlertDescription',
    #     anomaly_detector_arn: 'AnomalyDetectorArn', # required
    #     action: {
    #       sns_configuration: {
    #         role_arn: 'RoleArn', # required
    #         sns_topic_arn: 'SnsTopicArn', # required
    #         sns_format: 'LONG_TEXT' # accepts ["LONG_TEXT", "SHORT_TEXT", "JSON"]
    #       },
    #       lambda_configuration: {
    #         role_arn: 'RoleArn', # required
    #         lambda_arn: 'LambdaArn' # required
    #       }
    #     }, # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAlertOutput
    #   resp.data.alert_arn #=> String
    #
    def create_alert(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAlertInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAlertInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAlert
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::CreateAlert
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAlert,
        stubs: @stubs,
        params_class: Params::CreateAlertOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_alert
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an anomaly detector.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAnomalyDetectorInput}.
    #
    # @option params [String] :anomaly_detector_name
    #   <p>The name of the detector.</p>
    #
    # @option params [String] :anomaly_detector_description
    #   <p>A description of the detector.</p>
    #
    # @option params [AnomalyDetectorConfig] :anomaly_detector_config
    #   <p>Contains information about the configuration of the anomaly detector.</p>
    #
    # @option params [String] :kms_key_arn
    #   <p>The ARN of the KMS key to use to encrypt your data.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a> to apply to the anomaly detector.</p>
    #
    # @return [Types::CreateAnomalyDetectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_anomaly_detector(
    #     anomaly_detector_name: 'AnomalyDetectorName', # required
    #     anomaly_detector_description: 'AnomalyDetectorDescription',
    #     anomaly_detector_config: {
    #       anomaly_detector_frequency: 'P1D' # accepts ["P1D", "PT1H", "PT10M", "PT5M"]
    #     }, # required
    #     kms_key_arn: 'KmsKeyArn',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAnomalyDetectorOutput
    #   resp.data.anomaly_detector_arn #=> String
    #
    def create_anomaly_detector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAnomalyDetectorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAnomalyDetectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAnomalyDetector
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::CreateAnomalyDetector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAnomalyDetector,
        stubs: @stubs,
        params_class: Params::CreateAnomalyDetectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_anomaly_detector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a dataset.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateMetricSetInput}.
    #
    # @option params [String] :anomaly_detector_arn
    #   <p>The ARN of the anomaly detector that will use the dataset.</p>
    #
    # @option params [String] :metric_set_name
    #   <p>The name of the dataset.</p>
    #
    # @option params [String] :metric_set_description
    #   <p>A description of the dataset you are creating.</p>
    #
    # @option params [Array<Metric>] :metric_list
    #   <p>A list of metrics that the dataset will contain.</p>
    #
    # @option params [Integer] :offset
    #   <p>After an interval ends, the amount of seconds that the detector waits before importing data. Offset is only supported for S3 and Redshift datasources.</p>
    #
    # @option params [TimestampColumn] :timestamp_column
    #   <p>Contains information about the column used for tracking time in your source data.</p>
    #
    # @option params [Array<String>] :dimension_list
    #   <p>A list of the fields you want to treat as dimensions.</p>
    #
    # @option params [String] :metric_set_frequency
    #   <p>The frequency with which the source data will be analyzed for anomalies.</p>
    #
    # @option params [MetricSource] :metric_source
    #   <p>Contains information about how the source data should be interpreted.</p>
    #
    # @option params [String] :timezone
    #   <p>The time zone in which your source data was recorded.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a> to apply to the dataset.</p>
    #
    # @return [Types::CreateMetricSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_metric_set(
    #     anomaly_detector_arn: 'AnomalyDetectorArn', # required
    #     metric_set_name: 'MetricSetName', # required
    #     metric_set_description: 'MetricSetDescription',
    #     metric_list: [
    #       {
    #         metric_name: 'MetricName', # required
    #         aggregation_function: 'AVG', # required - accepts ["AVG", "SUM"]
    #         namespace: 'Namespace'
    #       }
    #     ], # required
    #     offset: 1,
    #     timestamp_column: {
    #       column_name: 'ColumnName',
    #       column_format: 'ColumnFormat'
    #     },
    #     dimension_list: [
    #       'member'
    #     ],
    #     metric_set_frequency: 'P1D', # accepts ["P1D", "PT1H", "PT10M", "PT5M"]
    #     metric_source: {
    #       s3_source_config: {
    #         role_arn: 'RoleArn',
    #         templated_path_list: [
    #           'member'
    #         ],
    #         historical_data_path_list: [
    #           'member'
    #         ],
    #         file_format_descriptor: {
    #           csv_format_descriptor: {
    #             file_compression: 'NONE', # accepts ["NONE", "GZIP"]
    #             charset: 'Charset',
    #             contains_header: false,
    #             delimiter: 'Delimiter',
    #             header_list: [
    #               'member'
    #             ],
    #             quote_symbol: 'QuoteSymbol'
    #           },
    #           json_format_descriptor: {
    #             file_compression: 'NONE', # accepts ["NONE", "GZIP"]
    #             charset: 'Charset'
    #           }
    #         }
    #       },
    #       app_flow_config: {
    #         role_arn: 'RoleArn',
    #         flow_name: 'FlowName'
    #       },
    #       cloud_watch_config: {
    #         role_arn: 'RoleArn',
    #         back_test_configuration: {
    #           run_back_test_mode: false # required
    #         }
    #       },
    #       rds_source_config: {
    #         db_instance_identifier: 'DBInstanceIdentifier',
    #         database_host: 'DatabaseHost',
    #         database_port: 1,
    #         secret_manager_arn: 'SecretManagerArn',
    #         database_name: 'DatabaseName',
    #         table_name: 'TableName',
    #         role_arn: 'RoleArn',
    #         vpc_configuration: {
    #           subnet_id_list: [
    #             'member'
    #           ], # required
    #           security_group_id_list: [
    #             'member'
    #           ] # required
    #         }
    #       },
    #       redshift_source_config: {
    #         cluster_identifier: 'ClusterIdentifier',
    #         database_host: 'DatabaseHost',
    #         database_port: 1,
    #         secret_manager_arn: 'SecretManagerArn',
    #         database_name: 'DatabaseName',
    #         table_name: 'TableName',
    #         role_arn: 'RoleArn',
    #       },
    #       athena_source_config: {
    #         role_arn: 'RoleArn',
    #         database_name: 'DatabaseName',
    #         data_catalog: 'DataCatalog',
    #         table_name: 'TableName',
    #         work_group_name: 'WorkGroupName',
    #         s3_results_path: 'S3ResultsPath',
    #       }
    #     }, # required
    #     timezone: 'Timezone',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMetricSetOutput
    #   resp.data.metric_set_arn #=> String
    #
    def create_metric_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMetricSetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMetricSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMetricSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::CreateMetricSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMetricSet,
        stubs: @stubs,
        params_class: Params::CreateMetricSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_metric_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deactivates an anomaly detector.</p>
    #
    # @param [Hash] params
    #   See {Types::DeactivateAnomalyDetectorInput}.
    #
    # @option params [String] :anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #
    # @return [Types::DeactivateAnomalyDetectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deactivate_anomaly_detector(
    #     anomaly_detector_arn: 'AnomalyDetectorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeactivateAnomalyDetectorOutput
    #
    def deactivate_anomaly_detector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeactivateAnomalyDetectorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeactivateAnomalyDetectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeactivateAnomalyDetector
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::DeactivateAnomalyDetector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeactivateAnomalyDetector,
        stubs: @stubs,
        params_class: Params::DeactivateAnomalyDetectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deactivate_anomaly_detector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an alert.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAlertInput}.
    #
    # @option params [String] :alert_arn
    #   <p>The ARN of the alert to delete.</p>
    #
    # @return [Types::DeleteAlertOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alert(
    #     alert_arn: 'AlertArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAlertOutput
    #
    def delete_alert(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAlertInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAlertInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAlert
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::DeleteAlert
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAlert,
        stubs: @stubs,
        params_class: Params::DeleteAlertOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_alert
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a detector. Deleting an anomaly detector will delete all of its corresponding resources including any
    #       configured datasets and alerts.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAnomalyDetectorInput}.
    #
    # @option params [String] :anomaly_detector_arn
    #   <p>The ARN of the detector to delete.</p>
    #
    # @return [Types::DeleteAnomalyDetectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_anomaly_detector(
    #     anomaly_detector_arn: 'AnomalyDetectorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAnomalyDetectorOutput
    #
    def delete_anomaly_detector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAnomalyDetectorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAnomalyDetectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAnomalyDetector
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::DeleteAnomalyDetector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAnomalyDetector,
        stubs: @stubs,
        params_class: Params::DeleteAnomalyDetectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_anomaly_detector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an alert.</p>
    #          <p>Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource
    #       immediately after creating or modifying it, use retries to allow time for the write operation to complete.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAlertInput}.
    #
    # @option params [String] :alert_arn
    #   <p>The ARN of the alert to describe.</p>
    #
    # @return [Types::DescribeAlertOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_alert(
    #     alert_arn: 'AlertArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAlertOutput
    #   resp.data.alert #=> Types::Alert
    #   resp.data.alert.action #=> Types::Action
    #   resp.data.alert.action.sns_configuration #=> Types::SNSConfiguration
    #   resp.data.alert.action.sns_configuration.role_arn #=> String
    #   resp.data.alert.action.sns_configuration.sns_topic_arn #=> String
    #   resp.data.alert.action.sns_configuration.sns_format #=> String, one of ["LONG_TEXT", "SHORT_TEXT", "JSON"]
    #   resp.data.alert.action.lambda_configuration #=> Types::LambdaConfiguration
    #   resp.data.alert.action.lambda_configuration.role_arn #=> String
    #   resp.data.alert.action.lambda_configuration.lambda_arn #=> String
    #   resp.data.alert.alert_description #=> String
    #   resp.data.alert.alert_arn #=> String
    #   resp.data.alert.anomaly_detector_arn #=> String
    #   resp.data.alert.alert_name #=> String
    #   resp.data.alert.alert_sensitivity_threshold #=> Integer
    #   resp.data.alert.alert_type #=> String, one of ["SNS", "LAMBDA"]
    #   resp.data.alert.alert_status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.alert.last_modification_time #=> Time
    #   resp.data.alert.creation_time #=> Time
    #
    def describe_alert(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAlertInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAlertInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAlert
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::DescribeAlert
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAlert,
        stubs: @stubs,
        params_class: Params::DescribeAlertOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_alert
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the status of the specified anomaly detection jobs.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAnomalyDetectionExecutionsInput}.
    #
    # @option params [String] :anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #
    # @option params [String] :timestamp
    #   <p>The timestamp of the anomaly detection job.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of items to return in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    # @return [Types::DescribeAnomalyDetectionExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_anomaly_detection_executions(
    #     anomaly_detector_arn: 'AnomalyDetectorArn', # required
    #     timestamp: 'Timestamp',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAnomalyDetectionExecutionsOutput
    #   resp.data.execution_list #=> Array<ExecutionStatus>
    #   resp.data.execution_list[0] #=> Types::ExecutionStatus
    #   resp.data.execution_list[0].timestamp #=> String
    #   resp.data.execution_list[0].status #=> String, one of ["PENDING", "IN_PROGRESS", "COMPLETED", "FAILED", "FAILED_TO_SCHEDULE"]
    #   resp.data.execution_list[0].failure_reason #=> String
    #   resp.data.next_token #=> String
    #
    def describe_anomaly_detection_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAnomalyDetectionExecutionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAnomalyDetectionExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAnomalyDetectionExecutions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::DescribeAnomalyDetectionExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAnomalyDetectionExecutions,
        stubs: @stubs,
        params_class: Params::DescribeAnomalyDetectionExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_anomaly_detection_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a detector.</p>
    #          <p>Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource
    #       immediately after creating or modifying it, use retries to allow time for the write operation to complete.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAnomalyDetectorInput}.
    #
    # @option params [String] :anomaly_detector_arn
    #   <p>The ARN of the detector to describe.</p>
    #
    # @return [Types::DescribeAnomalyDetectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_anomaly_detector(
    #     anomaly_detector_arn: 'AnomalyDetectorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAnomalyDetectorOutput
    #   resp.data.anomaly_detector_arn #=> String
    #   resp.data.anomaly_detector_name #=> String
    #   resp.data.anomaly_detector_description #=> String
    #   resp.data.anomaly_detector_config #=> Types::AnomalyDetectorConfigSummary
    #   resp.data.anomaly_detector_config.anomaly_detector_frequency #=> String, one of ["P1D", "PT1H", "PT10M", "PT5M"]
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modification_time #=> Time
    #   resp.data.status #=> String, one of ["ACTIVE", "ACTIVATING", "DELETING", "FAILED", "INACTIVE", "LEARNING", "BACK_TEST_ACTIVATING", "BACK_TEST_ACTIVE", "BACK_TEST_COMPLETE", "DEACTIVATED", "DEACTIVATING"]
    #   resp.data.failure_reason #=> String
    #   resp.data.kms_key_arn #=> String
    #   resp.data.failure_type #=> String, one of ["ACTIVATION_FAILURE", "BACK_TEST_ACTIVATION_FAILURE", "DELETION_FAILURE", "DEACTIVATION_FAILURE"]
    #
    def describe_anomaly_detector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAnomalyDetectorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAnomalyDetectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAnomalyDetector
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::DescribeAnomalyDetector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAnomalyDetector,
        stubs: @stubs,
        params_class: Params::DescribeAnomalyDetectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_anomaly_detector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a dataset.</p>
    #          <p>Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource
    #       immediately after creating or modifying it, use retries to allow time for the write operation to complete.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMetricSetInput}.
    #
    # @option params [String] :metric_set_arn
    #   <p>The ARN of the dataset.</p>
    #
    # @return [Types::DescribeMetricSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_metric_set(
    #     metric_set_arn: 'MetricSetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMetricSetOutput
    #   resp.data.metric_set_arn #=> String
    #   resp.data.anomaly_detector_arn #=> String
    #   resp.data.metric_set_name #=> String
    #   resp.data.metric_set_description #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modification_time #=> Time
    #   resp.data.offset #=> Integer
    #   resp.data.metric_list #=> Array<Metric>
    #   resp.data.metric_list[0] #=> Types::Metric
    #   resp.data.metric_list[0].metric_name #=> String
    #   resp.data.metric_list[0].aggregation_function #=> String, one of ["AVG", "SUM"]
    #   resp.data.metric_list[0].namespace #=> String
    #   resp.data.timestamp_column #=> Types::TimestampColumn
    #   resp.data.timestamp_column.column_name #=> String
    #   resp.data.timestamp_column.column_format #=> String
    #   resp.data.dimension_list #=> Array<String>
    #   resp.data.dimension_list[0] #=> String
    #   resp.data.metric_set_frequency #=> String, one of ["P1D", "PT1H", "PT10M", "PT5M"]
    #   resp.data.timezone #=> String
    #   resp.data.metric_source #=> Types::MetricSource
    #   resp.data.metric_source.s3_source_config #=> Types::S3SourceConfig
    #   resp.data.metric_source.s3_source_config.role_arn #=> String
    #   resp.data.metric_source.s3_source_config.templated_path_list #=> Array<String>
    #   resp.data.metric_source.s3_source_config.templated_path_list[0] #=> String
    #   resp.data.metric_source.s3_source_config.historical_data_path_list #=> Array<String>
    #   resp.data.metric_source.s3_source_config.historical_data_path_list[0] #=> String
    #   resp.data.metric_source.s3_source_config.file_format_descriptor #=> Types::FileFormatDescriptor
    #   resp.data.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor #=> Types::CsvFormatDescriptor
    #   resp.data.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.file_compression #=> String, one of ["NONE", "GZIP"]
    #   resp.data.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.charset #=> String
    #   resp.data.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.contains_header #=> Boolean
    #   resp.data.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.delimiter #=> String
    #   resp.data.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.header_list #=> Array<String>
    #   resp.data.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.header_list[0] #=> String
    #   resp.data.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.quote_symbol #=> String
    #   resp.data.metric_source.s3_source_config.file_format_descriptor.json_format_descriptor #=> Types::JsonFormatDescriptor
    #   resp.data.metric_source.s3_source_config.file_format_descriptor.json_format_descriptor.file_compression #=> String, one of ["NONE", "GZIP"]
    #   resp.data.metric_source.s3_source_config.file_format_descriptor.json_format_descriptor.charset #=> String
    #   resp.data.metric_source.app_flow_config #=> Types::AppFlowConfig
    #   resp.data.metric_source.app_flow_config.role_arn #=> String
    #   resp.data.metric_source.app_flow_config.flow_name #=> String
    #   resp.data.metric_source.cloud_watch_config #=> Types::CloudWatchConfig
    #   resp.data.metric_source.cloud_watch_config.role_arn #=> String
    #   resp.data.metric_source.cloud_watch_config.back_test_configuration #=> Types::BackTestConfiguration
    #   resp.data.metric_source.cloud_watch_config.back_test_configuration.run_back_test_mode #=> Boolean
    #   resp.data.metric_source.rds_source_config #=> Types::RDSSourceConfig
    #   resp.data.metric_source.rds_source_config.db_instance_identifier #=> String
    #   resp.data.metric_source.rds_source_config.database_host #=> String
    #   resp.data.metric_source.rds_source_config.database_port #=> Integer
    #   resp.data.metric_source.rds_source_config.secret_manager_arn #=> String
    #   resp.data.metric_source.rds_source_config.database_name #=> String
    #   resp.data.metric_source.rds_source_config.table_name #=> String
    #   resp.data.metric_source.rds_source_config.role_arn #=> String
    #   resp.data.metric_source.rds_source_config.vpc_configuration #=> Types::VpcConfiguration
    #   resp.data.metric_source.rds_source_config.vpc_configuration.subnet_id_list #=> Array<String>
    #   resp.data.metric_source.rds_source_config.vpc_configuration.subnet_id_list[0] #=> String
    #   resp.data.metric_source.rds_source_config.vpc_configuration.security_group_id_list #=> Array<String>
    #   resp.data.metric_source.rds_source_config.vpc_configuration.security_group_id_list[0] #=> String
    #   resp.data.metric_source.redshift_source_config #=> Types::RedshiftSourceConfig
    #   resp.data.metric_source.redshift_source_config.cluster_identifier #=> String
    #   resp.data.metric_source.redshift_source_config.database_host #=> String
    #   resp.data.metric_source.redshift_source_config.database_port #=> Integer
    #   resp.data.metric_source.redshift_source_config.secret_manager_arn #=> String
    #   resp.data.metric_source.redshift_source_config.database_name #=> String
    #   resp.data.metric_source.redshift_source_config.table_name #=> String
    #   resp.data.metric_source.redshift_source_config.role_arn #=> String
    #   resp.data.metric_source.redshift_source_config.vpc_configuration #=> Types::VpcConfiguration
    #   resp.data.metric_source.athena_source_config #=> Types::AthenaSourceConfig
    #   resp.data.metric_source.athena_source_config.role_arn #=> String
    #   resp.data.metric_source.athena_source_config.database_name #=> String
    #   resp.data.metric_source.athena_source_config.data_catalog #=> String
    #   resp.data.metric_source.athena_source_config.table_name #=> String
    #   resp.data.metric_source.athena_source_config.work_group_name #=> String
    #   resp.data.metric_source.athena_source_config.s3_results_path #=> String
    #   resp.data.metric_source.athena_source_config.back_test_configuration #=> Types::BackTestConfiguration
    #
    def describe_metric_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMetricSetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMetricSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMetricSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::DescribeMetricSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMetricSet,
        stubs: @stubs,
        params_class: Params::DescribeMetricSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_metric_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detects an Amazon S3 dataset's file format, interval, and offset.</p>
    #
    # @param [Hash] params
    #   See {Types::DetectMetricSetConfigInput}.
    #
    # @option params [String] :anomaly_detector_arn
    #   <p>An anomaly detector ARN.</p>
    #
    # @option params [AutoDetectionMetricSource] :auto_detection_metric_source
    #   <p>A data source.</p>
    #
    # @return [Types::DetectMetricSetConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_metric_set_config(
    #     anomaly_detector_arn: 'AnomalyDetectorArn', # required
    #     auto_detection_metric_source: {
    #       s3_source_config: {
    #         templated_path_list: [
    #           'member'
    #         ],
    #         historical_data_path_list: [
    #           'member'
    #         ]
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectMetricSetConfigOutput
    #   resp.data.detected_metric_set_config #=> Types::DetectedMetricSetConfig
    #   resp.data.detected_metric_set_config.offset #=> Types::DetectedField
    #   resp.data.detected_metric_set_config.offset.value #=> Types::AttributeValue
    #   resp.data.detected_metric_set_config.offset.value.s #=> String
    #   resp.data.detected_metric_set_config.offset.value.n #=> String
    #   resp.data.detected_metric_set_config.offset.value.b #=> String
    #   resp.data.detected_metric_set_config.offset.value.ss #=> Array<String>
    #   resp.data.detected_metric_set_config.offset.value.ss[0] #=> String
    #   resp.data.detected_metric_set_config.offset.value.ns #=> Array<String>
    #   resp.data.detected_metric_set_config.offset.value.ns[0] #=> String
    #   resp.data.detected_metric_set_config.offset.value.bs #=> Array<String>
    #   resp.data.detected_metric_set_config.offset.value.bs[0] #=> String
    #   resp.data.detected_metric_set_config.offset.confidence #=> String, one of ["HIGH", "LOW", "NONE"]
    #   resp.data.detected_metric_set_config.offset.message #=> String
    #   resp.data.detected_metric_set_config.metric_set_frequency #=> Types::DetectedField
    #   resp.data.detected_metric_set_config.metric_source #=> Types::DetectedMetricSource
    #   resp.data.detected_metric_set_config.metric_source.s3_source_config #=> Types::DetectedS3SourceConfig
    #   resp.data.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor #=> Types::DetectedFileFormatDescriptor
    #   resp.data.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor #=> Types::DetectedCsvFormatDescriptor
    #   resp.data.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.file_compression #=> Types::DetectedField
    #   resp.data.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.charset #=> Types::DetectedField
    #   resp.data.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.contains_header #=> Types::DetectedField
    #   resp.data.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.delimiter #=> Types::DetectedField
    #   resp.data.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.header_list #=> Types::DetectedField
    #   resp.data.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.csv_format_descriptor.quote_symbol #=> Types::DetectedField
    #   resp.data.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.json_format_descriptor #=> Types::DetectedJsonFormatDescriptor
    #   resp.data.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.json_format_descriptor.file_compression #=> Types::DetectedField
    #   resp.data.detected_metric_set_config.metric_source.s3_source_config.file_format_descriptor.json_format_descriptor.charset #=> Types::DetectedField
    #
    def detect_metric_set_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectMetricSetConfigInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectMetricSetConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectMetricSetConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::DetectMetricSetConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectMetricSetConfig,
        stubs: @stubs,
        params_class: Params::DetectMetricSetConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_metric_set_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns details about a group of anomalous metrics.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAnomalyGroupInput}.
    #
    # @option params [String] :anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #
    # @option params [String] :anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #
    # @return [Types::GetAnomalyGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_anomaly_group(
    #     anomaly_group_id: 'AnomalyGroupId', # required
    #     anomaly_detector_arn: 'AnomalyDetectorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAnomalyGroupOutput
    #   resp.data.anomaly_group #=> Types::AnomalyGroup
    #   resp.data.anomaly_group.start_time #=> String
    #   resp.data.anomaly_group.end_time #=> String
    #   resp.data.anomaly_group.anomaly_group_id #=> String
    #   resp.data.anomaly_group.anomaly_group_score #=> Float
    #   resp.data.anomaly_group.primary_metric_name #=> String
    #   resp.data.anomaly_group.metric_level_impact_list #=> Array<MetricLevelImpact>
    #   resp.data.anomaly_group.metric_level_impact_list[0] #=> Types::MetricLevelImpact
    #   resp.data.anomaly_group.metric_level_impact_list[0].metric_name #=> String
    #   resp.data.anomaly_group.metric_level_impact_list[0].num_time_series #=> Integer
    #   resp.data.anomaly_group.metric_level_impact_list[0].contribution_matrix #=> Types::ContributionMatrix
    #   resp.data.anomaly_group.metric_level_impact_list[0].contribution_matrix.dimension_contribution_list #=> Array<DimensionContribution>
    #   resp.data.anomaly_group.metric_level_impact_list[0].contribution_matrix.dimension_contribution_list[0] #=> Types::DimensionContribution
    #   resp.data.anomaly_group.metric_level_impact_list[0].contribution_matrix.dimension_contribution_list[0].dimension_name #=> String
    #   resp.data.anomaly_group.metric_level_impact_list[0].contribution_matrix.dimension_contribution_list[0].dimension_value_contribution_list #=> Array<DimensionValueContribution>
    #   resp.data.anomaly_group.metric_level_impact_list[0].contribution_matrix.dimension_contribution_list[0].dimension_value_contribution_list[0] #=> Types::DimensionValueContribution
    #   resp.data.anomaly_group.metric_level_impact_list[0].contribution_matrix.dimension_contribution_list[0].dimension_value_contribution_list[0].dimension_value #=> String
    #   resp.data.anomaly_group.metric_level_impact_list[0].contribution_matrix.dimension_contribution_list[0].dimension_value_contribution_list[0].contribution_score #=> Float
    #
    def get_anomaly_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAnomalyGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAnomalyGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAnomalyGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::GetAnomalyGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAnomalyGroup,
        stubs: @stubs,
        params_class: Params::GetAnomalyGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_anomaly_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get feedback for an anomaly group.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFeedbackInput}.
    #
    # @option params [String] :anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #
    # @option params [AnomalyGroupTimeSeries] :anomaly_group_time_series_feedback
    #   <p>The anomalous metric and group ID.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    # @return [Types::GetFeedbackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_feedback(
    #     anomaly_detector_arn: 'AnomalyDetectorArn', # required
    #     anomaly_group_time_series_feedback: {
    #       anomaly_group_id: 'AnomalyGroupId', # required
    #       time_series_id: 'TimeSeriesId'
    #     }, # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFeedbackOutput
    #   resp.data.anomaly_group_time_series_feedback #=> Array<TimeSeriesFeedback>
    #   resp.data.anomaly_group_time_series_feedback[0] #=> Types::TimeSeriesFeedback
    #   resp.data.anomaly_group_time_series_feedback[0].time_series_id #=> String
    #   resp.data.anomaly_group_time_series_feedback[0].is_anomaly #=> Boolean
    #   resp.data.next_token #=> String
    #
    def get_feedback(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFeedbackInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFeedbackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFeedback
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::GetFeedback
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFeedback,
        stubs: @stubs,
        params_class: Params::GetFeedbackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_feedback
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a selection of sample records from an Amazon S3 datasource.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSampleDataInput}.
    #
    # @option params [SampleDataS3SourceConfig] :s3_source_config
    #   <p>A datasource bucket in Amazon S3.</p>
    #
    # @return [Types::GetSampleDataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sample_data(
    #     s3_source_config: {
    #       role_arn: 'RoleArn', # required
    #       templated_path_list: [
    #         'member'
    #       ],
    #       historical_data_path_list: [
    #         'member'
    #       ],
    #       file_format_descriptor: {
    #         csv_format_descriptor: {
    #           file_compression: 'NONE', # accepts ["NONE", "GZIP"]
    #           charset: 'Charset',
    #           contains_header: false,
    #           delimiter: 'Delimiter',
    #           header_list: [
    #             'member'
    #           ],
    #           quote_symbol: 'QuoteSymbol'
    #         },
    #         json_format_descriptor: {
    #           file_compression: 'NONE', # accepts ["NONE", "GZIP"]
    #           charset: 'Charset'
    #         }
    #       } # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSampleDataOutput
    #   resp.data.header_values #=> Array<String>
    #   resp.data.header_values[0] #=> String
    #   resp.data.sample_rows #=> Array<Array<String>>
    #   resp.data.sample_rows[0] #=> Array<String>
    #   resp.data.sample_rows[0][0] #=> String
    #
    def get_sample_data(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSampleDataInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSampleDataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSampleData
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::GetSampleData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSampleData,
        stubs: @stubs,
        params_class: Params::GetSampleDataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_sample_data
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the alerts attached to a detector.</p>
    #          <p>Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource
    #       immediately after creating or modifying it, use retries to allow time for the write operation to complete.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAlertsInput}.
    #
    # @option params [String] :anomaly_detector_arn
    #   <p>The ARN of the alert's detector.</p>
    #
    # @option params [String] :next_token
    #   <p>If the result of the previous request is truncated, the response includes a <code>NextToken</code>. To
    #         retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that will be displayed by the request.</p>
    #
    # @return [Types::ListAlertsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_alerts(
    #     anomaly_detector_arn: 'AnomalyDetectorArn',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAlertsOutput
    #   resp.data.alert_summary_list #=> Array<AlertSummary>
    #   resp.data.alert_summary_list[0] #=> Types::AlertSummary
    #   resp.data.alert_summary_list[0].alert_arn #=> String
    #   resp.data.alert_summary_list[0].anomaly_detector_arn #=> String
    #   resp.data.alert_summary_list[0].alert_name #=> String
    #   resp.data.alert_summary_list[0].alert_sensitivity_threshold #=> Integer
    #   resp.data.alert_summary_list[0].alert_type #=> String, one of ["SNS", "LAMBDA"]
    #   resp.data.alert_summary_list[0].alert_status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.alert_summary_list[0].last_modification_time #=> Time
    #   resp.data.alert_summary_list[0].creation_time #=> Time
    #   resp.data.alert_summary_list[0].tags #=> Hash<String, String>
    #   resp.data.alert_summary_list[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_alerts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAlertsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAlertsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAlerts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::ListAlerts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAlerts,
        stubs: @stubs,
        params_class: Params::ListAlertsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_alerts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the detectors in the current AWS Region.</p>
    #          <p>Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource
    #       immediately after creating or modifying it, use retries to allow time for the write operation to complete.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAnomalyDetectorsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a <code>NextToken</code>. To
    #         retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.</p>
    #
    # @return [Types::ListAnomalyDetectorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_anomaly_detectors(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAnomalyDetectorsOutput
    #   resp.data.anomaly_detector_summary_list #=> Array<AnomalyDetectorSummary>
    #   resp.data.anomaly_detector_summary_list[0] #=> Types::AnomalyDetectorSummary
    #   resp.data.anomaly_detector_summary_list[0].anomaly_detector_arn #=> String
    #   resp.data.anomaly_detector_summary_list[0].anomaly_detector_name #=> String
    #   resp.data.anomaly_detector_summary_list[0].anomaly_detector_description #=> String
    #   resp.data.anomaly_detector_summary_list[0].creation_time #=> Time
    #   resp.data.anomaly_detector_summary_list[0].last_modification_time #=> Time
    #   resp.data.anomaly_detector_summary_list[0].status #=> String, one of ["ACTIVE", "ACTIVATING", "DELETING", "FAILED", "INACTIVE", "LEARNING", "BACK_TEST_ACTIVATING", "BACK_TEST_ACTIVE", "BACK_TEST_COMPLETE", "DEACTIVATED", "DEACTIVATING"]
    #   resp.data.anomaly_detector_summary_list[0].tags #=> Hash<String, String>
    #   resp.data.anomaly_detector_summary_list[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_anomaly_detectors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAnomalyDetectorsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAnomalyDetectorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAnomalyDetectors
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::ListAnomalyDetectors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAnomalyDetectors,
        stubs: @stubs,
        params_class: Params::ListAnomalyDetectorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_anomaly_detectors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of measures that are potential causes or effects of an
    #             anomaly group.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAnomalyGroupRelatedMetricsInput}.
    #
    # @option params [String] :anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #
    # @option params [String] :anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #
    # @option params [String] :relationship_type_filter
    #   <p>Filter for potential causes (<code>CAUSE_OF_INPUT_ANOMALY_GROUP</code>) or
    #               downstream effects (<code>EFFECT_OF_INPUT_ANOMALY_GROUP</code>) of the anomaly group.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next
    #               page of results.</p>
    #
    # @return [Types::ListAnomalyGroupRelatedMetricsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_anomaly_group_related_metrics(
    #     anomaly_detector_arn: 'AnomalyDetectorArn', # required
    #     anomaly_group_id: 'AnomalyGroupId', # required
    #     relationship_type_filter: 'CAUSE_OF_INPUT_ANOMALY_GROUP', # accepts ["CAUSE_OF_INPUT_ANOMALY_GROUP", "EFFECT_OF_INPUT_ANOMALY_GROUP"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAnomalyGroupRelatedMetricsOutput
    #   resp.data.inter_metric_impact_list #=> Array<InterMetricImpactDetails>
    #   resp.data.inter_metric_impact_list[0] #=> Types::InterMetricImpactDetails
    #   resp.data.inter_metric_impact_list[0].metric_name #=> String
    #   resp.data.inter_metric_impact_list[0].anomaly_group_id #=> String
    #   resp.data.inter_metric_impact_list[0].relationship_type #=> String, one of ["CAUSE_OF_INPUT_ANOMALY_GROUP", "EFFECT_OF_INPUT_ANOMALY_GROUP"]
    #   resp.data.inter_metric_impact_list[0].contribution_percentage #=> Float
    #   resp.data.next_token #=> String
    #
    def list_anomaly_group_related_metrics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAnomalyGroupRelatedMetricsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAnomalyGroupRelatedMetricsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAnomalyGroupRelatedMetrics
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::ListAnomalyGroupRelatedMetrics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAnomalyGroupRelatedMetrics,
        stubs: @stubs,
        params_class: Params::ListAnomalyGroupRelatedMetricsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_anomaly_group_related_metrics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of anomaly groups.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAnomalyGroupSummariesInput}.
    #
    # @option params [String] :anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #
    # @option params [Integer] :sensitivity_threshold
    #   <p>The minimum severity score for inclusion in the output.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    # @return [Types::ListAnomalyGroupSummariesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_anomaly_group_summaries(
    #     anomaly_detector_arn: 'AnomalyDetectorArn', # required
    #     sensitivity_threshold: 1, # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAnomalyGroupSummariesOutput
    #   resp.data.anomaly_group_summary_list #=> Array<AnomalyGroupSummary>
    #   resp.data.anomaly_group_summary_list[0] #=> Types::AnomalyGroupSummary
    #   resp.data.anomaly_group_summary_list[0].start_time #=> String
    #   resp.data.anomaly_group_summary_list[0].end_time #=> String
    #   resp.data.anomaly_group_summary_list[0].anomaly_group_id #=> String
    #   resp.data.anomaly_group_summary_list[0].anomaly_group_score #=> Float
    #   resp.data.anomaly_group_summary_list[0].primary_metric_name #=> String
    #   resp.data.anomaly_group_statistics #=> Types::AnomalyGroupStatistics
    #   resp.data.anomaly_group_statistics.evaluation_start_date #=> String
    #   resp.data.anomaly_group_statistics.total_count #=> Integer
    #   resp.data.anomaly_group_statistics.itemized_metric_stats_list #=> Array<ItemizedMetricStats>
    #   resp.data.anomaly_group_statistics.itemized_metric_stats_list[0] #=> Types::ItemizedMetricStats
    #   resp.data.anomaly_group_statistics.itemized_metric_stats_list[0].metric_name #=> String
    #   resp.data.anomaly_group_statistics.itemized_metric_stats_list[0].occurrence_count #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_anomaly_group_summaries(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAnomalyGroupSummariesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAnomalyGroupSummariesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAnomalyGroupSummaries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::ListAnomalyGroupSummaries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAnomalyGroupSummaries,
        stubs: @stubs,
        params_class: Params::ListAnomalyGroupSummariesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_anomaly_group_summaries
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of anomalous metrics for a measure in an anomaly group.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAnomalyGroupTimeSeriesInput}.
    #
    # @option params [String] :anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #
    # @option params [String] :anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #
    # @option params [String] :metric_name
    #   <p>The name of the measure field.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    # @return [Types::ListAnomalyGroupTimeSeriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_anomaly_group_time_series(
    #     anomaly_detector_arn: 'AnomalyDetectorArn', # required
    #     anomaly_group_id: 'AnomalyGroupId', # required
    #     metric_name: 'MetricName', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAnomalyGroupTimeSeriesOutput
    #   resp.data.anomaly_group_id #=> String
    #   resp.data.metric_name #=> String
    #   resp.data.timestamp_list #=> Array<String>
    #   resp.data.timestamp_list[0] #=> String
    #   resp.data.next_token #=> String
    #   resp.data.time_series_list #=> Array<TimeSeries>
    #   resp.data.time_series_list[0] #=> Types::TimeSeries
    #   resp.data.time_series_list[0].time_series_id #=> String
    #   resp.data.time_series_list[0].dimension_list #=> Array<DimensionNameValue>
    #   resp.data.time_series_list[0].dimension_list[0] #=> Types::DimensionNameValue
    #   resp.data.time_series_list[0].dimension_list[0].dimension_name #=> String
    #   resp.data.time_series_list[0].dimension_list[0].dimension_value #=> String
    #   resp.data.time_series_list[0].metric_value_list #=> Array<Float>
    #   resp.data.time_series_list[0].metric_value_list[0] #=> Float
    #
    def list_anomaly_group_time_series(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAnomalyGroupTimeSeriesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAnomalyGroupTimeSeriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAnomalyGroupTimeSeries
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::ListAnomalyGroupTimeSeries
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAnomalyGroupTimeSeries,
        stubs: @stubs,
        params_class: Params::ListAnomalyGroupTimeSeriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_anomaly_group_time_series
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the datasets in the current AWS Region.</p>
    #          <p>Amazon Lookout for Metrics API actions are eventually consistent. If you do a read operation on a resource
    #       immediately after creating or modifying it, use retries to allow time for the write operation to complete.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMetricSetsInput}.
    #
    # @option params [String] :anomaly_detector_arn
    #   <p>The ARN of the anomaly detector containing the metrics sets to list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    #
    # @return [Types::ListMetricSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_metric_sets(
    #     anomaly_detector_arn: 'AnomalyDetectorArn',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMetricSetsOutput
    #   resp.data.metric_set_summary_list #=> Array<MetricSetSummary>
    #   resp.data.metric_set_summary_list[0] #=> Types::MetricSetSummary
    #   resp.data.metric_set_summary_list[0].metric_set_arn #=> String
    #   resp.data.metric_set_summary_list[0].anomaly_detector_arn #=> String
    #   resp.data.metric_set_summary_list[0].metric_set_description #=> String
    #   resp.data.metric_set_summary_list[0].metric_set_name #=> String
    #   resp.data.metric_set_summary_list[0].creation_time #=> Time
    #   resp.data.metric_set_summary_list[0].last_modification_time #=> Time
    #   resp.data.metric_set_summary_list[0].tags #=> Hash<String, String>
    #   resp.data.metric_set_summary_list[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_metric_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMetricSetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMetricSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMetricSets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::ListMetricSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMetricSets,
        stubs: @stubs,
        params_class: Params::ListMetricSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_metric_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a> for a detector, dataset, or alert.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn' # required
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Add feedback for an anomalous metric.</p>
    #
    # @param [Hash] params
    #   See {Types::PutFeedbackInput}.
    #
    # @option params [String] :anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #
    # @option params [AnomalyGroupTimeSeriesFeedback] :anomaly_group_time_series_feedback
    #   <p>Feedback for an anomalous metric.</p>
    #
    # @return [Types::PutFeedbackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_feedback(
    #     anomaly_detector_arn: 'AnomalyDetectorArn', # required
    #     anomaly_group_time_series_feedback: {
    #       anomaly_group_id: 'AnomalyGroupId', # required
    #       time_series_id: 'TimeSeriesId', # required
    #       is_anomaly: false # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutFeedbackOutput
    #
    def put_feedback(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutFeedbackInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutFeedbackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutFeedback
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::PutFeedback
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutFeedback,
        stubs: @stubs,
        params_class: Params::PutFeedbackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_feedback
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a> to a detector, dataset, or alert.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to apply to the resource. Tag keys and values can contain letters, numbers, spaces, and the following
    #         symbols: <code>_.:/=+@-</code>
    #            </p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Removes <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a> from a detector, dataset, or alert.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Keys to remove from the resource's tags.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Updates a detector. After activation, you can only change a detector's ingestion delay and description.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAnomalyDetectorInput}.
    #
    # @option params [String] :anomaly_detector_arn
    #   <p>The ARN of the detector to update.</p>
    #
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of an AWS KMS encryption key.</p>
    #
    # @option params [String] :anomaly_detector_description
    #   <p>The updated detector description.</p>
    #
    # @option params [AnomalyDetectorConfig] :anomaly_detector_config
    #   <p>Contains information about the configuration to which the detector will be updated.</p>
    #
    # @return [Types::UpdateAnomalyDetectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_anomaly_detector(
    #     anomaly_detector_arn: 'AnomalyDetectorArn', # required
    #     kms_key_arn: 'KmsKeyArn',
    #     anomaly_detector_description: 'AnomalyDetectorDescription',
    #     anomaly_detector_config: {
    #       anomaly_detector_frequency: 'P1D' # accepts ["P1D", "PT1H", "PT10M", "PT5M"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAnomalyDetectorOutput
    #   resp.data.anomaly_detector_arn #=> String
    #
    def update_anomaly_detector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAnomalyDetectorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAnomalyDetectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAnomalyDetector
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::UpdateAnomalyDetector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAnomalyDetector,
        stubs: @stubs,
        params_class: Params::UpdateAnomalyDetectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_anomaly_detector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a dataset.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateMetricSetInput}.
    #
    # @option params [String] :metric_set_arn
    #   <p>The ARN of the dataset to update.</p>
    #
    # @option params [String] :metric_set_description
    #   <p>The dataset's description.</p>
    #
    # @option params [Array<Metric>] :metric_list
    #   <p>The metric list.</p>
    #
    # @option params [Integer] :offset
    #   <p>After an interval ends, the amount of seconds that the detector waits before importing data. Offset is only supported for S3 and Redshift datasources.</p>
    #
    # @option params [TimestampColumn] :timestamp_column
    #   <p>The timestamp column.</p>
    #
    # @option params [Array<String>] :dimension_list
    #   <p>The dimension list.</p>
    #
    # @option params [String] :metric_set_frequency
    #   <p>The dataset's interval.</p>
    #
    # @option params [MetricSource] :metric_source
    #   <p>Contains information about source data used to generate metrics.</p>
    #
    # @return [Types::UpdateMetricSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_metric_set(
    #     metric_set_arn: 'MetricSetArn', # required
    #     metric_set_description: 'MetricSetDescription',
    #     metric_list: [
    #       {
    #         metric_name: 'MetricName', # required
    #         aggregation_function: 'AVG', # required - accepts ["AVG", "SUM"]
    #         namespace: 'Namespace'
    #       }
    #     ],
    #     offset: 1,
    #     timestamp_column: {
    #       column_name: 'ColumnName',
    #       column_format: 'ColumnFormat'
    #     },
    #     dimension_list: [
    #       'member'
    #     ],
    #     metric_set_frequency: 'P1D', # accepts ["P1D", "PT1H", "PT10M", "PT5M"]
    #     metric_source: {
    #       s3_source_config: {
    #         role_arn: 'RoleArn',
    #         templated_path_list: [
    #           'member'
    #         ],
    #         historical_data_path_list: [
    #           'member'
    #         ],
    #         file_format_descriptor: {
    #           csv_format_descriptor: {
    #             file_compression: 'NONE', # accepts ["NONE", "GZIP"]
    #             charset: 'Charset',
    #             contains_header: false,
    #             delimiter: 'Delimiter',
    #             header_list: [
    #               'member'
    #             ],
    #             quote_symbol: 'QuoteSymbol'
    #           },
    #           json_format_descriptor: {
    #             file_compression: 'NONE', # accepts ["NONE", "GZIP"]
    #             charset: 'Charset'
    #           }
    #         }
    #       },
    #       app_flow_config: {
    #         role_arn: 'RoleArn',
    #         flow_name: 'FlowName'
    #       },
    #       cloud_watch_config: {
    #         role_arn: 'RoleArn',
    #         back_test_configuration: {
    #           run_back_test_mode: false # required
    #         }
    #       },
    #       rds_source_config: {
    #         db_instance_identifier: 'DBInstanceIdentifier',
    #         database_host: 'DatabaseHost',
    #         database_port: 1,
    #         secret_manager_arn: 'SecretManagerArn',
    #         database_name: 'DatabaseName',
    #         table_name: 'TableName',
    #         role_arn: 'RoleArn',
    #         vpc_configuration: {
    #           subnet_id_list: [
    #             'member'
    #           ], # required
    #           security_group_id_list: [
    #             'member'
    #           ] # required
    #         }
    #       },
    #       redshift_source_config: {
    #         cluster_identifier: 'ClusterIdentifier',
    #         database_host: 'DatabaseHost',
    #         database_port: 1,
    #         secret_manager_arn: 'SecretManagerArn',
    #         database_name: 'DatabaseName',
    #         table_name: 'TableName',
    #         role_arn: 'RoleArn',
    #       },
    #       athena_source_config: {
    #         role_arn: 'RoleArn',
    #         database_name: 'DatabaseName',
    #         data_catalog: 'DataCatalog',
    #         table_name: 'TableName',
    #         work_group_name: 'WorkGroupName',
    #         s3_results_path: 'S3ResultsPath',
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMetricSetOutput
    #   resp.data.metric_set_arn #=> String
    #
    def update_metric_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMetricSetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMetricSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMetricSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::TooManyRequestsException, Errors::ValidationException]),
        data_parser: Parsers::UpdateMetricSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMetricSet,
        stubs: @stubs,
        params_class: Params::UpdateMetricSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_metric_set
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
