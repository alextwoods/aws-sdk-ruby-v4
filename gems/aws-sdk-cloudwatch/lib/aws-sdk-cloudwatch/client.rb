# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::CloudWatch
  # <p>Amazon CloudWatch monitors your Amazon Web Services (Amazon Web Services) resources and the
  # 			applications you run on Amazon Web Services in real time. You can use CloudWatch to collect and track
  # 			metrics, which are the variables you want to measure for your resources and
  # 			applications.</p>
  #          <p>CloudWatch alarms send notifications or automatically change the resources you are monitoring based on rules
  # 			that you define. For example, you can monitor the CPU usage and disk reads and writes of your Amazon EC2
  # 			instances. Then, use this data to determine whether you should launch
  # 			additional instances to handle increased load. You can also use this data to stop
  # 			under-used instances to save
  # 			money.</p>
  #          <p>In addition to monitoring the built-in metrics that come with Amazon Web Services, you can monitor
  # 			your own custom metrics. With CloudWatch, you gain system-wide visibility into resource
  # 			utilization, application performance, and operational health.</p>
  class Client
    include Hearth::ClientStubs

    # @api private
    @plugins = Hearth::PluginList.new

    # @return [Hearth::PluginList]
    def self.plugins
      @plugins
    end

    # @param [Hash] options
    #   Options used to construct an instance of {Config}
    def initialize(options = {})
      @config = initialize_config(options)
      @stubs = Hearth::Stubs.new
    end

    # @return [Config] config
    attr_reader :config

    # <p>Deletes the specified alarms. You can delete up to 100 alarms in one operation. However, this total can include no more
    # 			than one composite alarm. For example, you could delete 99 metric alarms and one composite alarms with one operation, but you can't
    # 			delete two composite alarms with one operation.</p>
    #          <p>
    # 			If you specify an incorrect alarm name or make any other error in the operation, no alarms are
    # 			deleted. To confirm that alarms were deleted successfully, you can use
    # 			the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarms.html">DescribeAlarms</a> operation after using
    # 		<code>DeleteAlarms</code>.</p>
    #          <note>
    #             <p>It is possible to create a loop or cycle of composite alarms, where composite alarm A depends on composite alarm B, and
    # 			composite alarm B also depends on composite alarm A. In this scenario, you can't delete any composite alarm that is part of the cycle
    # 			because there is always still a composite alarm that depends on that alarm that you want to delete.</p>
    #             <p>To get out of such a situation, you must
    # 				break the cycle by changing the rule of one of the composite alarms in the cycle to remove a dependency that creates the cycle. The simplest
    # 				change to make to break a cycle is to change the <code>AlarmRule</code> of one of the alarms to <code>false</code>. </p>
    #             <p>Additionally, the evaluation of composite alarms stops if CloudWatch detects a cycle in the evaluation path.
    # 			</p>
    #          </note>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DeleteAlarmsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DeleteAlarmsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.delete_alarms(
    #     alarm_names: [
    #       'member'
    #     ] # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteAlarmsOutput
    def delete_alarms(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAlarmsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAlarmsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAlarms
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :delete_alarms),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::ResourceNotFound]
        ),
        data_parser: Parsers::DeleteAlarms
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::ResourceNotFound],
        stub_data_class: Stubs::DeleteAlarms,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :delete_alarms,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#delete_alarms] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#delete_alarms] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#delete_alarms] #{output.data}")
      output
    end

    # <p>
    # 			Deletes the specified anomaly detection model
    # 			from your account.
    # 			For more information
    # 			about
    # 			how to delete an anomaly detection model,
    # 			see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Create_Anomaly_Detection_Alarm.html#Delete_Anomaly_Detection_Model">Deleting an anomaly detection model</a>
    # 			in the <i>CloudWatch User Guide</i>.
    # 		</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DeleteAnomalyDetectorInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DeleteAnomalyDetectorOutput]
    # @example Request syntax with placeholder values
    #   resp = client.delete_anomaly_detector(
    #     namespace: 'Namespace',
    #     metric_name: 'MetricName',
    #     dimensions: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     stat: 'Stat',
    #     single_metric_anomaly_detector: {
    #       namespace: 'Namespace',
    #       metric_name: 'MetricName',
    #       stat: 'Stat'
    #     },
    #     metric_math_anomaly_detector: {
    #       metric_data_queries: [
    #         {
    #           id: 'Id', # required
    #           metric_stat: {
    #             metric: {
    #               namespace: 'Namespace',
    #               metric_name: 'MetricName',
    #             }, # required
    #             period: 1, # required
    #             stat: 'Stat', # required
    #             unit: 'Seconds' # accepts ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #           },
    #           expression: 'Expression',
    #           label: 'Label',
    #           return_data: false,
    #           period: 1,
    #           account_id: 'AccountId'
    #         }
    #       ]
    #     }
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteAnomalyDetectorOutput
    def delete_anomaly_detector(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAnomalyDetectorInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAnomalyDetectorInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAnomalyDetector
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :delete_anomaly_detector),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::InternalServiceFault, Errors::MissingRequiredParameterException]
        ),
        data_parser: Parsers::DeleteAnomalyDetector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::ResourceNotFoundException, Stubs::InvalidParameterCombinationException, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault, Stubs::MissingRequiredParameterException],
        stub_data_class: Stubs::DeleteAnomalyDetector,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :delete_anomaly_detector,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#delete_anomaly_detector] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#delete_anomaly_detector] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#delete_anomaly_detector] #{output.data}")
      output
    end

    # <p>Deletes all dashboards that you specify. You
    # 			can specify up to 100 dashboards to delete. If there is an error during this call, no dashboards are
    # 			deleted.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DeleteDashboardsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DeleteDashboardsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.delete_dashboards(
    #     dashboard_names: [
    #       'member'
    #     ] # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteDashboardsOutput
    def delete_dashboards(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDashboardsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDashboardsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDashboards
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :delete_dashboards),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::DashboardNotFoundError, Errors::InvalidParameterValueException, Errors::InternalServiceFault]
        ),
        data_parser: Parsers::DeleteDashboards
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::DashboardNotFoundError, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault],
        stub_data_class: Stubs::DeleteDashboards,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :delete_dashboards,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#delete_dashboards] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#delete_dashboards] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#delete_dashboards] #{output.data}")
      output
    end

    # <p>Permanently deletes the specified Contributor Insights rules.</p>
    #          <p>If you create a rule, delete it, and then re-create it with the same name, historical data from the first time
    # 			the rule was created might
    # 			not be available.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DeleteInsightRulesInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DeleteInsightRulesOutput]
    # @example Request syntax with placeholder values
    #   resp = client.delete_insight_rules(
    #     rule_names: [
    #       'member'
    #     ] # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteInsightRulesOutput
    #   resp.data.failures #=> Array<PartialFailure>
    #   resp.data.failures[0] #=> Types::PartialFailure
    #   resp.data.failures[0].failure_resource #=> String
    #   resp.data.failures[0].exception_type #=> String
    #   resp.data.failures[0].failure_code #=> String
    #   resp.data.failures[0].failure_description #=> String
    def delete_insight_rules(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteInsightRulesInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteInsightRulesInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteInsightRules
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :delete_insight_rules),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InvalidParameterValueException, Errors::MissingRequiredParameterException]
        ),
        data_parser: Parsers::DeleteInsightRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InvalidParameterValueException, Stubs::MissingRequiredParameterException],
        stub_data_class: Stubs::DeleteInsightRules,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :delete_insight_rules,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#delete_insight_rules] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#delete_insight_rules] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#delete_insight_rules] #{output.data}")
      output
    end

    # <p>Permanently deletes the metric stream that you specify.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DeleteMetricStreamInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DeleteMetricStreamOutput]
    # @example Request syntax with placeholder values
    #   resp = client.delete_metric_stream(
    #     name: 'Name' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteMetricStreamOutput
    def delete_metric_stream(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMetricStreamInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMetricStreamInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMetricStream
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :delete_metric_stream),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InvalidParameterValueException, Errors::InternalServiceFault, Errors::MissingRequiredParameterException]
        ),
        data_parser: Parsers::DeleteMetricStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InvalidParameterValueException, Stubs::InternalServiceFault, Stubs::MissingRequiredParameterException],
        stub_data_class: Stubs::DeleteMetricStream,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :delete_metric_stream,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#delete_metric_stream] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#delete_metric_stream] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#delete_metric_stream] #{output.data}")
      output
    end

    # <p>Retrieves the history for the specified alarm. You can filter the results by date range or item type.
    # 			If an alarm name is not specified, the histories for either all metric alarms or all composite alarms are returned.</p>
    #          <p>CloudWatch retains the history of an alarm even if you delete the alarm.</p>
    #          <p>To use this operation and return information about a composite alarm, you must be signed on with
    # 			the <code>cloudwatch:DescribeAlarmHistory</code> permission that is scoped to <code>*</code>. You can't return information
    # 			about composite alarms if your <code>cloudwatch:DescribeAlarmHistory</code> permission has a narrower scope.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DescribeAlarmHistoryInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DescribeAlarmHistoryOutput]
    # @example Request syntax with placeholder values
    #   resp = client.describe_alarm_history(
    #     alarm_name: 'AlarmName',
    #     alarm_types: [
    #       'CompositeAlarm' # accepts ["CompositeAlarm", "MetricAlarm"]
    #     ],
    #     history_item_type: 'ConfigurationUpdate', # accepts ["ConfigurationUpdate", "StateUpdate", "Action"]
    #     start_date: Time.now,
    #     end_date: Time.now,
    #     max_records: 1,
    #     next_token: 'NextToken',
    #     scan_by: 'TimestampDescending' # accepts ["TimestampDescending", "TimestampAscending"]
    #   )
    # @example Response structure
    #   resp.data #=> Types::DescribeAlarmHistoryOutput
    #   resp.data.alarm_history_items #=> Array<AlarmHistoryItem>
    #   resp.data.alarm_history_items[0] #=> Types::AlarmHistoryItem
    #   resp.data.alarm_history_items[0].alarm_name #=> String
    #   resp.data.alarm_history_items[0].alarm_type #=> String, one of ["CompositeAlarm", "MetricAlarm"]
    #   resp.data.alarm_history_items[0].timestamp #=> Time
    #   resp.data.alarm_history_items[0].history_item_type #=> String, one of ["ConfigurationUpdate", "StateUpdate", "Action"]
    #   resp.data.alarm_history_items[0].history_summary #=> String
    #   resp.data.alarm_history_items[0].history_data #=> String
    #   resp.data.next_token #=> String
    def describe_alarm_history(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAlarmHistoryInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAlarmHistoryInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAlarmHistory
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :describe_alarm_history),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InvalidNextToken]
        ),
        data_parser: Parsers::DescribeAlarmHistory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InvalidNextToken],
        stub_data_class: Stubs::DescribeAlarmHistory,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :describe_alarm_history,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_alarm_history] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#describe_alarm_history] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_alarm_history] #{output.data}")
      output
    end

    # <p>Retrieves the specified alarms. You can filter the results by specifying a prefix for the alarm
    # 			name, the alarm state, or a prefix for any action.</p>
    #          <p>To use this operation and return information about composite alarms, you must be signed on with
    # 		the <code>cloudwatch:DescribeAlarms</code> permission that is scoped to <code>*</code>. You can't return information
    # 			about composite alarms if your <code>cloudwatch:DescribeAlarms</code> permission has a narrower scope.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DescribeAlarmsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DescribeAlarmsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.describe_alarms(
    #     alarm_names: [
    #       'member'
    #     ],
    #     alarm_name_prefix: 'AlarmNamePrefix',
    #     alarm_types: [
    #       'CompositeAlarm' # accepts ["CompositeAlarm", "MetricAlarm"]
    #     ],
    #     children_of_alarm_name: 'ChildrenOfAlarmName',
    #     parents_of_alarm_name: 'ParentsOfAlarmName',
    #     state_value: 'OK', # accepts ["OK", "ALARM", "INSUFFICIENT_DATA"]
    #     action_prefix: 'ActionPrefix',
    #     max_records: 1,
    #     next_token: 'NextToken'
    #   )
    # @example Response structure
    #   resp.data #=> Types::DescribeAlarmsOutput
    #   resp.data.composite_alarms #=> Array<CompositeAlarm>
    #   resp.data.composite_alarms[0] #=> Types::CompositeAlarm
    #   resp.data.composite_alarms[0].actions_enabled #=> Boolean
    #   resp.data.composite_alarms[0].alarm_actions #=> Array<String>
    #   resp.data.composite_alarms[0].alarm_actions[0] #=> String
    #   resp.data.composite_alarms[0].alarm_arn #=> String
    #   resp.data.composite_alarms[0].alarm_configuration_updated_timestamp #=> Time
    #   resp.data.composite_alarms[0].alarm_description #=> String
    #   resp.data.composite_alarms[0].alarm_name #=> String
    #   resp.data.composite_alarms[0].alarm_rule #=> String
    #   resp.data.composite_alarms[0].insufficient_data_actions #=> Array<String>
    #   resp.data.composite_alarms[0].ok_actions #=> Array<String>
    #   resp.data.composite_alarms[0].state_reason #=> String
    #   resp.data.composite_alarms[0].state_reason_data #=> String
    #   resp.data.composite_alarms[0].state_updated_timestamp #=> Time
    #   resp.data.composite_alarms[0].state_value #=> String, one of ["OK", "ALARM", "INSUFFICIENT_DATA"]
    #   resp.data.composite_alarms[0].state_transitioned_timestamp #=> Time
    #   resp.data.composite_alarms[0].actions_suppressed_by #=> String, one of ["WaitPeriod", "ExtensionPeriod", "Alarm"]
    #   resp.data.composite_alarms[0].actions_suppressed_reason #=> String
    #   resp.data.composite_alarms[0].actions_suppressor #=> String
    #   resp.data.composite_alarms[0].actions_suppressor_wait_period #=> Integer
    #   resp.data.composite_alarms[0].actions_suppressor_extension_period #=> Integer
    #   resp.data.metric_alarms #=> Array<MetricAlarm>
    #   resp.data.metric_alarms[0] #=> Types::MetricAlarm
    #   resp.data.metric_alarms[0].alarm_name #=> String
    #   resp.data.metric_alarms[0].alarm_arn #=> String
    #   resp.data.metric_alarms[0].alarm_description #=> String
    #   resp.data.metric_alarms[0].alarm_configuration_updated_timestamp #=> Time
    #   resp.data.metric_alarms[0].actions_enabled #=> Boolean
    #   resp.data.metric_alarms[0].ok_actions #=> Array<String>
    #   resp.data.metric_alarms[0].alarm_actions #=> Array<String>
    #   resp.data.metric_alarms[0].insufficient_data_actions #=> Array<String>
    #   resp.data.metric_alarms[0].state_value #=> String, one of ["OK", "ALARM", "INSUFFICIENT_DATA"]
    #   resp.data.metric_alarms[0].state_reason #=> String
    #   resp.data.metric_alarms[0].state_reason_data #=> String
    #   resp.data.metric_alarms[0].state_updated_timestamp #=> Time
    #   resp.data.metric_alarms[0].metric_name #=> String
    #   resp.data.metric_alarms[0].namespace #=> String
    #   resp.data.metric_alarms[0].statistic #=> String, one of ["SampleCount", "Average", "Sum", "Minimum", "Maximum"]
    #   resp.data.metric_alarms[0].extended_statistic #=> String
    #   resp.data.metric_alarms[0].dimensions #=> Array<Dimension>
    #   resp.data.metric_alarms[0].dimensions[0] #=> Types::Dimension
    #   resp.data.metric_alarms[0].dimensions[0].name #=> String
    #   resp.data.metric_alarms[0].dimensions[0].value #=> String
    #   resp.data.metric_alarms[0].period #=> Integer
    #   resp.data.metric_alarms[0].unit #=> String, one of ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #   resp.data.metric_alarms[0].evaluation_periods #=> Integer
    #   resp.data.metric_alarms[0].datapoints_to_alarm #=> Integer
    #   resp.data.metric_alarms[0].threshold #=> Float
    #   resp.data.metric_alarms[0].comparison_operator #=> String, one of ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold", "LessThanLowerOrGreaterThanUpperThreshold", "LessThanLowerThreshold", "GreaterThanUpperThreshold"]
    #   resp.data.metric_alarms[0].treat_missing_data #=> String
    #   resp.data.metric_alarms[0].evaluate_low_sample_count_percentile #=> String
    #   resp.data.metric_alarms[0].metrics #=> Array<MetricDataQuery>
    #   resp.data.metric_alarms[0].metrics[0] #=> Types::MetricDataQuery
    #   resp.data.metric_alarms[0].metrics[0].id #=> String
    #   resp.data.metric_alarms[0].metrics[0].metric_stat #=> Types::MetricStat
    #   resp.data.metric_alarms[0].metrics[0].metric_stat.metric #=> Types::Metric
    #   resp.data.metric_alarms[0].metrics[0].metric_stat.metric.namespace #=> String
    #   resp.data.metric_alarms[0].metrics[0].metric_stat.metric.metric_name #=> String
    #   resp.data.metric_alarms[0].metrics[0].metric_stat.metric.dimensions #=> Array<Dimension>
    #   resp.data.metric_alarms[0].metrics[0].metric_stat.period #=> Integer
    #   resp.data.metric_alarms[0].metrics[0].metric_stat.stat #=> String
    #   resp.data.metric_alarms[0].metrics[0].metric_stat.unit #=> String, one of ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #   resp.data.metric_alarms[0].metrics[0].expression #=> String
    #   resp.data.metric_alarms[0].metrics[0].label #=> String
    #   resp.data.metric_alarms[0].metrics[0].return_data #=> Boolean
    #   resp.data.metric_alarms[0].metrics[0].period #=> Integer
    #   resp.data.metric_alarms[0].metrics[0].account_id #=> String
    #   resp.data.metric_alarms[0].threshold_metric_id #=> String
    #   resp.data.metric_alarms[0].evaluation_state #=> String, one of ["PARTIAL_DATA"]
    #   resp.data.metric_alarms[0].state_transitioned_timestamp #=> Time
    #   resp.data.next_token #=> String
    def describe_alarms(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAlarmsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAlarmsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAlarms
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :describe_alarms),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InvalidNextToken]
        ),
        data_parser: Parsers::DescribeAlarms
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InvalidNextToken],
        stub_data_class: Stubs::DescribeAlarms,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :describe_alarms,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_alarms] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#describe_alarms] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_alarms] #{output.data}")
      output
    end

    # <p>Retrieves the alarms for the specified metric. To
    # 			filter the results, specify a statistic, period, or unit.</p>
    #          <p>This operation retrieves only standard alarms that are based on
    # 		the specified metric. It does not return alarms based on math expressions that
    # 		use the specified metric, or composite alarms that use the specified metric.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DescribeAlarmsForMetricInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DescribeAlarmsForMetricOutput]
    # @example Request syntax with placeholder values
    #   resp = client.describe_alarms_for_metric(
    #     metric_name: 'MetricName', # required
    #     namespace: 'Namespace', # required
    #     statistic: 'SampleCount', # accepts ["SampleCount", "Average", "Sum", "Minimum", "Maximum"]
    #     extended_statistic: 'ExtendedStatistic',
    #     dimensions: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     period: 1,
    #     unit: 'Seconds' # accepts ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #   )
    # @example Response structure
    #   resp.data #=> Types::DescribeAlarmsForMetricOutput
    #   resp.data.metric_alarms #=> Array<MetricAlarm>
    #   resp.data.metric_alarms[0] #=> Types::MetricAlarm
    #   resp.data.metric_alarms[0].alarm_name #=> String
    #   resp.data.metric_alarms[0].alarm_arn #=> String
    #   resp.data.metric_alarms[0].alarm_description #=> String
    #   resp.data.metric_alarms[0].alarm_configuration_updated_timestamp #=> Time
    #   resp.data.metric_alarms[0].actions_enabled #=> Boolean
    #   resp.data.metric_alarms[0].ok_actions #=> Array<String>
    #   resp.data.metric_alarms[0].ok_actions[0] #=> String
    #   resp.data.metric_alarms[0].alarm_actions #=> Array<String>
    #   resp.data.metric_alarms[0].insufficient_data_actions #=> Array<String>
    #   resp.data.metric_alarms[0].state_value #=> String, one of ["OK", "ALARM", "INSUFFICIENT_DATA"]
    #   resp.data.metric_alarms[0].state_reason #=> String
    #   resp.data.metric_alarms[0].state_reason_data #=> String
    #   resp.data.metric_alarms[0].state_updated_timestamp #=> Time
    #   resp.data.metric_alarms[0].metric_name #=> String
    #   resp.data.metric_alarms[0].namespace #=> String
    #   resp.data.metric_alarms[0].statistic #=> String, one of ["SampleCount", "Average", "Sum", "Minimum", "Maximum"]
    #   resp.data.metric_alarms[0].extended_statistic #=> String
    #   resp.data.metric_alarms[0].dimensions #=> Array<Dimension>
    #   resp.data.metric_alarms[0].dimensions[0] #=> Types::Dimension
    #   resp.data.metric_alarms[0].dimensions[0].name #=> String
    #   resp.data.metric_alarms[0].dimensions[0].value #=> String
    #   resp.data.metric_alarms[0].period #=> Integer
    #   resp.data.metric_alarms[0].unit #=> String, one of ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #   resp.data.metric_alarms[0].evaluation_periods #=> Integer
    #   resp.data.metric_alarms[0].datapoints_to_alarm #=> Integer
    #   resp.data.metric_alarms[0].threshold #=> Float
    #   resp.data.metric_alarms[0].comparison_operator #=> String, one of ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold", "LessThanLowerOrGreaterThanUpperThreshold", "LessThanLowerThreshold", "GreaterThanUpperThreshold"]
    #   resp.data.metric_alarms[0].treat_missing_data #=> String
    #   resp.data.metric_alarms[0].evaluate_low_sample_count_percentile #=> String
    #   resp.data.metric_alarms[0].metrics #=> Array<MetricDataQuery>
    #   resp.data.metric_alarms[0].metrics[0] #=> Types::MetricDataQuery
    #   resp.data.metric_alarms[0].metrics[0].id #=> String
    #   resp.data.metric_alarms[0].metrics[0].metric_stat #=> Types::MetricStat
    #   resp.data.metric_alarms[0].metrics[0].metric_stat.metric #=> Types::Metric
    #   resp.data.metric_alarms[0].metrics[0].metric_stat.metric.namespace #=> String
    #   resp.data.metric_alarms[0].metrics[0].metric_stat.metric.metric_name #=> String
    #   resp.data.metric_alarms[0].metrics[0].metric_stat.metric.dimensions #=> Array<Dimension>
    #   resp.data.metric_alarms[0].metrics[0].metric_stat.period #=> Integer
    #   resp.data.metric_alarms[0].metrics[0].metric_stat.stat #=> String
    #   resp.data.metric_alarms[0].metrics[0].metric_stat.unit #=> String, one of ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #   resp.data.metric_alarms[0].metrics[0].expression #=> String
    #   resp.data.metric_alarms[0].metrics[0].label #=> String
    #   resp.data.metric_alarms[0].metrics[0].return_data #=> Boolean
    #   resp.data.metric_alarms[0].metrics[0].period #=> Integer
    #   resp.data.metric_alarms[0].metrics[0].account_id #=> String
    #   resp.data.metric_alarms[0].threshold_metric_id #=> String
    #   resp.data.metric_alarms[0].evaluation_state #=> String, one of ["PARTIAL_DATA"]
    #   resp.data.metric_alarms[0].state_transitioned_timestamp #=> Time
    def describe_alarms_for_metric(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAlarmsForMetricInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAlarmsForMetricInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAlarmsForMetric
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :describe_alarms_for_metric),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: []
        ),
        data_parser: Parsers::DescribeAlarmsForMetric
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [],
        stub_data_class: Stubs::DescribeAlarmsForMetric,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :describe_alarms_for_metric,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_alarms_for_metric] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#describe_alarms_for_metric] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_alarms_for_metric] #{output.data}")
      output
    end

    # <p>Lists the anomaly detection models that you have created in your account.
    # 			For single metric anomaly detectors,
    # 			you can list all of the models in your account or filter the results
    # 			to only the models that are related to a certain namespace, metric name, or metric dimension.
    # 			For metric math anomaly detectors,
    # 			you can list them by adding <code>METRIC_MATH</code> to the <code>AnomalyDetectorTypes</code> array.
    # 			This will return all metric math anomaly detectors in your account.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DescribeAnomalyDetectorsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DescribeAnomalyDetectorsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.describe_anomaly_detectors(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     namespace: 'Namespace',
    #     metric_name: 'MetricName',
    #     dimensions: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     anomaly_detector_types: [
    #       'SINGLE_METRIC' # accepts ["SINGLE_METRIC", "METRIC_MATH"]
    #     ]
    #   )
    # @example Response structure
    #   resp.data #=> Types::DescribeAnomalyDetectorsOutput
    #   resp.data.anomaly_detectors #=> Array<AnomalyDetector>
    #   resp.data.anomaly_detectors[0] #=> Types::AnomalyDetector
    #   resp.data.anomaly_detectors[0].namespace #=> String
    #   resp.data.anomaly_detectors[0].metric_name #=> String
    #   resp.data.anomaly_detectors[0].dimensions #=> Array<Dimension>
    #   resp.data.anomaly_detectors[0].dimensions[0] #=> Types::Dimension
    #   resp.data.anomaly_detectors[0].dimensions[0].name #=> String
    #   resp.data.anomaly_detectors[0].dimensions[0].value #=> String
    #   resp.data.anomaly_detectors[0].stat #=> String
    #   resp.data.anomaly_detectors[0].configuration #=> Types::AnomalyDetectorConfiguration
    #   resp.data.anomaly_detectors[0].configuration.excluded_time_ranges #=> Array<Range>
    #   resp.data.anomaly_detectors[0].configuration.excluded_time_ranges[0] #=> Types::Range
    #   resp.data.anomaly_detectors[0].configuration.excluded_time_ranges[0].start_time #=> Time
    #   resp.data.anomaly_detectors[0].configuration.excluded_time_ranges[0].end_time #=> Time
    #   resp.data.anomaly_detectors[0].configuration.metric_timezone #=> String
    #   resp.data.anomaly_detectors[0].state_value #=> String, one of ["PENDING_TRAINING", "TRAINED_INSUFFICIENT_DATA", "TRAINED"]
    #   resp.data.anomaly_detectors[0].single_metric_anomaly_detector #=> Types::SingleMetricAnomalyDetector
    #   resp.data.anomaly_detectors[0].single_metric_anomaly_detector.namespace #=> String
    #   resp.data.anomaly_detectors[0].single_metric_anomaly_detector.metric_name #=> String
    #   resp.data.anomaly_detectors[0].single_metric_anomaly_detector.dimensions #=> Array<Dimension>
    #   resp.data.anomaly_detectors[0].single_metric_anomaly_detector.stat #=> String
    #   resp.data.anomaly_detectors[0].metric_math_anomaly_detector #=> Types::MetricMathAnomalyDetector
    #   resp.data.anomaly_detectors[0].metric_math_anomaly_detector.metric_data_queries #=> Array<MetricDataQuery>
    #   resp.data.anomaly_detectors[0].metric_math_anomaly_detector.metric_data_queries[0] #=> Types::MetricDataQuery
    #   resp.data.anomaly_detectors[0].metric_math_anomaly_detector.metric_data_queries[0].id #=> String
    #   resp.data.anomaly_detectors[0].metric_math_anomaly_detector.metric_data_queries[0].metric_stat #=> Types::MetricStat
    #   resp.data.anomaly_detectors[0].metric_math_anomaly_detector.metric_data_queries[0].metric_stat.metric #=> Types::Metric
    #   resp.data.anomaly_detectors[0].metric_math_anomaly_detector.metric_data_queries[0].metric_stat.metric.namespace #=> String
    #   resp.data.anomaly_detectors[0].metric_math_anomaly_detector.metric_data_queries[0].metric_stat.metric.metric_name #=> String
    #   resp.data.anomaly_detectors[0].metric_math_anomaly_detector.metric_data_queries[0].metric_stat.metric.dimensions #=> Array<Dimension>
    #   resp.data.anomaly_detectors[0].metric_math_anomaly_detector.metric_data_queries[0].metric_stat.period #=> Integer
    #   resp.data.anomaly_detectors[0].metric_math_anomaly_detector.metric_data_queries[0].metric_stat.stat #=> String
    #   resp.data.anomaly_detectors[0].metric_math_anomaly_detector.metric_data_queries[0].metric_stat.unit #=> String, one of ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #   resp.data.anomaly_detectors[0].metric_math_anomaly_detector.metric_data_queries[0].expression #=> String
    #   resp.data.anomaly_detectors[0].metric_math_anomaly_detector.metric_data_queries[0].label #=> String
    #   resp.data.anomaly_detectors[0].metric_math_anomaly_detector.metric_data_queries[0].return_data #=> Boolean
    #   resp.data.anomaly_detectors[0].metric_math_anomaly_detector.metric_data_queries[0].period #=> Integer
    #   resp.data.anomaly_detectors[0].metric_math_anomaly_detector.metric_data_queries[0].account_id #=> String
    #   resp.data.next_token #=> String
    def describe_anomaly_detectors(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAnomalyDetectorsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAnomalyDetectorsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAnomalyDetectors
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :describe_anomaly_detectors),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InvalidNextToken, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::InternalServiceFault]
        ),
        data_parser: Parsers::DescribeAnomalyDetectors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InvalidNextToken, Stubs::InvalidParameterCombinationException, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault],
        stub_data_class: Stubs::DescribeAnomalyDetectors,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :describe_anomaly_detectors,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_anomaly_detectors] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#describe_anomaly_detectors] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_anomaly_detectors] #{output.data}")
      output
    end

    # <p>Returns a list of all the Contributor Insights rules in your account.</p>
    #          <p>For more information about Contributor Insights, see
    # 		<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights.html">Using Contributor Insights to Analyze High-Cardinality Data</a>.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DescribeInsightRulesInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DescribeInsightRulesOutput]
    # @example Request syntax with placeholder values
    #   resp = client.describe_insight_rules(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    # @example Response structure
    #   resp.data #=> Types::DescribeInsightRulesOutput
    #   resp.data.next_token #=> String
    #   resp.data.insight_rules #=> Array<InsightRule>
    #   resp.data.insight_rules[0] #=> Types::InsightRule
    #   resp.data.insight_rules[0].name #=> String
    #   resp.data.insight_rules[0].state #=> String
    #   resp.data.insight_rules[0].schema #=> String
    #   resp.data.insight_rules[0].definition #=> String
    #   resp.data.insight_rules[0].managed_rule #=> Boolean
    def describe_insight_rules(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInsightRulesInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInsightRulesInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInsightRules
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :describe_insight_rules),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InvalidNextToken]
        ),
        data_parser: Parsers::DescribeInsightRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InvalidNextToken],
        stub_data_class: Stubs::DescribeInsightRules,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :describe_insight_rules,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_insight_rules] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#describe_insight_rules] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#describe_insight_rules] #{output.data}")
      output
    end

    # <p>Disables the actions for the specified alarms. When an alarm's actions are disabled, the
    # 			alarm actions do not execute when the alarm state changes.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DisableAlarmActionsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DisableAlarmActionsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.disable_alarm_actions(
    #     alarm_names: [
    #       'member'
    #     ] # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DisableAlarmActionsOutput
    def disable_alarm_actions(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableAlarmActionsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableAlarmActionsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableAlarmActions
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :disable_alarm_actions),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: []
        ),
        data_parser: Parsers::DisableAlarmActions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [],
        stub_data_class: Stubs::DisableAlarmActions,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :disable_alarm_actions,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#disable_alarm_actions] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#disable_alarm_actions] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#disable_alarm_actions] #{output.data}")
      output
    end

    # <p>Disables the specified Contributor Insights rules. When rules are disabled, they do not analyze log groups and do
    # 		not incur costs.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::DisableInsightRulesInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::DisableInsightRulesOutput]
    # @example Request syntax with placeholder values
    #   resp = client.disable_insight_rules(
    #     rule_names: [
    #       'member'
    #     ] # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DisableInsightRulesOutput
    #   resp.data.failures #=> Array<PartialFailure>
    #   resp.data.failures[0] #=> Types::PartialFailure
    #   resp.data.failures[0].failure_resource #=> String
    #   resp.data.failures[0].exception_type #=> String
    #   resp.data.failures[0].failure_code #=> String
    #   resp.data.failures[0].failure_description #=> String
    def disable_insight_rules(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableInsightRulesInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableInsightRulesInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableInsightRules
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :disable_insight_rules),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InvalidParameterValueException, Errors::MissingRequiredParameterException]
        ),
        data_parser: Parsers::DisableInsightRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InvalidParameterValueException, Stubs::MissingRequiredParameterException],
        stub_data_class: Stubs::DisableInsightRules,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :disable_insight_rules,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#disable_insight_rules] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#disable_insight_rules] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#disable_insight_rules] #{output.data}")
      output
    end

    # <p>Enables the actions for the specified alarms.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::EnableAlarmActionsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::EnableAlarmActionsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.enable_alarm_actions(
    #     alarm_names: [
    #       'member'
    #     ] # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::EnableAlarmActionsOutput
    def enable_alarm_actions(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableAlarmActionsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableAlarmActionsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableAlarmActions
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :enable_alarm_actions),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: []
        ),
        data_parser: Parsers::EnableAlarmActions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [],
        stub_data_class: Stubs::EnableAlarmActions,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :enable_alarm_actions,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#enable_alarm_actions] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#enable_alarm_actions] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#enable_alarm_actions] #{output.data}")
      output
    end

    # <p>Enables the specified Contributor Insights rules. When rules are enabled, they immediately begin analyzing log data.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::EnableInsightRulesInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::EnableInsightRulesOutput]
    # @example Request syntax with placeholder values
    #   resp = client.enable_insight_rules(
    #     rule_names: [
    #       'member'
    #     ] # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::EnableInsightRulesOutput
    #   resp.data.failures #=> Array<PartialFailure>
    #   resp.data.failures[0] #=> Types::PartialFailure
    #   resp.data.failures[0].failure_resource #=> String
    #   resp.data.failures[0].exception_type #=> String
    #   resp.data.failures[0].failure_code #=> String
    #   resp.data.failures[0].failure_description #=> String
    def enable_insight_rules(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableInsightRulesInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableInsightRulesInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableInsightRules
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :enable_insight_rules),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::LimitExceededException, Errors::InvalidParameterValueException, Errors::MissingRequiredParameterException]
        ),
        data_parser: Parsers::EnableInsightRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::LimitExceededException, Stubs::InvalidParameterValueException, Stubs::MissingRequiredParameterException],
        stub_data_class: Stubs::EnableInsightRules,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :enable_insight_rules,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#enable_insight_rules] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#enable_insight_rules] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#enable_insight_rules] #{output.data}")
      output
    end

    # <p>Displays the details of the dashboard that you specify.</p>
    #          <p>To copy an existing dashboard, use <code>GetDashboard</code>, and then use the data returned
    # 			within <code>DashboardBody</code> as the template for the new dashboard when you call <code>PutDashboard</code> to create
    # 			the copy.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::GetDashboardInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::GetDashboardOutput]
    # @example Request syntax with placeholder values
    #   resp = client.get_dashboard(
    #     dashboard_name: 'DashboardName' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetDashboardOutput
    #   resp.data.dashboard_arn #=> String
    #   resp.data.dashboard_body #=> String
    #   resp.data.dashboard_name #=> String
    def get_dashboard(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDashboardInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDashboardInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDashboard
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :get_dashboard),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::DashboardNotFoundError, Errors::InvalidParameterValueException, Errors::InternalServiceFault]
        ),
        data_parser: Parsers::GetDashboard
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::DashboardNotFoundError, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault],
        stub_data_class: Stubs::GetDashboard,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :get_dashboard,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#get_dashboard] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#get_dashboard] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#get_dashboard] #{output.data}")
      output
    end

    # <p>This operation returns the time series data collected by a Contributor Insights rule. The data includes the identity and number of
    # 		contributors to the log group.</p>
    #          <p>You can also optionally return one or more statistics about each data point in the time series. These statistics can include the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>UniqueContributors</code> -- the number of unique contributors for each data point.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MaxContributorValue</code> -- the value of the top contributor for each data point. The identity of the
    # 					contributor might change for each data point in the graph.</p>
    #                <p>If this rule aggregates by COUNT, the top contributor for each data point is the contributor with the
    # 					most occurrences in that period. If the rule aggregates by SUM, the top contributor is the contributor with the highest sum in the log field specified
    # 					by the rule's <code>Value</code>, during that period.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>SampleCount</code> -- the number of data points matched by the rule.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Sum</code> -- the sum of the values from all contributors during the time period represented by that data point.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Minimum</code> -- the minimum value from a single observation during the time period represented by that data point.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Maximum</code> -- the maximum value from a single observation during the time period represented by that data point.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Average</code> -- the average value from all contributors during the time period represented by that data point.</p>
    #             </li>
    #          </ul>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::GetInsightRuleReportInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::GetInsightRuleReportOutput]
    # @example Request syntax with placeholder values
    #   resp = client.get_insight_rule_report(
    #     rule_name: 'RuleName', # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     period: 1, # required
    #     max_contributor_count: 1,
    #     metrics: [
    #       'member'
    #     ],
    #     order_by: 'OrderBy'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetInsightRuleReportOutput
    #   resp.data.key_labels #=> Array<String>
    #   resp.data.key_labels[0] #=> String
    #   resp.data.aggregation_statistic #=> String
    #   resp.data.aggregate_value #=> Float
    #   resp.data.approximate_unique_count #=> Integer
    #   resp.data.contributors #=> Array<InsightRuleContributor>
    #   resp.data.contributors[0] #=> Types::InsightRuleContributor
    #   resp.data.contributors[0].keys #=> Array<String>
    #   resp.data.contributors[0].keys[0] #=> String
    #   resp.data.contributors[0].approximate_aggregate_value #=> Float
    #   resp.data.contributors[0].datapoints #=> Array<InsightRuleContributorDatapoint>
    #   resp.data.contributors[0].datapoints[0] #=> Types::InsightRuleContributorDatapoint
    #   resp.data.contributors[0].datapoints[0].timestamp #=> Time
    #   resp.data.contributors[0].datapoints[0].approximate_value #=> Float
    #   resp.data.metric_datapoints #=> Array<InsightRuleMetricDatapoint>
    #   resp.data.metric_datapoints[0] #=> Types::InsightRuleMetricDatapoint
    #   resp.data.metric_datapoints[0].timestamp #=> Time
    #   resp.data.metric_datapoints[0].unique_contributors #=> Float
    #   resp.data.metric_datapoints[0].max_contributor_value #=> Float
    #   resp.data.metric_datapoints[0].sample_count #=> Float
    #   resp.data.metric_datapoints[0].average #=> Float
    #   resp.data.metric_datapoints[0].sum #=> Float
    #   resp.data.metric_datapoints[0].minimum #=> Float
    #   resp.data.metric_datapoints[0].maximum #=> Float
    def get_insight_rule_report(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInsightRuleReportInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInsightRuleReportInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInsightRuleReport
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :get_insight_rule_report),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterValueException, Errors::MissingRequiredParameterException]
        ),
        data_parser: Parsers::GetInsightRuleReport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::ResourceNotFoundException, Stubs::InvalidParameterValueException, Stubs::MissingRequiredParameterException],
        stub_data_class: Stubs::GetInsightRuleReport,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :get_insight_rule_report,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#get_insight_rule_report] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#get_insight_rule_report] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#get_insight_rule_report] #{output.data}")
      output
    end

    # <p>You can use the <code>GetMetricData</code> API to retrieve CloudWatch metric values. The operation
    # 			can also include a CloudWatch Metrics Insights query, and one or more metric math functions.</p>
    #          <p>A <code>GetMetricData</code> operation that does not include a query can retrieve as many as 500 different
    # 			metrics in a single request, with a total of as many as 100,800 data points. You can also
    # 			optionally perform metric math expressions on the values of the returned statistics, to create
    # 			new time series that represent new insights into your data. For example, using Lambda
    # 			metrics, you could divide the Errors metric by the Invocations metric to get an error
    # 			rate time series. For more information about metric math expressions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax">Metric Math Syntax and Functions</a> in the <i>Amazon CloudWatch User
    # 					Guide</i>.</p>
    #          <p>If you include a Metrics Insights query, each <code>GetMetricData</code> operation can include only one
    # 			query. But the same <code>GetMetricData</code> operation can also retrieve other metrics. Metrics Insights queries
    # 		can query only the most recent three hours of metric data. For more information about Metrics Insights,
    # 		see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/query_with_cloudwatch-metrics-insights.html">Query your metrics with CloudWatch Metrics Insights</a>.</p>
    #          <p>Calls to the <code>GetMetricData</code> API have a different pricing structure than
    # 			calls to <code>GetMetricStatistics</code>. For more information about pricing, see
    # 			<a href="https://aws.amazon.com/cloudwatch/pricing/">Amazon CloudWatch Pricing</a>.</p>
    #          <p>Amazon CloudWatch retains metric data as follows:</p>
    #          <ul>
    #             <li>
    #                <p>Data points with a period of less than 60 seconds are available for 3 hours. These data points are high-resolution
    # 				metrics and are available only for custom metrics that have been defined with a <code>StorageResolution</code> of 1.</p>
    #             </li>
    #             <li>
    #                <p>Data points with a period of 60 seconds (1-minute) are available for 15 days.</p>
    #             </li>
    #             <li>
    #                <p>Data points with a period of 300 seconds (5-minute) are available for 63 days.</p>
    #             </li>
    #             <li>
    #                <p>Data points with a period of 3600 seconds (1 hour) are available for 455 days (15 months).</p>
    #             </li>
    #          </ul>
    #          <p>Data points that are initially published with a shorter period are aggregated together for long-term storage. For example, if you collect
    # 			data using a period of 1 minute, the data remains available for 15 days with 1-minute resolution. After 15 days, this data is still available,
    # 			but is aggregated and retrievable only with a resolution of 5 minutes. After 63 days, the data is further aggregated and is available with
    # 			a resolution of 1 hour.</p>
    #          <p>If you omit <code>Unit</code> in your request, all data that was collected with any unit is returned, along with the corresponding units that were specified
    # 			when the data was reported to CloudWatch. If you specify a unit, the operation returns only data that was collected with that unit specified.
    # 			If you specify a unit that does not match the data collected, the results of the operation are null. CloudWatch does not perform unit conversions.</p>
    #          <p>
    #             <b>Using Metrics Insights queries with metric math</b>
    #          </p>
    #          <p>You can't mix a Metric Insights query and metric math syntax in the same expression, but
    # 			you can reference results from a Metrics Insights query within other Metric math expressions. A Metrics Insights
    # 			query without a <b>GROUP BY</b> clause returns a single time-series (TS),
    # 			and can be used as input for a metric math expression that expects a single time series. A Metrics Insights
    # 			query with a <b>GROUP BY</b> clause returns an array of time-series (TS[]),
    # 			and can be used as input for a metric math expression that expects an array of time series. </p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::GetMetricDataInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::GetMetricDataOutput]
    # @example Request syntax with placeholder values
    #   resp = client.get_metric_data(
    #     metric_data_queries: [
    #       {
    #         id: 'Id', # required
    #         metric_stat: {
    #           metric: {
    #             namespace: 'Namespace',
    #             metric_name: 'MetricName',
    #             dimensions: [
    #               {
    #                 name: 'Name', # required
    #                 value: 'Value' # required
    #               }
    #             ]
    #           }, # required
    #           period: 1, # required
    #           stat: 'Stat', # required
    #           unit: 'Seconds' # accepts ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #         },
    #         expression: 'Expression',
    #         label: 'Label',
    #         return_data: false,
    #         period: 1,
    #         account_id: 'AccountId'
    #       }
    #     ], # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     next_token: 'NextToken',
    #     scan_by: 'TimestampDescending', # accepts ["TimestampDescending", "TimestampAscending"]
    #     max_datapoints: 1,
    #     label_options: {
    #       timezone: 'Timezone'
    #     }
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetMetricDataOutput
    #   resp.data.metric_data_results #=> Array<MetricDataResult>
    #   resp.data.metric_data_results[0] #=> Types::MetricDataResult
    #   resp.data.metric_data_results[0].id #=> String
    #   resp.data.metric_data_results[0].label #=> String
    #   resp.data.metric_data_results[0].timestamps #=> Array<Time>
    #   resp.data.metric_data_results[0].timestamps[0] #=> Time
    #   resp.data.metric_data_results[0].values #=> Array<Float>
    #   resp.data.metric_data_results[0].values[0] #=> Float
    #   resp.data.metric_data_results[0].status_code #=> String, one of ["Complete", "InternalError", "PartialData", "Forbidden"]
    #   resp.data.metric_data_results[0].messages #=> Array<MessageData>
    #   resp.data.metric_data_results[0].messages[0] #=> Types::MessageData
    #   resp.data.metric_data_results[0].messages[0].code #=> String
    #   resp.data.metric_data_results[0].messages[0].value #=> String
    #   resp.data.next_token #=> String
    #   resp.data.messages #=> Array<MessageData>
    def get_metric_data(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMetricDataInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMetricDataInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMetricData
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :get_metric_data),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InvalidNextToken]
        ),
        data_parser: Parsers::GetMetricData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InvalidNextToken],
        stub_data_class: Stubs::GetMetricData,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :get_metric_data,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#get_metric_data] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#get_metric_data] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#get_metric_data] #{output.data}")
      output
    end

    # <p>Gets statistics for the specified metric.</p>
    #          <p>The maximum number of data points returned from a single call is 1,440. If
    # 			you request more than 1,440 data points, CloudWatch returns an error.
    # 			To reduce the number of data points, you can narrow the specified time range and make
    # 			multiple requests across adjacent time ranges, or you can increase the specified period.
    # 			Data points are not returned in chronological order.</p>
    #          <p>CloudWatch aggregates data points based on the length of the period
    # 			that you specify. For example, if you request statistics with a one-hour period,
    # 			CloudWatch aggregates all data points with time stamps that fall within each
    # 			one-hour period. Therefore, the number of values aggregated by CloudWatch is larger than
    # 			the number of data points returned.</p>
    #          <p>CloudWatch needs raw data points to calculate percentile statistics. If you publish
    # 			data using a statistic set instead, you can only retrieve
    # 			percentile statistics for this data if one of the following conditions is true:</p>
    #          <ul>
    #             <li>
    #                <p>The SampleCount value of the statistic set is 1.</p>
    #             </li>
    #             <li>
    #                <p>The Min and the Max values of the statistic set are equal.</p>
    #             </li>
    #          </ul>
    #          <p>Percentile statistics are not available for metrics when any of the metric values are negative numbers.</p>
    #          <p>Amazon CloudWatch retains metric data as follows:</p>
    #          <ul>
    #             <li>
    #                <p>Data points with a period of less than 60 seconds are available for 3 hours. These data points are high-resolution
    # 				metrics and are available only for custom metrics that have been defined with a <code>StorageResolution</code> of 1.</p>
    #             </li>
    #             <li>
    #                <p>Data points with a period of 60 seconds (1-minute) are available for 15 days.</p>
    #             </li>
    #             <li>
    #                <p>Data points with a period of 300 seconds (5-minute) are available for 63 days.</p>
    #             </li>
    #             <li>
    #                <p>Data points with a period of 3600 seconds (1 hour) are available for 455 days (15 months).</p>
    #             </li>
    #          </ul>
    #          <p>Data points that are initially published with a shorter period are aggregated together for long-term storage. For example, if you collect
    # 			data using a period of 1 minute, the data remains available for 15 days with 1-minute resolution. After 15 days, this data is still available,
    # 			but is aggregated and retrievable only with a resolution of 5 minutes. After 63 days, the data is further aggregated and is available with
    # 		a resolution of 1 hour.</p>
    #          <p>CloudWatch started retaining 5-minute and 1-hour metric data as of July 9, 2016.</p>
    #          <p>For information about metrics and dimensions supported by Amazon Web Services services, see the
    # 			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CW_Support_For_AWS.html">Amazon CloudWatch Metrics and Dimensions Reference</a> in the
    # 			<i>Amazon CloudWatch User Guide</i>.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::GetMetricStatisticsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::GetMetricStatisticsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.get_metric_statistics(
    #     namespace: 'Namespace', # required
    #     metric_name: 'MetricName', # required
    #     dimensions: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     period: 1, # required
    #     statistics: [
    #       'SampleCount' # accepts ["SampleCount", "Average", "Sum", "Minimum", "Maximum"]
    #     ],
    #     extended_statistics: [
    #       'member'
    #     ],
    #     unit: 'Seconds' # accepts ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetMetricStatisticsOutput
    #   resp.data.label #=> String
    #   resp.data.datapoints #=> Array<Datapoint>
    #   resp.data.datapoints[0] #=> Types::Datapoint
    #   resp.data.datapoints[0].timestamp #=> Time
    #   resp.data.datapoints[0].sample_count #=> Float
    #   resp.data.datapoints[0].average #=> Float
    #   resp.data.datapoints[0].sum #=> Float
    #   resp.data.datapoints[0].minimum #=> Float
    #   resp.data.datapoints[0].maximum #=> Float
    #   resp.data.datapoints[0].unit #=> String, one of ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #   resp.data.datapoints[0].extended_statistics #=> Hash<String, Float>
    #   resp.data.datapoints[0].extended_statistics['key'] #=> Float
    def get_metric_statistics(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMetricStatisticsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMetricStatisticsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMetricStatistics
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :get_metric_statistics),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::InternalServiceFault, Errors::MissingRequiredParameterException]
        ),
        data_parser: Parsers::GetMetricStatistics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InvalidParameterCombinationException, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault, Stubs::MissingRequiredParameterException],
        stub_data_class: Stubs::GetMetricStatistics,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :get_metric_statistics,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#get_metric_statistics] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#get_metric_statistics] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#get_metric_statistics] #{output.data}")
      output
    end

    # <p>Returns information about the metric stream that you specify.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::GetMetricStreamInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::GetMetricStreamOutput]
    # @example Request syntax with placeholder values
    #   resp = client.get_metric_stream(
    #     name: 'Name' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetMetricStreamOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.include_filters #=> Array<MetricStreamFilter>
    #   resp.data.include_filters[0] #=> Types::MetricStreamFilter
    #   resp.data.include_filters[0].namespace #=> String
    #   resp.data.include_filters[0].metric_names #=> Array<String>
    #   resp.data.include_filters[0].metric_names[0] #=> String
    #   resp.data.exclude_filters #=> Array<MetricStreamFilter>
    #   resp.data.firehose_arn #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.state #=> String
    #   resp.data.creation_date #=> Time
    #   resp.data.last_update_date #=> Time
    #   resp.data.output_format #=> String, one of ["json", "opentelemetry0.7", "opentelemetry1.0"]
    #   resp.data.statistics_configurations #=> Array<MetricStreamStatisticsConfiguration>
    #   resp.data.statistics_configurations[0] #=> Types::MetricStreamStatisticsConfiguration
    #   resp.data.statistics_configurations[0].include_metrics #=> Array<MetricStreamStatisticsMetric>
    #   resp.data.statistics_configurations[0].include_metrics[0] #=> Types::MetricStreamStatisticsMetric
    #   resp.data.statistics_configurations[0].include_metrics[0].namespace #=> String
    #   resp.data.statistics_configurations[0].include_metrics[0].metric_name #=> String
    #   resp.data.statistics_configurations[0].additional_statistics #=> Array<String>
    #   resp.data.statistics_configurations[0].additional_statistics[0] #=> String
    #   resp.data.include_linked_accounts_metrics #=> Boolean
    def get_metric_stream(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMetricStreamInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMetricStreamInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMetricStream
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :get_metric_stream),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::InternalServiceFault, Errors::MissingRequiredParameterException]
        ),
        data_parser: Parsers::GetMetricStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::ResourceNotFoundException, Stubs::InvalidParameterCombinationException, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault, Stubs::MissingRequiredParameterException],
        stub_data_class: Stubs::GetMetricStream,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :get_metric_stream,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#get_metric_stream] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#get_metric_stream] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#get_metric_stream] #{output.data}")
      output
    end

    # <p>You can use the <code>GetMetricWidgetImage</code> API to retrieve a snapshot graph of
    # 			one or more Amazon CloudWatch metrics as a bitmap image. You can then embed this
    # 			image into your services and products, such as wiki pages, reports, and documents.
    # 			You could also retrieve images regularly, such as every minute, and create your own
    # 			custom live dashboard.</p>
    #          <p>The graph you retrieve can include all CloudWatch metric graph features, including metric math
    # 		and horizontal and vertical annotations.</p>
    #          <p>There is a limit of 20 transactions per second for this API. Each <code>GetMetricWidgetImage</code> action has the following limits:</p>
    #          <ul>
    #             <li>
    #                <p>As many as 100 metrics in the graph.</p>
    #             </li>
    #             <li>
    #                <p>Up to 100 KB uncompressed payload.</p>
    #             </li>
    #          </ul>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::GetMetricWidgetImageInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::GetMetricWidgetImageOutput]
    # @example Request syntax with placeholder values
    #   resp = client.get_metric_widget_image(
    #     metric_widget: 'MetricWidget', # required
    #     output_format: 'OutputFormat'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetMetricWidgetImageOutput
    #   resp.data.metric_widget_image #=> String
    def get_metric_widget_image(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMetricWidgetImageInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMetricWidgetImageInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMetricWidgetImage
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :get_metric_widget_image),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: []
        ),
        data_parser: Parsers::GetMetricWidgetImage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [],
        stub_data_class: Stubs::GetMetricWidgetImage,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :get_metric_widget_image,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#get_metric_widget_image] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#get_metric_widget_image] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#get_metric_widget_image] #{output.data}")
      output
    end

    # <p>Returns a list of the dashboards for your account. If you include <code>DashboardNamePrefix</code>, only
    # 			those dashboards with names starting with the prefix are listed. Otherwise, all dashboards in your account are
    # 			listed.
    # 	    </p>
    #          <p>
    #             <code>ListDashboards</code> returns up to 1000 results on one page. If there
    # 			are more than 1000 dashboards, you can call <code>ListDashboards</code> again and
    # 		include the value you received for <code>NextToken</code> in the first call, to receive
    # 		the next 1000 results.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::ListDashboardsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::ListDashboardsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.list_dashboards(
    #     dashboard_name_prefix: 'DashboardNamePrefix',
    #     next_token: 'NextToken'
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListDashboardsOutput
    #   resp.data.dashboard_entries #=> Array<DashboardEntry>
    #   resp.data.dashboard_entries[0] #=> Types::DashboardEntry
    #   resp.data.dashboard_entries[0].dashboard_name #=> String
    #   resp.data.dashboard_entries[0].dashboard_arn #=> String
    #   resp.data.dashboard_entries[0].last_modified #=> Time
    #   resp.data.dashboard_entries[0].size #=> Integer
    #   resp.data.next_token #=> String
    def list_dashboards(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDashboardsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDashboardsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDashboards
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :list_dashboards),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InvalidParameterValueException, Errors::InternalServiceFault]
        ),
        data_parser: Parsers::ListDashboards
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InvalidParameterValueException, Stubs::InternalServiceFault],
        stub_data_class: Stubs::ListDashboards,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :list_dashboards,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_dashboards] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#list_dashboards] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_dashboards] #{output.data}")
      output
    end

    # <p>
    # 			Returns a list
    # 			that contains the number
    # 			of managed Contributor Insights rules
    # 			in your account.
    # 			
    # 		</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::ListManagedInsightRulesInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::ListManagedInsightRulesOutput]
    # @example Request syntax with placeholder values
    #   resp = client.list_managed_insight_rules(
    #     resource_arn: 'ResourceARN', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListManagedInsightRulesOutput
    #   resp.data.managed_rules #=> Array<ManagedRuleDescription>
    #   resp.data.managed_rules[0] #=> Types::ManagedRuleDescription
    #   resp.data.managed_rules[0].template_name #=> String
    #   resp.data.managed_rules[0].resource_arn #=> String
    #   resp.data.managed_rules[0].rule_state #=> Types::ManagedRuleState
    #   resp.data.managed_rules[0].rule_state.rule_name #=> String
    #   resp.data.managed_rules[0].rule_state.state #=> String
    #   resp.data.next_token #=> String
    def list_managed_insight_rules(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListManagedInsightRulesInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListManagedInsightRulesInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListManagedInsightRules
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :list_managed_insight_rules),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InvalidNextToken, Errors::InvalidParameterValueException, Errors::MissingRequiredParameterException]
        ),
        data_parser: Parsers::ListManagedInsightRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InvalidNextToken, Stubs::InvalidParameterValueException, Stubs::MissingRequiredParameterException],
        stub_data_class: Stubs::ListManagedInsightRules,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :list_managed_insight_rules,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_managed_insight_rules] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#list_managed_insight_rules] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_managed_insight_rules] #{output.data}")
      output
    end

    # <p>Returns a list of metric streams in this account.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::ListMetricStreamsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::ListMetricStreamsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.list_metric_streams(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListMetricStreamsOutput
    #   resp.data.next_token #=> String
    #   resp.data.entries #=> Array<MetricStreamEntry>
    #   resp.data.entries[0] #=> Types::MetricStreamEntry
    #   resp.data.entries[0].arn #=> String
    #   resp.data.entries[0].creation_date #=> Time
    #   resp.data.entries[0].last_update_date #=> Time
    #   resp.data.entries[0].name #=> String
    #   resp.data.entries[0].firehose_arn #=> String
    #   resp.data.entries[0].state #=> String
    #   resp.data.entries[0].output_format #=> String, one of ["json", "opentelemetry0.7", "opentelemetry1.0"]
    def list_metric_streams(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMetricStreamsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMetricStreamsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMetricStreams
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :list_metric_streams),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InvalidNextToken, Errors::InvalidParameterValueException, Errors::InternalServiceFault, Errors::MissingRequiredParameterException]
        ),
        data_parser: Parsers::ListMetricStreams
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InvalidNextToken, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault, Stubs::MissingRequiredParameterException],
        stub_data_class: Stubs::ListMetricStreams,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :list_metric_streams,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_metric_streams] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#list_metric_streams] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_metric_streams] #{output.data}")
      output
    end

    # <p>List the specified metrics. You can use the returned metrics with <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html">GetMetricData</a> or <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html">GetMetricStatistics</a> to get statistical data.</p>
    #          <p>Up to 500 results are returned for any one call. To retrieve additional results,
    # 			use the returned token with subsequent calls.</p>
    #          <p>After you create a metric, allow up to 15 minutes for the metric to appear. To see metric
    # 			statistics sooner, use <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html">GetMetricData</a> or <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html">GetMetricStatistics</a>.</p>
    #          <p>If you are using CloudWatch cross-account observability, you can use this operation in a monitoring account and
    # 			view metrics from the linked source accounts. For more information, see
    # 			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html">CloudWatch cross-account observability</a>.</p>
    #          <p>
    #             <code>ListMetrics</code> doesn't return information about metrics if those metrics haven't
    # 	reported data in the past two weeks. To retrieve those metrics, use
    # 		<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html">GetMetricData</a> or
    # 		<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html">GetMetricStatistics</a>.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::ListMetricsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::ListMetricsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.list_metrics(
    #     namespace: 'Namespace',
    #     metric_name: 'MetricName',
    #     dimensions: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value'
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     recently_active: 'PT3H', # accepts ["PT3H"]
    #     include_linked_accounts: false,
    #     owning_account: 'OwningAccount'
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListMetricsOutput
    #   resp.data.metrics #=> Array<Metric>
    #   resp.data.metrics[0] #=> Types::Metric
    #   resp.data.metrics[0].namespace #=> String
    #   resp.data.metrics[0].metric_name #=> String
    #   resp.data.metrics[0].dimensions #=> Array<Dimension>
    #   resp.data.metrics[0].dimensions[0] #=> Types::Dimension
    #   resp.data.metrics[0].dimensions[0].name #=> String
    #   resp.data.metrics[0].dimensions[0].value #=> String
    #   resp.data.next_token #=> String
    #   resp.data.owning_accounts #=> Array<String>
    #   resp.data.owning_accounts[0] #=> String
    def list_metrics(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMetricsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMetricsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMetrics
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :list_metrics),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InvalidParameterValueException, Errors::InternalServiceFault]
        ),
        data_parser: Parsers::ListMetrics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InvalidParameterValueException, Stubs::InternalServiceFault],
        stub_data_class: Stubs::ListMetrics,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :list_metrics,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_metrics] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#list_metrics] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_metrics] #{output.data}")
      output
    end

    # <p>Displays the tags associated with a CloudWatch resource. Currently, alarms
    # 			and Contributor Insights rules support tagging.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::ListTagsForResourceInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::ListTagsForResourceOutput]
    # @example Request syntax with placeholder values
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceARN' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    def list_tags_for_resource(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :list_tags_for_resource),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterValueException, Errors::InternalServiceFault]
        ),
        data_parser: Parsers::ListTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::ResourceNotFoundException, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault],
        stub_data_class: Stubs::ListTagsForResource,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :list_tags_for_resource,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_tags_for_resource] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#list_tags_for_resource] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#list_tags_for_resource] #{output.data}")
      output
    end

    # <p>Creates an anomaly detection model for a CloudWatch metric. You can use the model
    # 			to display a band of expected normal values when the metric is graphed.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Anomaly_Detection.html">CloudWatch Anomaly Detection</a>.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::PutAnomalyDetectorInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::PutAnomalyDetectorOutput]
    # @example Request syntax with placeholder values
    #   resp = client.put_anomaly_detector(
    #     namespace: 'Namespace',
    #     metric_name: 'MetricName',
    #     dimensions: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     stat: 'Stat',
    #     configuration: {
    #       excluded_time_ranges: [
    #         {
    #           start_time: Time.now, # required
    #           end_time: Time.now # required
    #         }
    #       ],
    #       metric_timezone: 'MetricTimezone'
    #     },
    #     single_metric_anomaly_detector: {
    #       namespace: 'Namespace',
    #       metric_name: 'MetricName',
    #       stat: 'Stat'
    #     },
    #     metric_math_anomaly_detector: {
    #       metric_data_queries: [
    #         {
    #           id: 'Id', # required
    #           metric_stat: {
    #             metric: {
    #               namespace: 'Namespace',
    #               metric_name: 'MetricName',
    #             }, # required
    #             period: 1, # required
    #             stat: 'Stat', # required
    #             unit: 'Seconds' # accepts ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #           },
    #           expression: 'Expression',
    #           label: 'Label',
    #           return_data: false,
    #           period: 1,
    #           account_id: 'AccountId'
    #         }
    #       ]
    #     }
    #   )
    # @example Response structure
    #   resp.data #=> Types::PutAnomalyDetectorOutput
    def put_anomaly_detector(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAnomalyDetectorInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAnomalyDetectorInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAnomalyDetector
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :put_anomaly_detector),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::LimitExceededException, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::InternalServiceFault, Errors::MissingRequiredParameterException]
        ),
        data_parser: Parsers::PutAnomalyDetector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::LimitExceededException, Stubs::InvalidParameterCombinationException, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault, Stubs::MissingRequiredParameterException],
        stub_data_class: Stubs::PutAnomalyDetector,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :put_anomaly_detector,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#put_anomaly_detector] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#put_anomaly_detector] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#put_anomaly_detector] #{output.data}")
      output
    end

    # <p>Creates or updates a <i>composite alarm</i>. When you create a composite
    # 			alarm, you specify a rule expression for the alarm that takes into account the alarm
    # 			states of other alarms that you have created. The composite alarm goes into ALARM state
    # 			only if all conditions of the rule are met.</p>
    #          <p>The alarms specified in a composite alarm's rule expression can include metric alarms
    # 			and other composite alarms. The rule expression of a composite alarm can include as many as 100 underlying alarms.
    # 			Any single alarm can be included in the rule expressions of as many as 150 composite alarms.</p>
    #          <p>Using composite alarms can reduce
    # 			alarm noise. You can create multiple metric alarms,
    # 			and also create a composite alarm and
    # 			set up alerts only
    # 			for the composite alarm. For example, you could create a composite
    # 			alarm that goes into ALARM state only when more than one of the underlying metric alarms
    # 			are in ALARM state.</p>
    #          <p>Currently, the only alarm actions that can be taken by composite alarms are notifying
    # 			SNS topics.</p>
    #          <note>
    #             <p>It is possible to create a loop or cycle of composite alarms, where composite alarm A depends on composite alarm B, and
    # 			composite alarm B also depends on composite alarm A. In this scenario, you can't delete any composite alarm that is part of the cycle
    # 			because there is always still a composite alarm that depends on that alarm that you want to delete.</p>
    #             <p>To get out of such a situation, you must
    # 			break the cycle by changing the rule of one of the composite alarms in the cycle to remove a dependency that creates the cycle. The simplest
    # 			change to make to break a cycle is to change the <code>AlarmRule</code> of one of the alarms to <code>false</code>. </p>
    #             <p>Additionally, the evaluation of composite alarms stops if CloudWatch detects a cycle in the evaluation path.
    # 		</p>
    #          </note>
    #          <p>When this operation creates an alarm, the alarm state is immediately set to
    # 				<code>INSUFFICIENT_DATA</code>. The alarm is then evaluated and its state is set
    # 			appropriately. Any actions associated with the new state are then executed. For a
    # 			composite alarm, this initial time after creation is the only time that
    # 			the
    # 			alarm can be in <code>INSUFFICIENT_DATA</code> state.</p>
    #          <p>When you update an existing alarm, its state is left unchanged, but the update
    # 			completely overwrites the previous configuration of the alarm.</p>
    #          <p>To use this operation, you must be signed on with
    # 			the <code>cloudwatch:PutCompositeAlarm</code> permission that is scoped to <code>*</code>. You can't create a
    # 			composite alarms if your <code>cloudwatch:PutCompositeAlarm</code> permission has a narrower scope.</p>
    #          <p>If you are an IAM user, you must have <code>iam:CreateServiceLinkedRole</code> to create
    # 			a composite alarm that has Systems Manager OpsItem actions.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::PutCompositeAlarmInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::PutCompositeAlarmOutput]
    # @example Request syntax with placeholder values
    #   resp = client.put_composite_alarm(
    #     actions_enabled: false,
    #     alarm_actions: [
    #       'member'
    #     ],
    #     alarm_description: 'AlarmDescription',
    #     alarm_name: 'AlarmName', # required
    #     alarm_rule: 'AlarmRule', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     actions_suppressor: 'ActionsSuppressor',
    #     actions_suppressor_wait_period: 1,
    #     actions_suppressor_extension_period: 1
    #   )
    # @example Response structure
    #   resp.data #=> Types::PutCompositeAlarmOutput
    def put_composite_alarm(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutCompositeAlarmInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutCompositeAlarmInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutCompositeAlarm
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :put_composite_alarm),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::LimitExceededFault]
        ),
        data_parser: Parsers::PutCompositeAlarm
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::LimitExceededFault],
        stub_data_class: Stubs::PutCompositeAlarm,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :put_composite_alarm,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#put_composite_alarm] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#put_composite_alarm] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#put_composite_alarm] #{output.data}")
      output
    end

    # <p>Creates a dashboard if it does not already exist, or updates an existing dashboard. If you update a dashboard,
    # 		the entire contents are replaced with what you specify here.</p>
    #          <p>All dashboards in your account are global, not region-specific.</p>
    #          <p>A simple way to create a dashboard using <code>PutDashboard</code> is to copy an
    # 			existing dashboard. To copy an existing dashboard using the console, you can load the dashboard
    # 			and then use the View/edit source command in the Actions menu to display the JSON  block
    # 			for that dashboard. Another way to copy a dashboard is to
    # 			use <code>GetDashboard</code>, and then use the data returned
    # 			within <code>DashboardBody</code> as the template for the new dashboard when you call <code>PutDashboard</code>.</p>
    #          <p>When you create a dashboard with <code>PutDashboard</code>, a good practice is to
    # 			add a text widget at the top of the dashboard with a message that the dashboard was created by script and should
    # 		not be changed in the console. This message could also point console users to the location
    # 		of the <code>DashboardBody</code> script or the CloudFormation template used to create the
    # 		dashboard.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::PutDashboardInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::PutDashboardOutput]
    # @example Request syntax with placeholder values
    #   resp = client.put_dashboard(
    #     dashboard_name: 'DashboardName', # required
    #     dashboard_body: 'DashboardBody' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::PutDashboardOutput
    #   resp.data.dashboard_validation_messages #=> Array<DashboardValidationMessage>
    #   resp.data.dashboard_validation_messages[0] #=> Types::DashboardValidationMessage
    #   resp.data.dashboard_validation_messages[0].data_path #=> String
    #   resp.data.dashboard_validation_messages[0].message #=> String
    def put_dashboard(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutDashboardInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutDashboardInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutDashboard
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :put_dashboard),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::DashboardInvalidInputError, Errors::InternalServiceFault]
        ),
        data_parser: Parsers::PutDashboard
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::DashboardInvalidInputError, Stubs::InternalServiceFault],
        stub_data_class: Stubs::PutDashboard,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :put_dashboard,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#put_dashboard] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#put_dashboard] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#put_dashboard] #{output.data}")
      output
    end

    # <p>Creates a Contributor Insights rule. Rules evaluate log events in a
    # 		CloudWatch Logs log group, enabling you to find contributor data for the log events in that log group. For more information,
    # 		see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights.html">Using Contributor Insights to Analyze High-Cardinality Data</a>.</p>
    #          <p>If you create a rule, delete it, and then re-create it with the same name, historical data from the first time
    # 			the rule was created might not be available.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::PutInsightRuleInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::PutInsightRuleOutput]
    # @example Request syntax with placeholder values
    #   resp = client.put_insight_rule(
    #     rule_name: 'RuleName', # required
    #     rule_state: 'RuleState',
    #     rule_definition: 'RuleDefinition', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    # @example Response structure
    #   resp.data #=> Types::PutInsightRuleOutput
    def put_insight_rule(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutInsightRuleInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutInsightRuleInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutInsightRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :put_insight_rule),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::LimitExceededException, Errors::InvalidParameterValueException, Errors::MissingRequiredParameterException]
        ),
        data_parser: Parsers::PutInsightRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::LimitExceededException, Stubs::InvalidParameterValueException, Stubs::MissingRequiredParameterException],
        stub_data_class: Stubs::PutInsightRule,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :put_insight_rule,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#put_insight_rule] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#put_insight_rule] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#put_insight_rule] #{output.data}")
      output
    end

    # <p>
    # 			Creates a managed Contributor Insights rule
    # 			for a specified Amazon Web Services resource.
    # 			When you enable a managed rule,
    # 			you create a Contributor Insights rule
    # 			that collects data
    # 			from Amazon Web Services services.
    # 			You cannot edit these rules
    # 			with <code>PutInsightRule</code>.
    # 			The rules can be enabled, disabled, and deleted using <code>EnableInsightRules</code>, <code>DisableInsightRules</code>, and <code>DeleteInsightRules</code>.
    # 			If a previously created managed rule is currently disabled,
    # 			a subsequent call
    # 			to this API will re-enable it.
    # 			Use <code>ListManagedInsightRules</code>
    # 			to describe all available rules.
    # 			
    # 		</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::PutManagedInsightRulesInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::PutManagedInsightRulesOutput]
    # @example Request syntax with placeholder values
    #   resp = client.put_managed_insight_rules(
    #     managed_rules: [
    #       {
    #         template_name: 'TemplateName', # required
    #         resource_arn: 'ResourceARN', # required
    #         tags: [
    #           {
    #             key: 'Key', # required
    #             value: 'Value' # required
    #           }
    #         ]
    #       }
    #     ] # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::PutManagedInsightRulesOutput
    #   resp.data.failures #=> Array<PartialFailure>
    #   resp.data.failures[0] #=> Types::PartialFailure
    #   resp.data.failures[0].failure_resource #=> String
    #   resp.data.failures[0].exception_type #=> String
    #   resp.data.failures[0].failure_code #=> String
    #   resp.data.failures[0].failure_description #=> String
    def put_managed_insight_rules(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutManagedInsightRulesInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutManagedInsightRulesInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutManagedInsightRules
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :put_managed_insight_rules),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InvalidParameterValueException, Errors::MissingRequiredParameterException]
        ),
        data_parser: Parsers::PutManagedInsightRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InvalidParameterValueException, Stubs::MissingRequiredParameterException],
        stub_data_class: Stubs::PutManagedInsightRules,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :put_managed_insight_rules,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#put_managed_insight_rules] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#put_managed_insight_rules] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#put_managed_insight_rules] #{output.data}")
      output
    end

    # <p>Creates or updates an alarm and associates it with the specified metric, metric math expression,
    # 			anomaly detection model, or Metrics Insights query. For more information about using
    # 			a Metrics Insights query for an alarm, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Create_Metrics_Insights_Alarm.html">Create alarms on Metrics Insights queries</a>.</p>
    #          <p>Alarms based on anomaly detection models cannot have Auto Scaling actions.</p>
    #          <p>When this operation creates an alarm, the alarm state is immediately set to
    # 			<code>INSUFFICIENT_DATA</code>. The alarm is then evaluated and its state is set
    # 			appropriately. Any actions associated with the new state are then executed.</p>
    #          <p>When you update an existing alarm, its state is left unchanged, but the
    # 			update completely overwrites the previous configuration of the alarm.</p>
    #          <p>If you are an IAM user, you must have
    # 			Amazon EC2 permissions for some alarm operations:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>iam:CreateServiceLinkedRole</code> permission for all alarms with EC2 actions</p>
    #             </li>
    #             <li>
    #                <p>The <code>iam:CreateServiceLinkedRole</code> permissions to create an alarm
    # 					with Systems Manager OpsItem or response plan actions.</p>
    #             </li>
    #          </ul>
    #          <p>The first time you create an alarm in the
    # 			Amazon Web Services Management Console, the CLI, or by using the PutMetricAlarm API, CloudWatch
    # 			creates the necessary service-linked role for you. The service-linked roles
    # 			are called <code>AWSServiceRoleForCloudWatchEvents</code> and
    # 			<code>AWSServiceRoleForCloudWatchAlarms_ActionSSM</code>.
    # 			For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role">Amazon Web Services service-linked role</a>.</p>
    #          <p>Each <code>PutMetricAlarm</code> action has a maximum uncompressed payload of 120 KB.</p>
    #          <p>
    #             <b>Cross-account alarms</b>
    #          </p>
    #          <p>You can set an alarm on metrics in the current account, or in another
    # 			account. To create a cross-account alarm that watches a metric in a different account, you must have completed the following
    # 			pre-requisites:</p>
    #          <ul>
    #             <li>
    #                <p>The account where the metrics are located (the <i>sharing account</i>) must
    # 				already have a sharing role named <b>CloudWatch-CrossAccountSharingRole</b>. If it does not already
    # 				have this role, you must create it using the instructions in <b>Set up a
    # 					sharing account</b> in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Cross-Account-Cross-Region.html#enable-cross-account-cross-Region">
    # 					Cross-account cross-Region CloudWatch console</a>. The policy for that
    # 				role must grant access
    # 				to the ID of the account where you are creating the alarm.
    # 			</p>
    #             </li>
    #             <li>
    #                <p>The account where you are creating the alarm (the <i>monitoring account</i>) must
    # 				already have a service-linked role named
    # 				<b>AWSServiceRoleForCloudWatchCrossAccount</b> to allow
    # 				CloudWatch to assume the sharing role in the sharing account. If it does not, you must create it following the directions in <b>Set up a
    # 					monitoring account</b> in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Cross-Account-Cross-Region.html#enable-cross-account-cross-Region">
    # 						Cross-account cross-Region CloudWatch console</a>.</p>
    #             </li>
    #          </ul>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::PutMetricAlarmInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::PutMetricAlarmOutput]
    # @example Request syntax with placeholder values
    #   resp = client.put_metric_alarm(
    #     alarm_name: 'AlarmName', # required
    #     alarm_description: 'AlarmDescription',
    #     actions_enabled: false,
    #     ok_actions: [
    #       'member'
    #     ],
    #     metric_name: 'MetricName',
    #     namespace: 'Namespace',
    #     statistic: 'SampleCount', # accepts ["SampleCount", "Average", "Sum", "Minimum", "Maximum"]
    #     extended_statistic: 'ExtendedStatistic',
    #     dimensions: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     period: 1,
    #     unit: 'Seconds', # accepts ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #     evaluation_periods: 1, # required
    #     datapoints_to_alarm: 1,
    #     threshold: 1.0,
    #     comparison_operator: 'GreaterThanOrEqualToThreshold', # required - accepts ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold", "LessThanLowerOrGreaterThanUpperThreshold", "LessThanLowerThreshold", "GreaterThanUpperThreshold"]
    #     treat_missing_data: 'TreatMissingData',
    #     evaluate_low_sample_count_percentile: 'EvaluateLowSampleCountPercentile',
    #     metrics: [
    #       {
    #         id: 'Id', # required
    #         metric_stat: {
    #           metric: {
    #             namespace: 'Namespace',
    #             metric_name: 'MetricName',
    #           }, # required
    #           period: 1, # required
    #           stat: 'Stat', # required
    #           unit: 'Seconds' # accepts ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #         },
    #         expression: 'Expression',
    #         label: 'Label',
    #         return_data: false,
    #         period: 1,
    #         account_id: 'AccountId'
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     threshold_metric_id: 'ThresholdMetricId'
    #   )
    # @example Response structure
    #   resp.data #=> Types::PutMetricAlarmOutput
    def put_metric_alarm(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutMetricAlarmInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutMetricAlarmInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutMetricAlarm
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :put_metric_alarm),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::LimitExceededFault]
        ),
        data_parser: Parsers::PutMetricAlarm
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::LimitExceededFault],
        stub_data_class: Stubs::PutMetricAlarm,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :put_metric_alarm,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#put_metric_alarm] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#put_metric_alarm] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#put_metric_alarm] #{output.data}")
      output
    end

    # <p>Publishes metric data points to Amazon CloudWatch. CloudWatch associates
    # 			the data points with the specified metric. If the specified metric does not exist,
    # 			CloudWatch creates the metric. When CloudWatch creates a metric, it can
    # 			take up to fifteen minutes for the metric to appear in calls to <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html">ListMetrics</a>.</p>
    #          <p>You can publish either individual data points in the <code>Value</code> field, or
    # 		arrays of values and the number of times each value occurred during the period by using the
    # 		<code>Values</code> and <code>Counts</code> fields in the <code>MetricDatum</code> structure. Using
    # 		the <code>Values</code> and <code>Counts</code> method enables you to publish up to 150 values per metric
    # 			with one <code>PutMetricData</code> request, and
    # 		supports retrieving percentile statistics on this data.</p>
    #          <p>Each <code>PutMetricData</code> request is limited to 1 MB in size for HTTP POST requests. You can
    # 			send a payload compressed by gzip. Each request
    # 		is also limited to no more than 1000 different metrics.</p>
    #          <p>Although the <code>Value</code> parameter accepts numbers of type
    # 			<code>Double</code>, CloudWatch rejects values that are either too small
    # 			or too large. Values must be in the range of -2^360 to 2^360. In addition, special values (for example, NaN, +Infinity,
    # 			-Infinity) are not supported.</p>
    #          <p>You can use up to 30 dimensions per metric to further clarify what data the metric collects. Each dimension
    # 			consists of a Name and Value pair. For more information about specifying dimensions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html">Publishing Metrics</a> in the
    # 			<i>Amazon CloudWatch User Guide</i>.</p>
    #          <p>You specify the time stamp to be associated with each data point. You can specify
    # 		time stamps that are as much as two weeks before the current date, and as much as 2 hours after
    # 		the current day and time.</p>
    #          <p>Data points with time stamps from 24 hours ago or longer can take at least 48
    # 			hours to become available for <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html">GetMetricData</a> or
    # 			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html">GetMetricStatistics</a> from the time they
    # 			are submitted. Data points with time stamps between 3 and 24 hours ago can take as much as 2 hours to become available
    # 			for for <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html">GetMetricData</a> or
    # 			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html">GetMetricStatistics</a>.</p>
    #          <p>CloudWatch needs raw data points to calculate percentile statistics. If you publish
    # 			data using a statistic set instead, you can only retrieve
    # 			percentile statistics for this data if one of the following conditions is true:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>SampleCount</code> value of the statistic set is 1 and <code>Min</code>,
    # 					<code>Max</code>, and <code>Sum</code> are all equal.</p>
    #             </li>
    #             <li>
    #                <p>The <code>Min</code> and
    # 					<code>Max</code> are equal, and <code>Sum</code> is equal to <code>Min</code>
    # 					multiplied by <code>SampleCount</code>.</p>
    #             </li>
    #          </ul>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::PutMetricDataInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::PutMetricDataOutput]
    # @example Request syntax with placeholder values
    #   resp = client.put_metric_data(
    #     namespace: 'Namespace', # required
    #     metric_data: [
    #       {
    #         metric_name: 'MetricName', # required
    #         dimensions: [
    #           {
    #             name: 'Name', # required
    #             value: 'Value' # required
    #           }
    #         ],
    #         timestamp: Time.now,
    #         value: 1.0,
    #         statistic_values: {
    #           sample_count: 1.0, # required
    #           sum: 1.0, # required
    #           minimum: 1.0, # required
    #           maximum: 1.0 # required
    #         },
    #         values: [
    #           1.0
    #         ],
    #         counts: [
    #           1.0
    #         ],
    #         unit: 'Seconds', # accepts ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #         storage_resolution: 1
    #       }
    #     ] # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::PutMetricDataOutput
    def put_metric_data(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutMetricDataInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutMetricDataInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutMetricData
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::HTTP::Middleware::RequestCompression,
        streaming: false,
        encodings: ['gzip'],
        request_min_compression_size_bytes: config.request_min_compression_size_bytes,
        disable_request_compression: config.disable_request_compression
      )
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :put_metric_data),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InternalServiceFault, Errors::InvalidParameterCombinationException, Errors::InvalidParameterValueException, Errors::MissingRequiredParameterException]
        ),
        data_parser: Parsers::PutMetricData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InternalServiceFault, Stubs::InvalidParameterCombinationException, Stubs::InvalidParameterValueException, Stubs::MissingRequiredParameterException],
        stub_data_class: Stubs::PutMetricData,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :put_metric_data,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#put_metric_data] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#put_metric_data] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#put_metric_data] #{output.data}")
      output
    end

    # <p>Creates or updates a metric stream. Metric streams can automatically stream CloudWatch
    # 			metrics to Amazon Web Services destinations, including Amazon S3, and to many third-party
    # 			solutions.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Metric-Streams.html">
    # 		Using Metric Streams</a>.</p>
    #          <p>To create a metric stream, you must be signed in to an account that has the
    # 				<code>iam:PassRole</code> permission and either the
    # 				<code>CloudWatchFullAccess</code> policy or the
    # 				<code>cloudwatch:PutMetricStream</code> permission.</p>
    #          <p>When you create or update a metric stream, you choose one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>Stream metrics from all metric namespaces in the account.</p>
    #             </li>
    #             <li>
    #                <p>Stream metrics from all metric namespaces in the account, except
    # 				for the namespaces that you list in <code>ExcludeFilters</code>.</p>
    #             </li>
    #             <li>
    #                <p>Stream metrics from only the metric namespaces that you list in
    # 				<code>IncludeFilters</code>.</p>
    #             </li>
    #          </ul>
    #          <p>By default, a metric stream always sends the <code>MAX</code>, <code>MIN</code>,
    # 				<code>SUM</code>, and <code>SAMPLECOUNT</code> statistics for each metric that is
    # 			streamed. You can use the <code>StatisticsConfigurations</code> parameter to have the
    # 			metric stream send additional statistics in the stream. Streaming additional statistics
    # 			incurs additional costs. For more information, see <a href="https://aws.amazon.com/cloudwatch/pricing/">Amazon CloudWatch Pricing</a>. </p>
    #          <p>When you use <code>PutMetricStream</code> to create a new metric stream, the stream
    # 		is created in the <code>running</code> state. If you use it to update an existing stream,
    # 		the state of the stream is not changed.</p>
    #          <p>If you are using CloudWatch cross-account observability and you create a metric stream in a monitoring account,
    # 			you can choose whether to include metrics from source accounts in the stream. For more information, see
    # 			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html">CloudWatch cross-account observability</a>.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::PutMetricStreamInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::PutMetricStreamOutput]
    # @example Request syntax with placeholder values
    #   resp = client.put_metric_stream(
    #     name: 'Name', # required
    #     include_filters: [
    #       {
    #         namespace: 'Namespace',
    #         metric_names: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     firehose_arn: 'FirehoseArn', # required
    #     role_arn: 'RoleArn', # required
    #     output_format: 'json', # required - accepts ["json", "opentelemetry0.7", "opentelemetry1.0"]
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     statistics_configurations: [
    #       {
    #         include_metrics: [
    #           {
    #             namespace: 'Namespace', # required
    #             metric_name: 'MetricName' # required
    #           }
    #         ], # required
    #         additional_statistics: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     include_linked_accounts_metrics: false
    #   )
    # @example Response structure
    #   resp.data #=> Types::PutMetricStreamOutput
    #   resp.data.arn #=> String
    def put_metric_stream(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutMetricStreamInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutMetricStreamInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutMetricStream
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :put_metric_stream),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InvalidParameterCombinationException, Errors::ConcurrentModificationException, Errors::InvalidParameterValueException, Errors::InternalServiceFault, Errors::MissingRequiredParameterException]
        ),
        data_parser: Parsers::PutMetricStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InvalidParameterCombinationException, Stubs::ConcurrentModificationException, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault, Stubs::MissingRequiredParameterException],
        stub_data_class: Stubs::PutMetricStream,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :put_metric_stream,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#put_metric_stream] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#put_metric_stream] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#put_metric_stream] #{output.data}")
      output
    end

    # <p>Temporarily sets the state of an alarm for testing purposes. When the updated
    # 			state differs from the previous value, the action configured for
    # 			the appropriate state is invoked. For example, if your alarm is configured to send an
    # 			Amazon SNS message when an alarm is triggered, temporarily changing the alarm state to
    # 			<code>ALARM</code> sends an SNS message.</p>
    #          <p>Metric alarms
    # 			returns to their actual state quickly, often within seconds. Because the metric alarm state change
    # 			happens quickly, it is typically only visible in the alarm's <b>History</b> tab in the Amazon CloudWatch console or through
    # 			<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarmHistory.html">DescribeAlarmHistory</a>.</p>
    #          <p>If you use <code>SetAlarmState</code> on a composite alarm, the composite alarm is not guaranteed to return
    # 			to its actual state. It
    # 			returns to its actual state only once any of its children alarms change state. It is also
    # 			reevaluated if you update its
    # 			configuration.</p>
    #          <p>If an alarm triggers EC2 Auto Scaling policies or application Auto Scaling policies, you must include
    # 		information in the <code>StateReasonData</code> parameter to enable the policy to take the correct action.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::SetAlarmStateInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::SetAlarmStateOutput]
    # @example Request syntax with placeholder values
    #   resp = client.set_alarm_state(
    #     alarm_name: 'AlarmName', # required
    #     state_value: 'OK', # required - accepts ["OK", "ALARM", "INSUFFICIENT_DATA"]
    #     state_reason: 'StateReason', # required
    #     state_reason_data: 'StateReasonData'
    #   )
    # @example Response structure
    #   resp.data #=> Types::SetAlarmStateOutput
    def set_alarm_state(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetAlarmStateInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetAlarmStateInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetAlarmState
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :set_alarm_state),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InvalidFormatFault, Errors::ResourceNotFound]
        ),
        data_parser: Parsers::SetAlarmState
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InvalidFormatFault, Stubs::ResourceNotFound],
        stub_data_class: Stubs::SetAlarmState,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :set_alarm_state,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#set_alarm_state] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#set_alarm_state] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#set_alarm_state] #{output.data}")
      output
    end

    # <p>Starts the streaming of metrics for one or more of your metric streams.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::StartMetricStreamsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::StartMetricStreamsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.start_metric_streams(
    #     names: [
    #       'member'
    #     ] # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::StartMetricStreamsOutput
    def start_metric_streams(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartMetricStreamsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartMetricStreamsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartMetricStreams
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :start_metric_streams),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InvalidParameterValueException, Errors::InternalServiceFault, Errors::MissingRequiredParameterException]
        ),
        data_parser: Parsers::StartMetricStreams
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InvalidParameterValueException, Stubs::InternalServiceFault, Stubs::MissingRequiredParameterException],
        stub_data_class: Stubs::StartMetricStreams,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :start_metric_streams,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#start_metric_streams] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#start_metric_streams] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#start_metric_streams] #{output.data}")
      output
    end

    # <p>Stops the streaming of metrics for one or more of your metric streams.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::StopMetricStreamsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::StopMetricStreamsOutput]
    # @example Request syntax with placeholder values
    #   resp = client.stop_metric_streams(
    #     names: [
    #       'member'
    #     ] # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::StopMetricStreamsOutput
    def stop_metric_streams(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopMetricStreamsInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopMetricStreamsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopMetricStreams
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :stop_metric_streams),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::InvalidParameterValueException, Errors::InternalServiceFault, Errors::MissingRequiredParameterException]
        ),
        data_parser: Parsers::StopMetricStreams
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::InvalidParameterValueException, Stubs::InternalServiceFault, Stubs::MissingRequiredParameterException],
        stub_data_class: Stubs::StopMetricStreams,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :stop_metric_streams,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#stop_metric_streams] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#stop_metric_streams] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#stop_metric_streams] #{output.data}")
      output
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified CloudWatch resource. Currently, the only CloudWatch resources that
    # 			can be tagged are alarms and Contributor Insights rules.</p>
    #          <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    # 			permissions by granting a user
    # 			permission to access or change only resources with certain tag values.</p>
    #          <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #          <p>You can use the <code>TagResource</code> action with an alarm that already has tags. If you specify a new tag key for the alarm,
    # 			this tag is appended to the list of tags associated
    # 			with the alarm. If you specify a tag key that is already associated with the alarm, the new tag value that you specify replaces
    # 			the previous value for that tag.</p>
    #          <p>You can associate as many as 50 tags with a CloudWatch resource.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::TagResourceInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::TagResourceOutput]
    # @example Request syntax with placeholder values
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceARN', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ] # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::TagResourceOutput
    def tag_resource(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :tag_resource),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::ResourceNotFoundException, Errors::ConcurrentModificationException, Errors::InvalidParameterValueException, Errors::InternalServiceFault]
        ),
        data_parser: Parsers::TagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::ResourceNotFoundException, Stubs::ConcurrentModificationException, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault],
        stub_data_class: Stubs::TagResource,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :tag_resource,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#tag_resource] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#tag_resource] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#tag_resource] #{output.data}")
      output
    end

    # <p>Removes one or more tags from the specified resource.</p>
    # @param [Hash] params
    #   Request parameters for this operation.
    #   See {Types::UntagResourceInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Types::UntagResourceOutput]
    # @example Request syntax with placeholder values
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceARN', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::UntagResourceOutput
    def untag_resource(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params, context: 'params')
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Auth,
        auth_params: Auth::Params.new(operation_name: :untag_resource),
        auth_resolver: config.auth_resolver,
        auth_schemes: config.auth_schemes
      )
      stack.use(Hearth::Middleware::Sign)
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(
          error_module: Errors,
          success_status: 200,
          errors: [Errors::ResourceNotFoundException, Errors::ConcurrentModificationException, Errors::InvalidParameterValueException, Errors::InternalServiceFault]
        ),
        data_parser: Parsers::UntagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: config.http_client,
        stub_error_classes: [Stubs::ResourceNotFoundException, Stubs::ConcurrentModificationException, Stubs::InvalidParameterValueException, Stubs::InternalServiceFault],
        stub_data_class: Stubs::UntagResource,
        stubs: @stubs
      )
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI(config.endpoint)),
        response: Hearth::HTTP::Response.new(body: response_body),
        logger: config.logger,
        operation_name: :untag_resource,
        interceptors: config.interceptors
      )
      context.logger.info("[#{context.invocation_id}] [#{self.class}#untag_resource] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.logger.error("[#{context.invocation_id}] [#{self.class}#untag_resource] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.logger.info("[#{context.invocation_id}] [#{self.class}#untag_resource] #{output.data}")
      output
    end

    private

    def initialize_config(options)
      client_interceptors = options.delete(:interceptors)
      config = Config.new(**options)
      Client.plugins.each { |p| p.call(config) }
      config.plugins.each { |p| p.call(config) }
      config.interceptors.concat(Hearth::InterceptorList.new(client_interceptors)) if client_interceptors
      config.validate!
      config.freeze
    end

    def operation_config(options)
      return @config if options.empty?

      operation_plugins = options.delete(:plugins)
      operation_interceptors = options.delete(:interceptors)
      config = @config.merge(options)
      Hearth::PluginList.new(operation_plugins).each { |p| p.call(config) } if operation_plugins
      config.interceptors.concat(Hearth::InterceptorList.new(operation_interceptors)) if operation_interceptors
      config.validate!
      config.freeze
    end
  end
end
