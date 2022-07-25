# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::DevOpsGuru
  # An API client for CapstoneControlPlaneService
  # See {#initialize} for a full list of supported configuration options
  # <p> Amazon DevOps Guru is a fully managed service that helps you identify anomalous behavior in
  # 			business critical operational applications. You specify the Amazon Web Services resources that you
  # 			want DevOps Guru to cover, then the Amazon CloudWatch metrics and Amazon Web Services CloudTrail events related to those
  # 			resources are analyzed. When anomalous behavior is detected, DevOps Guru creates an
  # 				<i>insight</i> that includes recommendations, related events, and
  # 			related metrics that can help you improve your operational applications. For more
  # 			information, see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/welcome.html">What is Amazon DevOps Guru</a>. </p>
  #
  # 		       <p> You can specify 1 or 2 Amazon Simple Notification Service topics so you are notified every time a new insight
  # 			is created. You can also enable DevOps Guru to generate an OpsItem in Amazon Web Services Systems Manager for each
  # 			insight to help you manage and track your work addressing insights. </p>
  #
  # 		       <p> To learn about the DevOps Guru workflow, see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/welcome.html#how-it-works">How DevOps Guru works</a>. To
  # 			learn about DevOps Guru concepts, see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/concepts.html">Concepts in DevOps Guru</a>. </p>
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
    def initialize(config = AWS::SDK::DevOpsGuru::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p> Adds a notification channel to DevOps Guru. A notification channel is used to notify you
    # 			about important DevOps Guru events, such as when an insight is generated. </p>
    # 		       <p>If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission
    # 				to it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. DevOps Guru only supports standard SNS topics.
    # 				For more information, see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html">Permissions
    # 				for cross account Amazon SNS topics</a>.</p>
    # 				     <p>If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission to it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. For more information, see Permissions for cross account Amazon SNS topics.</p>
    # 				     <p>If you use an Amazon SNS topic that is encrypted by an Amazon Web Services Key Management Service customer-managed key (CMK), then you must add permissions
    # 				to the CMK. For more information, see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html">Permissions for
    # 				Amazon Web Services KMS–encrypted Amazon SNS topics</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::AddNotificationChannelInput}.
    #
    # @option params [NotificationChannelConfig] :config
    #   <p> A <code>NotificationChannelConfig</code> object that specifies what type of
    #   			notification channel to add. The one
    #         	supported notification channel is Amazon Simple Notification Service (Amazon SNS). </p>
    #
    # @return [Types::AddNotificationChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_notification_channel(
    #     config: {
    #       sns: {
    #         topic_arn: 'TopicArn'
    #       } # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddNotificationChannelOutput
    #   resp.data.id #=> String
    #
    def add_notification_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddNotificationChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddNotificationChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddNotificationChannel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::AddNotificationChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddNotificationChannel,
        stubs: @stubs,
        params_class: Params::AddNotificationChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_notification_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the insight along with the associated anomalies, events and recommendations.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteInsightInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the insight.</p>
    #
    # @return [Types::DeleteInsightOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_insight(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteInsightOutput
    #
    def delete_insight(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteInsightInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteInsightInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteInsight
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteInsight
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteInsight,
        stubs: @stubs,
        params_class: Params::DeleteInsightOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_insight
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the number of open reactive insights, the number of open proactive insights,
    # 			and the number of metrics analyzed in your Amazon Web Services account. Use these numbers to gauge the
    # 			health of operations in your Amazon Web Services account. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccountHealthInput}.
    #
    # @return [Types::DescribeAccountHealthOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_health()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccountHealthOutput
    #   resp.data.open_reactive_insights #=> Integer
    #   resp.data.open_proactive_insights #=> Integer
    #   resp.data.metrics_analyzed #=> Integer
    #   resp.data.resource_hours #=> Integer
    #
    def describe_account_health(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccountHealthInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccountHealthInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccountHealth
      )
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
        data_parser: Parsers::DescribeAccountHealth
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccountHealth,
        stubs: @stubs,
        params_class: Params::DescribeAccountHealthOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_account_health
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> For the time range passed in, returns the number of open reactive insight that were
    # 			created, the number of open proactive insights that were created, and the Mean Time to Recover (MTTR) for all
    # 			closed reactive insights. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccountOverviewInput}.
    #
    # @option params [Time] :from_time
    #   <p> The start of the time range passed in. The start time granularity is at the day
    #   			level. The floor of the start time is used. Returned information occurred after this
    #   			day. </p>
    #
    # @option params [Time] :to_time
    #   <p> The end of the time range passed in. The start time granularity is at the day level.
    #   			The floor of the start time is used. Returned information occurred before this day. If
    #   			this is not specified, then the current day is used. </p>
    #
    # @return [Types::DescribeAccountOverviewOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_overview(
    #     from_time: Time.now, # required
    #     to_time: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccountOverviewOutput
    #   resp.data.reactive_insights #=> Integer
    #   resp.data.proactive_insights #=> Integer
    #   resp.data.mean_time_to_recover_in_milliseconds #=> Integer
    #
    def describe_account_overview(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccountOverviewInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccountOverviewInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccountOverview
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
        data_parser: Parsers::DescribeAccountOverview
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccountOverview,
        stubs: @stubs,
        params_class: Params::DescribeAccountOverviewOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_account_overview
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns details about an anomaly that you specify using its ID. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAnomalyInput}.
    #
    # @option params [String] :id
    #   <p> The ID of the anomaly. </p>
    #
    # @option params [String] :account_id
    #   <p>The ID of the member account.</p>
    #
    # @return [Types::DescribeAnomalyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_anomaly(
    #     id: 'Id', # required
    #     account_id: 'AccountId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAnomalyOutput
    #   resp.data.proactive_anomaly #=> Types::ProactiveAnomaly
    #   resp.data.proactive_anomaly.id #=> String
    #   resp.data.proactive_anomaly.severity #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.proactive_anomaly.status #=> String, one of ["ONGOING", "CLOSED"]
    #   resp.data.proactive_anomaly.update_time #=> Time
    #   resp.data.proactive_anomaly.anomaly_time_range #=> Types::AnomalyTimeRange
    #   resp.data.proactive_anomaly.anomaly_time_range.start_time #=> Time
    #   resp.data.proactive_anomaly.anomaly_time_range.end_time #=> Time
    #   resp.data.proactive_anomaly.anomaly_reported_time_range #=> Types::AnomalyReportedTimeRange
    #   resp.data.proactive_anomaly.anomaly_reported_time_range.open_time #=> Time
    #   resp.data.proactive_anomaly.anomaly_reported_time_range.close_time #=> Time
    #   resp.data.proactive_anomaly.prediction_time_range #=> Types::PredictionTimeRange
    #   resp.data.proactive_anomaly.prediction_time_range.start_time #=> Time
    #   resp.data.proactive_anomaly.prediction_time_range.end_time #=> Time
    #   resp.data.proactive_anomaly.source_details #=> Types::AnomalySourceDetails
    #   resp.data.proactive_anomaly.source_details.cloud_watch_metrics #=> Array<CloudWatchMetricsDetail>
    #   resp.data.proactive_anomaly.source_details.cloud_watch_metrics[0] #=> Types::CloudWatchMetricsDetail
    #   resp.data.proactive_anomaly.source_details.cloud_watch_metrics[0].metric_name #=> String
    #   resp.data.proactive_anomaly.source_details.cloud_watch_metrics[0].namespace #=> String
    #   resp.data.proactive_anomaly.source_details.cloud_watch_metrics[0].dimensions #=> Array<CloudWatchMetricsDimension>
    #   resp.data.proactive_anomaly.source_details.cloud_watch_metrics[0].dimensions[0] #=> Types::CloudWatchMetricsDimension
    #   resp.data.proactive_anomaly.source_details.cloud_watch_metrics[0].dimensions[0].name #=> String
    #   resp.data.proactive_anomaly.source_details.cloud_watch_metrics[0].dimensions[0].value #=> String
    #   resp.data.proactive_anomaly.source_details.cloud_watch_metrics[0].stat #=> String, one of ["Sum", "Average", "SampleCount", "Minimum", "Maximum", "p99", "p90", "p50"]
    #   resp.data.proactive_anomaly.source_details.cloud_watch_metrics[0].unit #=> String
    #   resp.data.proactive_anomaly.source_details.cloud_watch_metrics[0].period #=> Integer
    #   resp.data.proactive_anomaly.source_details.cloud_watch_metrics[0].metric_data_summary #=> Types::CloudWatchMetricsDataSummary
    #   resp.data.proactive_anomaly.source_details.cloud_watch_metrics[0].metric_data_summary.timestamp_metric_value_pair_list #=> Array<TimestampMetricValuePair>
    #   resp.data.proactive_anomaly.source_details.cloud_watch_metrics[0].metric_data_summary.timestamp_metric_value_pair_list[0] #=> Types::TimestampMetricValuePair
    #   resp.data.proactive_anomaly.source_details.cloud_watch_metrics[0].metric_data_summary.timestamp_metric_value_pair_list[0].timestamp #=> Time
    #   resp.data.proactive_anomaly.source_details.cloud_watch_metrics[0].metric_data_summary.timestamp_metric_value_pair_list[0].metric_value #=> Float
    #   resp.data.proactive_anomaly.source_details.cloud_watch_metrics[0].metric_data_summary.status_code #=> String, one of ["Complete", "InternalError", "PartialData"]
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics #=> Array<PerformanceInsightsMetricsDetail>
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0] #=> Types::PerformanceInsightsMetricsDetail
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].metric_display_name #=> String
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].unit #=> String
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].metric_query #=> Types::PerformanceInsightsMetricQuery
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].metric_query.metric #=> String
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].metric_query.group_by #=> Types::PerformanceInsightsMetricDimensionGroup
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].metric_query.group_by.group #=> String
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].metric_query.group_by.dimensions #=> Array<String>
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].metric_query.group_by.dimensions[0] #=> String
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].metric_query.group_by.limit #=> Integer
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].metric_query.filter #=> Hash<String, String>
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].metric_query.filter['key'] #=> String
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].reference_data #=> Array<PerformanceInsightsReferenceData>
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0] #=> Types::PerformanceInsightsReferenceData
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].name #=> String
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values #=> Types::PerformanceInsightsReferenceComparisonValues
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_scalar #=> Types::PerformanceInsightsReferenceScalar
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_scalar.value #=> Float
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric #=> Types::PerformanceInsightsReferenceMetric
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query #=> Types::PerformanceInsightsMetricQuery
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].stats_at_anomaly #=> Array<PerformanceInsightsStat>
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].stats_at_anomaly[0] #=> Types::PerformanceInsightsStat
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].stats_at_anomaly[0].type #=> String
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].stats_at_anomaly[0].value #=> Float
    #   resp.data.proactive_anomaly.source_details.performance_insights_metrics[0].stats_at_baseline #=> Array<PerformanceInsightsStat>
    #   resp.data.proactive_anomaly.associated_insight_id #=> String
    #   resp.data.proactive_anomaly.resource_collection #=> Types::ResourceCollection
    #   resp.data.proactive_anomaly.resource_collection.cloud_formation #=> Types::CloudFormationCollection
    #   resp.data.proactive_anomaly.resource_collection.cloud_formation.stack_names #=> Array<String>
    #   resp.data.proactive_anomaly.resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.data.proactive_anomaly.resource_collection.tags #=> Array<TagCollection>
    #   resp.data.proactive_anomaly.resource_collection.tags[0] #=> Types::TagCollection
    #   resp.data.proactive_anomaly.resource_collection.tags[0].app_boundary_key #=> String
    #   resp.data.proactive_anomaly.resource_collection.tags[0].tag_values #=> Array<String>
    #   resp.data.proactive_anomaly.resource_collection.tags[0].tag_values[0] #=> String
    #   resp.data.proactive_anomaly.limit #=> Float
    #   resp.data.proactive_anomaly.source_metadata #=> Types::AnomalySourceMetadata
    #   resp.data.proactive_anomaly.source_metadata.source #=> String
    #   resp.data.proactive_anomaly.source_metadata.source_resource_name #=> String
    #   resp.data.proactive_anomaly.source_metadata.source_resource_type #=> String
    #   resp.data.proactive_anomaly.anomaly_resources #=> Array<AnomalyResource>
    #   resp.data.proactive_anomaly.anomaly_resources[0] #=> Types::AnomalyResource
    #   resp.data.proactive_anomaly.anomaly_resources[0].name #=> String
    #   resp.data.proactive_anomaly.anomaly_resources[0].type #=> String
    #   resp.data.reactive_anomaly #=> Types::ReactiveAnomaly
    #   resp.data.reactive_anomaly.id #=> String
    #   resp.data.reactive_anomaly.severity #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.reactive_anomaly.status #=> String, one of ["ONGOING", "CLOSED"]
    #   resp.data.reactive_anomaly.anomaly_time_range #=> Types::AnomalyTimeRange
    #   resp.data.reactive_anomaly.anomaly_reported_time_range #=> Types::AnomalyReportedTimeRange
    #   resp.data.reactive_anomaly.source_details #=> Types::AnomalySourceDetails
    #   resp.data.reactive_anomaly.associated_insight_id #=> String
    #   resp.data.reactive_anomaly.resource_collection #=> Types::ResourceCollection
    #   resp.data.reactive_anomaly.type #=> String, one of ["CAUSAL", "CONTEXTUAL"]
    #   resp.data.reactive_anomaly.name #=> String
    #   resp.data.reactive_anomaly.description #=> String
    #   resp.data.reactive_anomaly.causal_anomaly_id #=> String
    #   resp.data.reactive_anomaly.anomaly_resources #=> Array<AnomalyResource>
    #
    def describe_anomaly(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAnomalyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAnomalyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAnomaly
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeAnomaly
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAnomaly,
        stubs: @stubs,
        params_class: Params::DescribeAnomalyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_anomaly
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the integration status of services that are integrated with DevOps Guru as Consumer
    # 			via EventBridge. The one service that can be integrated with DevOps Guru is Amazon CodeGuru
    # 			Profiler, which can produce proactive recommendations which can be stored and viewed in
    # 			DevOps Guru.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventSourcesConfigInput}.
    #
    # @return [Types::DescribeEventSourcesConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_sources_config()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventSourcesConfigOutput
    #   resp.data.event_sources #=> Types::EventSourcesConfig
    #   resp.data.event_sources.amazon_code_guru_profiler #=> Types::AmazonCodeGuruProfilerIntegration
    #   resp.data.event_sources.amazon_code_guru_profiler.status #=> String, one of ["ENABLED", "DISABLED"]
    #
    def describe_event_sources_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventSourcesConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEventSourcesConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEventSourcesConfig
      )
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
        data_parser: Parsers::DescribeEventSourcesConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEventSourcesConfig,
        stubs: @stubs,
        params_class: Params::DescribeEventSourcesConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_event_sources_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the most recent feedback submitted in the current Amazon Web Services account and Region.
    # 		</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFeedbackInput}.
    #
    # @option params [String] :insight_id
    #   <p> The ID of the insight for which the feedback was provided. </p>
    #
    # @return [Types::DescribeFeedbackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_feedback(
    #     insight_id: 'InsightId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFeedbackOutput
    #   resp.data.insight_feedback #=> Types::InsightFeedback
    #   resp.data.insight_feedback.id #=> String
    #   resp.data.insight_feedback.feedback #=> String, one of ["VALID_COLLECTION", "RECOMMENDATION_USEFUL", "ALERT_TOO_SENSITIVE", "DATA_NOISY_ANOMALY", "DATA_INCORRECT"]
    #
    def describe_feedback(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFeedbackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFeedbackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFeedback
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeFeedback
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFeedback,
        stubs: @stubs,
        params_class: Params::DescribeFeedbackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_feedback
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns details about an insight that you specify using its ID. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInsightInput}.
    #
    # @option params [String] :id
    #   <p> The ID of the insight. </p>
    #
    # @option params [String] :account_id
    #   <p>The ID of the member account in the organization.</p>
    #
    # @return [Types::DescribeInsightOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_insight(
    #     id: 'Id', # required
    #     account_id: 'AccountId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInsightOutput
    #   resp.data.proactive_insight #=> Types::ProactiveInsight
    #   resp.data.proactive_insight.id #=> String
    #   resp.data.proactive_insight.name #=> String
    #   resp.data.proactive_insight.severity #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.proactive_insight.status #=> String, one of ["ONGOING", "CLOSED"]
    #   resp.data.proactive_insight.insight_time_range #=> Types::InsightTimeRange
    #   resp.data.proactive_insight.insight_time_range.start_time #=> Time
    #   resp.data.proactive_insight.insight_time_range.end_time #=> Time
    #   resp.data.proactive_insight.prediction_time_range #=> Types::PredictionTimeRange
    #   resp.data.proactive_insight.prediction_time_range.start_time #=> Time
    #   resp.data.proactive_insight.prediction_time_range.end_time #=> Time
    #   resp.data.proactive_insight.resource_collection #=> Types::ResourceCollection
    #   resp.data.proactive_insight.resource_collection.cloud_formation #=> Types::CloudFormationCollection
    #   resp.data.proactive_insight.resource_collection.cloud_formation.stack_names #=> Array<String>
    #   resp.data.proactive_insight.resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.data.proactive_insight.resource_collection.tags #=> Array<TagCollection>
    #   resp.data.proactive_insight.resource_collection.tags[0] #=> Types::TagCollection
    #   resp.data.proactive_insight.resource_collection.tags[0].app_boundary_key #=> String
    #   resp.data.proactive_insight.resource_collection.tags[0].tag_values #=> Array<String>
    #   resp.data.proactive_insight.resource_collection.tags[0].tag_values[0] #=> String
    #   resp.data.proactive_insight.ssm_ops_item_id #=> String
    #   resp.data.proactive_insight.description #=> String
    #   resp.data.reactive_insight #=> Types::ReactiveInsight
    #   resp.data.reactive_insight.id #=> String
    #   resp.data.reactive_insight.name #=> String
    #   resp.data.reactive_insight.severity #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.reactive_insight.status #=> String, one of ["ONGOING", "CLOSED"]
    #   resp.data.reactive_insight.insight_time_range #=> Types::InsightTimeRange
    #   resp.data.reactive_insight.resource_collection #=> Types::ResourceCollection
    #   resp.data.reactive_insight.ssm_ops_item_id #=> String
    #   resp.data.reactive_insight.description #=> String
    #
    def describe_insight(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInsightInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInsightInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInsight
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DescribeInsight
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInsight,
        stubs: @stubs,
        params_class: Params::DescribeInsightOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_insight
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns active insights, predictive insights, and resource hours analyzed in last
    # 			hour.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeOrganizationHealthInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account.</p>
    #
    # @option params [Array<String>] :organizational_unit_ids
    #   <p>The ID of the organizational unit.</p>
    #
    # @return [Types::DescribeOrganizationHealthOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_health(
    #     account_ids: [
    #       'member'
    #     ],
    #     organizational_unit_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOrganizationHealthOutput
    #   resp.data.open_reactive_insights #=> Integer
    #   resp.data.open_proactive_insights #=> Integer
    #   resp.data.metrics_analyzed #=> Integer
    #   resp.data.resource_hours #=> Integer
    #
    def describe_organization_health(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOrganizationHealthInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOrganizationHealthInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOrganizationHealth
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
        data_parser: Parsers::DescribeOrganizationHealth
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOrganizationHealth,
        stubs: @stubs,
        params_class: Params::DescribeOrganizationHealthOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_organization_health
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an overview of your organization's history based on the specified time range.
    # 			The overview includes the total reactive and proactive insights.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeOrganizationOverviewInput}.
    #
    # @option params [Time] :from_time
    #   <p> The start of the time range passed in. The start time granularity is at the day
    #   			level. The floor of the start time is used. Returned information occurred after this
    #   			day. </p>
    #
    # @option params [Time] :to_time
    #   <p> The end of the time range passed in. The start time granularity is at the day level.
    #   			The floor of the start time is used. Returned information occurred before this day. If
    #   			this is not specified, then the current day is used. </p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account.</p>
    #
    # @option params [Array<String>] :organizational_unit_ids
    #   <p>The ID of the organizational unit.</p>
    #
    # @return [Types::DescribeOrganizationOverviewOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_overview(
    #     from_time: Time.now, # required
    #     to_time: Time.now,
    #     account_ids: [
    #       'member'
    #     ],
    #     organizational_unit_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOrganizationOverviewOutput
    #   resp.data.reactive_insights #=> Integer
    #   resp.data.proactive_insights #=> Integer
    #
    def describe_organization_overview(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOrganizationOverviewInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOrganizationOverviewInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOrganizationOverview
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
        data_parser: Parsers::DescribeOrganizationOverview
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOrganizationOverview,
        stubs: @stubs,
        params_class: Params::DescribeOrganizationOverviewOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_organization_overview
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides an overview of your system's health. If additional member accounts are part
    # 			of your organization, you can filter those accounts using the <code>AccountIds</code>
    # 			field.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeOrganizationResourceCollectionHealthInput}.
    #
    # @option params [String] :organization_resource_collection_type
    #   <p> An Amazon Web Services resource collection type. This type specifies how analyzed Amazon Web Services resources
    #   			are defined. The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account.</p>
    #
    # @option params [Array<String>] :organizational_unit_ids
    #   <p>The ID of the organizational unit.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    # @return [Types::DescribeOrganizationResourceCollectionHealthOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_resource_collection_health(
    #     organization_resource_collection_type: 'AWS_CLOUD_FORMATION', # required - accepts ["AWS_CLOUD_FORMATION", "AWS_SERVICE", "AWS_ACCOUNT", "AWS_TAGS"]
    #     account_ids: [
    #       'member'
    #     ],
    #     organizational_unit_ids: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOrganizationResourceCollectionHealthOutput
    #   resp.data.cloud_formation #=> Array<CloudFormationHealth>
    #   resp.data.cloud_formation[0] #=> Types::CloudFormationHealth
    #   resp.data.cloud_formation[0].stack_name #=> String
    #   resp.data.cloud_formation[0].insight #=> Types::InsightHealth
    #   resp.data.cloud_formation[0].insight.open_proactive_insights #=> Integer
    #   resp.data.cloud_formation[0].insight.open_reactive_insights #=> Integer
    #   resp.data.cloud_formation[0].insight.mean_time_to_recover_in_milliseconds #=> Integer
    #   resp.data.service #=> Array<ServiceHealth>
    #   resp.data.service[0] #=> Types::ServiceHealth
    #   resp.data.service[0].service_name #=> String, one of ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"]
    #   resp.data.service[0].insight #=> Types::ServiceInsightHealth
    #   resp.data.service[0].insight.open_proactive_insights #=> Integer
    #   resp.data.service[0].insight.open_reactive_insights #=> Integer
    #   resp.data.account #=> Array<AccountHealth>
    #   resp.data.account[0] #=> Types::AccountHealth
    #   resp.data.account[0].account_id #=> String
    #   resp.data.account[0].insight #=> Types::AccountInsightHealth
    #   resp.data.account[0].insight.open_proactive_insights #=> Integer
    #   resp.data.account[0].insight.open_reactive_insights #=> Integer
    #   resp.data.next_token #=> String
    #   resp.data.tags #=> Array<TagHealth>
    #   resp.data.tags[0] #=> Types::TagHealth
    #   resp.data.tags[0].app_boundary_key #=> String
    #   resp.data.tags[0].tag_value #=> String
    #   resp.data.tags[0].insight #=> Types::InsightHealth
    #
    def describe_organization_resource_collection_health(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOrganizationResourceCollectionHealthInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOrganizationResourceCollectionHealthInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOrganizationResourceCollectionHealth
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
        data_parser: Parsers::DescribeOrganizationResourceCollectionHealth
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOrganizationResourceCollectionHealth,
        stubs: @stubs,
        params_class: Params::DescribeOrganizationResourceCollectionHealthOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_organization_resource_collection_health
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the number of open proactive insights, open reactive insights, and the Mean Time to Recover (MTTR)
    # 			for all closed insights in resource collections in your account. You specify the type of
    # 			Amazon Web Services resources collection. The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #           Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #       	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeResourceCollectionHealthInput}.
    #
    # @option params [String] :resource_collection_type
    #   <p> An Amazon Web Services resource collection type. This type specifies how analyzed Amazon Web Services resources
    #   			are defined. The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @return [Types::DescribeResourceCollectionHealthOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource_collection_health(
    #     resource_collection_type: 'AWS_CLOUD_FORMATION', # required - accepts ["AWS_CLOUD_FORMATION", "AWS_SERVICE", "AWS_TAGS"]
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeResourceCollectionHealthOutput
    #   resp.data.cloud_formation #=> Array<CloudFormationHealth>
    #   resp.data.cloud_formation[0] #=> Types::CloudFormationHealth
    #   resp.data.cloud_formation[0].stack_name #=> String
    #   resp.data.cloud_formation[0].insight #=> Types::InsightHealth
    #   resp.data.cloud_formation[0].insight.open_proactive_insights #=> Integer
    #   resp.data.cloud_formation[0].insight.open_reactive_insights #=> Integer
    #   resp.data.cloud_formation[0].insight.mean_time_to_recover_in_milliseconds #=> Integer
    #   resp.data.service #=> Array<ServiceHealth>
    #   resp.data.service[0] #=> Types::ServiceHealth
    #   resp.data.service[0].service_name #=> String, one of ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"]
    #   resp.data.service[0].insight #=> Types::ServiceInsightHealth
    #   resp.data.service[0].insight.open_proactive_insights #=> Integer
    #   resp.data.service[0].insight.open_reactive_insights #=> Integer
    #   resp.data.next_token #=> String
    #   resp.data.tags #=> Array<TagHealth>
    #   resp.data.tags[0] #=> Types::TagHealth
    #   resp.data.tags[0].app_boundary_key #=> String
    #   resp.data.tags[0].tag_value #=> String
    #   resp.data.tags[0].insight #=> Types::InsightHealth
    #
    def describe_resource_collection_health(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeResourceCollectionHealthInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeResourceCollectionHealthInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeResourceCollectionHealth
      )
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
        data_parser: Parsers::DescribeResourceCollectionHealth
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeResourceCollectionHealth,
        stubs: @stubs,
        params_class: Params::DescribeResourceCollectionHealthOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_resource_collection_health
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the integration status of services that are integrated with DevOps Guru.
    # 			The one service that can be integrated with DevOps Guru
    #       	is Amazon Web Services Systems Manager, which can be used to create an OpsItem for each generated insight. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeServiceIntegrationInput}.
    #
    # @return [Types::DescribeServiceIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_service_integration()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeServiceIntegrationOutput
    #   resp.data.service_integration #=> Types::ServiceIntegrationConfig
    #   resp.data.service_integration.ops_center #=> Types::OpsCenterIntegration
    #   resp.data.service_integration.ops_center.opt_in_status #=> String, one of ["ENABLED", "DISABLED"]
    #
    def describe_service_integration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeServiceIntegrationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeServiceIntegrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeServiceIntegration
      )
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
        data_parser: Parsers::DescribeServiceIntegration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeServiceIntegration,
        stubs: @stubs,
        params_class: Params::DescribeServiceIntegrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_service_integration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an estimate of the monthly cost for DevOps Guru to analyze your Amazon Web Services resources.
    # 			For more information,
    # 			see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html">Estimate your
    # 			Amazon DevOps Guru costs</a> and
    # 			<a href="http://aws.amazon.com/devops-guru/pricing/">Amazon DevOps Guru pricing</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCostEstimationInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @return [Types::GetCostEstimationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_cost_estimation(
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCostEstimationOutput
    #   resp.data.resource_collection #=> Types::CostEstimationResourceCollectionFilter
    #   resp.data.resource_collection.cloud_formation #=> Types::CloudFormationCostEstimationResourceCollectionFilter
    #   resp.data.resource_collection.cloud_formation.stack_names #=> Array<String>
    #   resp.data.resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.data.resource_collection.tags #=> Array<TagCostEstimationResourceCollectionFilter>
    #   resp.data.resource_collection.tags[0] #=> Types::TagCostEstimationResourceCollectionFilter
    #   resp.data.resource_collection.tags[0].app_boundary_key #=> String
    #   resp.data.resource_collection.tags[0].tag_values #=> Array<String>
    #   resp.data.resource_collection.tags[0].tag_values[0] #=> String
    #   resp.data.status #=> String, one of ["ONGOING", "COMPLETED"]
    #   resp.data.costs #=> Array<ServiceResourceCost>
    #   resp.data.costs[0] #=> Types::ServiceResourceCost
    #   resp.data.costs[0].type #=> String
    #   resp.data.costs[0].state #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.costs[0].count #=> Integer
    #   resp.data.costs[0].unit_cost #=> Float
    #   resp.data.costs[0].cost #=> Float
    #   resp.data.time_range #=> Types::CostEstimationTimeRange
    #   resp.data.time_range.start_time #=> Time
    #   resp.data.time_range.end_time #=> Time
    #   resp.data.total_cost #=> Float
    #   resp.data.next_token #=> String
    #
    def get_cost_estimation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCostEstimationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCostEstimationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCostEstimation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetCostEstimation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCostEstimation,
        stubs: @stubs,
        params_class: Params::GetCostEstimationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_cost_estimation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns lists Amazon Web Services resources that are of the specified resource collection type.
    # 			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #           Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #       	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    # @param [Hash] params
    #   See {Types::GetResourceCollectionInput}.
    #
    # @option params [String] :resource_collection_type
    #   <p> The type of Amazon Web Services resource collections to return. The one valid value is
    #   				<code>CLOUD_FORMATION</code> for Amazon Web Services CloudFormation stacks. </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @return [Types::GetResourceCollectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_collection(
    #     resource_collection_type: 'AWS_CLOUD_FORMATION', # required - accepts ["AWS_CLOUD_FORMATION", "AWS_SERVICE", "AWS_TAGS"]
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourceCollectionOutput
    #   resp.data.resource_collection #=> Types::ResourceCollectionFilter
    #   resp.data.resource_collection.cloud_formation #=> Types::CloudFormationCollectionFilter
    #   resp.data.resource_collection.cloud_formation.stack_names #=> Array<String>
    #   resp.data.resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.data.resource_collection.tags #=> Array<TagCollectionFilter>
    #   resp.data.resource_collection.tags[0] #=> Types::TagCollectionFilter
    #   resp.data.resource_collection.tags[0].app_boundary_key #=> String
    #   resp.data.resource_collection.tags[0].tag_values #=> Array<String>
    #   resp.data.resource_collection.tags[0].tag_values[0] #=> String
    #   resp.data.next_token #=> String
    #
    def get_resource_collection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourceCollectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourceCollectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResourceCollection
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetResourceCollection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResourceCollection,
        stubs: @stubs,
        params_class: Params::GetResourceCollectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource_collection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of the anomalies that belong to an insight that you specify using its
    # 			ID. </p>
    #
    # @param [Hash] params
    #   See {Types::ListAnomaliesForInsightInput}.
    #
    # @option params [String] :insight_id
    #   <p> The ID of the insight. The returned anomalies belong to this insight. </p>
    #
    # @option params [StartTimeRange] :start_time_range
    #   <p> A time range used to specify when the requested anomalies started. All returned
    #   			anomalies started during this time range. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @option params [String] :account_id
    #   <p>The ID of the Amazon Web Services account. </p>
    #
    # @return [Types::ListAnomaliesForInsightOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_anomalies_for_insight(
    #     insight_id: 'InsightId', # required
    #     start_time_range: {
    #       from_time: Time.now,
    #       to_time: Time.now
    #     },
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     account_id: 'AccountId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAnomaliesForInsightOutput
    #   resp.data.proactive_anomalies #=> Array<ProactiveAnomalySummary>
    #   resp.data.proactive_anomalies[0] #=> Types::ProactiveAnomalySummary
    #   resp.data.proactive_anomalies[0].id #=> String
    #   resp.data.proactive_anomalies[0].severity #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.proactive_anomalies[0].status #=> String, one of ["ONGOING", "CLOSED"]
    #   resp.data.proactive_anomalies[0].update_time #=> Time
    #   resp.data.proactive_anomalies[0].anomaly_time_range #=> Types::AnomalyTimeRange
    #   resp.data.proactive_anomalies[0].anomaly_time_range.start_time #=> Time
    #   resp.data.proactive_anomalies[0].anomaly_time_range.end_time #=> Time
    #   resp.data.proactive_anomalies[0].anomaly_reported_time_range #=> Types::AnomalyReportedTimeRange
    #   resp.data.proactive_anomalies[0].anomaly_reported_time_range.open_time #=> Time
    #   resp.data.proactive_anomalies[0].anomaly_reported_time_range.close_time #=> Time
    #   resp.data.proactive_anomalies[0].prediction_time_range #=> Types::PredictionTimeRange
    #   resp.data.proactive_anomalies[0].prediction_time_range.start_time #=> Time
    #   resp.data.proactive_anomalies[0].prediction_time_range.end_time #=> Time
    #   resp.data.proactive_anomalies[0].source_details #=> Types::AnomalySourceDetails
    #   resp.data.proactive_anomalies[0].source_details.cloud_watch_metrics #=> Array<CloudWatchMetricsDetail>
    #   resp.data.proactive_anomalies[0].source_details.cloud_watch_metrics[0] #=> Types::CloudWatchMetricsDetail
    #   resp.data.proactive_anomalies[0].source_details.cloud_watch_metrics[0].metric_name #=> String
    #   resp.data.proactive_anomalies[0].source_details.cloud_watch_metrics[0].namespace #=> String
    #   resp.data.proactive_anomalies[0].source_details.cloud_watch_metrics[0].dimensions #=> Array<CloudWatchMetricsDimension>
    #   resp.data.proactive_anomalies[0].source_details.cloud_watch_metrics[0].dimensions[0] #=> Types::CloudWatchMetricsDimension
    #   resp.data.proactive_anomalies[0].source_details.cloud_watch_metrics[0].dimensions[0].name #=> String
    #   resp.data.proactive_anomalies[0].source_details.cloud_watch_metrics[0].dimensions[0].value #=> String
    #   resp.data.proactive_anomalies[0].source_details.cloud_watch_metrics[0].stat #=> String, one of ["Sum", "Average", "SampleCount", "Minimum", "Maximum", "p99", "p90", "p50"]
    #   resp.data.proactive_anomalies[0].source_details.cloud_watch_metrics[0].unit #=> String
    #   resp.data.proactive_anomalies[0].source_details.cloud_watch_metrics[0].period #=> Integer
    #   resp.data.proactive_anomalies[0].source_details.cloud_watch_metrics[0].metric_data_summary #=> Types::CloudWatchMetricsDataSummary
    #   resp.data.proactive_anomalies[0].source_details.cloud_watch_metrics[0].metric_data_summary.timestamp_metric_value_pair_list #=> Array<TimestampMetricValuePair>
    #   resp.data.proactive_anomalies[0].source_details.cloud_watch_metrics[0].metric_data_summary.timestamp_metric_value_pair_list[0] #=> Types::TimestampMetricValuePair
    #   resp.data.proactive_anomalies[0].source_details.cloud_watch_metrics[0].metric_data_summary.timestamp_metric_value_pair_list[0].timestamp #=> Time
    #   resp.data.proactive_anomalies[0].source_details.cloud_watch_metrics[0].metric_data_summary.timestamp_metric_value_pair_list[0].metric_value #=> Float
    #   resp.data.proactive_anomalies[0].source_details.cloud_watch_metrics[0].metric_data_summary.status_code #=> String, one of ["Complete", "InternalError", "PartialData"]
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics #=> Array<PerformanceInsightsMetricsDetail>
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0] #=> Types::PerformanceInsightsMetricsDetail
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].metric_display_name #=> String
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].unit #=> String
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query #=> Types::PerformanceInsightsMetricQuery
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.metric #=> String
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.group_by #=> Types::PerformanceInsightsMetricDimensionGroup
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.group_by.group #=> String
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.group_by.dimensions #=> Array<String>
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.group_by.dimensions[0] #=> String
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.group_by.limit #=> Integer
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.filter #=> Hash<String, String>
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].metric_query.filter['key'] #=> String
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data #=> Array<PerformanceInsightsReferenceData>
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0] #=> Types::PerformanceInsightsReferenceData
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].name #=> String
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values #=> Types::PerformanceInsightsReferenceComparisonValues
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_scalar #=> Types::PerformanceInsightsReferenceScalar
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_scalar.value #=> Float
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric #=> Types::PerformanceInsightsReferenceMetric
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].reference_data[0].comparison_values.reference_metric.metric_query #=> Types::PerformanceInsightsMetricQuery
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].stats_at_anomaly #=> Array<PerformanceInsightsStat>
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].stats_at_anomaly[0] #=> Types::PerformanceInsightsStat
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].stats_at_anomaly[0].type #=> String
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].stats_at_anomaly[0].value #=> Float
    #   resp.data.proactive_anomalies[0].source_details.performance_insights_metrics[0].stats_at_baseline #=> Array<PerformanceInsightsStat>
    #   resp.data.proactive_anomalies[0].associated_insight_id #=> String
    #   resp.data.proactive_anomalies[0].resource_collection #=> Types::ResourceCollection
    #   resp.data.proactive_anomalies[0].resource_collection.cloud_formation #=> Types::CloudFormationCollection
    #   resp.data.proactive_anomalies[0].resource_collection.cloud_formation.stack_names #=> Array<String>
    #   resp.data.proactive_anomalies[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.data.proactive_anomalies[0].resource_collection.tags #=> Array<TagCollection>
    #   resp.data.proactive_anomalies[0].resource_collection.tags[0] #=> Types::TagCollection
    #   resp.data.proactive_anomalies[0].resource_collection.tags[0].app_boundary_key #=> String
    #   resp.data.proactive_anomalies[0].resource_collection.tags[0].tag_values #=> Array<String>
    #   resp.data.proactive_anomalies[0].resource_collection.tags[0].tag_values[0] #=> String
    #   resp.data.proactive_anomalies[0].limit #=> Float
    #   resp.data.proactive_anomalies[0].source_metadata #=> Types::AnomalySourceMetadata
    #   resp.data.proactive_anomalies[0].source_metadata.source #=> String
    #   resp.data.proactive_anomalies[0].source_metadata.source_resource_name #=> String
    #   resp.data.proactive_anomalies[0].source_metadata.source_resource_type #=> String
    #   resp.data.proactive_anomalies[0].anomaly_resources #=> Array<AnomalyResource>
    #   resp.data.proactive_anomalies[0].anomaly_resources[0] #=> Types::AnomalyResource
    #   resp.data.proactive_anomalies[0].anomaly_resources[0].name #=> String
    #   resp.data.proactive_anomalies[0].anomaly_resources[0].type #=> String
    #   resp.data.reactive_anomalies #=> Array<ReactiveAnomalySummary>
    #   resp.data.reactive_anomalies[0] #=> Types::ReactiveAnomalySummary
    #   resp.data.reactive_anomalies[0].id #=> String
    #   resp.data.reactive_anomalies[0].severity #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.reactive_anomalies[0].status #=> String, one of ["ONGOING", "CLOSED"]
    #   resp.data.reactive_anomalies[0].anomaly_time_range #=> Types::AnomalyTimeRange
    #   resp.data.reactive_anomalies[0].anomaly_reported_time_range #=> Types::AnomalyReportedTimeRange
    #   resp.data.reactive_anomalies[0].source_details #=> Types::AnomalySourceDetails
    #   resp.data.reactive_anomalies[0].associated_insight_id #=> String
    #   resp.data.reactive_anomalies[0].resource_collection #=> Types::ResourceCollection
    #   resp.data.reactive_anomalies[0].type #=> String, one of ["CAUSAL", "CONTEXTUAL"]
    #   resp.data.reactive_anomalies[0].name #=> String
    #   resp.data.reactive_anomalies[0].description #=> String
    #   resp.data.reactive_anomalies[0].causal_anomaly_id #=> String
    #   resp.data.reactive_anomalies[0].anomaly_resources #=> Array<AnomalyResource>
    #   resp.data.next_token #=> String
    #
    def list_anomalies_for_insight(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAnomaliesForInsightInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAnomaliesForInsightInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAnomaliesForInsight
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListAnomaliesForInsight
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAnomaliesForInsight,
        stubs: @stubs,
        params_class: Params::ListAnomaliesForInsightOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_anomalies_for_insight
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of the events emitted by the resources that are evaluated by DevOps Guru.
    # 			You can use filters to specify which events are returned. </p>
    #
    # @param [Hash] params
    #   See {Types::ListEventsInput}.
    #
    # @option params [ListEventsFilters] :filters
    #   <p> A <code>ListEventsFilters</code> object used to specify which events to return.
    #   		</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @option params [String] :account_id
    #   <p>The ID of the Amazon Web Services account. </p>
    #
    # @return [Types::ListEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_events(
    #     filters: {
    #       insight_id: 'InsightId',
    #       event_time_range: {
    #         from_time: Time.now, # required
    #         to_time: Time.now # required
    #       },
    #       event_class: 'INFRASTRUCTURE', # accepts ["INFRASTRUCTURE", "DEPLOYMENT", "SECURITY_CHANGE", "CONFIG_CHANGE", "SCHEMA_CHANGE"]
    #       event_source: 'EventSource',
    #       data_source: 'AWS_CLOUD_TRAIL', # accepts ["AWS_CLOUD_TRAIL", "AWS_CODE_DEPLOY"]
    #       resource_collection: {
    #         cloud_formation: {
    #           stack_names: [
    #             'member'
    #           ]
    #         },
    #         tags: [
    #           {
    #             app_boundary_key: 'AppBoundaryKey', # required
    #             tag_values: [
    #               'member'
    #             ] # required
    #           }
    #         ]
    #       }
    #     }, # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     account_id: 'AccountId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEventsOutput
    #   resp.data.events #=> Array<Event>
    #   resp.data.events[0] #=> Types::Event
    #   resp.data.events[0].resource_collection #=> Types::ResourceCollection
    #   resp.data.events[0].resource_collection.cloud_formation #=> Types::CloudFormationCollection
    #   resp.data.events[0].resource_collection.cloud_formation.stack_names #=> Array<String>
    #   resp.data.events[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.data.events[0].resource_collection.tags #=> Array<TagCollection>
    #   resp.data.events[0].resource_collection.tags[0] #=> Types::TagCollection
    #   resp.data.events[0].resource_collection.tags[0].app_boundary_key #=> String
    #   resp.data.events[0].resource_collection.tags[0].tag_values #=> Array<String>
    #   resp.data.events[0].resource_collection.tags[0].tag_values[0] #=> String
    #   resp.data.events[0].id #=> String
    #   resp.data.events[0].time #=> Time
    #   resp.data.events[0].event_source #=> String
    #   resp.data.events[0].name #=> String
    #   resp.data.events[0].data_source #=> String, one of ["AWS_CLOUD_TRAIL", "AWS_CODE_DEPLOY"]
    #   resp.data.events[0].event_class #=> String, one of ["INFRASTRUCTURE", "DEPLOYMENT", "SECURITY_CHANGE", "CONFIG_CHANGE", "SCHEMA_CHANGE"]
    #   resp.data.events[0].resources #=> Array<EventResource>
    #   resp.data.events[0].resources[0] #=> Types::EventResource
    #   resp.data.events[0].resources[0].type #=> String
    #   resp.data.events[0].resources[0].name #=> String
    #   resp.data.events[0].resources[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEvents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEvents,
        stubs: @stubs,
        params_class: Params::ListEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of insights in your Amazon Web Services account. You can specify which insights are
    # 			returned by their start time and status (<code>ONGOING</code>, <code>CLOSED</code>, or
    # 				<code>ANY</code>). </p>
    #
    # @param [Hash] params
    #   See {Types::ListInsightsInput}.
    #
    # @option params [ListInsightsStatusFilter] :status_filter
    #   <p> A filter used to filter the returned insights by their status. You can specify one
    #   			status filter. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @return [Types::ListInsightsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_insights(
    #     status_filter: {
    #       ongoing: {
    #         type: 'REACTIVE' # required - accepts ["REACTIVE", "PROACTIVE"]
    #       },
    #       closed: {
    #         type: 'REACTIVE', # required - accepts ["REACTIVE", "PROACTIVE"]
    #         end_time_range: {
    #           from_time: Time.now,
    #           to_time: Time.now
    #         } # required
    #       },
    #       any: {
    #         type: 'REACTIVE', # required - accepts ["REACTIVE", "PROACTIVE"]
    #         start_time_range: {
    #           from_time: Time.now,
    #           to_time: Time.now
    #         } # required
    #       }
    #     }, # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInsightsOutput
    #   resp.data.proactive_insights #=> Array<ProactiveInsightSummary>
    #   resp.data.proactive_insights[0] #=> Types::ProactiveInsightSummary
    #   resp.data.proactive_insights[0].id #=> String
    #   resp.data.proactive_insights[0].name #=> String
    #   resp.data.proactive_insights[0].severity #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.proactive_insights[0].status #=> String, one of ["ONGOING", "CLOSED"]
    #   resp.data.proactive_insights[0].insight_time_range #=> Types::InsightTimeRange
    #   resp.data.proactive_insights[0].insight_time_range.start_time #=> Time
    #   resp.data.proactive_insights[0].insight_time_range.end_time #=> Time
    #   resp.data.proactive_insights[0].prediction_time_range #=> Types::PredictionTimeRange
    #   resp.data.proactive_insights[0].prediction_time_range.start_time #=> Time
    #   resp.data.proactive_insights[0].prediction_time_range.end_time #=> Time
    #   resp.data.proactive_insights[0].resource_collection #=> Types::ResourceCollection
    #   resp.data.proactive_insights[0].resource_collection.cloud_formation #=> Types::CloudFormationCollection
    #   resp.data.proactive_insights[0].resource_collection.cloud_formation.stack_names #=> Array<String>
    #   resp.data.proactive_insights[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.data.proactive_insights[0].resource_collection.tags #=> Array<TagCollection>
    #   resp.data.proactive_insights[0].resource_collection.tags[0] #=> Types::TagCollection
    #   resp.data.proactive_insights[0].resource_collection.tags[0].app_boundary_key #=> String
    #   resp.data.proactive_insights[0].resource_collection.tags[0].tag_values #=> Array<String>
    #   resp.data.proactive_insights[0].resource_collection.tags[0].tag_values[0] #=> String
    #   resp.data.proactive_insights[0].service_collection #=> Types::ServiceCollection
    #   resp.data.proactive_insights[0].service_collection.service_names #=> Array<String>
    #   resp.data.proactive_insights[0].service_collection.service_names[0] #=> String, one of ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"]
    #   resp.data.proactive_insights[0].associated_resource_arns #=> Array<String>
    #   resp.data.proactive_insights[0].associated_resource_arns[0] #=> String
    #   resp.data.reactive_insights #=> Array<ReactiveInsightSummary>
    #   resp.data.reactive_insights[0] #=> Types::ReactiveInsightSummary
    #   resp.data.reactive_insights[0].id #=> String
    #   resp.data.reactive_insights[0].name #=> String
    #   resp.data.reactive_insights[0].severity #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.reactive_insights[0].status #=> String, one of ["ONGOING", "CLOSED"]
    #   resp.data.reactive_insights[0].insight_time_range #=> Types::InsightTimeRange
    #   resp.data.reactive_insights[0].resource_collection #=> Types::ResourceCollection
    #   resp.data.reactive_insights[0].service_collection #=> Types::ServiceCollection
    #   resp.data.reactive_insights[0].associated_resource_arns #=> Array<String>
    #   resp.data.next_token #=> String
    #
    def list_insights(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInsightsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInsightsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInsights
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
        data_parser: Parsers::ListInsights
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInsights,
        stubs: @stubs,
        params_class: Params::ListInsightsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_insights
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of notification channels configured for DevOps Guru. Each notification
    # 			channel is used to notify you when DevOps Guru generates an insight that contains information
    # 			about how to improve your operations. The one
    #       	supported notification channel is Amazon Simple Notification Service (Amazon SNS). </p>
    #
    # @param [Hash] params
    #   See {Types::ListNotificationChannelsInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @return [Types::ListNotificationChannelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notification_channels(
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListNotificationChannelsOutput
    #   resp.data.channels #=> Array<NotificationChannel>
    #   resp.data.channels[0] #=> Types::NotificationChannel
    #   resp.data.channels[0].id #=> String
    #   resp.data.channels[0].config #=> Types::NotificationChannelConfig
    #   resp.data.channels[0].config.sns #=> Types::SnsChannelConfig
    #   resp.data.channels[0].config.sns.topic_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_notification_channels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListNotificationChannelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListNotificationChannelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListNotificationChannels
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
        data_parser: Parsers::ListNotificationChannels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListNotificationChannels,
        stubs: @stubs,
        params_class: Params::ListNotificationChannelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_notification_channels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of insights associated with the account or OU Id.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOrganizationInsightsInput}.
    #
    # @option params [ListInsightsStatusFilter] :status_filter
    #   <p> A filter used by <code>ListInsights</code> to specify which insights to return.
    #   		</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account. </p>
    #
    # @option params [Array<String>] :organizational_unit_ids
    #   <p>The ID of the organizational unit.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @return [Types::ListOrganizationInsightsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organization_insights(
    #     status_filter: {
    #       ongoing: {
    #         type: 'REACTIVE' # required - accepts ["REACTIVE", "PROACTIVE"]
    #       },
    #       closed: {
    #         type: 'REACTIVE', # required - accepts ["REACTIVE", "PROACTIVE"]
    #         end_time_range: {
    #           from_time: Time.now,
    #           to_time: Time.now
    #         } # required
    #       },
    #       any: {
    #         type: 'REACTIVE', # required - accepts ["REACTIVE", "PROACTIVE"]
    #         start_time_range: {
    #           from_time: Time.now,
    #           to_time: Time.now
    #         } # required
    #       }
    #     }, # required
    #     max_results: 1,
    #     account_ids: [
    #       'member'
    #     ],
    #     organizational_unit_ids: [
    #       'member'
    #     ],
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOrganizationInsightsOutput
    #   resp.data.proactive_insights #=> Array<ProactiveOrganizationInsightSummary>
    #   resp.data.proactive_insights[0] #=> Types::ProactiveOrganizationInsightSummary
    #   resp.data.proactive_insights[0].id #=> String
    #   resp.data.proactive_insights[0].account_id #=> String
    #   resp.data.proactive_insights[0].organizational_unit_id #=> String
    #   resp.data.proactive_insights[0].name #=> String
    #   resp.data.proactive_insights[0].severity #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.proactive_insights[0].status #=> String, one of ["ONGOING", "CLOSED"]
    #   resp.data.proactive_insights[0].insight_time_range #=> Types::InsightTimeRange
    #   resp.data.proactive_insights[0].insight_time_range.start_time #=> Time
    #   resp.data.proactive_insights[0].insight_time_range.end_time #=> Time
    #   resp.data.proactive_insights[0].prediction_time_range #=> Types::PredictionTimeRange
    #   resp.data.proactive_insights[0].prediction_time_range.start_time #=> Time
    #   resp.data.proactive_insights[0].prediction_time_range.end_time #=> Time
    #   resp.data.proactive_insights[0].resource_collection #=> Types::ResourceCollection
    #   resp.data.proactive_insights[0].resource_collection.cloud_formation #=> Types::CloudFormationCollection
    #   resp.data.proactive_insights[0].resource_collection.cloud_formation.stack_names #=> Array<String>
    #   resp.data.proactive_insights[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.data.proactive_insights[0].resource_collection.tags #=> Array<TagCollection>
    #   resp.data.proactive_insights[0].resource_collection.tags[0] #=> Types::TagCollection
    #   resp.data.proactive_insights[0].resource_collection.tags[0].app_boundary_key #=> String
    #   resp.data.proactive_insights[0].resource_collection.tags[0].tag_values #=> Array<String>
    #   resp.data.proactive_insights[0].resource_collection.tags[0].tag_values[0] #=> String
    #   resp.data.proactive_insights[0].service_collection #=> Types::ServiceCollection
    #   resp.data.proactive_insights[0].service_collection.service_names #=> Array<String>
    #   resp.data.proactive_insights[0].service_collection.service_names[0] #=> String, one of ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"]
    #   resp.data.reactive_insights #=> Array<ReactiveOrganizationInsightSummary>
    #   resp.data.reactive_insights[0] #=> Types::ReactiveOrganizationInsightSummary
    #   resp.data.reactive_insights[0].id #=> String
    #   resp.data.reactive_insights[0].account_id #=> String
    #   resp.data.reactive_insights[0].organizational_unit_id #=> String
    #   resp.data.reactive_insights[0].name #=> String
    #   resp.data.reactive_insights[0].severity #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.reactive_insights[0].status #=> String, one of ["ONGOING", "CLOSED"]
    #   resp.data.reactive_insights[0].insight_time_range #=> Types::InsightTimeRange
    #   resp.data.reactive_insights[0].resource_collection #=> Types::ResourceCollection
    #   resp.data.reactive_insights[0].service_collection #=> Types::ServiceCollection
    #   resp.data.next_token #=> String
    #
    def list_organization_insights(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOrganizationInsightsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOrganizationInsightsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOrganizationInsights
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
        data_parser: Parsers::ListOrganizationInsights
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOrganizationInsights,
        stubs: @stubs,
        params_class: Params::ListOrganizationInsightsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_organization_insights
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of a specified insight's recommendations. Each recommendation includes
    # 			a list of related metrics and a list of related events. </p>
    #
    # @param [Hash] params
    #   See {Types::ListRecommendationsInput}.
    #
    # @option params [String] :insight_id
    #   <p> The ID of the requested insight. </p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @option params [String] :locale
    #   <p>A locale that specifies the language to use for recommendations.</p>
    #
    # @option params [String] :account_id
    #   <p>The ID of the Amazon Web Services account. </p>
    #
    # @return [Types::ListRecommendationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommendations(
    #     insight_id: 'InsightId', # required
    #     next_token: 'NextToken',
    #     locale: 'DE_DE', # accepts ["DE_DE", "EN_US", "EN_GB", "ES_ES", "FR_FR", "IT_IT", "JA_JP", "KO_KR", "PT_BR", "ZH_CN", "ZH_TW"]
    #     account_id: 'AccountId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRecommendationsOutput
    #   resp.data.recommendations #=> Array<Recommendation>
    #   resp.data.recommendations[0] #=> Types::Recommendation
    #   resp.data.recommendations[0].description #=> String
    #   resp.data.recommendations[0].link #=> String
    #   resp.data.recommendations[0].name #=> String
    #   resp.data.recommendations[0].reason #=> String
    #   resp.data.recommendations[0].related_events #=> Array<RecommendationRelatedEvent>
    #   resp.data.recommendations[0].related_events[0] #=> Types::RecommendationRelatedEvent
    #   resp.data.recommendations[0].related_events[0].name #=> String
    #   resp.data.recommendations[0].related_events[0].resources #=> Array<RecommendationRelatedEventResource>
    #   resp.data.recommendations[0].related_events[0].resources[0] #=> Types::RecommendationRelatedEventResource
    #   resp.data.recommendations[0].related_events[0].resources[0].name #=> String
    #   resp.data.recommendations[0].related_events[0].resources[0].type #=> String
    #   resp.data.recommendations[0].related_anomalies #=> Array<RecommendationRelatedAnomaly>
    #   resp.data.recommendations[0].related_anomalies[0] #=> Types::RecommendationRelatedAnomaly
    #   resp.data.recommendations[0].related_anomalies[0].resources #=> Array<RecommendationRelatedAnomalyResource>
    #   resp.data.recommendations[0].related_anomalies[0].resources[0] #=> Types::RecommendationRelatedAnomalyResource
    #   resp.data.recommendations[0].related_anomalies[0].resources[0].name #=> String
    #   resp.data.recommendations[0].related_anomalies[0].resources[0].type #=> String
    #   resp.data.recommendations[0].related_anomalies[0].source_details #=> Array<RecommendationRelatedAnomalySourceDetail>
    #   resp.data.recommendations[0].related_anomalies[0].source_details[0] #=> Types::RecommendationRelatedAnomalySourceDetail
    #   resp.data.recommendations[0].related_anomalies[0].source_details[0].cloud_watch_metrics #=> Array<RecommendationRelatedCloudWatchMetricsSourceDetail>
    #   resp.data.recommendations[0].related_anomalies[0].source_details[0].cloud_watch_metrics[0] #=> Types::RecommendationRelatedCloudWatchMetricsSourceDetail
    #   resp.data.recommendations[0].related_anomalies[0].source_details[0].cloud_watch_metrics[0].metric_name #=> String
    #   resp.data.recommendations[0].related_anomalies[0].source_details[0].cloud_watch_metrics[0].namespace #=> String
    #   resp.data.recommendations[0].related_anomalies[0].anomaly_id #=> String
    #   resp.data.recommendations[0].category #=> String
    #   resp.data.next_token #=> String
    #
    def list_recommendations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRecommendationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRecommendationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRecommendations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListRecommendations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRecommendations,
        stubs: @stubs,
        params_class: Params::ListRecommendationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_recommendations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Collects customer feedback about the specified insight. </p>
    #
    # @param [Hash] params
    #   See {Types::PutFeedbackInput}.
    #
    # @option params [InsightFeedback] :insight_feedback
    #   <p> The feedback from customers is about the recommendations in this insight. </p>
    #
    # @return [Types::PutFeedbackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_feedback(
    #     insight_feedback: {
    #       id: 'Id',
    #       feedback: 'VALID_COLLECTION' # accepts ["VALID_COLLECTION", "RECOMMENDATION_USEFUL", "ALERT_TOO_SENSITIVE", "DATA_NOISY_ANOMALY", "DATA_INCORRECT"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutFeedbackOutput
    #
    def put_feedback(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutFeedbackInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p> Removes a notification channel from DevOps Guru. A notification channel is used to notify
    # 			you when DevOps Guru generates an insight that contains information about how to improve your
    # 			operations. </p>
    #
    # @param [Hash] params
    #   See {Types::RemoveNotificationChannelInput}.
    #
    # @option params [String] :id
    #   <p> The ID of the notification channel to be removed. </p>
    #
    # @return [Types::RemoveNotificationChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_notification_channel(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveNotificationChannelOutput
    #
    def remove_notification_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveNotificationChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveNotificationChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveNotificationChannel
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::RemoveNotificationChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveNotificationChannel,
        stubs: @stubs,
        params_class: Params::RemoveNotificationChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_notification_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of insights in your Amazon Web Services account. You can specify which insights are
    # 			returned by their start time, one or more statuses (<code>ONGOING</code>,
    # 				<code>CLOSED</code>, and <code>CLOSED</code>), one or more severities
    # 				(<code>LOW</code>, <code>MEDIUM</code>, and <code>HIGH</code>), and type
    # 				(<code>REACTIVE</code> or <code>PROACTIVE</code>). </p>
    # 		       <p> Use the <code>Filters</code> parameter to specify status and severity search
    # 			parameters. Use the <code>Type</code> parameter to specify <code>REACTIVE</code> or
    # 				<code>PROACTIVE</code> in your search. </p>
    #
    # @param [Hash] params
    #   See {Types::SearchInsightsInput}.
    #
    # @option params [StartTimeRange] :start_time_range
    #   <p> The start of the time range passed in. Returned insights occurred after this time.
    #   		</p>
    #
    # @option params [SearchInsightsFilters] :filters
    #   <p> A <code>SearchInsightsFilters</code> object that is used to set the severity and
    #   			status filters on your insight search. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @option params [String] :type
    #   <p> The type of insights you are searching for (<code>REACTIVE</code> or
    #   				<code>PROACTIVE</code>). </p>
    #
    # @return [Types::SearchInsightsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_insights(
    #     start_time_range: {
    #       from_time: Time.now,
    #       to_time: Time.now
    #     }, # required
    #     filters: {
    #       severities: [
    #         'LOW' # accepts ["LOW", "MEDIUM", "HIGH"]
    #       ],
    #       statuses: [
    #         'ONGOING' # accepts ["ONGOING", "CLOSED"]
    #       ],
    #       resource_collection: {
    #         cloud_formation: {
    #           stack_names: [
    #             'member'
    #           ]
    #         },
    #         tags: [
    #           {
    #             app_boundary_key: 'AppBoundaryKey', # required
    #             tag_values: [
    #               'member'
    #             ] # required
    #           }
    #         ]
    #       },
    #       service_collection: {
    #         service_names: [
    #           'API_GATEWAY' # accepts ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"]
    #         ]
    #       }
    #     },
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     type: 'REACTIVE' # required - accepts ["REACTIVE", "PROACTIVE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchInsightsOutput
    #   resp.data.proactive_insights #=> Array<ProactiveInsightSummary>
    #   resp.data.proactive_insights[0] #=> Types::ProactiveInsightSummary
    #   resp.data.proactive_insights[0].id #=> String
    #   resp.data.proactive_insights[0].name #=> String
    #   resp.data.proactive_insights[0].severity #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.proactive_insights[0].status #=> String, one of ["ONGOING", "CLOSED"]
    #   resp.data.proactive_insights[0].insight_time_range #=> Types::InsightTimeRange
    #   resp.data.proactive_insights[0].insight_time_range.start_time #=> Time
    #   resp.data.proactive_insights[0].insight_time_range.end_time #=> Time
    #   resp.data.proactive_insights[0].prediction_time_range #=> Types::PredictionTimeRange
    #   resp.data.proactive_insights[0].prediction_time_range.start_time #=> Time
    #   resp.data.proactive_insights[0].prediction_time_range.end_time #=> Time
    #   resp.data.proactive_insights[0].resource_collection #=> Types::ResourceCollection
    #   resp.data.proactive_insights[0].resource_collection.cloud_formation #=> Types::CloudFormationCollection
    #   resp.data.proactive_insights[0].resource_collection.cloud_formation.stack_names #=> Array<String>
    #   resp.data.proactive_insights[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.data.proactive_insights[0].resource_collection.tags #=> Array<TagCollection>
    #   resp.data.proactive_insights[0].resource_collection.tags[0] #=> Types::TagCollection
    #   resp.data.proactive_insights[0].resource_collection.tags[0].app_boundary_key #=> String
    #   resp.data.proactive_insights[0].resource_collection.tags[0].tag_values #=> Array<String>
    #   resp.data.proactive_insights[0].resource_collection.tags[0].tag_values[0] #=> String
    #   resp.data.proactive_insights[0].service_collection #=> Types::ServiceCollection
    #   resp.data.proactive_insights[0].service_collection.service_names #=> Array<String>
    #   resp.data.proactive_insights[0].service_collection.service_names[0] #=> String, one of ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"]
    #   resp.data.proactive_insights[0].associated_resource_arns #=> Array<String>
    #   resp.data.proactive_insights[0].associated_resource_arns[0] #=> String
    #   resp.data.reactive_insights #=> Array<ReactiveInsightSummary>
    #   resp.data.reactive_insights[0] #=> Types::ReactiveInsightSummary
    #   resp.data.reactive_insights[0].id #=> String
    #   resp.data.reactive_insights[0].name #=> String
    #   resp.data.reactive_insights[0].severity #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.reactive_insights[0].status #=> String, one of ["ONGOING", "CLOSED"]
    #   resp.data.reactive_insights[0].insight_time_range #=> Types::InsightTimeRange
    #   resp.data.reactive_insights[0].resource_collection #=> Types::ResourceCollection
    #   resp.data.reactive_insights[0].service_collection #=> Types::ServiceCollection
    #   resp.data.reactive_insights[0].associated_resource_arns #=> Array<String>
    #   resp.data.next_token #=> String
    #
    def search_insights(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchInsightsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchInsightsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchInsights
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
        data_parser: Parsers::SearchInsights
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchInsights,
        stubs: @stubs,
        params_class: Params::SearchInsightsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_insights
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of insights in your organization. You can specify which insights are
    # 			returned by their start time, one or more statuses (<code>ONGOING</code>,
    # 				<code>CLOSED</code>, and <code>CLOSED</code>), one or more severities
    # 				(<code>LOW</code>, <code>MEDIUM</code>, and <code>HIGH</code>), and type
    # 				(<code>REACTIVE</code> or <code>PROACTIVE</code>). </p>
    # 		       <p> Use the <code>Filters</code> parameter to specify status and severity search
    # 			parameters. Use the <code>Type</code> parameter to specify <code>REACTIVE</code> or
    # 				<code>PROACTIVE</code> in your search. </p>
    #
    # @param [Hash] params
    #   See {Types::SearchOrganizationInsightsInput}.
    #
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account. </p>
    #
    # @option params [StartTimeRange] :start_time_range
    #   <p> A time range used to specify when the behavior of an insight or anomaly started.
    #   		</p>
    #
    # @option params [SearchOrganizationInsightsFilters] :filters
    #   <p> A <code>SearchOrganizationInsightsFilters</code> object that is used to set the
    #   			severity and status filters on your insight search. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @option params [String] :type
    #   <p> The type of insights you are searching for (<code>REACTIVE</code> or
    #   				<code>PROACTIVE</code>). </p>
    #
    # @return [Types::SearchOrganizationInsightsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_organization_insights(
    #     account_ids: [
    #       'member'
    #     ], # required
    #     start_time_range: {
    #       from_time: Time.now,
    #       to_time: Time.now
    #     }, # required
    #     filters: {
    #       severities: [
    #         'LOW' # accepts ["LOW", "MEDIUM", "HIGH"]
    #       ],
    #       statuses: [
    #         'ONGOING' # accepts ["ONGOING", "CLOSED"]
    #       ],
    #       resource_collection: {
    #         cloud_formation: {
    #           stack_names: [
    #             'member'
    #           ]
    #         },
    #         tags: [
    #           {
    #             app_boundary_key: 'AppBoundaryKey', # required
    #             tag_values: [
    #               'member'
    #             ] # required
    #           }
    #         ]
    #       },
    #       service_collection: {
    #         service_names: [
    #           'API_GATEWAY' # accepts ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"]
    #         ]
    #       }
    #     },
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     type: 'REACTIVE' # required - accepts ["REACTIVE", "PROACTIVE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchOrganizationInsightsOutput
    #   resp.data.proactive_insights #=> Array<ProactiveInsightSummary>
    #   resp.data.proactive_insights[0] #=> Types::ProactiveInsightSummary
    #   resp.data.proactive_insights[0].id #=> String
    #   resp.data.proactive_insights[0].name #=> String
    #   resp.data.proactive_insights[0].severity #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.proactive_insights[0].status #=> String, one of ["ONGOING", "CLOSED"]
    #   resp.data.proactive_insights[0].insight_time_range #=> Types::InsightTimeRange
    #   resp.data.proactive_insights[0].insight_time_range.start_time #=> Time
    #   resp.data.proactive_insights[0].insight_time_range.end_time #=> Time
    #   resp.data.proactive_insights[0].prediction_time_range #=> Types::PredictionTimeRange
    #   resp.data.proactive_insights[0].prediction_time_range.start_time #=> Time
    #   resp.data.proactive_insights[0].prediction_time_range.end_time #=> Time
    #   resp.data.proactive_insights[0].resource_collection #=> Types::ResourceCollection
    #   resp.data.proactive_insights[0].resource_collection.cloud_formation #=> Types::CloudFormationCollection
    #   resp.data.proactive_insights[0].resource_collection.cloud_formation.stack_names #=> Array<String>
    #   resp.data.proactive_insights[0].resource_collection.cloud_formation.stack_names[0] #=> String
    #   resp.data.proactive_insights[0].resource_collection.tags #=> Array<TagCollection>
    #   resp.data.proactive_insights[0].resource_collection.tags[0] #=> Types::TagCollection
    #   resp.data.proactive_insights[0].resource_collection.tags[0].app_boundary_key #=> String
    #   resp.data.proactive_insights[0].resource_collection.tags[0].tag_values #=> Array<String>
    #   resp.data.proactive_insights[0].resource_collection.tags[0].tag_values[0] #=> String
    #   resp.data.proactive_insights[0].service_collection #=> Types::ServiceCollection
    #   resp.data.proactive_insights[0].service_collection.service_names #=> Array<String>
    #   resp.data.proactive_insights[0].service_collection.service_names[0] #=> String, one of ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"]
    #   resp.data.proactive_insights[0].associated_resource_arns #=> Array<String>
    #   resp.data.proactive_insights[0].associated_resource_arns[0] #=> String
    #   resp.data.reactive_insights #=> Array<ReactiveInsightSummary>
    #   resp.data.reactive_insights[0] #=> Types::ReactiveInsightSummary
    #   resp.data.reactive_insights[0].id #=> String
    #   resp.data.reactive_insights[0].name #=> String
    #   resp.data.reactive_insights[0].severity #=> String, one of ["LOW", "MEDIUM", "HIGH"]
    #   resp.data.reactive_insights[0].status #=> String, one of ["ONGOING", "CLOSED"]
    #   resp.data.reactive_insights[0].insight_time_range #=> Types::InsightTimeRange
    #   resp.data.reactive_insights[0].resource_collection #=> Types::ResourceCollection
    #   resp.data.reactive_insights[0].service_collection #=> Types::ServiceCollection
    #   resp.data.reactive_insights[0].associated_resource_arns #=> Array<String>
    #   resp.data.next_token #=> String
    #
    def search_organization_insights(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchOrganizationInsightsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchOrganizationInsightsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchOrganizationInsights
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
        data_parser: Parsers::SearchOrganizationInsights
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchOrganizationInsights,
        stubs: @stubs,
        params_class: Params::SearchOrganizationInsightsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_organization_insights
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the creation of an estimate of the monthly cost to analyze your Amazon Web Services
    # 			resources.</p>
    #
    # @param [Hash] params
    #   See {Types::StartCostEstimationInput}.
    #
    # @option params [CostEstimationResourceCollectionFilter] :resource_collection
    #   <p>The collection of Amazon Web Services resources used to create a monthly DevOps Guru cost estimate.</p>
    #
    # @option params [String] :client_token
    #   <p>The idempotency token used to identify each cost estimate request.</p>
    #
    # @return [Types::StartCostEstimationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_cost_estimation(
    #     resource_collection: {
    #       cloud_formation: {
    #         stack_names: [
    #           'member'
    #         ]
    #       },
    #       tags: [
    #         {
    #           app_boundary_key: 'AppBoundaryKey', # required
    #           tag_values: [
    #             'member'
    #           ] # required
    #         }
    #       ]
    #     }, # required
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartCostEstimationOutput
    #
    def start_cost_estimation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartCostEstimationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartCostEstimationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartCostEstimation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::ConflictException, Errors::InternalServerException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::StartCostEstimation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartCostEstimation,
        stubs: @stubs,
        params_class: Params::StartCostEstimationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_cost_estimation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables or disables integration with a service that can be integrated with DevOps Guru. The
    # 			one service that can be integrated with DevOps Guru is Amazon CodeGuru Profiler, which
    # 			can produce proactive recommendations which can be stored and viewed in DevOps Guru.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEventSourcesConfigInput}.
    #
    # @option params [EventSourcesConfig] :event_sources
    #   <p>Configuration information about the integration of DevOps Guru as the Consumer via
    #   			EventBridge with another AWS Service.</p>
    #
    # @return [Types::UpdateEventSourcesConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_sources_config(
    #     event_sources: {
    #       amazon_code_guru_profiler: {
    #         status: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEventSourcesConfigOutput
    #
    def update_event_sources_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEventSourcesConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEventSourcesConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEventSourcesConfig
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
        data_parser: Parsers::UpdateEventSourcesConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEventSourcesConfig,
        stubs: @stubs,
        params_class: Params::UpdateEventSourcesConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_event_sources_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Updates the collection of resources that DevOps Guru analyzes.
    # 			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #           Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #       	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. This method also creates the IAM role required for
    # 			you to use DevOps Guru. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateResourceCollectionInput}.
    #
    # @option params [String] :action
    #   <p> Specifies if the resource collection in the request is added or deleted to the
    #   			resource collection. </p>
    #
    # @option params [UpdateResourceCollectionFilter] :resource_collection
    #   <p> Contains information used to update a collection of Amazon Web Services resources. </p>
    #
    # @return [Types::UpdateResourceCollectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource_collection(
    #     action: 'ADD', # required - accepts ["ADD", "REMOVE"]
    #     resource_collection: {
    #       cloud_formation: {
    #         stack_names: [
    #           'member'
    #         ]
    #       },
    #       tags: [
    #         {
    #           app_boundary_key: 'AppBoundaryKey', # required
    #           tag_values: [
    #             'member'
    #           ] # required
    #         }
    #       ]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateResourceCollectionOutput
    #
    def update_resource_collection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateResourceCollectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateResourceCollectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateResourceCollection
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
        data_parser: Parsers::UpdateResourceCollection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateResourceCollection,
        stubs: @stubs,
        params_class: Params::UpdateResourceCollectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_resource_collection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Enables or disables integration with a service that can be integrated with DevOps Guru. The
    # 			one service that can be integrated with DevOps Guru is Amazon Web Services Systems Manager, which can be used to create
    # 			an OpsItem for each generated insight. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateServiceIntegrationInput}.
    #
    # @option params [UpdateServiceIntegrationConfig] :service_integration
    #   <p> An <code>IntegratedServiceConfig</code> object used to specify the integrated service
    #   			you want to update, and whether you want to update it to enabled or disabled. </p>
    #
    # @return [Types::UpdateServiceIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_integration(
    #     service_integration: {
    #       ops_center: {
    #         opt_in_status: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateServiceIntegrationOutput
    #
    def update_service_integration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateServiceIntegrationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateServiceIntegrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateServiceIntegration
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
        data_parser: Parsers::UpdateServiceIntegration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateServiceIntegration,
        stubs: @stubs,
        params_class: Params::UpdateServiceIntegrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_service_integration
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
