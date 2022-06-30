# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DevOpsGuru
  module Types

    # <p> You don't have permissions to perform the requested operation. The user or role that
    # 			is making the request must have at least one IAM permissions policy attached that grants
    # 			the required permissions. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access Management</a> in the
    # 				<i>IAM User Guide</i>. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Returns the number of open reactive insights, the number of open proactive insights,
    # 			and the number of metrics analyzed in your Amazon Web Services account. Use these numbers to gauge the
    # 			health of operations in your Amazon Web Services account. </p>
    #
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    # @!attribute insight
    #   <p> Information about the health of the Amazon Web Services resources in your account, including the
    #   			number of open proactive, open reactive insights, and the Mean Time to Recover (MTTR) of closed insights.
    #   		</p>
    #
    #   @return [AccountInsightHealth]
    #
    AccountHealth = ::Struct.new(
      :account_id,
      :insight,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about the number of open reactive and proactive insights that can be used
    # 			to gauge the health of your system. </p>
    #
    # @!attribute open_proactive_insights
    #   <p>An integer that specifies the number of open proactive insights in your Amazon Web Services
    #   			account.</p>
    #
    #   @return [Integer]
    #
    # @!attribute open_reactive_insights
    #   <p>An integer that specifies the number of open reactive insights in your Amazon Web Services
    #   			account.</p>
    #
    #   @return [Integer]
    #
    AccountInsightHealth = ::Struct.new(
      :open_proactive_insights,
      :open_reactive_insights,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.open_proactive_insights ||= 0
        self.open_reactive_insights ||= 0
      end

    end

    # @!attribute config
    #   <p> A <code>NotificationChannelConfig</code> object that specifies what type of
    #   			notification channel to add. The one
    #         	supported notification channel is Amazon Simple Notification Service (Amazon SNS). </p>
    #
    #   @return [NotificationChannelConfig]
    #
    AddNotificationChannelInput = ::Struct.new(
      :config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p> The ID of the added notification channel. </p>
    #
    #   @return [String]
    #
    AddNotificationChannelOutput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about your account's integration with Amazon CodeGuru Profiler. This
    # 			returns whether DevOps Guru is configured to consume recommendations generated from Amazon
    # 			CodeGuru Profiler.</p>
    #
    # @!attribute status
    #   <p>The status of the CodeGuru Profiler integration. Specifies if DevOps Guru is enabled to
    #   			consume recommendations that are generated from Amazon CodeGuru Profiler.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    AmazonCodeGuruProfilerIntegration = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A time range that specifies when DevOps Guru opens and then closes an anomaly. This
    # 			is different from <code>AnomalyTimeRange</code>, which specifies the time range when
    # 			DevOps Guru actually observes the anomalous behavior. </p>
    #
    # @!attribute open_time
    #   <p> The time when an anomaly is opened. </p>
    #
    #   @return [Time]
    #
    # @!attribute close_time
    #   <p> The time when an anomaly is closed. </p>
    #
    #   @return [Time]
    #
    AnomalyReportedTimeRange = ::Struct.new(
      :open_time,
      :close_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Web Services resources in which DevOps Guru detected unusual behavior that resulted in the
    # 			generation of an anomaly. When DevOps Guru detects multiple related anomalies, it creates and
    # 			insight with details about the anomalous behavior and suggestions about how to correct
    # 			the problem.</p>
    #
    # @!attribute name
    #   <p>The name of the Amazon Web Services resource.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the Amazon Web Services resource.</p>
    #
    #   @return [String]
    #
    AnomalyResource = ::Struct.new(
      :name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AnomalySeverity
    #
    module AnomalySeverity
      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      HIGH = "HIGH"
    end

    # <p> Details about the source of the anomalous operational data that triggered the
    # 			anomaly.</p>
    #
    # @!attribute cloud_watch_metrics
    #   <p>An array of <code>CloudWatchMetricsDetail</code> objects that contain information
    #   			about analyzed CloudWatch metrics that show anomalous behavior. </p>
    #
    #   @return [Array<CloudWatchMetricsDetail>]
    #
    # @!attribute performance_insights_metrics
    #   <p>An array of <code>PerformanceInsightsMetricsDetail</code> objects that contain
    #   			information about analyzed Performance Insights metrics that show anomalous behavior.</p>
    #
    #   @return [Array<PerformanceInsightsMetricsDetail>]
    #
    AnomalySourceDetails = ::Struct.new(
      :cloud_watch_metrics,
      :performance_insights_metrics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Metadata about the detection source that generates proactive anomalies. The anomaly is
    # 			detected using analysis of the metric data  over a period of time</p>
    #
    # @!attribute source
    #   <p>The source of the anomaly.</p>
    #
    #   @return [String]
    #
    # @!attribute source_resource_name
    #   <p>The name of the anomaly's resource.</p>
    #
    #   @return [String]
    #
    # @!attribute source_resource_type
    #   <p>The anomaly's resource type.</p>
    #
    #   @return [String]
    #
    AnomalySourceMetadata = ::Struct.new(
      :source,
      :source_resource_name,
      :source_resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AnomalyStatus
    #
    module AnomalyStatus
      # No documentation available.
      #
      ONGOING = "ONGOING"

      # No documentation available.
      #
      CLOSED = "CLOSED"
    end

    # <p> A time range that specifies when the observed unusual behavior in an anomaly started
    # 			and ended. This is different from <code>AnomalyReportedTimeRange</code>, which specifies
    # 			the time range when DevOps Guru opens and then closes an anomaly. </p>
    #
    # @!attribute start_time
    #   <p> The time when the anomalous behavior started. </p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p> The time when the anomalous behavior ended. </p>
    #
    #   @return [Time]
    #
    AnomalyTimeRange = ::Struct.new(
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AnomalyType
    #
    module AnomalyType
      # No documentation available.
      #
      CAUSAL = "CAUSAL"

      # No documentation available.
      #
      CONTEXTUAL = "CONTEXTUAL"
    end

    # <p> Information about Amazon Web Services CloudFormation stacks. You can use up to 500
    # 			stacks to specify which Amazon Web Services resources in your account to analyze. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html">Stacks</a> in the
    # 				<i>Amazon Web Services CloudFormation User Guide</i>. </p>
    #
    # @!attribute stack_names
    #   <p> An array of CloudFormation stack names. </p>
    #
    #   @return [Array<String>]
    #
    CloudFormationCollection = ::Struct.new(
      :stack_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about Amazon Web Services CloudFormation stacks. You can use up to 500
    # 			stacks to specify which Amazon Web Services resources in your account to analyze. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html">Stacks</a> in the
    # 				<i>Amazon Web Services CloudFormation User Guide</i>. </p>
    #
    # @!attribute stack_names
    #   <p> An array of CloudFormation stack names. </p>
    #
    #   @return [Array<String>]
    #
    CloudFormationCollectionFilter = ::Struct.new(
      :stack_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an Amazon Web Services CloudFormation stack used to create a monthly cost estimate
    # 			for DevOps Guru to analyze Amazon Web Services resources. The maximum number of stacks you can specify for a
    # 			cost estimate is one. The estimate created is for the cost to analyze the Amazon Web Services
    # 			resources defined by the stack. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html">Stacks</a> in the
    # 				<i>Amazon Web Services CloudFormation User Guide</i>.</p>
    #
    # @!attribute stack_names
    #   <p>An array of CloudFormation stack names. Its size is fixed at 1 item.</p>
    #
    #   @return [Array<String>]
    #
    CloudFormationCostEstimationResourceCollectionFilter = ::Struct.new(
      :stack_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about the health of Amazon Web Services resources in your account that are specified by
    # 			an Amazon Web Services CloudFormation stack. </p>
    #
    # @!attribute stack_name
    #   <p> The name of the CloudFormation stack. </p>
    #
    #   @return [String]
    #
    # @!attribute insight
    #   <p> Information about the health of the Amazon Web Services resources in your account that are
    #   			specified by an Amazon Web Services CloudFormation stack, including the number of open proactive, open reactive
    #   			insights, and the Mean Time to Recover (MTTR) of closed insights. </p>
    #
    #   @return [InsightHealth]
    #
    CloudFormationHealth = ::Struct.new(
      :stack_name,
      :insight,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CloudWatchMetricDataStatusCode
    #
    module CloudWatchMetricDataStatusCode
      # No documentation available.
      #
      COMPLETE = "Complete"

      # No documentation available.
      #
      INTERNAL_ERROR = "InternalError"

      # No documentation available.
      #
      PARTIAL_DATA = "PartialData"
    end

    # <p>Contains information about the analyzed metrics that displayed anomalous behavior.
    # 		</p>
    #
    # @!attribute timestamp_metric_value_pair_list
    #   <p>This is a list of Amazon CloudWatch metric values at given timestamp.</p>
    #
    #   @return [Array<TimestampMetricValuePair>]
    #
    # @!attribute status_code
    #   <p>This is an enum of the status showing whether the metric value pair list has partial
    #   			or complete data, or if there was an error.</p>
    #
    #   Enum, one of: ["Complete", "InternalError", "PartialData"]
    #
    #   @return [String]
    #
    CloudWatchMetricsDataSummary = ::Struct.new(
      :timestamp_metric_value_pair_list,
      :status_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about an Amazon CloudWatch metric. </p>
    #
    # @!attribute metric_name
    #   <p> The name of the CloudWatch metric. </p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p> The namespace of the CloudWatch metric. A namespace is a container for CloudWatch metrics.
    #   		</p>
    #
    #   @return [String]
    #
    # @!attribute dimensions
    #   <p> An array of CloudWatch dimensions associated with </p>
    #
    #   @return [Array<CloudWatchMetricsDimension>]
    #
    # @!attribute stat
    #   <p> The type of statistic associated with the CloudWatch metric. For more information, see
    #   				<a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html Statistic">Statistics</a> in the <i>Amazon CloudWatch User Guide</i>. </p>
    #
    #   Enum, one of: ["Sum", "Average", "SampleCount", "Minimum", "Maximum", "p99", "p90", "p50"]
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p> The unit of measure used for the CloudWatch metric. For example, <code>Bytes</code>,
    #   				<code>Seconds</code>, <code>Count</code>, and <code>Percent</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute period
    #   <p> The length of time associated with the CloudWatch metric in number of seconds. </p>
    #
    #   @return [Integer]
    #
    # @!attribute metric_data_summary
    #   <p>This object returns anomaly metric data.</p>
    #
    #   @return [CloudWatchMetricsDataSummary]
    #
    CloudWatchMetricsDetail = ::Struct.new(
      :metric_name,
      :namespace,
      :dimensions,
      :stat,
      :unit,
      :period,
      :metric_data_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.period ||= 0
      end

    end

    # <p> The dimension of am Amazon CloudWatch metric that is used when DevOps Guru analyzes the resources in
    # 			your account for operational problems and anomalous behavior. A dimension is a
    # 			name/value pair that is part of the identity of a metric. A metric can have up to 10
    # 			dimensions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Dimension">Dimensions</a> in the <i>Amazon CloudWatch User Guide</i>. </p>
    #
    # @!attribute name
    #   <p> The name of the CloudWatch dimension. </p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p> The value of the CloudWatch dimension. </p>
    #
    #   @return [String]
    #
    CloudWatchMetricsDimension = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CloudWatchMetricsStat
    #
    module CloudWatchMetricsStat
      # No documentation available.
      #
      SUM = "Sum"

      # No documentation available.
      #
      AVERAGE = "Average"

      # No documentation available.
      #
      SAMPLE_COUNT = "SampleCount"

      # No documentation available.
      #
      MINIMUM = "Minimum"

      # No documentation available.
      #
      MAXIMUM = "Maximum"

      # No documentation available.
      #
      P99 = "p99"

      # No documentation available.
      #
      P90 = "p90"

      # No documentation available.
      #
      P50 = "p50"
    end

    # <p> An exception that is thrown when a conflict occurs. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p> The ID of the Amazon Web Services resource in which a conflict occurred. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p> The type of the Amazon Web Services resource in which a conflict occurred. </p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a filter used to specify which Amazon Web Services resources are analyzed to
    # 			create a monthly DevOps Guru cost estimate. For more information,
    # 			see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html">Estimate your
    # 			Amazon DevOps Guru costs</a> and
    # 			<a href="http://aws.amazon.com/devops-guru/pricing/">Amazon DevOps Guru pricing</a>. </p>
    #
    # @!attribute cloud_formation
    #   <p>An object that specifies the CloudFormation stack that defines the Amazon Web Services resources
    #   			used to create a monthly estimate for DevOps Guru.</p>
    #
    #   @return [CloudFormationCostEstimationResourceCollectionFilter]
    #
    # @!attribute tags
    #   <p>The Amazon Web Services tags used to filter the resource collection that is used for a cost
    #   			estimate.</p>
    #            <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
    #      		tagging, so you can assign the same tag to resources from different services to indicate
    #      		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
    #      		table resource that you assign to an Lambda function. For more information about
    #      		using tags, see the <a href="https://d1.awsstatic.com/whitepapers/aws-tagging-best-practices.pdf">Tagging
    #      			best practices</a> whitepaper. </p>
    #      	     <p>Each Amazon Web Services tag has two parts. </p>
    #      	     <ul>
    #               <li>
    #      			         <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
    #      				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #      				<i>keys</i> are case-sensitive.</p>
    #      		       </li>
    #               <li>
    #      			         <p>An optional field known as a tag <i>value</i> (for example,
    #      				<code>111122223333</code>, <code>Production</code>, or a team
    #      				name). Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive.</p>
    #      		       </li>
    #            </ul>
    #      	     <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
    #      	     <important>
    #   		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>Devops-guru-deployment-application</code> or
    #   			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
    #   			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #   	        </important>
    #
    #   @return [Array<TagCostEstimationResourceCollectionFilter>]
    #
    CostEstimationResourceCollectionFilter = ::Struct.new(
      :cloud_formation,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CostEstimationServiceResourceState
    #
    module CostEstimationServiceResourceState
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"
    end

    # Includes enum constants for CostEstimationStatus
    #
    module CostEstimationStatus
      # No documentation available.
      #
      ONGOING = "ONGOING"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"
    end

    # <p>The time range of a cost estimation.</p>
    #
    # @!attribute start_time
    #   <p>The start time of the cost estimation.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end time of the cost estimation.</p>
    #
    #   @return [Time]
    #
    CostEstimationTimeRange = ::Struct.new(
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the insight.</p>
    #
    #   @return [String]
    #
    DeleteInsightInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteInsightOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeAccountHealthInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute open_reactive_insights
    #   <p> An integer that specifies the number of open reactive insights in your Amazon Web Services account.
    #   		</p>
    #
    #   @return [Integer]
    #
    # @!attribute open_proactive_insights
    #   <p> An integer that specifies the number of open proactive insights in your Amazon Web Services
    #   			account. </p>
    #
    #   @return [Integer]
    #
    # @!attribute metrics_analyzed
    #   <p> An integer that specifies the number of metrics that have been analyzed in your Amazon Web Services
    #   			account. </p>
    #
    #   @return [Integer]
    #
    # @!attribute resource_hours
    #   <p>The number of Amazon DevOps Guru resource analysis hours billed to the current Amazon Web Services account in
    #   			the last hour. </p>
    #
    #   @return [Integer]
    #
    DescribeAccountHealthOutput = ::Struct.new(
      :open_reactive_insights,
      :open_proactive_insights,
      :metrics_analyzed,
      :resource_hours,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.open_reactive_insights ||= 0
        self.open_proactive_insights ||= 0
        self.metrics_analyzed ||= 0
      end

    end

    # @!attribute from_time
    #   <p> The start of the time range passed in. The start time granularity is at the day
    #   			level. The floor of the start time is used. Returned information occurred after this
    #   			day. </p>
    #
    #   @return [Time]
    #
    # @!attribute to_time
    #   <p> The end of the time range passed in. The start time granularity is at the day level.
    #   			The floor of the start time is used. Returned information occurred before this day. If
    #   			this is not specified, then the current day is used. </p>
    #
    #   @return [Time]
    #
    DescribeAccountOverviewInput = ::Struct.new(
      :from_time,
      :to_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute reactive_insights
    #   <p> An integer that specifies the number of open reactive insights in your Amazon Web Services account
    #   			that were created during the time range passed in. </p>
    #
    #   @return [Integer]
    #
    # @!attribute proactive_insights
    #   <p> An integer that specifies the number of open proactive insights in your Amazon Web Services account
    #   			that were created during the time range passed in. </p>
    #
    #   @return [Integer]
    #
    # @!attribute mean_time_to_recover_in_milliseconds
    #   <p> The Mean Time to Recover (MTTR) for all closed insights that were created during the time range passed in.
    #   		</p>
    #
    #   @return [Integer]
    #
    DescribeAccountOverviewOutput = ::Struct.new(
      :reactive_insights,
      :proactive_insights,
      :mean_time_to_recover_in_milliseconds,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.reactive_insights ||= 0
        self.proactive_insights ||= 0
      end

    end

    # @!attribute id
    #   <p> The ID of the anomaly. </p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The ID of the member account.</p>
    #
    #   @return [String]
    #
    DescribeAnomalyInput = ::Struct.new(
      :id,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute proactive_anomaly
    #   <p> A <code>ProactiveAnomaly</code> object that represents the requested anomaly. </p>
    #
    #   @return [ProactiveAnomaly]
    #
    # @!attribute reactive_anomaly
    #   <p> A <code>ReactiveAnomaly</code> object that represents the requested anomaly. </p>
    #
    #   @return [ReactiveAnomaly]
    #
    DescribeAnomalyOutput = ::Struct.new(
      :proactive_anomaly,
      :reactive_anomaly,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeEventSourcesConfigInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_sources
    #   <p>Lists the event sources in the configuration.</p>
    #
    #   @return [EventSourcesConfig]
    #
    DescribeEventSourcesConfigOutput = ::Struct.new(
      :event_sources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute insight_id
    #   <p> The ID of the insight for which the feedback was provided. </p>
    #
    #   @return [String]
    #
    DescribeFeedbackInput = ::Struct.new(
      :insight_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute insight_feedback
    #   <p> Information about insight feedback received from a customer. </p>
    #
    #   @return [InsightFeedback]
    #
    DescribeFeedbackOutput = ::Struct.new(
      :insight_feedback,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p> The ID of the insight. </p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The ID of the member account in the organization.</p>
    #
    #   @return [String]
    #
    DescribeInsightInput = ::Struct.new(
      :id,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute proactive_insight
    #   <p> A <code>ProactiveInsight</code> object that represents the requested insight. </p>
    #
    #   @return [ProactiveInsight]
    #
    # @!attribute reactive_insight
    #   <p> A <code>ReactiveInsight</code> object that represents the requested insight. </p>
    #
    #   @return [ReactiveInsight]
    #
    DescribeInsightOutput = ::Struct.new(
      :proactive_insight,
      :reactive_insight,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute organizational_unit_ids
    #   <p>The ID of the organizational unit.</p>
    #
    #   @return [Array<String>]
    #
    DescribeOrganizationHealthInput = ::Struct.new(
      :account_ids,
      :organizational_unit_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute open_reactive_insights
    #   <p>An integer that specifies the number of open reactive insights in your Amazon Web Services
    #   			account.</p>
    #
    #   @return [Integer]
    #
    # @!attribute open_proactive_insights
    #   <p>An integer that specifies the number of open proactive insights in your Amazon Web Services
    #   			account.</p>
    #
    #   @return [Integer]
    #
    # @!attribute metrics_analyzed
    #   <p>An integer that specifies the number of metrics that have been analyzed in your
    #   			organization.</p>
    #
    #   @return [Integer]
    #
    # @!attribute resource_hours
    #   <p>The number of Amazon DevOps Guru resource analysis hours billed to the current Amazon Web Services account in
    #   			the last hour. </p>
    #
    #   @return [Integer]
    #
    DescribeOrganizationHealthOutput = ::Struct.new(
      :open_reactive_insights,
      :open_proactive_insights,
      :metrics_analyzed,
      :resource_hours,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.open_reactive_insights ||= 0
        self.open_proactive_insights ||= 0
        self.metrics_analyzed ||= 0
      end

    end

    # @!attribute from_time
    #   <p> The start of the time range passed in. The start time granularity is at the day
    #   			level. The floor of the start time is used. Returned information occurred after this
    #   			day. </p>
    #
    #   @return [Time]
    #
    # @!attribute to_time
    #   <p> The end of the time range passed in. The start time granularity is at the day level.
    #   			The floor of the start time is used. Returned information occurred before this day. If
    #   			this is not specified, then the current day is used. </p>
    #
    #   @return [Time]
    #
    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute organizational_unit_ids
    #   <p>The ID of the organizational unit.</p>
    #
    #   @return [Array<String>]
    #
    DescribeOrganizationOverviewInput = ::Struct.new(
      :from_time,
      :to_time,
      :account_ids,
      :organizational_unit_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute reactive_insights
    #   <p>An integer that specifies the number of open reactive insights in your Amazon Web Services
    #   			account.</p>
    #
    #   @return [Integer]
    #
    # @!attribute proactive_insights
    #   <p>An integer that specifies the number of open proactive insights in your Amazon Web Services
    #   			account.</p>
    #
    #   @return [Integer]
    #
    DescribeOrganizationOverviewOutput = ::Struct.new(
      :reactive_insights,
      :proactive_insights,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.reactive_insights ||= 0
        self.proactive_insights ||= 0
      end

    end

    # @!attribute organization_resource_collection_type
    #   <p> An Amazon Web Services resource collection type. This type specifies how analyzed Amazon Web Services resources
    #   			are defined. The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    #   Enum, one of: ["AWS_CLOUD_FORMATION", "AWS_SERVICE", "AWS_ACCOUNT", "AWS_TAGS"]
    #
    #   @return [String]
    #
    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute organizational_unit_ids
    #   <p>The ID of the organizational unit.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    DescribeOrganizationResourceCollectionHealthInput = ::Struct.new(
      :organization_resource_collection_type,
      :account_ids,
      :organizational_unit_ids,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cloud_formation
    #   <p>The returned <code>CloudFormationHealthOverview</code> object that contains an
    #   				<code>InsightHealthOverview</code> object with the requested system health
    #   			information.</p>
    #
    #   @return [Array<CloudFormationHealth>]
    #
    # @!attribute service
    #   <p>An array of <code>ServiceHealth</code> objects that describes the health of the Amazon Web Services
    #   			services associated with the resources in the collection.</p>
    #
    #   @return [Array<ServiceHealth>]
    #
    # @!attribute account
    #   <p>The name of the organization's account.</p>
    #
    #   @return [Array<AccountHealth>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
    #      		tagging, so you can assign the same tag to resources from different services to indicate
    #      		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
    #      		table resource that you assign to an Lambda function. For more information about
    #      		using tags, see the <a href="https://d1.awsstatic.com/whitepapers/aws-tagging-best-practices.pdf">Tagging
    #      			best practices</a> whitepaper. </p>
    #      	     <p>Each Amazon Web Services tag has two parts. </p>
    #      	     <ul>
    #               <li>
    #      			         <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
    #      				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #      				<i>keys</i> are case-sensitive.</p>
    #      		       </li>
    #               <li>
    #      			         <p>An optional field known as a tag <i>value</i> (for example,
    #      				<code>111122223333</code>, <code>Production</code>, or a team
    #      				name). Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive.</p>
    #      		       </li>
    #            </ul>
    #      	     <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
    #      	     <important>
    #   		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>Devops-guru-deployment-application</code> or
    #   			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
    #   			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #   	        </important>
    #
    #   @return [Array<TagHealth>]
    #
    DescribeOrganizationResourceCollectionHealthOutput = ::Struct.new(
      :cloud_formation,
      :service,
      :account,
      :next_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_collection_type
    #   <p> An Amazon Web Services resource collection type. This type specifies how analyzed Amazon Web Services resources
    #   			are defined. The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    #   Enum, one of: ["AWS_CLOUD_FORMATION", "AWS_SERVICE", "AWS_TAGS"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    DescribeResourceCollectionHealthInput = ::Struct.new(
      :resource_collection_type,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cloud_formation
    #   <p> The returned <code>CloudFormationHealthOverview</code> object that contains an
    #   				<code>InsightHealthOverview</code> object with the requested system health
    #   			information. </p>
    #
    #   @return [Array<CloudFormationHealth>]
    #
    # @!attribute service
    #   <p>An array of <code>ServiceHealth</code> objects that describes the health of the Amazon Web Services
    #   			services associated with the resources in the collection.</p>
    #
    #   @return [Array<ServiceHealth>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The Amazon Web Services tags that are used by resources in the resource collection.</p>
    #   		       <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
    #      		tagging, so you can assign the same tag to resources from different services to indicate
    #      		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
    #      		table resource that you assign to an Lambda function. For more information about
    #      		using tags, see the <a href="https://d1.awsstatic.com/whitepapers/aws-tagging-best-practices.pdf">Tagging
    #      			best practices</a> whitepaper. </p>
    #      	     <p>Each Amazon Web Services tag has two parts. </p>
    #      	     <ul>
    #               <li>
    #      			         <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
    #      				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #      				<i>keys</i> are case-sensitive.</p>
    #      		       </li>
    #               <li>
    #      			         <p>An optional field known as a tag <i>value</i> (for example,
    #      				<code>111122223333</code>, <code>Production</code>, or a team
    #      				name). Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive.</p>
    #      		       </li>
    #            </ul>
    #      	     <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
    #      	     <important>
    #   		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>Devops-guru-deployment-application</code> or
    #   			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
    #   			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #   	        </important>
    #
    #   @return [Array<TagHealth>]
    #
    DescribeResourceCollectionHealthOutput = ::Struct.new(
      :cloud_formation,
      :service,
      :next_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeServiceIntegrationInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_integration
    #   <p> Information about the integration of DevOps Guru with another Amazon Web Services service, such as
    #   			Amazon Web Services Systems Manager. </p>
    #
    #   @return [ServiceIntegrationConfig]
    #
    DescribeServiceIntegrationOutput = ::Struct.new(
      :service_integration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A range of time that specifies when anomalous behavior in an anomaly or insight
    # 			ended. </p>
    #
    # @!attribute from_time
    #   <p> The earliest end time in the time range. </p>
    #
    #   @return [Time]
    #
    # @!attribute to_time
    #   <p> The latest end time in the time range. </p>
    #
    #   @return [Time]
    #
    EndTimeRange = ::Struct.new(
      :from_time,
      :to_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> An Amazon Web Services resource event. Amazon Web Services resource events and metrics are analyzed by DevOps Guru to
    # 			find anomalous behavior and provide recommendations to improve your operational
    # 			solutions. </p>
    #
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    #   @return [ResourceCollection]
    #
    # @!attribute id
    #   <p> The ID of the event. </p>
    #
    #   @return [String]
    #
    # @!attribute time
    #   <p> A <code>Timestamp</code> that specifies the time the event occurred. </p>
    #
    #   @return [Time]
    #
    # @!attribute event_source
    #   <p> The Amazon Web Services source that emitted the event. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name of the event. </p>
    #
    #   @return [String]
    #
    # @!attribute data_source
    #   <p> The source, <code>AWS_CLOUD_TRAIL</code> or <code>AWS_CODE_DEPLOY</code>, where DevOps Guru
    #   			analysis found the event. </p>
    #
    #   Enum, one of: ["AWS_CLOUD_TRAIL", "AWS_CODE_DEPLOY"]
    #
    #   @return [String]
    #
    # @!attribute event_class
    #   <p> The class of the event. The class specifies what the event is related to, such as an
    #   			infrastructure change, a deployment, or a schema change. </p>
    #
    #   Enum, one of: ["INFRASTRUCTURE", "DEPLOYMENT", "SECURITY_CHANGE", "CONFIG_CHANGE", "SCHEMA_CHANGE"]
    #
    #   @return [String]
    #
    # @!attribute resources
    #   <p> An <code>EventResource</code> object that contains information about the resource
    #   			that emitted the event. </p>
    #
    #   @return [Array<EventResource>]
    #
    Event = ::Struct.new(
      :resource_collection,
      :id,
      :time,
      :event_source,
      :name,
      :data_source,
      :event_class,
      :resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EventClass
    #
    module EventClass
      # No documentation available.
      #
      INFRASTRUCTURE = "INFRASTRUCTURE"

      # No documentation available.
      #
      DEPLOYMENT = "DEPLOYMENT"

      # No documentation available.
      #
      SECURITY_CHANGE = "SECURITY_CHANGE"

      # No documentation available.
      #
      CONFIG_CHANGE = "CONFIG_CHANGE"

      # No documentation available.
      #
      SCHEMA_CHANGE = "SCHEMA_CHANGE"
    end

    # Includes enum constants for EventDataSource
    #
    module EventDataSource
      # No documentation available.
      #
      AWS_CLOUD_TRAIL = "AWS_CLOUD_TRAIL"

      # No documentation available.
      #
      AWS_CODE_DEPLOY = "AWS_CODE_DEPLOY"
    end

    # <p> The Amazon Web Services resource that emitted an event. Amazon Web Services resource events and metrics are
    # 			analyzed by DevOps Guru to find anomalous behavior and provide recommendations to improve your
    # 			operational solutions. </p>
    #
    # @!attribute type
    #   <p> The type of resource that emitted an event. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name of the resource that emitted an event. </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the resource that emitted an event. </p>
    #
    #   @return [String]
    #
    EventResource = ::Struct.new(
      :type,
      :name,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EventSourceOptInStatus
    #
    module EventSourceOptInStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>Information about the integration of DevOps Guru as consumer with another AWS service, such
    # 			as AWS CodeGuru Profiler via EventBridge.</p>
    #
    # @!attribute amazon_code_guru_profiler
    #   <p>Information about whether DevOps Guru is configured to consume recommendations which
    #   			are generated from AWS CodeGuru Profiler.</p>
    #
    #   @return [AmazonCodeGuruProfilerIntegration]
    #
    EventSourcesConfig = ::Struct.new(
      :amazon_code_guru_profiler,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The time range during which an Amazon Web Services event occurred. Amazon Web Services resource events and
    # 			metrics are analyzed by DevOps Guru to find anomalous behavior and provide recommendations to
    # 			improve your operational solutions. </p>
    #
    # @!attribute from_time
    #   <p> The time when the event started. </p>
    #
    #   @return [Time]
    #
    # @!attribute to_time
    #   <p> The time when the event ended. </p>
    #
    #   @return [Time]
    #
    EventTimeRange = ::Struct.new(
      :from_time,
      :to_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    GetCostEstimationInput = ::Struct.new(
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_collection
    #   <p>The collection of the Amazon Web Services resources used to create your monthly DevOps Guru cost
    #   			estimate.</p>
    #
    #   @return [CostEstimationResourceCollectionFilter]
    #
    # @!attribute status
    #   <p>The status of creating this cost estimate. If it's still in progress, the status
    #   				<code>ONGOING</code> is returned. If it is finished, the status
    #   				<code>COMPLETED</code> is returned.</p>
    #
    #   Enum, one of: ["ONGOING", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute costs
    #   <p>An array of <code>ResourceCost</code> objects that each contains details about the
    #   			monthly cost estimate to analyze one of your Amazon Web Services resources.</p>
    #
    #   @return [Array<ServiceResourceCost>]
    #
    # @!attribute time_range
    #   <p>The start and end time of the cost estimation.</p>
    #
    #   @return [CostEstimationTimeRange]
    #
    # @!attribute total_cost
    #   <p>The estimated monthly cost to analyze the Amazon Web Services resources. This value is the sum of
    #   			the estimated costs to analyze each resource in the <code>Costs</code> object in this
    #   			response.</p>
    #
    #   @return [Float]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    GetCostEstimationOutput = ::Struct.new(
      :resource_collection,
      :status,
      :costs,
      :time_range,
      :total_cost,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.total_cost ||= 0
      end

    end

    # @!attribute resource_collection_type
    #   <p> The type of Amazon Web Services resource collections to return. The one valid value is
    #   				<code>CLOUD_FORMATION</code> for Amazon Web Services CloudFormation stacks. </p>
    #
    #   Enum, one of: ["AWS_CLOUD_FORMATION", "AWS_SERVICE", "AWS_TAGS"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    GetResourceCollectionInput = ::Struct.new(
      :resource_collection_type,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_collection
    #   <p> The requested list of Amazon Web Services resource collections.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    #   @return [ResourceCollectionFilter]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    GetResourceCollectionOutput = ::Struct.new(
      :resource_collection,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about insight feedback received from a customer. </p>
    #
    # @!attribute id
    #   <p> The insight feedback ID. </p>
    #
    #   @return [String]
    #
    # @!attribute feedback
    #   <p> The feedback provided by the customer. </p>
    #
    #   Enum, one of: ["VALID_COLLECTION", "RECOMMENDATION_USEFUL", "ALERT_TOO_SENSITIVE", "DATA_NOISY_ANOMALY", "DATA_INCORRECT"]
    #
    #   @return [String]
    #
    InsightFeedback = ::Struct.new(
      :id,
      :feedback,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InsightFeedbackOption
    #
    module InsightFeedbackOption
      # No documentation available.
      #
      VALID_COLLECTION = "VALID_COLLECTION"

      # No documentation available.
      #
      RECOMMENDATION_USEFUL = "RECOMMENDATION_USEFUL"

      # No documentation available.
      #
      ALERT_TOO_SENSITIVE = "ALERT_TOO_SENSITIVE"

      # No documentation available.
      #
      DATA_NOISY_ANOMALY = "DATA_NOISY_ANOMALY"

      # No documentation available.
      #
      DATA_INCORRECT = "DATA_INCORRECT"
    end

    # <p> Information about the number of open reactive and proactive insights that can be used
    # 			to gauge the health of your system. </p>
    #
    # @!attribute open_proactive_insights
    #   <p> The number of open proactive insights. </p>
    #
    #   @return [Integer]
    #
    # @!attribute open_reactive_insights
    #   <p> The number of open reactive insights. </p>
    #
    #   @return [Integer]
    #
    # @!attribute mean_time_to_recover_in_milliseconds
    #   <p> The Meant Time to Recover (MTTR) for the insight. </p>
    #
    #   @return [Integer]
    #
    InsightHealth = ::Struct.new(
      :open_proactive_insights,
      :open_reactive_insights,
      :mean_time_to_recover_in_milliseconds,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.open_proactive_insights ||= 0
        self.open_reactive_insights ||= 0
      end

    end

    # Includes enum constants for InsightSeverity
    #
    module InsightSeverity
      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      HIGH = "HIGH"
    end

    # Includes enum constants for InsightStatus
    #
    module InsightStatus
      # No documentation available.
      #
      ONGOING = "ONGOING"

      # No documentation available.
      #
      CLOSED = "CLOSED"
    end

    # <p> A time ranged that specifies when the observed behavior in an insight started and
    # 			ended. </p>
    #
    # @!attribute start_time
    #   <p> The time when the behavior described in an insight started. </p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p> The time when the behavior described in an insight ended. </p>
    #
    #   @return [Time]
    #
    InsightTimeRange = ::Struct.new(
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InsightType
    #
    module InsightType
      # No documentation available.
      #
      REACTIVE = "REACTIVE"

      # No documentation available.
      #
      PROACTIVE = "PROACTIVE"
    end

    # <p>An internal failure in an Amazon service occurred.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p> The number of seconds after which the action that caused the internal server
    #   			exception can be retried. </p>
    #
    #   @return [Integer]
    #
    InternalServerException = ::Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.retry_after_seconds ||= 0
      end

    end

    # @!attribute insight_id
    #   <p> The ID of the insight. The returned anomalies belong to this insight. </p>
    #
    #   @return [String]
    #
    # @!attribute start_time_range
    #   <p> A time range used to specify when the requested anomalies started. All returned
    #   			anomalies started during this time range. </p>
    #
    #   @return [StartTimeRange]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    ListAnomaliesForInsightInput = ::Struct.new(
      :insight_id,
      :start_time_range,
      :max_results,
      :next_token,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute proactive_anomalies
    #   <p> An array of <code>ProactiveAnomalySummary</code> objects that represent the requested
    #   			anomalies </p>
    #
    #   @return [Array<ProactiveAnomalySummary>]
    #
    # @!attribute reactive_anomalies
    #   <p> An array of <code>ReactiveAnomalySummary</code> objects that represent the requested
    #   			anomalies </p>
    #
    #   @return [Array<ReactiveAnomalySummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    ListAnomaliesForInsightOutput = ::Struct.new(
      :proactive_anomalies,
      :reactive_anomalies,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Filters you can use to specify which events are returned when <code>ListEvents</code>
    # 			is called. </p>
    #
    # @!attribute insight_id
    #   <p> An ID of an insight that is related to the events you want to filter for. </p>
    #
    #   @return [String]
    #
    # @!attribute event_time_range
    #   <p> A time range during which you want the filtered events to have occurred. </p>
    #
    #   @return [EventTimeRange]
    #
    # @!attribute event_class
    #   <p> The class of the events you want to filter for, such as an infrastructure change, a
    #   			deployment, or a schema change. </p>
    #
    #   Enum, one of: ["INFRASTRUCTURE", "DEPLOYMENT", "SECURITY_CHANGE", "CONFIG_CHANGE", "SCHEMA_CHANGE"]
    #
    #   @return [String]
    #
    # @!attribute event_source
    #   <p> The Amazon Web Services source that emitted the events you want to filter for. </p>
    #
    #   @return [String]
    #
    # @!attribute data_source
    #   <p> The source, <code>AWS_CLOUD_TRAIL</code> or <code>AWS_CODE_DEPLOY</code>, of the
    #   			events you want returned. </p>
    #
    #   Enum, one of: ["AWS_CLOUD_TRAIL", "AWS_CODE_DEPLOY"]
    #
    #   @return [String]
    #
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    #   @return [ResourceCollection]
    #
    ListEventsFilters = ::Struct.new(
      :insight_id,
      :event_time_range,
      :event_class,
      :event_source,
      :data_source,
      :resource_collection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p> A <code>ListEventsFilters</code> object used to specify which events to return.
    #   		</p>
    #
    #   @return [ListEventsFilters]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    ListEventsInput = ::Struct.new(
      :filters,
      :max_results,
      :next_token,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute events
    #   <p> A list of the requested events. </p>
    #
    #   @return [Array<Event>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    ListEventsOutput = ::Struct.new(
      :events,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Used to filter for insights that have any status. </p>
    #
    # @!attribute type
    #   <p> Use to filter for either <code>REACTIVE</code> or <code>PROACTIVE</code> insights.
    #   		</p>
    #
    #   Enum, one of: ["REACTIVE", "PROACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute start_time_range
    #   <p> A time range used to specify when the behavior of the filtered insights started.
    #   		</p>
    #
    #   @return [StartTimeRange]
    #
    ListInsightsAnyStatusFilter = ::Struct.new(
      :type,
      :start_time_range,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Used to filter for insights that have the status <code>CLOSED</code>. </p>
    #
    # @!attribute type
    #   <p> Use to filter for either <code>REACTIVE</code> or <code>PROACTIVE</code> insights.
    #   		</p>
    #
    #   Enum, one of: ["REACTIVE", "PROACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute end_time_range
    #   <p> A time range used to specify when the behavior of the filtered insights ended.
    #   		</p>
    #
    #   @return [EndTimeRange]
    #
    ListInsightsClosedStatusFilter = ::Struct.new(
      :type,
      :end_time_range,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status_filter
    #   <p> A filter used to filter the returned insights by their status. You can specify one
    #   			status filter. </p>
    #
    #   @return [ListInsightsStatusFilter]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    ListInsightsInput = ::Struct.new(
      :status_filter,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Used to filter for insights that have the status <code>ONGOING</code>. </p>
    #
    # @!attribute type
    #   <p> Use to filter for either <code>REACTIVE</code> or <code>PROACTIVE</code> insights.
    #   		</p>
    #
    #   Enum, one of: ["REACTIVE", "PROACTIVE"]
    #
    #   @return [String]
    #
    ListInsightsOngoingStatusFilter = ::Struct.new(
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute proactive_insights
    #   <p> The returned list of proactive insights. </p>
    #
    #   @return [Array<ProactiveInsightSummary>]
    #
    # @!attribute reactive_insights
    #   <p> The returned list of reactive insights. </p>
    #
    #   @return [Array<ReactiveInsightSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    ListInsightsOutput = ::Struct.new(
      :proactive_insights,
      :reactive_insights,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A filter used by <code>ListInsights</code> to specify which insights to return.
    # 		</p>
    #
    # @!attribute ongoing
    #   <p> A <code>ListInsightsAnyStatusFilter</code> that specifies ongoing insights that are
    #   			either <code>REACTIVE</code> or <code>PROACTIVE</code>. </p>
    #
    #   @return [ListInsightsOngoingStatusFilter]
    #
    # @!attribute closed
    #   <p> A <code>ListInsightsClosedStatusFilter</code> that specifies closed insights that are
    #   			either <code>REACTIVE</code> or <code>PROACTIVE</code>. </p>
    #
    #   @return [ListInsightsClosedStatusFilter]
    #
    # @!attribute any
    #   <p> A <code>ListInsightsAnyStatusFilter</code> that specifies insights of any status that
    #   			are either <code>REACTIVE</code> or <code>PROACTIVE</code>. </p>
    #
    #   @return [ListInsightsAnyStatusFilter]
    #
    ListInsightsStatusFilter = ::Struct.new(
      :ongoing,
      :closed,
      :any,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    ListNotificationChannelsInput = ::Struct.new(
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute channels
    #   <p> An array that contains the requested notification channels. </p>
    #
    #   @return [Array<NotificationChannel>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    ListNotificationChannelsOutput = ::Struct.new(
      :channels,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status_filter
    #   <p> A filter used by <code>ListInsights</code> to specify which insights to return.
    #   		</p>
    #
    #   @return [ListInsightsStatusFilter]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute organizational_unit_ids
    #   <p>The ID of the organizational unit.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    ListOrganizationInsightsInput = ::Struct.new(
      :status_filter,
      :max_results,
      :account_ids,
      :organizational_unit_ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute proactive_insights
    #   <p>An integer that specifies the number of open proactive insights in your Amazon Web Services
    #   			account.</p>
    #
    #   @return [Array<ProactiveOrganizationInsightSummary>]
    #
    # @!attribute reactive_insights
    #   <p>An integer that specifies the number of open reactive insights in your Amazon Web Services
    #   			account.</p>
    #
    #   @return [Array<ReactiveOrganizationInsightSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    ListOrganizationInsightsOutput = ::Struct.new(
      :proactive_insights,
      :reactive_insights,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute insight_id
    #   <p> The ID of the requested insight. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    # @!attribute locale
    #   <p>A locale that specifies the language to use for recommendations.</p>
    #
    #   Enum, one of: ["DE_DE", "EN_US", "EN_GB", "ES_ES", "FR_FR", "IT_IT", "JA_JP", "KO_KR", "PT_BR", "ZH_CN", "ZH_TW"]
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    ListRecommendationsInput = ::Struct.new(
      :insight_id,
      :next_token,
      :locale,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recommendations
    #   <p> An array of the requested recommendations. </p>
    #
    #   @return [Array<Recommendation>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    ListRecommendationsOutput = ::Struct.new(
      :recommendations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Locale
    #
    module Locale
      # No documentation available.
      #
      DE_DE = "DE_DE"

      # No documentation available.
      #
      EN_US = "EN_US"

      # No documentation available.
      #
      EN_GB = "EN_GB"

      # No documentation available.
      #
      ES_ES = "ES_ES"

      # No documentation available.
      #
      FR_FR = "FR_FR"

      # No documentation available.
      #
      IT_IT = "IT_IT"

      # No documentation available.
      #
      JA_JP = "JA_JP"

      # No documentation available.
      #
      KO_KR = "KO_KR"

      # No documentation available.
      #
      PT_BR = "PT_BR"

      # No documentation available.
      #
      ZH_CN = "ZH_CN"

      # No documentation available.
      #
      ZH_TW = "ZH_TW"
    end

    # <p> Information about a notification channel. A notification channel is used to notify
    # 			you when DevOps Guru creates an insight. The one
    #       	supported notification channel is Amazon Simple Notification Service (Amazon SNS). </p>
    # 		       <p>If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission
    # 				to it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. DevOps Guru only supports standard SNS topics.
    # 				For more information, see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html">Permissions
    # 				for cross account Amazon SNS topics</a>.</p>
    # 				     <p>If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission to it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. For more information, see Permissions for cross account Amazon SNS topics.</p>
    # 				     <p>If you use an Amazon SNS topic that is encrypted by an Amazon Web Services Key Management Service customer-managed key (CMK), then you must add permissions
    # 				to the CMK. For more information, see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html">Permissions for
    # 				Amazon Web Services KMS–encrypted Amazon SNS topics</a>.</p>
    #
    # @!attribute id
    #   <p> The ID of a notification channel. </p>
    #
    #   @return [String]
    #
    # @!attribute config
    #   <p> A <code>NotificationChannelConfig</code> object that contains information about
    #   			configured notification channels. </p>
    #
    #   @return [NotificationChannelConfig]
    #
    NotificationChannel = ::Struct.new(
      :id,
      :config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about notification channels you have configured with DevOps Guru.
    # 			The one
    #       	supported notification channel is Amazon Simple Notification Service (Amazon SNS).</p>
    #
    # @!attribute sns
    #   <p> Information about a notification channel configured in DevOps Guru to send notifications
    #   			when insights are created. </p>
    #            <p>If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission
    #   				to it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. DevOps Guru only supports standard SNS topics.
    #   				For more information, see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html">Permissions
    #   				for cross account Amazon SNS topics</a>.</p>
    #   				     <p>If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission to it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. For more information, see Permissions for cross account Amazon SNS topics.</p>
    #   				     <p>If you use an Amazon SNS topic that is encrypted by an Amazon Web Services Key Management Service customer-managed key (CMK), then you must add permissions
    #   				to the CMK. For more information, see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html">Permissions for
    #   				Amazon Web Services KMS–encrypted Amazon SNS topics</a>.</p>
    #
    #   @return [SnsChannelConfig]
    #
    NotificationChannelConfig = ::Struct.new(
      :sns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about whether DevOps Guru is configured to create an OpsItem in Amazon Web Services Systems Manager
    # 			OpsCenter for each created insight. </p>
    #
    # @!attribute opt_in_status
    #   <p> Specifies if DevOps Guru is enabled to create an Amazon Web Services Systems Manager OpsItem for each created
    #   			insight. </p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    OpsCenterIntegration = ::Struct.new(
      :opt_in_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about whether DevOps Guru is configured to create an OpsItem in Amazon Web Services Systems Manager
    # 			OpsCenter for each created insight. </p>
    #
    # @!attribute opt_in_status
    #   <p> Specifies if DevOps Guru is enabled to create an Amazon Web Services Systems Manager OpsItem for each created
    #   			insight. </p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    OpsCenterIntegrationConfig = ::Struct.new(
      :opt_in_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OptInStatus
    #
    module OptInStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for OrganizationResourceCollectionType
    #
    module OrganizationResourceCollectionType
      # No documentation available.
      #
      AWS_CLOUD_FORMATION = "AWS_CLOUD_FORMATION"

      # No documentation available.
      #
      AWS_SERVICE = "AWS_SERVICE"

      # No documentation available.
      #
      AWS_ACCOUNT = "AWS_ACCOUNT"

      # No documentation available.
      #
      AWS_TAGS = "AWS_TAGS"
    end

    # <p>A logical grouping of Performance Insights metrics for a related subject area. For example, the
    # 				<code>db.sql</code> dimension group consists of the following dimensions:
    # 				<code>db.sql.id</code>, <code>db.sql.db_id</code>, <code>db.sql.statement</code>,
    # 			and <code>db.sql.tokenized_id</code>.</p>
    # 		       <note>
    # 			         <p>Each response element returns a maximum of 500 bytes. For larger elements, such as
    # 				SQL statements, only the first 500 bytes are returned.</p>
    # 		       </note>
    #          <p>Amazon RDS Performance Insights enables you to monitor and explore different
    #    		dimensions of database load based on data captured from a running DB instance.
    #    		DB load is measured as average active sessions. Performance Insights provides the
    #    		data to API consumers as a two-dimensional time-series dataset. The time dimension
    #    		provides DB load data for each time point in the queried time range. Each time point
    #    		decomposes overall load in relation to the requested dimensions, measured at that
    #    		time point. Examples include SQL, Wait event, User, and Host. </p>
    #    	
    #    	     <ul>
    #             <li>
    #    			         <p>To learn more about Performance Insights and Amazon Aurora DB instances, go to the <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights.html"> Amazon Aurora User Guide</a>.
    #    			</p>
    #    		       </li>
    #             <li>
    #    			         <p>To learn more about Performance Insights and Amazon RDS DB instances, go to the <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html"> Amazon RDS User Guide</a>.
    #    			</p>
    #    		       </li>
    #          </ul>
    #
    # @!attribute group
    #   <p>The name of the dimension group. Its valid values are:</p>
    #
    #   		       <ul>
    #               <li>
    #   				           <p>
    #   					             <code>db</code> - The name of the database to which the client is connected
    #   					(only Aurora PostgreSQL, Amazon RDS PostgreSQL, Aurora MySQL, Amazon RDS MySQL, and MariaDB)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.application</code> - The name of the application that is connected to
    #   					the database (only Aurora PostgreSQL and RDS PostgreSQL)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.host</code> - The host name of the connected client (all
    #   					engines)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.session_type</code> - The type of the current session (only Aurora PostgreSQL
    #   					and RDS PostgreSQL)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.sql</code> - The SQL that is currently executing (all engines)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.sql_tokenized</code> - The SQL digest (all engines)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.wait_event</code> - The event for which the database backend is waiting
    #   					(all engines)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.wait_event_type</code> - The type of event for which the database
    #   					backend is waiting (all engines)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.user</code> - The user logged in to the database (all engines)</p>
    #   			         </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute dimensions
    #   <p>A list of specific dimensions from a dimension group. If this parameter is not
    #   			present, then it signifies that all of the dimensions in the group were requested or are
    #   			present in the response.</p>
    #   		       <p>Valid values for elements in the <code>Dimensions</code> array are:</p>
    #
    #   		       <ul>
    #               <li>
    #   				           <p>
    #   					             <code>db.application.name</code> - The name of the application that is connected
    #   					to the database (only Aurora PostgreSQL and RDS PostgreSQL)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.host.id</code> - The host ID of the connected client (all
    #   					engines)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.host.name</code> - The host name of the connected client (all
    #   					engines)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.name</code> - The name of the database to which the client is connected
    #   					(only Aurora PostgreSQL, Amazon RDS PostgreSQL, Aurora MySQL, Amazon RDS MySQL, and MariaDB)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.session_type.name</code> - The type of the current session (only Aurora
    #   					PostgreSQL and RDS PostgreSQL)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.sql.id</code> - The SQL ID generated by Performance Insights (all engines)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.sql.db_id</code> - The SQL ID generated by the database (all
    #   					engines)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.sql.statement</code> - The SQL text that is being executed (all
    #   					engines)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.sql.tokenized_id</code>
    #   				           </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.sql_tokenized.id</code> - The SQL digest ID generated by Performance Insights (all
    #   					engines)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.sql_tokenized.db_id</code> - SQL digest ID generated by the database
    #   					(all engines)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.sql_tokenized.statement</code> - The SQL digest text (all
    #   					engines)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.user.id</code> - The ID of the user logged in to the database (all
    #   					engines)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.user.name</code> - The name of the user logged in to the database (all
    #   					engines)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.wait_event.name</code> - The event for which the backend is waiting
    #   					(all engines)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.wait_event.type</code> - The type of event for which the backend is
    #   					waiting (all engines)</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.wait_event_type.name</code> - The name of the event type for which the
    #   					backend is waiting (all engines)</p>
    #   			         </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>The maximum number of items to fetch for this dimension group.</p>
    #
    #   @return [Integer]
    #
    PerformanceInsightsMetricDimensionGroup = ::Struct.new(
      :group,
      :dimensions,
      :limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A single query to be processed. Use these parameters to query the Performance Insights
    # 				<code>GetResourceMetrics</code> API to retrieve the metrics for an anomaly. For more
    # 			information, see <code>
    #                <a href="https://docs.aws.amazon.com/performance-insights/latest/APIReference/API_GetResourceMetrics.html">GetResourceMetrics</a>
    #             </code> in the <i>Amazon RDS Performance Insights API
    # 				Reference</i>.</p>
    #          <p>Amazon RDS Performance Insights enables you to monitor and explore different
    #    		dimensions of database load based on data captured from a running DB instance.
    #    		DB load is measured as average active sessions. Performance Insights provides the
    #    		data to API consumers as a two-dimensional time-series dataset. The time dimension
    #    		provides DB load data for each time point in the queried time range. Each time point
    #    		decomposes overall load in relation to the requested dimensions, measured at that
    #    		time point. Examples include SQL, Wait event, User, and Host. </p>
    #    	
    #    	     <ul>
    #             <li>
    #    			         <p>To learn more about Performance Insights and Amazon Aurora DB instances, go to the <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights.html"> Amazon Aurora User Guide</a>.
    #    			</p>
    #    		       </li>
    #             <li>
    #    			         <p>To learn more about Performance Insights and Amazon RDS DB instances, go to the <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html"> Amazon RDS User Guide</a>.
    #    			</p>
    #    		       </li>
    #          </ul>
    #
    # @!attribute metric
    #   <p>The name of the meteric used used when querying an Performance Insights
    #   				<code>GetResourceMetrics</code> API for anomaly metrics.</p>
    #
    #   		       <p>Valid values for <code>Metric</code> are:</p>
    #
    #   		       <ul>
    #               <li>
    #   				           <p>
    #   					             <code>db.load.avg</code> - a scaled representation of the number of active sessions for the
    #   					database engine.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <code>db.sampledload.avg</code> - the raw number of active sessions for the database
    #   					engine.</p>
    #   			         </li>
    #            </ul>
    #   		       <p>If the number of active sessions is less than an internal Performance Insights threshold,
    #   				<code>db.load.avg</code> and <code>db.sampledload.avg</code> are the same value. If
    #   			the number of active sessions is greater than the internal threshold, Performance Insights samples the active sessions, with
    #   				<code>db.load.avg</code> showing the scaled values, <code>db.sampledload.avg</code>
    #   			showing the raw values, and <code>db.sampledload.avg</code> less than
    #   				<code>db.load.avg</code>. For most use cases, you can query <code>db.load.avg</code>
    #   			only. </p>
    #
    #   @return [String]
    #
    # @!attribute group_by
    #   <p>The specification for how to aggregate the data points from a Performance Insights
    #   				<code>GetResourceMetrics</code> API query. The Performance Insights query returns all of the
    #   			dimensions within that group, unless you provide the names of specific dimensions within
    #   			that group. You can also request that Performance Insights return a limited number of values for a
    #   			dimension.</p>
    #
    #   @return [PerformanceInsightsMetricDimensionGroup]
    #
    # @!attribute filter
    #   <p>One or more filters to apply to a Performance Insights <code>GetResourceMetrics</code> API query.
    #   			Restrictions:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>Any number of filters by the same dimension, as specified in the
    #   						<code>GroupBy</code> parameter.</p>
    #   			         </li>
    #               <li>
    #   				           <p>A single filter for any other dimension in this dimension group.</p>
    #   			         </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    PerformanceInsightsMetricQuery = ::Struct.new(
      :metric,
      :group_by,
      :filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about Performance Insights metrics.</p>
    #          <p>Amazon RDS Performance Insights enables you to monitor and explore different
    #    		dimensions of database load based on data captured from a running DB instance.
    #    		DB load is measured as average active sessions. Performance Insights provides the
    #    		data to API consumers as a two-dimensional time-series dataset. The time dimension
    #    		provides DB load data for each time point in the queried time range. Each time point
    #    		decomposes overall load in relation to the requested dimensions, measured at that
    #    		time point. Examples include SQL, Wait event, User, and Host. </p>
    #    	
    #    	     <ul>
    #             <li>
    #    			         <p>To learn more about Performance Insights and Amazon Aurora DB instances, go to the <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights.html"> Amazon Aurora User Guide</a>.
    #    			</p>
    #    		       </li>
    #             <li>
    #    			         <p>To learn more about Performance Insights and Amazon RDS DB instances, go to the <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html"> Amazon RDS User Guide</a>.
    #    			</p>
    #    		       </li>
    #          </ul>
    #
    # @!attribute metric_display_name
    #   <p>The name used for a specific Performance Insights metric.</p>
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>The unit of measure for a metric. For example, a session or a process.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_query
    #   <p>A single query to be processed for the metric. For more information, see <code>
    #                  <a href="https://docs.aws.amazon.com/devops-guru/latest/APIReference/API_PerformanceInsightsMetricQuery.html">PerformanceInsightsMetricQuery</a>
    #               </code>.</p>
    #
    #   @return [PerformanceInsightsMetricQuery]
    #
    # @!attribute reference_data
    #   <p> For more information, see <code>
    #                  <a href="https://docs.aws.amazon.com/devops-guru/latest/APIReference/API_PerformanceInsightsReferenceData.html">PerformanceInsightsReferenceData</a>
    #               </code>. </p>
    #
    #   @return [Array<PerformanceInsightsReferenceData>]
    #
    # @!attribute stats_at_anomaly
    #   <p>The metric statistics during the anomalous period detected by DevOps Guru;</p>
    #
    #   @return [Array<PerformanceInsightsStat>]
    #
    # @!attribute stats_at_baseline
    #   <p>Typical metric statistics that are not considered anomalous. When DevOps Guru analyzes
    #   			metrics, it compares them to <code>StatsAtBaseline</code> to help determine if they are
    #   			anomalous.</p>
    #
    #   @return [Array<PerformanceInsightsStat>]
    #
    PerformanceInsightsMetricsDetail = ::Struct.new(
      :metric_display_name,
      :unit,
      :metric_query,
      :reference_data,
      :stats_at_anomaly,
      :stats_at_baseline,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Reference scalar values and other metrics that DevOps Guru displays on a graph in its
    # 			console along with the actual metrics it analyzed. Compare these reference values to
    # 			your actual metrics to help you understand anomalous behavior that DevOps Guru
    # 			detected.</p>
    #
    # @!attribute reference_scalar
    #   <p>A scalar value DevOps Guru for a metric that DevOps Guru compares to actual metric values. This
    #   			reference value is used to determine if an actual metric value should be considered
    #   			anomalous.</p>
    #
    #   @return [PerformanceInsightsReferenceScalar]
    #
    # @!attribute reference_metric
    #   <p>A metric that DevOps Guru compares to actual metric values. This reference metric is used to
    #   			determine if an actual metric should be considered anomalous.</p>
    #
    #   @return [PerformanceInsightsReferenceMetric]
    #
    PerformanceInsightsReferenceComparisonValues = ::Struct.new(
      :reference_scalar,
      :reference_metric,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Reference data used to evaluate Performance Insights to determine if its performance is anomalous or
    # 			not.</p>
    #
    # @!attribute name
    #   <p>The name of the reference data.</p>
    #
    #   @return [String]
    #
    # @!attribute comparison_values
    #   <p>The specific reference values used to evaluate the Performance Insights. For more information, see
    #   					<code>
    #                  <a href="https://docs.aws.amazon.com/devops-guru/latest/APIReference/API_PerformanceInsightsReferenceComparisonValues.html">PerformanceInsightsReferenceComparisonValues</a>
    #               </code>. </p>
    #
    #   @return [PerformanceInsightsReferenceComparisonValues]
    #
    PerformanceInsightsReferenceData = ::Struct.new(
      :name,
      :comparison_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a reference metric used to evaluate Performance Insights.</p>
    #
    # @!attribute metric_query
    #   <p>A query to be processed on the metric.</p>
    #
    #   @return [PerformanceInsightsMetricQuery]
    #
    PerformanceInsightsReferenceMetric = ::Struct.new(
      :metric_query,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A reference value to compare Performance Insights metrics against to determine if the metrics
    # 			demonstrate anomalous behavior.</p>
    #
    # @!attribute value
    #   <p>The reference value.</p>
    #
    #   @return [Float]
    #
    PerformanceInsightsReferenceScalar = ::Struct.new(
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A statistic in a Performance Insights collection.</p>
    #
    # @!attribute type
    #   <p>The statistic type.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the statistic.</p>
    #
    #   @return [Float]
    #
    PerformanceInsightsStat = ::Struct.new(
      :type,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The time range during which anomalous behavior in a proactive anomaly or an insight
    # 			is expected to occur. </p>
    #
    # @!attribute start_time
    #   <p> The time range during which a metric limit is expected to be exceeded. This applies
    #   			to proactive insights only. </p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p> The time when the behavior in a proactive insight is expected to end. </p>
    #
    #   @return [Time]
    #
    PredictionTimeRange = ::Struct.new(
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an anomaly. This object is returned by
    # 			<code>ListAnomalies</code>.</p>
    #
    # @!attribute id
    #   <p> The ID of a proactive anomaly. </p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>The severity of the anomaly. The severity of anomalies that generate
    #   	an insight determine that insight's severity. For more information, see
    #   	<a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html understanding-insights-severities">Understanding
    #   	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>
    #
    #   Enum, one of: ["LOW", "MEDIUM", "HIGH"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> The status of a proactive anomaly. </p>
    #
    #   Enum, one of: ["ONGOING", "CLOSED"]
    #
    #   @return [String]
    #
    # @!attribute update_time
    #   <p> The time of the anomaly's most recent update. </p>
    #
    #   @return [Time]
    #
    # @!attribute anomaly_time_range
    #   <p> A time range that specifies when the observed unusual behavior in an anomaly started
    #   			and ended. This is different from <code>AnomalyReportedTimeRange</code>, which specifies
    #   			the time range when DevOps Guru opens and then closes an anomaly. </p>
    #
    #   @return [AnomalyTimeRange]
    #
    # @!attribute anomaly_reported_time_range
    #   <p>
    #   			An <code>AnomalyReportedTimeRange</code> object that specifies the time range between when the anomaly is opened and the time when it is closed.
    #   		</p>
    #
    #   @return [AnomalyReportedTimeRange]
    #
    # @!attribute prediction_time_range
    #   <p> The time range during which anomalous behavior in a proactive anomaly or an insight
    #   			is expected to occur. </p>
    #
    #   @return [PredictionTimeRange]
    #
    # @!attribute source_details
    #   <p> Details about the source of the analyzed operational data that triggered the anomaly.
    #   			The one supported source is Amazon CloudWatch metrics. </p>
    #
    #   @return [AnomalySourceDetails]
    #
    # @!attribute associated_insight_id
    #   <p> The ID of the insight that contains this anomaly. An insight is composed of related
    #   			anomalies. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    #   @return [ResourceCollection]
    #
    # @!attribute limit
    #   <p> A threshold that was exceeded by behavior in analyzed resources. Exceeding this
    #   			threshold is related to the anomalous behavior that generated this anomaly. </p>
    #
    #   @return [Float]
    #
    # @!attribute source_metadata
    #   <p>The metadata for the anomaly.</p>
    #
    #   @return [AnomalySourceMetadata]
    #
    # @!attribute anomaly_resources
    #   <p>Information about a resource in which DevOps Guru detected anomalous behavior.</p>
    #
    #   @return [Array<AnomalyResource>]
    #
    ProactiveAnomaly = ::Struct.new(
      :id,
      :severity,
      :status,
      :update_time,
      :anomaly_time_range,
      :anomaly_reported_time_range,
      :prediction_time_range,
      :source_details,
      :associated_insight_id,
      :resource_collection,
      :limit,
      :source_metadata,
      :anomaly_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a proactive anomaly. This object is returned by
    # 				<code>DescribeAnomaly.</code>
    #          </p>
    #
    # @!attribute id
    #   <p>The ID of the anomaly.</p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>The severity of the anomaly. The severity of anomalies that generate
    #   	an insight determine that insight's severity. For more information, see
    #   	<a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html understanding-insights-severities">Understanding
    #   	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>
    #
    #   Enum, one of: ["LOW", "MEDIUM", "HIGH"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the anomaly.</p>
    #
    #   Enum, one of: ["ONGOING", "CLOSED"]
    #
    #   @return [String]
    #
    # @!attribute update_time
    #   <p> The time of the anomaly's most recent update. </p>
    #
    #   @return [Time]
    #
    # @!attribute anomaly_time_range
    #   <p> A time range that specifies when the observed unusual behavior in an anomaly started
    #   			and ended. This is different from <code>AnomalyReportedTimeRange</code>, which specifies
    #   			the time range when DevOps Guru opens and then closes an anomaly. </p>
    #
    #   @return [AnomalyTimeRange]
    #
    # @!attribute anomaly_reported_time_range
    #   <p>
    #   			An <code>AnomalyReportedTimeRange</code> object that specifies the time range between when the anomaly is opened and the time when it is closed.
    #   		</p>
    #
    #   @return [AnomalyReportedTimeRange]
    #
    # @!attribute prediction_time_range
    #   <p> The time range during which anomalous behavior in a proactive anomaly or an insight
    #   			is expected to occur. </p>
    #
    #   @return [PredictionTimeRange]
    #
    # @!attribute source_details
    #   <p> Details about the source of the analyzed operational data that triggered the anomaly.
    #   			The one supported source is Amazon CloudWatch metrics. </p>
    #
    #   @return [AnomalySourceDetails]
    #
    # @!attribute associated_insight_id
    #   <p> The ID of the insight that contains this anomaly. An insight is composed of related
    #   			anomalies. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    #   @return [ResourceCollection]
    #
    # @!attribute limit
    #   <p> A threshold that was exceeded by behavior in analyzed resources. Exceeding this
    #   			threshold is related to the anomalous behavior that generated this anomaly. </p>
    #
    #   @return [Float]
    #
    # @!attribute source_metadata
    #   <p>The metadata of the source which detects proactive anomalies.</p>
    #
    #   @return [AnomalySourceMetadata]
    #
    # @!attribute anomaly_resources
    #   <p>Information about a resource in which DevOps Guru detected anomalous behavior.</p>
    #
    #   @return [Array<AnomalyResource>]
    #
    ProactiveAnomalySummary = ::Struct.new(
      :id,
      :severity,
      :status,
      :update_time,
      :anomaly_time_range,
      :anomaly_reported_time_range,
      :prediction_time_range,
      :source_details,
      :associated_insight_id,
      :resource_collection,
      :limit,
      :source_metadata,
      :anomaly_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a proactive insight. This object is returned by
    # 				<code>ListInsights</code>.</p>
    #
    # @!attribute id
    #   <p>The ID of the proactive insight. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the proactive insight. </p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>The severity of the insight. For more information, see
    #   	<a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html understanding-insights-severities">Understanding
    #   	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>
    #
    #   Enum, one of: ["LOW", "MEDIUM", "HIGH"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the proactive insight. </p>
    #
    #   Enum, one of: ["ONGOING", "CLOSED"]
    #
    #   @return [String]
    #
    # @!attribute insight_time_range
    #   <p> A time ranged that specifies when the observed behavior in an insight started and
    #   			ended. </p>
    #
    #   @return [InsightTimeRange]
    #
    # @!attribute prediction_time_range
    #   <p> The time range during which anomalous behavior in a proactive anomaly or an insight
    #   			is expected to occur. </p>
    #
    #   @return [PredictionTimeRange]
    #
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    #   @return [ResourceCollection]
    #
    # @!attribute ssm_ops_item_id
    #   <p> The ID of the Amazon Web Services System Manager OpsItem created for this insight. You must enable
    #   			the creation of OpstItems insights before they are created for each insight. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Describes the proactive insight.</p>
    #
    #   @return [String]
    #
    ProactiveInsight = ::Struct.new(
      :id,
      :name,
      :severity,
      :status,
      :insight_time_range,
      :prediction_time_range,
      :resource_collection,
      :ssm_ops_item_id,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a proactive insight. This object is returned by
    # 				<code>DescribeInsight.</code>
    #          </p>
    #
    # @!attribute id
    #   <p>The ID of the proactive insight. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the proactive insight. </p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>The severity of the insight. For more information, see
    #   	<a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html understanding-insights-severities">Understanding
    #   	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>
    #
    #   Enum, one of: ["LOW", "MEDIUM", "HIGH"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the proactive insight. </p>
    #
    #   Enum, one of: ["ONGOING", "CLOSED"]
    #
    #   @return [String]
    #
    # @!attribute insight_time_range
    #   <p> A time ranged that specifies when the observed behavior in an insight started and
    #   			ended. </p>
    #
    #   @return [InsightTimeRange]
    #
    # @!attribute prediction_time_range
    #   <p> The time range during which anomalous behavior in a proactive anomaly or an insight
    #   			is expected to occur. </p>
    #
    #   @return [PredictionTimeRange]
    #
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    #   @return [ResourceCollection]
    #
    # @!attribute service_collection
    #   <p>A collection of the names of Amazon Web Services services.</p>
    #
    #   @return [ServiceCollection]
    #
    # @!attribute associated_resource_arns
    #   <p>The Amazon Resource Names (ARNs)
    #   	of the Amazon Web Services resources that generated this insight.</p>
    #
    #   @return [Array<String>]
    #
    ProactiveInsightSummary = ::Struct.new(
      :id,
      :name,
      :severity,
      :status,
      :insight_time_range,
      :prediction_time_range,
      :resource_collection,
      :service_collection,
      :associated_resource_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a proactive insight. This object is returned by
    # 				<code>DescribeInsight</code>.</p>
    #
    # @!attribute id
    #   <p>The ID of the insight summary.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute organizational_unit_id
    #   <p>The ID of the organizational unit.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the insight summary.</p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p> An array of severity values used to search for insights.
    #   			For more information, see
    #   	<a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html understanding-insights-severities">Understanding
    #   	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>
    #
    #   Enum, one of: ["LOW", "MEDIUM", "HIGH"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> An array of status values used to search for insights. </p>
    #
    #   Enum, one of: ["ONGOING", "CLOSED"]
    #
    #   @return [String]
    #
    # @!attribute insight_time_range
    #   <p> A time ranged that specifies when the observed behavior in an insight started and
    #   			ended. </p>
    #
    #   @return [InsightTimeRange]
    #
    # @!attribute prediction_time_range
    #   <p> The time range during which anomalous behavior in a proactive anomaly or an insight
    #   			is expected to occur. </p>
    #
    #   @return [PredictionTimeRange]
    #
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    #   @return [ResourceCollection]
    #
    # @!attribute service_collection
    #   <p>A collection of the names of Amazon Web Services services.</p>
    #
    #   @return [ServiceCollection]
    #
    ProactiveOrganizationInsightSummary = ::Struct.new(
      :id,
      :account_id,
      :organizational_unit_id,
      :name,
      :severity,
      :status,
      :insight_time_range,
      :prediction_time_range,
      :resource_collection,
      :service_collection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute insight_feedback
    #   <p> The feedback from customers is about the recommendations in this insight. </p>
    #
    #   @return [InsightFeedback]
    #
    PutFeedbackInput = ::Struct.new(
      :insight_feedback,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutFeedbackOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a reactive anomaly. This object is returned by
    # 				<code>ListAnomalies</code>.</p>
    #
    # @!attribute id
    #   <p>The ID of the reactive anomaly. </p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>The severity of the anomaly. The severity of anomalies that generate
    #   	an insight determine that insight's severity. For more information, see
    #   	<a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html understanding-insights-severities">Understanding
    #   	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>
    #
    #   Enum, one of: ["LOW", "MEDIUM", "HIGH"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> The status of the anomaly. </p>
    #
    #   Enum, one of: ["ONGOING", "CLOSED"]
    #
    #   @return [String]
    #
    # @!attribute anomaly_time_range
    #   <p> A time range that specifies when the observed unusual behavior in an anomaly started
    #   			and ended. This is different from <code>AnomalyReportedTimeRange</code>, which specifies
    #   			the time range when DevOps Guru opens and then closes an anomaly. </p>
    #
    #   @return [AnomalyTimeRange]
    #
    # @!attribute anomaly_reported_time_range
    #   <p>
    #   			An <code>AnomalyReportedTimeRange</code> object that specifies the time range between when the anomaly is opened and the time when it is closed.
    #   		</p>
    #
    #   @return [AnomalyReportedTimeRange]
    #
    # @!attribute source_details
    #   <p> Details about the source of the analyzed operational data that triggered the anomaly.
    #   			The one supported source is Amazon CloudWatch metrics. </p>
    #
    #   @return [AnomalySourceDetails]
    #
    # @!attribute associated_insight_id
    #   <p> The ID of the insight that contains this anomaly. An insight is composed of related
    #   			anomalies. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    #   @return [ResourceCollection]
    #
    # @!attribute type
    #   <p>The type of the reactive anomaly. It can be one of the following types.</p>
    #   	        <ul>
    #               <li>
    #   	   	          <p>
    #   	   		            <code>CAUSAL</code> - the anomaly can cause a new insight.</p>
    #   	           </li>
    #               <li>
    #   	   	          <p>
    #   	   		            <code>CONTEXTUAL</code> - the anomaly contains additional information about an insight or its causal anomaly.</p>
    #   	           </li>
    #            </ul>
    #
    #   Enum, one of: ["CAUSAL", "CONTEXTUAL"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the reactive anomaly.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the reactive anomaly.</p>
    #
    #   @return [String]
    #
    # @!attribute causal_anomaly_id
    #   <p>The ID of the causal anomaly that is associated with this
    #         reactive anomaly. The ID of a `CAUSAL` anomaly is always `NULL`.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_resources
    #   <p>The Amazon Web Services resources in which anomalous behavior was detected by DevOps Guru.</p>
    #
    #   @return [Array<AnomalyResource>]
    #
    ReactiveAnomaly = ::Struct.new(
      :id,
      :severity,
      :status,
      :anomaly_time_range,
      :anomaly_reported_time_range,
      :source_details,
      :associated_insight_id,
      :resource_collection,
      :type,
      :name,
      :description,
      :causal_anomaly_id,
      :anomaly_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a reactive anomaly. This object is returned by
    # 				<code>DescribeAnomaly.</code>
    #          </p>
    #
    # @!attribute id
    #   <p> The ID of the reactive anomaly. </p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>The severity of the anomaly. The severity of anomalies that generate
    #   	an insight determine that insight's severity. For more information, see
    #   	<a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html understanding-insights-severities">Understanding
    #   	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>
    #
    #   Enum, one of: ["LOW", "MEDIUM", "HIGH"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> The status of the reactive anomaly. </p>
    #
    #   Enum, one of: ["ONGOING", "CLOSED"]
    #
    #   @return [String]
    #
    # @!attribute anomaly_time_range
    #   <p> A time range that specifies when the observed unusual behavior in an anomaly started
    #   			and ended. This is different from <code>AnomalyReportedTimeRange</code>, which specifies
    #   			the time range when DevOps Guru opens and then closes an anomaly. </p>
    #
    #   @return [AnomalyTimeRange]
    #
    # @!attribute anomaly_reported_time_range
    #   <p>
    #   			An <code>AnomalyReportedTimeRange</code> object that specifies the time range between when the anomaly is opened and the time when it is closed.
    #   		</p>
    #
    #   @return [AnomalyReportedTimeRange]
    #
    # @!attribute source_details
    #   <p> Details about the source of the analyzed operational data that triggered the anomaly.
    #   			The one supported source is Amazon CloudWatch metrics. </p>
    #
    #   @return [AnomalySourceDetails]
    #
    # @!attribute associated_insight_id
    #   <p> The ID of the insight that contains this anomaly. An insight is composed of related
    #   			anomalies. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    #   @return [ResourceCollection]
    #
    # @!attribute type
    #   <p>The type of the reactive anomaly. It can be one of the following types.</p>
    #   	        <ul>
    #               <li>
    #   	   	          <p>
    #   	   		            <code>CAUSAL</code> - the anomaly can cause a new insight.</p>
    #   	           </li>
    #               <li>
    #   	   	          <p>
    #   	   		            <code>CONTEXTUAL</code> - the anomaly contains additional information about an insight or its causal anomaly.</p>
    #   	           </li>
    #            </ul>
    #
    #   Enum, one of: ["CAUSAL", "CONTEXTUAL"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the reactive anomaly.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the reactive anomaly.</p>
    #
    #   @return [String]
    #
    # @!attribute causal_anomaly_id
    #   <p>The ID of the causal anomaly that is associated with this
    #         reactive anomaly. The ID of a `CAUSAL` anomaly is always `NULL`.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_resources
    #   <p>The Amazon Web Services resources in which anomalous behavior was detected by DevOps Guru.</p>
    #
    #   @return [Array<AnomalyResource>]
    #
    ReactiveAnomalySummary = ::Struct.new(
      :id,
      :severity,
      :status,
      :anomaly_time_range,
      :anomaly_reported_time_range,
      :source_details,
      :associated_insight_id,
      :resource_collection,
      :type,
      :name,
      :description,
      :causal_anomaly_id,
      :anomaly_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about a reactive insight. This object is returned by
    # 				<code>ListInsights</code>. </p>
    #
    # @!attribute id
    #   <p> The ID of a reactive insight. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name of a reactive insight. </p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>The severity of the insight. For more information, see
    #   	<a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html understanding-insights-severities">Understanding
    #   	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>
    #
    #   Enum, one of: ["LOW", "MEDIUM", "HIGH"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> The status of a reactive insight. </p>
    #
    #   Enum, one of: ["ONGOING", "CLOSED"]
    #
    #   @return [String]
    #
    # @!attribute insight_time_range
    #   <p> A time ranged that specifies when the observed behavior in an insight started and
    #   			ended. </p>
    #
    #   @return [InsightTimeRange]
    #
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    #   @return [ResourceCollection]
    #
    # @!attribute ssm_ops_item_id
    #   <p> The ID of the Amazon Web Services System Manager OpsItem created for this insight. You must enable
    #   			the creation of OpstItems insights before they are created for each insight. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Describes the reactive insight.</p>
    #
    #   @return [String]
    #
    ReactiveInsight = ::Struct.new(
      :id,
      :name,
      :severity,
      :status,
      :insight_time_range,
      :resource_collection,
      :ssm_ops_item_id,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about a reactive insight. This object is returned by
    # 				<code>DescribeInsight.</code>
    #          </p>
    #
    # @!attribute id
    #   <p> The ID of a reactive summary. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name of a reactive insight. </p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>The severity of the insight. For more information, see
    #   	<a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html understanding-insights-severities">Understanding
    #   	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>
    #
    #   Enum, one of: ["LOW", "MEDIUM", "HIGH"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> The status of a reactive insight. </p>
    #
    #   Enum, one of: ["ONGOING", "CLOSED"]
    #
    #   @return [String]
    #
    # @!attribute insight_time_range
    #   <p> A time ranged that specifies when the observed behavior in an insight started and
    #   			ended. </p>
    #
    #   @return [InsightTimeRange]
    #
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    #   @return [ResourceCollection]
    #
    # @!attribute service_collection
    #   <p>A collection of the names of Amazon Web Services services.</p>
    #
    #   @return [ServiceCollection]
    #
    # @!attribute associated_resource_arns
    #   <p>The Amazon Resource Names (ARNs)
    #   	of the Amazon Web Services resources that generated this insight.</p>
    #
    #   @return [Array<String>]
    #
    ReactiveInsightSummary = ::Struct.new(
      :id,
      :name,
      :severity,
      :status,
      :insight_time_range,
      :resource_collection,
      :service_collection,
      :associated_resource_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a reactive insight. This object is returned by
    # 				<code>DescribeInsight</code>.</p>
    #
    # @!attribute id
    #   <p>The ID of the insight summary.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account. </p>
    #
    #   @return [String]
    #
    # @!attribute organizational_unit_id
    #   <p>The ID of the organizational unit.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the insight summary.</p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p> An array of severity values used to search for insights.
    #   			For more information, see
    #   	<a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/working-with-insights.html understanding-insights-severities">Understanding
    #   	insight severities</a> in the <i>Amazon DevOps Guru User Guide</i>.</p>
    #
    #   Enum, one of: ["LOW", "MEDIUM", "HIGH"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> An array of status values used to search for insights. </p>
    #
    #   Enum, one of: ["ONGOING", "CLOSED"]
    #
    #   @return [String]
    #
    # @!attribute insight_time_range
    #   <p> A time ranged that specifies when the observed behavior in an insight started and
    #   			ended. </p>
    #
    #   @return [InsightTimeRange]
    #
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    #   @return [ResourceCollection]
    #
    # @!attribute service_collection
    #   <p>A collection of the names of Amazon Web Services services.</p>
    #
    #   @return [ServiceCollection]
    #
    ReactiveOrganizationInsightSummary = ::Struct.new(
      :id,
      :account_id,
      :organizational_unit_id,
      :name,
      :severity,
      :status,
      :insight_time_range,
      :resource_collection,
      :service_collection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Recommendation information to help you remediate detected anomalous behavior that
    # 			generated an insight. </p>
    #
    # @!attribute description
    #   <p> A description of the problem. </p>
    #
    #   @return [String]
    #
    # @!attribute link
    #   <p> A hyperlink to information to help you address the problem. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name of the recommendation. </p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p> The reason DevOps Guru flagged the anomalous behavior as a problem. </p>
    #
    #   @return [String]
    #
    # @!attribute related_events
    #   <p> Events that are related to the problem. Use these events to learn more about what's
    #   			happening and to help address the issue. </p>
    #
    #   @return [Array<RecommendationRelatedEvent>]
    #
    # @!attribute related_anomalies
    #   <p> Anomalies that are related to the problem. Use these Anomalies to learn more about
    #   			what's happening and to help address the issue. </p>
    #
    #   @return [Array<RecommendationRelatedAnomaly>]
    #
    # @!attribute category
    #   <p>The category type of the recommendation.</p>
    #
    #   @return [String]
    #
    Recommendation = ::Struct.new(
      :description,
      :link,
      :name,
      :reason,
      :related_events,
      :related_anomalies,
      :category,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about an anomaly that is related to a recommendation. </p>
    #
    # @!attribute resources
    #   <p> An array of objects that represent resources in which DevOps Guru detected anomalous
    #   			behavior. Each object contains the name and type of the resource. </p>
    #
    #   @return [Array<RecommendationRelatedAnomalyResource>]
    #
    # @!attribute source_details
    #   <p> Information about where the anomalous behavior related the recommendation was found.
    #   			For example, details in Amazon CloudWatch metrics. </p>
    #
    #   @return [Array<RecommendationRelatedAnomalySourceDetail>]
    #
    # @!attribute anomaly_id
    #   <p>The ID of an anomaly that generated the insight with this recommendation.</p>
    #
    #   @return [String]
    #
    RecommendationRelatedAnomaly = ::Struct.new(
      :resources,
      :source_details,
      :anomaly_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about a resource in which DevOps Guru detected anomalous behavior. </p>
    #
    # @!attribute name
    #   <p> The name of the resource. </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p> The type of the resource. Resource types take the same form that is used by Amazon Web Services CloudFormation
    #   			resource type identifiers, <code>service-provider::service-name::data-type-name</code>.
    #   			For example, <code>AWS::RDS::DBCluster</code>. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services
    #   				resource and property types reference</a> in the <i>Amazon Web Services CloudFormation User
    #   				Guide</i>.</p>
    #
    #   @return [String]
    #
    RecommendationRelatedAnomalyResource = ::Struct.new(
      :name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Contains an array of <code>RecommendationRelatedCloudWatchMetricsSourceDetail</code>
    # 			objects that contain the name and namespace of an Amazon CloudWatch metric. </p>
    #
    # @!attribute cloud_watch_metrics
    #   <p> An array of <code>CloudWatchMetricsDetail</code> objects that contains information
    #   			about the analyzed metrics that displayed anomalous behavior. </p>
    #
    #   @return [Array<RecommendationRelatedCloudWatchMetricsSourceDetail>]
    #
    RecommendationRelatedAnomalySourceDetail = ::Struct.new(
      :cloud_watch_metrics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about an Amazon CloudWatch metric that is analyzed by DevOps Guru. It is one of many
    # 			analyzed metrics that are used to generate insights. </p>
    #
    # @!attribute metric_name
    #   <p>The name of the CloudWatch metric.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace of the CloudWatch metric. A namespace is a container for CloudWatch metrics.</p>
    #
    #   @return [String]
    #
    RecommendationRelatedCloudWatchMetricsSourceDetail = ::Struct.new(
      :metric_name,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about an event that is related to a recommendation. </p>
    #
    # @!attribute name
    #   <p> The name of the event. This corresponds to the <code>Name</code> field in an
    #   				<code>Event</code> object. </p>
    #
    #   @return [String]
    #
    # @!attribute resources
    #   <p> A <code>ResourceCollection</code> object that contains arrays of the names of Amazon Web Services
    #   			CloudFormation stacks. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    #   @return [Array<RecommendationRelatedEventResource>]
    #
    RecommendationRelatedEvent = ::Struct.new(
      :name,
      :resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about an Amazon Web Services resource that emitted and event that is related to a
    # 			recommendation in an insight. </p>
    #
    # @!attribute name
    #   <p> The name of the resource that emitted the event. This corresponds to the
    #   				<code>Name</code> field in an <code>EventResource</code> object. </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p> The type of the resource that emitted the event. This corresponds to the
    #   				<code>Type</code> field in an <code>EventResource</code> object. </p>
    #
    #   @return [String]
    #
    RecommendationRelatedEventResource = ::Struct.new(
      :name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p> The ID of the notification channel to be removed. </p>
    #
    #   @return [String]
    #
    RemoveNotificationChannelInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RemoveNotificationChannelOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    # 			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #           Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #       	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    # @!attribute cloud_formation
    #   <p> An array of the names of Amazon Web Services CloudFormation stacks. The stacks define Amazon Web Services resources that
    #   			DevOps Guru analyzes. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    #   @return [CloudFormationCollection]
    #
    # @!attribute tags
    #   <p>The Amazon Web Services tags that are used by resources in the resource collection.</p>
    #   		       <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
    #      		tagging, so you can assign the same tag to resources from different services to indicate
    #      		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
    #      		table resource that you assign to an Lambda function. For more information about
    #      		using tags, see the <a href="https://d1.awsstatic.com/whitepapers/aws-tagging-best-practices.pdf">Tagging
    #      			best practices</a> whitepaper. </p>
    #      	     <p>Each Amazon Web Services tag has two parts. </p>
    #      	     <ul>
    #               <li>
    #      			         <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
    #      				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #      				<i>keys</i> are case-sensitive.</p>
    #      		       </li>
    #               <li>
    #      			         <p>An optional field known as a tag <i>value</i> (for example,
    #      				<code>111122223333</code>, <code>Production</code>, or a team
    #      				name). Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive.</p>
    #      		       </li>
    #            </ul>
    #      	     <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
    #      	     <important>
    #   		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>Devops-guru-deployment-application</code> or
    #   			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
    #   			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #   	        </important>
    #
    #   @return [Array<TagCollection>]
    #
    ResourceCollection = ::Struct.new(
      :cloud_formation,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about a filter used to specify which Amazon Web Services resources are analyzed for
    # 			anomalous behavior by DevOps Guru. </p>
    #
    # @!attribute cloud_formation
    #   <p> Information about Amazon Web Services CloudFormation stacks. You can use up to 500
    #   			stacks to specify which Amazon Web Services resources in your account to analyze. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html">Stacks</a> in the
    #   				<i>Amazon Web Services CloudFormation User Guide</i>. </p>
    #
    #   @return [CloudFormationCollectionFilter]
    #
    # @!attribute tags
    #   <p>The Amazon Web Services tags used to filter the resources in the resource collection.</p>
    #   		       <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
    #      		tagging, so you can assign the same tag to resources from different services to indicate
    #      		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
    #      		table resource that you assign to an Lambda function. For more information about
    #      		using tags, see the <a href="https://d1.awsstatic.com/whitepapers/aws-tagging-best-practices.pdf">Tagging
    #      			best practices</a> whitepaper. </p>
    #      	     <p>Each Amazon Web Services tag has two parts. </p>
    #      	     <ul>
    #               <li>
    #      			         <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
    #      				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #      				<i>keys</i> are case-sensitive.</p>
    #      		       </li>
    #               <li>
    #      			         <p>An optional field known as a tag <i>value</i> (for example,
    #      				<code>111122223333</code>, <code>Production</code>, or a team
    #      				name). Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive.</p>
    #      		       </li>
    #            </ul>
    #      	     <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
    #      	     <important>
    #   		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>Devops-guru-deployment-application</code> or
    #   			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
    #   			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #   	        </important>
    #
    #   @return [Array<TagCollectionFilter>]
    #
    ResourceCollectionFilter = ::Struct.new(
      :cloud_formation,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceCollectionType
    #
    module ResourceCollectionType
      # No documentation available.
      #
      AWS_CLOUD_FORMATION = "AWS_CLOUD_FORMATION"

      # No documentation available.
      #
      AWS_SERVICE = "AWS_SERVICE"

      # No documentation available.
      #
      AWS_TAGS = "AWS_TAGS"
    end

    # <p>A requested resource could not be found</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p> The ID of the Amazon Web Services resource that could not be found. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p> The type of the Amazon Web Services resource that could not be found. </p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Specifies one or more severity values and one or more status values that are used to
    # 			search for insights. </p>
    #
    # @!attribute severities
    #   <p> An array of severity values used to search for insights. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute statuses
    #   <p> An array of status values used to search for insights. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    #   @return [ResourceCollection]
    #
    # @!attribute service_collection
    #   <p>A collection of the names of Amazon Web Services services.</p>
    #
    #   @return [ServiceCollection]
    #
    SearchInsightsFilters = ::Struct.new(
      :severities,
      :statuses,
      :resource_collection,
      :service_collection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute start_time_range
    #   <p> The start of the time range passed in. Returned insights occurred after this time.
    #   		</p>
    #
    #   @return [StartTimeRange]
    #
    # @!attribute filters
    #   <p> A <code>SearchInsightsFilters</code> object that is used to set the severity and
    #   			status filters on your insight search. </p>
    #
    #   @return [SearchInsightsFilters]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p> The type of insights you are searching for (<code>REACTIVE</code> or
    #   				<code>PROACTIVE</code>). </p>
    #
    #   Enum, one of: ["REACTIVE", "PROACTIVE"]
    #
    #   @return [String]
    #
    SearchInsightsInput = ::Struct.new(
      :start_time_range,
      :filters,
      :max_results,
      :next_token,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute proactive_insights
    #   <p> The returned proactive insights. </p>
    #
    #   @return [Array<ProactiveInsightSummary>]
    #
    # @!attribute reactive_insights
    #   <p> The returned reactive insights. </p>
    #
    #   @return [Array<ReactiveInsightSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    SearchInsightsOutput = ::Struct.new(
      :proactive_insights,
      :reactive_insights,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Filters you can use to specify which events are returned when <code>ListEvents</code>
    # 			is called. </p>
    #
    # @!attribute severities
    #   <p> An array of severity values used to search for insights. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute statuses
    #   <p> An array of status values used to search for insights. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_collection
    #   <p> A collection of Amazon Web Services resources supported by DevOps Guru.
    #   			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    #   @return [ResourceCollection]
    #
    # @!attribute service_collection
    #   <p>A collection of the names of Amazon Web Services services.</p>
    #
    #   @return [ServiceCollection]
    #
    SearchOrganizationInsightsFilters = ::Struct.new(
      :severities,
      :statuses,
      :resource_collection,
      :service_collection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_ids
    #   <p>The ID of the Amazon Web Services account. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute start_time_range
    #   <p> A time range used to specify when the behavior of an insight or anomaly started.
    #   		</p>
    #
    #   @return [StartTimeRange]
    #
    # @!attribute filters
    #   <p> A <code>SearchOrganizationInsightsFilters</code> object that is used to set the
    #   			severity and status filters on your insight search. </p>
    #
    #   @return [SearchOrganizationInsightsFilters]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p> The type of insights you are searching for (<code>REACTIVE</code> or
    #   				<code>PROACTIVE</code>). </p>
    #
    #   Enum, one of: ["REACTIVE", "PROACTIVE"]
    #
    #   @return [String]
    #
    SearchOrganizationInsightsInput = ::Struct.new(
      :account_ids,
      :start_time_range,
      :filters,
      :max_results,
      :next_token,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute proactive_insights
    #   <p>An integer that specifies the number of open proactive insights in your Amazon Web Services
    #   			account.</p>
    #
    #   @return [Array<ProactiveInsightSummary>]
    #
    # @!attribute reactive_insights
    #   <p>An integer that specifies the number of open reactive insights in your Amazon Web Services
    #   			account.</p>
    #
    #   @return [Array<ReactiveInsightSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve
    #      the next page of results for this operation. If there are no more pages, this value is null.</p>
    #
    #   @return [String]
    #
    SearchOrganizationInsightsOutput = ::Struct.new(
      :proactive_insights,
      :reactive_insights,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A collection of the names of Amazon Web Services services.</p>
    #
    # @!attribute service_names
    #   <p>An array of strings that each specifies the name of an Amazon Web Services service.</p>
    #
    #   @return [Array<String>]
    #
    ServiceCollection = ::Struct.new(
      :service_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the health of an Amazon Web Services service.</p>
    #
    # @!attribute service_name
    #   <p>The name of the Amazon Web Services service.</p>
    #
    #   Enum, one of: ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"]
    #
    #   @return [String]
    #
    # @!attribute insight
    #   <p>Represents the health of an Amazon Web Services service. This is a <code>ServiceInsightHealth</code>
    #   			that contains the number of open proactive and reactive insights for this
    #   			service.</p>
    #
    #   @return [ServiceInsightHealth]
    #
    ServiceHealth = ::Struct.new(
      :service_name,
      :insight,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the number of open proactive and reactive insights in an analyzed Amazon Web Services
    # 			service.</p>
    #
    # @!attribute open_proactive_insights
    #   <p>The number of open proactive insights in the Amazon Web Services service</p>
    #
    #   @return [Integer]
    #
    # @!attribute open_reactive_insights
    #   <p>The number of open reactive insights in the Amazon Web Services service</p>
    #
    #   @return [Integer]
    #
    ServiceInsightHealth = ::Struct.new(
      :open_proactive_insights,
      :open_reactive_insights,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.open_proactive_insights ||= 0
        self.open_reactive_insights ||= 0
      end

    end

    # <p> Information about the integration of DevOps Guru with another Amazon Web Services service, such as
    # 			Amazon Web Services Systems Manager. </p>
    #
    # @!attribute ops_center
    #   <p> Information about whether DevOps Guru is configured to create an OpsItem in Amazon Web Services Systems Manager
    #   			OpsCenter for each created insight. </p>
    #
    #   @return [OpsCenterIntegration]
    #
    ServiceIntegrationConfig = ::Struct.new(
      :ops_center,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ServiceName
    #
    module ServiceName
      # No documentation available.
      #
      API_GATEWAY = "API_GATEWAY"

      # No documentation available.
      #
      APPLICATION_ELB = "APPLICATION_ELB"

      # No documentation available.
      #
      AUTO_SCALING_GROUP = "AUTO_SCALING_GROUP"

      # No documentation available.
      #
      CLOUD_FRONT = "CLOUD_FRONT"

      # No documentation available.
      #
      DYNAMO_DB = "DYNAMO_DB"

      # No documentation available.
      #
      EC2 = "EC2"

      # No documentation available.
      #
      ECS = "ECS"

      # No documentation available.
      #
      EKS = "EKS"

      # No documentation available.
      #
      ELASTIC_BEANSTALK = "ELASTIC_BEANSTALK"

      # No documentation available.
      #
      ELASTI_CACHE = "ELASTI_CACHE"

      # No documentation available.
      #
      ELB = "ELB"

      # No documentation available.
      #
      ES = "ES"

      # No documentation available.
      #
      KINESIS = "KINESIS"

      # No documentation available.
      #
      LAMBDA = "LAMBDA"

      # No documentation available.
      #
      NAT_GATEWAY = "NAT_GATEWAY"

      # No documentation available.
      #
      NETWORK_ELB = "NETWORK_ELB"

      # No documentation available.
      #
      RDS = "RDS"

      # No documentation available.
      #
      REDSHIFT = "REDSHIFT"

      # No documentation available.
      #
      ROUTE_53 = "ROUTE_53"

      # No documentation available.
      #
      S3 = "S3"

      # No documentation available.
      #
      SAGE_MAKER = "SAGE_MAKER"

      # No documentation available.
      #
      SNS = "SNS"

      # No documentation available.
      #
      SQS = "SQS"

      # No documentation available.
      #
      STEP_FUNCTIONS = "STEP_FUNCTIONS"

      # No documentation available.
      #
      SWF = "SWF"
    end

    # <p>The request contains a value that exceeds a maximum quota.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains information about the estimated monthly cost to analyze an
    # 			Amazon Web Services resource. For more information,
    # 			see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html">Estimate your
    # 			Amazon DevOps Guru costs</a> and
    # 			<a href="http://aws.amazon.com/devops-guru/pricing/">Amazon DevOps Guru pricing</a>.</p>
    #
    # @!attribute type
    #   <p>The type of the Amazon Web Services resource.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the resource. The resource is <code>ACTIVE</code> if it produces metrics,
    #   			events, or logs within an hour, otherwise it is <code>INACTIVE</code>. You pay for the
    #   			number of active Amazon Web Services resource hours analyzed for each resource. Inactive resources are
    #   			not charged. </p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute count
    #   <p>The number of active resources analyzed for this service to create a monthly cost
    #   			estimate.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unit_cost
    #   <p>The price per hour to analyze the resources in the service.
    #   			For more information,
    #   			see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html">Estimate your
    #   			Amazon DevOps Guru costs</a> and
    #   			<a href="http://aws.amazon.com/devops-guru/pricing/">Amazon DevOps Guru pricing</a>.</p>
    #
    #   @return [Float]
    #
    # @!attribute cost
    #   <p>The total estimated monthly cost to analyze the active resources for this
    #   			resource.</p>
    #
    #   @return [Float]
    #
    ServiceResourceCost = ::Struct.new(
      :type,
      :state,
      :count,
      :unit_cost,
      :cost,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.count ||= 0
        self.unit_cost ||= 0
        self.cost ||= 0
      end

    end

    # <p> Contains the Amazon Resource Name (ARN) of an Amazon Simple Notification Service topic. </p>
    #          <p>If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission
    # 				to it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. DevOps Guru only supports standard SNS topics.
    # 				For more information, see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html">Permissions
    # 				for cross account Amazon SNS topics</a>.</p>
    # 				     <p>If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission to it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. For more information, see Permissions for cross account Amazon SNS topics.</p>
    # 				     <p>If you use an Amazon SNS topic that is encrypted by an Amazon Web Services Key Management Service customer-managed key (CMK), then you must add permissions
    # 				to the CMK. For more information, see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html">Permissions for
    # 				Amazon Web Services KMS–encrypted Amazon SNS topics</a>.</p>
    #
    # @!attribute topic_arn
    #   <p> The Amazon Resource Name (ARN) of an Amazon Simple Notification Service topic. </p>
    #
    #   @return [String]
    #
    SnsChannelConfig = ::Struct.new(
      :topic_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_collection
    #   <p>The collection of Amazon Web Services resources used to create a monthly DevOps Guru cost estimate.</p>
    #
    #   @return [CostEstimationResourceCollectionFilter]
    #
    # @!attribute client_token
    #   <p>The idempotency token used to identify each cost estimate request.</p>
    #
    #   @return [String]
    #
    StartCostEstimationInput = ::Struct.new(
      :resource_collection,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartCostEstimationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A time range used to specify when the behavior of an insight or anomaly started.
    # 		</p>
    #
    # @!attribute from_time
    #   <p> The start time of the time range. </p>
    #
    #   @return [Time]
    #
    # @!attribute to_time
    #   <p> The end time of the time range. </p>
    #
    #   @return [Time]
    #
    StartTimeRange = ::Struct.new(
      :from_time,
      :to_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A collection of Amazon Web Services stags.</p>
    #          <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
    #    		tagging, so you can assign the same tag to resources from different services to indicate
    #    		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
    #    		table resource that you assign to an Lambda function. For more information about
    #    		using tags, see the <a href="https://d1.awsstatic.com/whitepapers/aws-tagging-best-practices.pdf">Tagging
    #    			best practices</a> whitepaper. </p>
    #    	     <p>Each Amazon Web Services tag has two parts. </p>
    #    	     <ul>
    #             <li>
    #    			         <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
    #    				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #    				<i>keys</i> are case-sensitive.</p>
    #    		       </li>
    #             <li>
    #    			         <p>An optional field known as a tag <i>value</i> (for example,
    #    				<code>111122223333</code>, <code>Production</code>, or a team
    #    				name). Omitting the tag <i>value</i> is the same as using an empty
    #    				string. Like tag <i>keys</i>, tag <i>values</i> are
    #    				case-sensitive.</p>
    #    		       </li>
    #          </ul>
    #    	     <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
    #    	     <important>
    # 		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    # 			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    # 			<code>Devops-guru-deployment-application</code> or
    # 			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
    # 			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
    # 			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    # 			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
    # 			application might be <code>Devops-Guru-production-application/RDS</code> or
    # 			<code>Devops-Guru-production-application/containers</code>.</p>
    # 	        </important>
    #
    # @!attribute app_boundary_key
    #   <p>An Amazon Web Services tag <i>key</i> that is used to identify the Amazon Web Services resources that
    #         	DevOps Guru analyzes. All Amazon Web Services resources in your account and Region tagged with this <i>key</i> make
    #         up your DevOps Guru application and analysis boundary.</p>
    #            <important>
    #   		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>Devops-guru-deployment-application</code> or
    #   			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
    #   			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #   	        </important>
    #
    #   @return [String]
    #
    # @!attribute tag_values
    #   <p>The values in an Amazon Web Services tag collection.</p>
    #            <p>The tag's <i>value</i> is an optional field used to associate a string with
    #   					the tag <i>key</i> (for example, <code>111122223333</code>, <code>Production</code>, or a team
    #      				name). The <i>key</i> and <i>value</i> are the tag's <i>key</i> pair.
    #      				Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive. You can specify a maximum of 256 characters for a tag value.</p>
    #
    #   @return [Array<String>]
    #
    TagCollection = ::Struct.new(
      :app_boundary_key,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A collection of Amazon Web Services tags used to filter insights. This is used to return insights
    # 			generated from only resources that contain the tags in the tag collection.</p>
    #
    # @!attribute app_boundary_key
    #   <p>An Amazon Web Services tag <i>key</i> that is used to identify the Amazon Web Services resources that
    #         	DevOps Guru analyzes. All Amazon Web Services resources in your account and Region tagged with this <i>key</i> make
    #         up your DevOps Guru application and analysis boundary.</p>
    #            <important>
    #   		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>Devops-guru-deployment-application</code> or
    #   			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
    #   			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #   	        </important>
    #
    #   @return [String]
    #
    # @!attribute tag_values
    #   <p>The values in an Amazon Web Services tag collection.</p>
    #            <p>The tag's <i>value</i> is an optional field used to associate a string with
    #   					the tag <i>key</i> (for example, <code>111122223333</code>, <code>Production</code>, or a team
    #      				name). The <i>key</i> and <i>value</i> are the tag's <i>key</i> pair.
    #      				Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive. You can specify a maximum of 256 characters for a tag value.</p>
    #
    #   @return [Array<String>]
    #
    TagCollectionFilter = ::Struct.new(
      :app_boundary_key,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a collection of Amazon Web Services resources that are identified by an Amazon Web Services tag.
    # 			This collection of resources is used to create a monthly cost estimate for DevOps Guru to
    # 			analyze Amazon Web Services resources. The maximum number of tags you can specify for a cost estimate
    # 			is one. The estimate created is for the cost to analyze the Amazon Web Services resources defined by
    # 			the tag. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html">Stacks</a> in the
    # 				<i>Amazon Web Services CloudFormation User Guide</i>.</p>
    #
    # @!attribute app_boundary_key
    #   <p>An Amazon Web Services tag <i>key</i> that is used to identify the Amazon Web Services resources that
    #         	DevOps Guru analyzes. All Amazon Web Services resources in your account and Region tagged with this <i>key</i> make
    #         up your DevOps Guru application and analysis boundary.</p>
    #            <important>
    #   		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>Devops-guru-deployment-application</code> or
    #   			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
    #   			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #   	        </important>
    #
    #   @return [String]
    #
    # @!attribute tag_values
    #   <p>The values in an Amazon Web Services tag collection.</p>
    #            <p>The tag's <i>value</i> is an optional field used to associate a string with
    #   					the tag <i>key</i> (for example, <code>111122223333</code>, <code>Production</code>, or a team
    #      				name). The <i>key</i> and <i>value</i> are the tag's <i>key</i> pair.
    #      				Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive. You can specify a maximum of 256 characters for a tag value.</p>
    #
    #   @return [Array<String>]
    #
    TagCostEstimationResourceCollectionFilter = ::Struct.new(
      :app_boundary_key,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about the health of Amazon Web Services resources in your account that are specified by
    # 			an Amazon Web Services tag <i>key</i>. </p>
    #
    # @!attribute app_boundary_key
    #   <p>An Amazon Web Services tag <i>key</i> that is used to identify the Amazon Web Services resources that
    #         	DevOps Guru analyzes. All Amazon Web Services resources in your account and Region tagged with this <i>key</i> make
    #         up your DevOps Guru application and analysis boundary.</p>
    #            <important>
    #   		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>Devops-guru-deployment-application</code> or
    #   			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
    #   			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #   	        </important>
    #
    #   @return [String]
    #
    # @!attribute tag_value
    #   <p>The value in an Amazon Web Services tag.</p>
    #            <p>The tag's <i>value</i> is an optional field used to associate a string with
    #   					the tag <i>key</i> (for example, <code>111122223333</code>, <code>Production</code>, or a team
    #      				name). The <i>key</i> and <i>value</i> are the tag's <i>key</i> pair.
    #      				Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive. You can specify a maximum of 256 characters for a tag value.</p>
    #
    #   @return [String]
    #
    # @!attribute insight
    #   <p>Information about the health of the Amazon Web Services resources in your account that are specified
    #   			by an Amazon Web Services tag, including the number of open proactive, open reactive insights, and the
    #   			Mean Time to Recover (MTTR) of closed insights. </p>
    #
    #   @return [InsightHealth]
    #
    TagHealth = ::Struct.new(
      :app_boundary_key,
      :tag_value,
      :insight,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was denied due to a request throttling.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p> The code of the quota that was exceeded, causing the throttling exception. </p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p> The code of the service that caused the throttling exception. </p>
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p> The number of seconds after which the action that caused the throttling exception can
    #   			be retried. </p>
    #
    #   @return [Integer]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :quota_code,
      :service_code,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.retry_after_seconds ||= 0
      end

    end

    # <p>A pair that contains metric values at the respective timestamp.</p>
    #
    # @!attribute timestamp
    #   <p>A <code>Timestamp</code> that specifies the time the event occurred. </p>
    #
    #   @return [Time]
    #
    # @!attribute metric_value
    #   <p>Value of the anomalous metric data point at respective Timestamp.</p>
    #
    #   @return [Float]
    #
    TimestampMetricValuePair = ::Struct.new(
      :timestamp,
      :metric_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Contains the names of Amazon Web Services CloudFormation stacks used to update a collection of stacks.
    # 			You can specify up to 500 Amazon Web Services CloudFormation stacks.</p>
    #
    # @!attribute stack_names
    #   <p> An array of the names of the Amazon Web Services CloudFormation stacks to update. You can specify up to 500 Amazon Web Services CloudFormation stacks.
    #   		</p>
    #
    #   @return [Array<String>]
    #
    UpdateCloudFormationCollectionFilter = ::Struct.new(
      :stack_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_sources
    #   <p>Configuration information about the integration of DevOps Guru as the Consumer via
    #   			EventBridge with another AWS Service.</p>
    #
    #   @return [EventSourcesConfig]
    #
    UpdateEventSourcesConfigInput = ::Struct.new(
      :event_sources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateEventSourcesConfigOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UpdateResourceCollectionAction
    #
    module UpdateResourceCollectionAction
      # No documentation available.
      #
      ADD = "ADD"

      # No documentation available.
      #
      REMOVE = "REMOVE"
    end

    # <p> Contains information used to update a collection of Amazon Web Services resources. </p>
    #
    # @!attribute cloud_formation
    #   <p> A collection of Amazon Web Services CloudFormation stacks. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    #
    #   @return [UpdateCloudFormationCollectionFilter]
    #
    # @!attribute tags
    #   <p>The updated Amazon Web Services tags used to filter the resources in the resource collection.</p>
    #   		       <p>Tags help you identify and organize your Amazon Web Services resources. Many Amazon Web Services services support
    #      		tagging, so you can assign the same tag to resources from different services to indicate
    #      		that the resources are related. For example, you can assign the same tag to an Amazon DynamoDB
    #      		table resource that you assign to an Lambda function. For more information about
    #      		using tags, see the <a href="https://d1.awsstatic.com/whitepapers/aws-tagging-best-practices.pdf">Tagging
    #      			best practices</a> whitepaper. </p>
    #      	     <p>Each Amazon Web Services tag has two parts. </p>
    #      	     <ul>
    #               <li>
    #      			         <p>A tag <i>key</i> (for example, <code>CostCenter</code>,
    #      				<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #      				<i>keys</i> are case-sensitive.</p>
    #      		       </li>
    #               <li>
    #      			         <p>An optional field known as a tag <i>value</i> (for example,
    #      				<code>111122223333</code>, <code>Production</code>, or a team
    #      				name). Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive.</p>
    #      		       </li>
    #            </ul>
    #      	     <p>Together these are known as <i>key</i>-<i>value</i> pairs.</p>
    #      	     <important>
    #   		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>Devops-guru-deployment-application</code> or
    #   			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
    #   			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #   	        </important>
    #
    #   @return [Array<UpdateTagCollectionFilter>]
    #
    UpdateResourceCollectionFilter = ::Struct.new(
      :cloud_formation,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute action
    #   <p> Specifies if the resource collection in the request is added or deleted to the
    #   			resource collection. </p>
    #
    #   Enum, one of: ["ADD", "REMOVE"]
    #
    #   @return [String]
    #
    # @!attribute resource_collection
    #   <p> Contains information used to update a collection of Amazon Web Services resources. </p>
    #
    #   @return [UpdateResourceCollectionFilter]
    #
    UpdateResourceCollectionInput = ::Struct.new(
      :action,
      :resource_collection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateResourceCollectionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about updating the integration status of an Amazon Web Services service, such as
    # 			Amazon Web Services Systems Manager, with DevOps Guru. </p>
    #
    # @!attribute ops_center
    #   <p> Information about whether DevOps Guru is configured to create an OpsItem in Amazon Web Services Systems Manager
    #   			OpsCenter for each created insight. </p>
    #
    #   @return [OpsCenterIntegrationConfig]
    #
    UpdateServiceIntegrationConfig = ::Struct.new(
      :ops_center,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_integration
    #   <p> An <code>IntegratedServiceConfig</code> object used to specify the integrated service
    #   			you want to update, and whether you want to update it to enabled or disabled. </p>
    #
    #   @return [UpdateServiceIntegrationConfig]
    #
    UpdateServiceIntegrationInput = ::Struct.new(
      :service_integration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateServiceIntegrationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A new collection of Amazon Web Services resources that are defined by an Amazon Web Services tag or tag
    # 			<i>key</i>/<i>value</i> pair.</p>
    #
    # @!attribute app_boundary_key
    #   <p>An Amazon Web Services tag <i>key</i> that is used to identify the Amazon Web Services resources that
    #         	DevOps Guru analyzes. All Amazon Web Services resources in your account and Region tagged with this <i>key</i> make
    #         up your DevOps Guru application and analysis boundary.</p>
    #            <important>
    #   		          <p>The string used for a <i>key</i> in a tag that you use to define your resource coverage must begin with the
    #   			prefix <code>Devops-guru-</code>. The tag <i>key</i> might be
    #   			<code>Devops-guru-deployment-application</code> or
    #   			<code>Devops-guru-rds-application</code>. While <i>keys</i> are case-sensitive, the
    #   			case of <i>key</i> characters don't matter to DevOps Guru. For example, DevOps Guru works with a
    #   			<i>key</i> named <code>devops-guru-rds</code> and a <i>key</i> named
    #   			<code>DevOps-Guru-RDS</code>. Possible <i>key</i>/<i>value</i> pairs in your
    #   			application might be <code>Devops-Guru-production-application/RDS</code> or
    #   			<code>Devops-Guru-production-application/containers</code>.</p>
    #   	        </important>
    #
    #   @return [String]
    #
    # @!attribute tag_values
    #   <p>The values in an Amazon Web Services tag collection.</p>
    #            <p>The tag's <i>value</i> is an optional field used to associate a string with
    #   					the tag <i>key</i> (for example, <code>111122223333</code>, <code>Production</code>, or a team
    #      				name). The <i>key</i> and <i>value</i> are the tag's <i>key</i> pair.
    #      				Omitting the tag <i>value</i> is the same as using an empty
    #      				string. Like tag <i>keys</i>, tag <i>values</i> are
    #      				case-sensitive. You can specify a maximum of 256 characters for a tag value.</p>
    #
    #   @return [Array<String>]
    #
    UpdateTagCollectionFilter = ::Struct.new(
      :app_boundary_key,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Contains information about data passed in to a field during a request that is not
    # 			valid. </p>
    #
    # @!attribute message
    #   <p> A message that describes the validation exception. </p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p> The reason the validation exception was thrown. </p>
    #
    #   Enum, one of: ["UNKNOWN_OPERATION", "CANNOT_PARSE", "FIELD_VALIDATION_FAILED", "OTHER", "INVALID_PARAMETER_COMBINATION", "PARAMETER_INCONSISTENT_WITH_SERVICE_STATE"]
    #
    #   @return [String]
    #
    # @!attribute fields
    #   <p> An array of fields that are associated with the validation exception. </p>
    #
    #   @return [Array<ValidationExceptionField>]
    #
    ValidationException = ::Struct.new(
      :message,
      :reason,
      :fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The field associated with the validation exception. </p>
    #
    # @!attribute name
    #   <p> The name of the field. </p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p> The message associated with the validation exception with information to help
    #   			determine its cause. </p>
    #
    #   @return [String]
    #
    ValidationExceptionField = ::Struct.new(
      :name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ValidationExceptionReason
    #
    module ValidationExceptionReason
      # No documentation available.
      #
      UNKNOWN_OPERATION = "UNKNOWN_OPERATION"

      # No documentation available.
      #
      CANNOT_PARSE = "CANNOT_PARSE"

      # No documentation available.
      #
      FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED"

      # No documentation available.
      #
      OTHER = "OTHER"

      # No documentation available.
      #
      INVALID_PARAMETER_COMBINATION = "INVALID_PARAMETER_COMBINATION"

      # No documentation available.
      #
      PARAMETER_INCONSISTENT_WITH_SERVICE_STATE = "PARAMETER_INCONSISTENT_WITH_SERVICE_STATE"
    end

  end
end
