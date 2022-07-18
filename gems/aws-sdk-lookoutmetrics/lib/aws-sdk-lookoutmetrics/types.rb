# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LookoutMetrics
  module Types

    # <p>You do not have sufficient permissions to perform this action.</p>
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

    # <p>A configuration that specifies the action to perform when anomalies are detected.</p>
    #
    # @!attribute sns_configuration
    #   <p>A configuration for an Amazon SNS channel.</p>
    #
    #   @return [SNSConfiguration]
    #
    # @!attribute lambda_configuration
    #   <p>A configuration for an AWS Lambda channel.</p>
    #
    #   @return [LambdaConfiguration]
    #
    Action = ::Struct.new(
      :sns_configuration,
      :lambda_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the anomaly detector.</p>
    #
    #   @return [String]
    #
    ActivateAnomalyDetectorInput = ::Struct.new(
      :anomaly_detector_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ActivateAnomalyDetectorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AggregationFunction
    #
    module AggregationFunction
      # No documentation available.
      #
      AVG = "AVG"

      # No documentation available.
      #
      SUM = "SUM"
    end

    # <p>A configuration for Amazon SNS-integrated notifications.</p>
    #
    # @!attribute action
    #   <p>Action that will be triggered when there is an alert.</p>
    #
    #   @return [Action]
    #
    # @!attribute alert_description
    #   <p>A description of the alert.</p>
    #
    #   @return [String]
    #
    # @!attribute alert_arn
    #   <p>The ARN of the alert.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector to which the alert is attached.</p>
    #
    #   @return [String]
    #
    # @!attribute alert_name
    #   <p>The name of the alert.</p>
    #
    #   @return [String]
    #
    # @!attribute alert_sensitivity_threshold
    #   <p>The minimum severity for an anomaly to trigger the alert.</p>
    #
    #   @return [Integer]
    #
    # @!attribute alert_type
    #   <p>The type of the alert.</p>
    #
    #   Enum, one of: ["SNS", "LAMBDA"]
    #
    #   @return [String]
    #
    # @!attribute alert_status
    #   <p>The status of the alert.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute last_modification_time
    #   <p>The time at which the alert was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute creation_time
    #   <p>The time at which the alert was created.</p>
    #
    #   @return [Time]
    #
    Alert = ::Struct.new(
      :action,
      :alert_description,
      :alert_arn,
      :anomaly_detector_arn,
      :alert_name,
      :alert_sensitivity_threshold,
      :alert_type,
      :alert_status,
      :last_modification_time,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.alert_sensitivity_threshold ||= 0
      end
    end

    # Includes enum constants for AlertStatus
    #
    module AlertStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"
    end

    # <p>Provides a summary of an alert's configuration.</p>
    #
    # @!attribute alert_arn
    #   <p>The ARN of the alert.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector to which the alert is attached.</p>
    #
    #   @return [String]
    #
    # @!attribute alert_name
    #   <p>The name of the alert.</p>
    #
    #   @return [String]
    #
    # @!attribute alert_sensitivity_threshold
    #   <p>The minimum severity for an anomaly to trigger the alert.</p>
    #
    #   @return [Integer]
    #
    # @!attribute alert_type
    #   <p>The type of the alert.</p>
    #
    #   Enum, one of: ["SNS", "LAMBDA"]
    #
    #   @return [String]
    #
    # @!attribute alert_status
    #   <p>The status of the alert.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute last_modification_time
    #   <p>The time at which the alert was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute creation_time
    #   <p>The time at which the alert was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The alert's <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    AlertSummary = ::Struct.new(
      :alert_arn,
      :anomaly_detector_arn,
      :alert_name,
      :alert_sensitivity_threshold,
      :alert_type,
      :alert_status,
      :last_modification_time,
      :creation_time,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.alert_sensitivity_threshold ||= 0
      end
    end

    # Includes enum constants for AlertType
    #
    module AlertType
      # No documentation available.
      #
      SNS = "SNS"

      # No documentation available.
      #
      LAMBDA = "LAMBDA"
    end

    # Includes enum constants for AnomalyDetectionTaskStatus
    #
    module AnomalyDetectionTaskStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      FAILED_TO_SCHEDULE = "FAILED_TO_SCHEDULE"
    end

    # <p>Contains information about a detector's configuration.</p>
    #
    # @!attribute anomaly_detector_frequency
    #   <p>The frequency at which the detector analyzes its source data.</p>
    #
    #   Enum, one of: ["P1D", "PT1H", "PT10M", "PT5M"]
    #
    #   @return [String]
    #
    AnomalyDetectorConfig = ::Struct.new(
      :anomaly_detector_frequency,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a detector's configuration.</p>
    #
    # @!attribute anomaly_detector_frequency
    #   <p>The interval at which the detector analyzes its source data.</p>
    #
    #   Enum, one of: ["P1D", "PT1H", "PT10M", "PT5M"]
    #
    #   @return [String]
    #
    AnomalyDetectorConfigSummary = ::Struct.new(
      :anomaly_detector_frequency,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AnomalyDetectorFailureType
    #
    module AnomalyDetectorFailureType
      # No documentation available.
      #
      ACTIVATION_FAILURE = "ACTIVATION_FAILURE"

      # No documentation available.
      #
      BACK_TEST_ACTIVATION_FAILURE = "BACK_TEST_ACTIVATION_FAILURE"

      # No documentation available.
      #
      DELETION_FAILURE = "DELETION_FAILURE"

      # No documentation available.
      #
      DEACTIVATION_FAILURE = "DEACTIVATION_FAILURE"
    end

    # Includes enum constants for AnomalyDetectorStatus
    #
    module AnomalyDetectorStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      ACTIVATING = "ACTIVATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"

      # No documentation available.
      #
      LEARNING = "LEARNING"

      # No documentation available.
      #
      BACK_TEST_ACTIVATING = "BACK_TEST_ACTIVATING"

      # No documentation available.
      #
      BACK_TEST_ACTIVE = "BACK_TEST_ACTIVE"

      # No documentation available.
      #
      BACK_TEST_COMPLETE = "BACK_TEST_COMPLETE"

      # No documentation available.
      #
      DEACTIVATED = "DEACTIVATED"

      # No documentation available.
      #
      DEACTIVATING = "DEACTIVATING"
    end

    # <p>Contains information about an an anomaly detector.</p>
    #
    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_detector_name
    #   <p>The name of the detector.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_detector_description
    #   <p>A description of the detector.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time at which the detector was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modification_time
    #   <p>The time at which the detector was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of detector.</p>
    #
    #   Enum, one of: ["ACTIVE", "ACTIVATING", "DELETING", "FAILED", "INACTIVE", "LEARNING", "BACK_TEST_ACTIVATING", "BACK_TEST_ACTIVE", "BACK_TEST_COMPLETE", "DEACTIVATED", "DEACTIVATING"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The detector's <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    AnomalyDetectorSummary = ::Struct.new(
      :anomaly_detector_arn,
      :anomaly_detector_name,
      :anomaly_detector_description,
      :creation_time,
      :last_modification_time,
      :status,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A group of anomalous metrics</p>
    #
    # @!attribute start_time
    #   <p>The start time for the group.</p>
    #
    #   @return [String]
    #
    # @!attribute end_time
    #   <p>The end time for the group.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_group_score
    #   <p>The severity score of the group.</p>
    #
    #   @return [Float]
    #
    # @!attribute primary_metric_name
    #   <p>The name of the primary affected measure for the group.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_level_impact_list
    #   <p>A list of measures affected by the anomaly.</p>
    #
    #   @return [Array<MetricLevelImpact>]
    #
    AnomalyGroup = ::Struct.new(
      :start_time,
      :end_time,
      :anomaly_group_id,
      :anomaly_group_score,
      :primary_metric_name,
      :metric_level_impact_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Aggregated statistics for a group of anomalous metrics.</p>
    #
    # @!attribute evaluation_start_date
    #   <p>The start of the time range that was searched.</p>
    #
    #   @return [String]
    #
    # @!attribute total_count
    #   <p>The number of groups found.</p>
    #
    #   @return [Integer]
    #
    # @!attribute itemized_metric_stats_list
    #   <p>Statistics for individual metrics within the group.</p>
    #
    #   @return [Array<ItemizedMetricStats>]
    #
    AnomalyGroupStatistics = ::Struct.new(
      :evaluation_start_date,
      :total_count,
      :itemized_metric_stats_list,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.total_count ||= 0
      end
    end

    # <p>Details about a group of anomalous metrics.</p>
    #
    # @!attribute start_time
    #   <p>The start time for the group.</p>
    #
    #   @return [String]
    #
    # @!attribute end_time
    #   <p>The end time for the group.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_group_score
    #   <p>The severity score of the group.</p>
    #
    #   @return [Float]
    #
    # @!attribute primary_metric_name
    #   <p>The name of the primary affected measure for the group.</p>
    #
    #   @return [String]
    #
    AnomalyGroupSummary = ::Struct.new(
      :start_time,
      :end_time,
      :anomaly_group_id,
      :anomaly_group_score,
      :primary_metric_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An anomalous metric in an anomaly group.</p>
    #
    # @!attribute anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #
    #   @return [String]
    #
    # @!attribute time_series_id
    #   <p>The ID of the metric.</p>
    #
    #   @return [String]
    #
    AnomalyGroupTimeSeries = ::Struct.new(
      :anomaly_group_id,
      :time_series_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Feedback for an anomalous metric.</p>
    #
    # @!attribute anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #
    #   @return [String]
    #
    # @!attribute time_series_id
    #   <p>The ID of the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute is_anomaly
    #   <p>Feedback on whether the metric is a legitimate anomaly.</p>
    #
    #   @return [Boolean]
    #
    AnomalyGroupTimeSeriesFeedback = ::Struct.new(
      :anomaly_group_id,
      :time_series_id,
      :is_anomaly,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about an Amazon AppFlow flow datasource.</p>
    #
    # @!attribute role_arn
    #   <p>An IAM role that gives Amazon Lookout for Metrics permission to access the flow.</p>
    #
    #   @return [String]
    #
    # @!attribute flow_name
    #   <p> name of the flow.</p>
    #
    #   @return [String]
    #
    AppFlowConfig = ::Struct.new(
      :role_arn,
      :flow_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about an Amazon Athena datasource.</p>
    #
    # @!attribute role_arn
    #   <p>An IAM role that gives Amazon Lookout for Metrics permission to access the data.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The database's name.</p>
    #
    #   @return [String]
    #
    # @!attribute data_catalog
    #   <p>The database's data catalog.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The database's table name.</p>
    #
    #   @return [String]
    #
    # @!attribute work_group_name
    #   <p>The database's work group name.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_results_path
    #   <p>The database's results path.</p>
    #
    #   @return [String]
    #
    # @!attribute back_test_configuration
    #   <p>Settings for backtest mode.</p>
    #
    #   @return [BackTestConfiguration]
    #
    AthenaSourceConfig = ::Struct.new(
      :role_arn,
      :database_name,
      :data_catalog,
      :table_name,
      :work_group_name,
      :s3_results_path,
      :back_test_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An attribute value.</p>
    #
    # @!attribute s
    #   <p>A string.</p>
    #
    #   @return [String]
    #
    # @!attribute n
    #   <p>A number.</p>
    #
    #   @return [String]
    #
    # @!attribute b
    #   <p>A binary value.</p>
    #
    #   @return [String]
    #
    # @!attribute ss
    #   <p>A list of strings.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute ns
    #   <p>A list of numbers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute bs
    #   <p>A list of binary values.</p>
    #
    #   @return [Array<String>]
    #
    AttributeValue = ::Struct.new(
      :s,
      :n,
      :b,
      :ss,
      :ns,
      :bs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An auto detection metric source.</p>
    #
    # @!attribute s3_source_config
    #   <p>The source's source config.</p>
    #
    #   @return [AutoDetectionS3SourceConfig]
    #
    AutoDetectionMetricSource = ::Struct.new(
      :s3_source_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An auto detection source config.</p>
    #
    # @!attribute templated_path_list
    #   <p>The config's templated path list.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute historical_data_path_list
    #   <p>The config's historical data path list.</p>
    #
    #   @return [Array<String>]
    #
    AutoDetectionS3SourceConfig = ::Struct.new(
      :templated_path_list,
      :historical_data_path_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #
    #   @return [String]
    #
    BackTestAnomalyDetectorInput = ::Struct.new(
      :anomaly_detector_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    BackTestAnomalyDetectorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Settings for backtest mode.</p>
    #
    # @!attribute run_back_test_mode
    #   <p>Run a backtest instead of monitoring new data.</p>
    #
    #   @return [Boolean]
    #
    BackTestConfiguration = ::Struct.new(
      :run_back_test_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CSVFileCompression
    #
    module CSVFileCompression
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      GZIP = "GZIP"
    end

    # <p>Details about an Amazon CloudWatch datasource.</p>
    #
    # @!attribute role_arn
    #   <p>An IAM role that gives Amazon Lookout for Metrics permission to access data in Amazon CloudWatch.</p>
    #
    #   @return [String]
    #
    # @!attribute back_test_configuration
    #   <p>Settings for backtest mode.</p>
    #
    #   @return [BackTestConfiguration]
    #
    CloudWatchConfig = ::Struct.new(
      :role_arn,
      :back_test_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Confidence
    #
    module Confidence
      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      LOW = "LOW"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # <p>There was a conflict processing the request. Try your request again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
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

    # <p>Details about dimensions that contributed to an anomaly.</p>
    #
    # @!attribute dimension_contribution_list
    #   <p>A list of contributing dimensions.</p>
    #
    #   @return [Array<DimensionContribution>]
    #
    ContributionMatrix = ::Struct.new(
      :dimension_contribution_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute alert_name
    #   <p>The name of the alert.</p>
    #
    #   @return [String]
    #
    # @!attribute alert_sensitivity_threshold
    #   <p>An integer from 0 to 100 specifying the alert sensitivity threshold.</p>
    #
    #   @return [Integer]
    #
    # @!attribute alert_description
    #   <p>A description of the alert.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector to which the alert is attached.</p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>Action that will be triggered when there is an alert.</p>
    #
    #   @return [Action]
    #
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a> to apply to the alert.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateAlertInput = ::Struct.new(
      :alert_name,
      :alert_sensitivity_threshold,
      :alert_description,
      :anomaly_detector_arn,
      :action,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.alert_sensitivity_threshold ||= 0
      end
    end

    # @!attribute alert_arn
    #   <p>The ARN of the alert.</p>
    #
    #   @return [String]
    #
    CreateAlertOutput = ::Struct.new(
      :alert_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_name
    #   <p>The name of the detector.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_detector_description
    #   <p>A description of the detector.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_detector_config
    #   <p>Contains information about the configuration of the anomaly detector.</p>
    #
    #   @return [AnomalyDetectorConfig]
    #
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key to use to encrypt your data.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a> to apply to the anomaly detector.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateAnomalyDetectorInput = ::Struct.new(
      :anomaly_detector_name,
      :anomaly_detector_description,
      :anomaly_detector_config,
      :kms_key_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector.</p>
    #
    #   @return [String]
    #
    CreateAnomalyDetectorOutput = ::Struct.new(
      :anomaly_detector_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the anomaly detector that will use the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_set_name
    #   <p>The name of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_set_description
    #   <p>A description of the dataset you are creating.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_list
    #   <p>A list of metrics that the dataset will contain.</p>
    #
    #   @return [Array<Metric>]
    #
    # @!attribute offset
    #   <p>After an interval ends, the amount of seconds that the detector waits before importing data. Offset is only supported for S3 and Redshift datasources.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timestamp_column
    #   <p>Contains information about the column used for tracking time in your source data.</p>
    #
    #   @return [TimestampColumn]
    #
    # @!attribute dimension_list
    #   <p>A list of the fields you want to treat as dimensions.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute metric_set_frequency
    #   <p>The frequency with which the source data will be analyzed for anomalies.</p>
    #
    #   Enum, one of: ["P1D", "PT1H", "PT10M", "PT5M"]
    #
    #   @return [String]
    #
    # @!attribute metric_source
    #   <p>Contains information about how the source data should be interpreted.</p>
    #
    #   @return [MetricSource]
    #
    # @!attribute timezone
    #   <p>The time zone in which your source data was recorded.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a> to apply to the dataset.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateMetricSetInput = ::Struct.new(
      :anomaly_detector_arn,
      :metric_set_name,
      :metric_set_description,
      :metric_list,
      :offset,
      :timestamp_column,
      :dimension_list,
      :metric_set_frequency,
      :metric_source,
      :timezone,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute metric_set_arn
    #   <p>The ARN of the dataset.</p>
    #
    #   @return [String]
    #
    CreateMetricSetOutput = ::Struct.new(
      :metric_set_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about how a source CSV data file should be analyzed.</p>
    #
    # @!attribute file_compression
    #   <p>The level of compression of the source CSV file.</p>
    #
    #   Enum, one of: ["NONE", "GZIP"]
    #
    #   @return [String]
    #
    # @!attribute charset
    #   <p>The character set in which the source CSV file is written.</p>
    #
    #   @return [String]
    #
    # @!attribute contains_header
    #   <p>Whether or not the source CSV file contains a header.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute delimiter
    #   <p>The character used to delimit the source CSV file.</p>
    #
    #   @return [String]
    #
    # @!attribute header_list
    #   <p>A list of the source CSV file's headers, if any.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute quote_symbol
    #   <p>The character used as a quote character.</p>
    #
    #   @return [String]
    #
    CsvFormatDescriptor = ::Struct.new(
      :file_compression,
      :charset,
      :contains_header,
      :delimiter,
      :header_list,
      :quote_symbol,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #
    #   @return [String]
    #
    DeactivateAnomalyDetectorInput = ::Struct.new(
      :anomaly_detector_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeactivateAnomalyDetectorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute alert_arn
    #   <p>The ARN of the alert to delete.</p>
    #
    #   @return [String]
    #
    DeleteAlertInput = ::Struct.new(
      :alert_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAlertOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector to delete.</p>
    #
    #   @return [String]
    #
    DeleteAnomalyDetectorInput = ::Struct.new(
      :anomaly_detector_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAnomalyDetectorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute alert_arn
    #   <p>The ARN of the alert to describe.</p>
    #
    #   @return [String]
    #
    DescribeAlertInput = ::Struct.new(
      :alert_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute alert
    #   <p>Contains information about an alert.</p>
    #
    #   @return [Alert]
    #
    DescribeAlertOutput = ::Struct.new(
      :alert,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #
    #   @return [String]
    #
    # @!attribute timestamp
    #   <p>The timestamp of the anomaly detection job.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The number of items to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    DescribeAnomalyDetectionExecutionsInput = ::Struct.new(
      :anomaly_detector_arn,
      :timestamp,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute execution_list
    #   <p>A list of detection jobs.</p>
    #
    #   @return [Array<ExecutionStatus>]
    #
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    DescribeAnomalyDetectionExecutionsOutput = ::Struct.new(
      :execution_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector to describe.</p>
    #
    #   @return [String]
    #
    DescribeAnomalyDetectorInput = ::Struct.new(
      :anomaly_detector_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_detector_name
    #   <p>The name of the detector.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_detector_description
    #   <p>A description of the detector.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_detector_config
    #   <p>Contains information about the detector's configuration.</p>
    #
    #   @return [AnomalyDetectorConfigSummary]
    #
    # @!attribute creation_time
    #   <p>The time at which the detector was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modification_time
    #   <p>The time at which the detector was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the detector.</p>
    #
    #   Enum, one of: ["ACTIVE", "ACTIVATING", "DELETING", "FAILED", "INACTIVE", "LEARNING", "BACK_TEST_ACTIVATING", "BACK_TEST_ACTIVE", "BACK_TEST_COMPLETE", "DEACTIVATED", "DEACTIVATING"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>The reason that the detector failed.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key to use to encrypt your data.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_type
    #   <p>The process that caused the detector to fail.</p>
    #
    #   Enum, one of: ["ACTIVATION_FAILURE", "BACK_TEST_ACTIVATION_FAILURE", "DELETION_FAILURE", "DEACTIVATION_FAILURE"]
    #
    #   @return [String]
    #
    DescribeAnomalyDetectorOutput = ::Struct.new(
      :anomaly_detector_arn,
      :anomaly_detector_name,
      :anomaly_detector_description,
      :anomaly_detector_config,
      :creation_time,
      :last_modification_time,
      :status,
      :failure_reason,
      :kms_key_arn,
      :failure_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute metric_set_arn
    #   <p>The ARN of the dataset.</p>
    #
    #   @return [String]
    #
    DescribeMetricSetInput = ::Struct.new(
      :metric_set_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute metric_set_arn
    #   <p>The ARN of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector that contains the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_set_name
    #   <p>The name of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_set_description
    #   <p>The dataset's description.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time at which the dataset was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modification_time
    #   <p>The time at which the dataset was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute offset
    #   <p>The offset in seconds. Only supported for S3 and Redshift datasources.</p>
    #
    #   @return [Integer]
    #
    # @!attribute metric_list
    #   <p>A list of the metrics defined by the dataset.</p>
    #
    #   @return [Array<Metric>]
    #
    # @!attribute timestamp_column
    #   <p>Contains information about the column used for tracking time in your source data.</p>
    #
    #   @return [TimestampColumn]
    #
    # @!attribute dimension_list
    #   <p>A list of the dimensions chosen for analysis.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute metric_set_frequency
    #   <p>The interval at which the data will be analyzed for anomalies.</p>
    #
    #   Enum, one of: ["P1D", "PT1H", "PT10M", "PT5M"]
    #
    #   @return [String]
    #
    # @!attribute timezone
    #   <p>The time zone in which the dataset's data was recorded.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_source
    #   <p>Contains information about the dataset's source data.</p>
    #
    #   @return [MetricSource]
    #
    DescribeMetricSetOutput = ::Struct.new(
      :metric_set_arn,
      :anomaly_detector_arn,
      :metric_set_name,
      :metric_set_description,
      :creation_time,
      :last_modification_time,
      :offset,
      :metric_list,
      :timestamp_column,
      :dimension_list,
      :metric_set_frequency,
      :timezone,
      :metric_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>An anomaly detector ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_detection_metric_source
    #   <p>A data source.</p>
    #
    #   @return [AutoDetectionMetricSource]
    #
    DetectMetricSetConfigInput = ::Struct.new(
      :anomaly_detector_arn,
      :auto_detection_metric_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute detected_metric_set_config
    #   <p>The inferred dataset configuration for the datasource.</p>
    #
    #   @return [DetectedMetricSetConfig]
    #
    DetectMetricSetConfigOutput = ::Struct.new(
      :detected_metric_set_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Properties of an inferred CSV format.</p>
    #
    # @!attribute file_compression
    #   <p>The format's file compression.</p>
    #
    #   @return [DetectedField]
    #
    # @!attribute charset
    #   <p>The format's charset.</p>
    #
    #   @return [DetectedField]
    #
    # @!attribute contains_header
    #   <p>Whether the format includes a header.</p>
    #
    #   @return [DetectedField]
    #
    # @!attribute delimiter
    #   <p>The format's delimiter.</p>
    #
    #   @return [DetectedField]
    #
    # @!attribute header_list
    #   <p>The format's header list.</p>
    #
    #   @return [DetectedField]
    #
    # @!attribute quote_symbol
    #   <p>The format's quote symbol.</p>
    #
    #   @return [DetectedField]
    #
    DetectedCsvFormatDescriptor = ::Struct.new(
      :file_compression,
      :charset,
      :contains_header,
      :delimiter,
      :header_list,
      :quote_symbol,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An inferred field.</p>
    #
    # @!attribute value
    #   <p>The field's value.</p>
    #
    #   @return [AttributeValue]
    #
    # @!attribute confidence
    #   <p>The field's confidence.</p>
    #
    #   Enum, one of: ["HIGH", "LOW", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The field's message.</p>
    #
    #   @return [String]
    #
    DetectedField = ::Struct.new(
      :value,
      :confidence,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Properties of an inferred data format.</p>
    #
    # @!attribute csv_format_descriptor
    #   <p>Details about a CSV format.</p>
    #
    #   @return [DetectedCsvFormatDescriptor]
    #
    # @!attribute json_format_descriptor
    #   <p>Details about a JSON format.</p>
    #
    #   @return [DetectedJsonFormatDescriptor]
    #
    DetectedFileFormatDescriptor = ::Struct.new(
      :csv_format_descriptor,
      :json_format_descriptor,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A detected JSON format descriptor.</p>
    #
    # @!attribute file_compression
    #   <p>The format's file compression.</p>
    #
    #   @return [DetectedField]
    #
    # @!attribute charset
    #   <p>The format's character set.</p>
    #
    #   @return [DetectedField]
    #
    DetectedJsonFormatDescriptor = ::Struct.new(
      :file_compression,
      :charset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An inferred dataset configuration.</p>
    #
    # @!attribute offset
    #   <p>The dataset's offset.</p>
    #
    #   @return [DetectedField]
    #
    # @!attribute metric_set_frequency
    #   <p>The dataset's interval.</p>
    #
    #   @return [DetectedField]
    #
    # @!attribute metric_source
    #   <p>The dataset's data source.</p>
    #
    #   @return [DetectedMetricSource]
    #
    DetectedMetricSetConfig = ::Struct.new(
      :offset,
      :metric_set_frequency,
      :metric_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An inferred data source.</p>
    #
    # @!attribute s3_source_config
    #   <p>The data source's source configuration.</p>
    #
    #   @return [DetectedS3SourceConfig]
    #
    DetectedMetricSource = ::Struct.new(
      :s3_source_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An inferred source configuration.</p>
    #
    # @!attribute file_format_descriptor
    #   <p>The source's file format descriptor.</p>
    #
    #   @return [DetectedFileFormatDescriptor]
    #
    DetectedS3SourceConfig = ::Struct.new(
      :file_format_descriptor,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a dimension that contributed to an anomaly.</p>
    #
    # @!attribute dimension_name
    #   <p>The name of the dimension.</p>
    #
    #   @return [String]
    #
    # @!attribute dimension_value_contribution_list
    #   <p>A list of dimension values that contributed to the anomaly.</p>
    #
    #   @return [Array<DimensionValueContribution>]
    #
    DimensionContribution = ::Struct.new(
      :dimension_name,
      :dimension_value_contribution_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A dimension name and value.</p>
    #
    # @!attribute dimension_name
    #   <p>The name of the dimension.</p>
    #
    #   @return [String]
    #
    # @!attribute dimension_value
    #   <p>The value of the dimension.</p>
    #
    #   @return [String]
    #
    DimensionNameValue = ::Struct.new(
      :dimension_name,
      :dimension_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The severity of a value of a dimension that contributed to an anomaly.</p>
    #
    # @!attribute dimension_value
    #   <p>The value of the dimension.</p>
    #
    #   @return [String]
    #
    # @!attribute contribution_score
    #   <p>The severity score of the value.</p>
    #
    #   @return [Float]
    #
    DimensionValueContribution = ::Struct.new(
      :dimension_value,
      :contribution_score,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The status of an anomaly detector run.</p>
    #
    # @!attribute timestamp
    #   <p>The run's timestamp.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The run's status.</p>
    #
    #   Enum, one of: ["PENDING", "IN_PROGRESS", "COMPLETED", "FAILED", "FAILED_TO_SCHEDULE"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>The reason that the run failed, if applicable.</p>
    #
    #   @return [String]
    #
    ExecutionStatus = ::Struct.new(
      :timestamp,
      :status,
      :failure_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a source file's formatting.</p>
    #
    # @!attribute csv_format_descriptor
    #   <p>Contains information about how a source CSV data file should be analyzed.</p>
    #
    #   @return [CsvFormatDescriptor]
    #
    # @!attribute json_format_descriptor
    #   <p>Contains information about how a source JSON data file should be analyzed.</p>
    #
    #   @return [JsonFormatDescriptor]
    #
    FileFormatDescriptor = ::Struct.new(
      :csv_format_descriptor,
      :json_format_descriptor,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Frequency
    #
    module Frequency
      # No documentation available.
      #
      P1D = "P1D"

      # No documentation available.
      #
      PT1H = "PT1H"

      # No documentation available.
      #
      PT10M = "PT10M"

      # No documentation available.
      #
      PT5M = "PT5M"
    end

    # @!attribute anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #
    #   @return [String]
    #
    GetAnomalyGroupInput = ::Struct.new(
      :anomaly_group_id,
      :anomaly_detector_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_group
    #   <p>Details about the anomaly group.</p>
    #
    #   @return [AnomalyGroup]
    #
    GetAnomalyGroupOutput = ::Struct.new(
      :anomaly_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_group_time_series_feedback
    #   <p>The anomalous metric and group ID.</p>
    #
    #   @return [AnomalyGroupTimeSeries]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    GetFeedbackInput = ::Struct.new(
      :anomaly_detector_arn,
      :anomaly_group_time_series_feedback,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_group_time_series_feedback
    #   <p>Feedback for an anomalous metric.</p>
    #
    #   @return [Array<TimeSeriesFeedback>]
    #
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    GetFeedbackOutput = ::Struct.new(
      :anomaly_group_time_series_feedback,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute s3_source_config
    #   <p>A datasource bucket in Amazon S3.</p>
    #
    #   @return [SampleDataS3SourceConfig]
    #
    GetSampleDataInput = ::Struct.new(
      :s3_source_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute header_values
    #   <p>A list of header labels for the records.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute sample_rows
    #   <p>A list of records.</p>
    #
    #   @return [Array<Array<String>>]
    #
    GetSampleDataOutput = ::Struct.new(
      :header_values,
      :sample_rows,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Aggregated details about the measures contributing to the anomaly group, and the measures
    #             potentially impacted by the anomaly group.</p>
    #         <p></p>
    #
    # @!attribute metric_name
    #   <p>The name of the measure.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #
    #   @return [String]
    #
    # @!attribute relationship_type
    #   <p>Whether a measure is a potential cause of the anomaly group
    #               (<code>CAUSE_OF_INPUT_ANOMALY_GROUP</code>), or whether the measure is impacted by the
    #               anomaly group (<code>EFFECT_OF_INPUT_ANOMALY_GROUP</code>).</p>
    #
    #   Enum, one of: ["CAUSE_OF_INPUT_ANOMALY_GROUP", "EFFECT_OF_INPUT_ANOMALY_GROUP"]
    #
    #   @return [String]
    #
    # @!attribute contribution_percentage
    #   <p>For potential causes (<code>CAUSE_OF_INPUT_ANOMALY_GROUP</code>), the percentage
    #               contribution the measure has in causing the anomalies.</p>
    #
    #   @return [Float]
    #
    InterMetricImpactDetails = ::Struct.new(
      :metric_name,
      :anomaly_group_id,
      :relationship_type,
      :contribution_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception, or failure.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Aggregated statistics about a measure affected by an anomaly.</p>
    #
    # @!attribute metric_name
    #   <p>The name of the measure.</p>
    #
    #   @return [String]
    #
    # @!attribute occurrence_count
    #   <p>The number of times that the measure appears.</p>
    #
    #   @return [Integer]
    #
    ItemizedMetricStats = ::Struct.new(
      :metric_name,
      :occurrence_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.occurrence_count ||= 0
      end
    end

    # Includes enum constants for JsonFileCompression
    #
    module JsonFileCompression
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      GZIP = "GZIP"
    end

    # <p>Contains information about how a source JSON data file should be analyzed.</p>
    #
    # @!attribute file_compression
    #   <p>The level of compression of the source CSV file.</p>
    #
    #   Enum, one of: ["NONE", "GZIP"]
    #
    #   @return [String]
    #
    # @!attribute charset
    #   <p>The character set in which the source JSON file is written.</p>
    #
    #   @return [String]
    #
    JsonFormatDescriptor = ::Struct.new(
      :file_compression,
      :charset,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a Lambda configuration.</p>
    #
    # @!attribute role_arn
    #   <p>The ARN of an IAM role that has permission to invoke the Lambda function.</p>
    #
    #   @return [String]
    #
    # @!attribute lambda_arn
    #   <p>The ARN of the Lambda function.</p>
    #
    #   @return [String]
    #
    LambdaConfiguration = ::Struct.new(
      :role_arn,
      :lambda_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the alert's detector.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the result of the previous request is truncated, the response includes a <code>NextToken</code>. To
    #         retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results that will be displayed by the request.</p>
    #
    #   @return [Integer]
    #
    ListAlertsInput = ::Struct.new(
      :anomaly_detector_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute alert_summary_list
    #   <p>Contains information about an alert.</p>
    #
    #   @return [Array<AlertSummary>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, the service returns this token. To retrieve the next set of results, use this
    #         token in the next request.</p>
    #
    #   @return [String]
    #
    ListAlertsOutput = ::Struct.new(
      :alert_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a <code>NextToken</code>. To
    #         retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.</p>
    #
    #   @return [String]
    #
    ListAnomalyDetectorsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_summary_list
    #   <p>A list of anomaly detectors in the account in the current region.</p>
    #
    #   @return [Array<AnomalyDetectorSummary>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, the service returns this token. To retrieve the next set of results, use the
    #         token in the next request.</p>
    #
    #   @return [String]
    #
    ListAnomalyDetectorsOutput = ::Struct.new(
      :anomaly_detector_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #
    #   @return [String]
    #
    # @!attribute relationship_type_filter
    #   <p>Filter for potential causes (<code>CAUSE_OF_INPUT_ANOMALY_GROUP</code>) or
    #               downstream effects (<code>EFFECT_OF_INPUT_ANOMALY_GROUP</code>) of the anomaly group.</p>
    #
    #   Enum, one of: ["CAUSE_OF_INPUT_ANOMALY_GROUP", "EFFECT_OF_INPUT_ANOMALY_GROUP"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next
    #               page of results.</p>
    #
    #   @return [String]
    #
    ListAnomalyGroupRelatedMetricsInput = ::Struct.new(
      :anomaly_detector_arn,
      :anomaly_group_id,
      :relationship_type_filter,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute inter_metric_impact_list
    #   <p>Aggregated details about the measures contributing to the anomaly group, and the measures
    #               potentially impacted by the anomaly group.</p>
    #
    #   @return [Array<InterMetricImpactDetails>]
    #
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    ListAnomalyGroupRelatedMetricsOutput = ::Struct.new(
      :inter_metric_impact_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #
    #   @return [String]
    #
    # @!attribute sensitivity_threshold
    #   <p>The minimum severity score for inclusion in the output.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListAnomalyGroupSummariesInput = ::Struct.new(
      :anomaly_detector_arn,
      :sensitivity_threshold,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.sensitivity_threshold ||= 0
      end
    end

    # @!attribute anomaly_group_summary_list
    #   <p>A list of anomaly group summaries.</p>
    #
    #   @return [Array<AnomalyGroupSummary>]
    #
    # @!attribute anomaly_group_statistics
    #   <p>Aggregated details about the anomaly groups.</p>
    #
    #   @return [AnomalyGroupStatistics]
    #
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    ListAnomalyGroupSummariesOutput = ::Struct.new(
      :anomaly_group_summary_list,
      :anomaly_group_statistics,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_name
    #   <p>The name of the measure field.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListAnomalyGroupTimeSeriesInput = ::Struct.new(
      :anomaly_detector_arn,
      :anomaly_group_id,
      :metric_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_group_id
    #   <p>The ID of the anomaly group.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_name
    #   <p>The name of the measure field.</p>
    #
    #   @return [String]
    #
    # @!attribute timestamp_list
    #   <p>Timestamps for the anomalous metrics.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    # @!attribute time_series_list
    #   <p>A list of anomalous metrics.</p>
    #
    #   @return [Array<TimeSeries>]
    #
    ListAnomalyGroupTimeSeriesOutput = ::Struct.new(
      :anomaly_group_id,
      :metric_name,
      :timestamp_list,
      :next_token,
      :time_series_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the anomaly detector containing the metrics sets to list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    #
    #   @return [String]
    #
    ListMetricSetsInput = ::Struct.new(
      :anomaly_detector_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute metric_set_summary_list
    #   <p>A list of the datasets in the AWS Region, with configuration details for each.</p>
    #
    #   @return [Array<MetricSetSummary>]
    #
    # @!attribute next_token
    #   <p>If the response is truncated, the list call returns this token. To retrieve the next set
    #         of results, use the token in the next list request. </p>
    #
    #   @return [String]
    #
    ListMetricSetsOutput = ::Struct.new(
      :metric_set_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The resource's tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A calculation made by contrasting a measure and a dimension from your source data.</p>
    #
    # @!attribute metric_name
    #   <p>The name of the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute aggregation_function
    #   <p>The function with which the metric is calculated.</p>
    #
    #   Enum, one of: ["AVG", "SUM"]
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace for the metric.</p>
    #
    #   @return [String]
    #
    Metric = ::Struct.new(
      :metric_name,
      :aggregation_function,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a measure affected by an anomaly.</p>
    #
    # @!attribute metric_name
    #   <p>The name of the measure.</p>
    #
    #   @return [String]
    #
    # @!attribute num_time_series
    #   <p>The number of anomalous metrics for the measure.</p>
    #
    #   @return [Integer]
    #
    # @!attribute contribution_matrix
    #   <p>Details about the dimensions that contributed to the anomaly.</p>
    #
    #   @return [ContributionMatrix]
    #
    MetricLevelImpact = ::Struct.new(
      :metric_name,
      :num_time_series,
      :contribution_matrix,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.num_time_series ||= 0
      end
    end

    # <p>Contains information about a dataset.</p>
    #
    # @!attribute metric_set_arn
    #   <p>The ARN of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector to which the dataset belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_set_description
    #   <p>The description of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_set_name
    #   <p>The name of the dataset.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time at which the dataset was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modification_time
    #   <p>The time at which the dataset was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The dataset's <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    MetricSetSummary = ::Struct.new(
      :metric_set_arn,
      :anomaly_detector_arn,
      :metric_set_description,
      :metric_set_name,
      :creation_time,
      :last_modification_time,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about source data used to generate metrics.</p>
    #
    # @!attribute s3_source_config
    #   <p>Contains information about the configuration of the S3 bucket that contains source files.</p>
    #
    #   @return [S3SourceConfig]
    #
    # @!attribute app_flow_config
    #   <p>Details about an AppFlow datasource.</p>
    #
    #   @return [AppFlowConfig]
    #
    # @!attribute cloud_watch_config
    #   <p>Details about an Amazon CloudWatch monitoring datasource.</p>
    #
    #   @return [CloudWatchConfig]
    #
    # @!attribute rds_source_config
    #   <p>Details about an Amazon Relational Database Service (RDS) datasource.</p>
    #
    #   @return [RDSSourceConfig]
    #
    # @!attribute redshift_source_config
    #   <p>Details about an Amazon Redshift database datasource.</p>
    #
    #   @return [RedshiftSourceConfig]
    #
    # @!attribute athena_source_config
    #   <p>Details about an Amazon Athena datasource.</p>
    #
    #   @return [AthenaSourceConfig]
    #
    MetricSource = ::Struct.new(
      :s3_source_config,
      :app_flow_config,
      :cloud_watch_config,
      :rds_source_config,
      :redshift_source_config,
      :athena_source_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_group_time_series_feedback
    #   <p>Feedback for an anomalous metric.</p>
    #
    #   @return [AnomalyGroupTimeSeriesFeedback]
    #
    PutFeedbackInput = ::Struct.new(
      :anomaly_detector_arn,
      :anomaly_group_time_series_feedback,
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

    # <p>Contains information about the Amazon Relational Database Service (RDS) configuration.</p>
    #
    # @!attribute db_instance_identifier
    #   <p>A string identifying the database instance.</p>
    #
    #   @return [String]
    #
    # @!attribute database_host
    #   <p>The host name of the database.</p>
    #
    #   @return [String]
    #
    # @!attribute database_port
    #   <p>The port number where the database can be accessed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute secret_manager_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Secrets Manager role.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the RDS database.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The name of the table in the database.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_configuration
    #   <p>An object containing information about the Amazon Virtual Private Cloud (VPC) configuration.</p>
    #
    #   @return [VpcConfiguration]
    #
    RDSSourceConfig = ::Struct.new(
      :db_instance_identifier,
      :database_host,
      :database_port,
      :secret_manager_arn,
      :database_name,
      :table_name,
      :role_arn,
      :vpc_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the Amazon Redshift database configuration.</p>
    #
    # @!attribute cluster_identifier
    #   <p>A string identifying the Redshift cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute database_host
    #   <p>The name of the database host.</p>
    #
    #   @return [String]
    #
    # @!attribute database_port
    #   <p>The port number where the database can be accessed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute secret_manager_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Secrets Manager role.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The Redshift database name.</p>
    #
    #   @return [String]
    #
    # @!attribute table_name
    #   <p>The table name of the Redshift database.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role providing access to the database.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_configuration
    #   <p>Contains information about the Amazon Virtual Private Cloud (VPC) configuration.</p>
    #
    #   @return [VpcConfiguration]
    #
    RedshiftSourceConfig = ::Struct.new(
      :cluster_identifier,
      :database_host,
      :database_port,
      :secret_manager_arn,
      :database_name,
      :table_name,
      :role_arn,
      :vpc_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RelationshipType
    #
    module RelationshipType
      # No documentation available.
      #
      CAUSE_OF_INPUT_ANOMALY_GROUP = "CAUSE_OF_INPUT_ANOMALY_GROUP"

      # No documentation available.
      #
      EFFECT_OF_INPUT_ANOMALY_GROUP = "EFFECT_OF_INPUT_ANOMALY_GROUP"
    end

    # <p>The specified resource cannot be found. Check the ARN of the resource and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
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

    # <p>Contains information about the configuration of the S3 bucket that contains source files.</p>
    #
    # @!attribute role_arn
    #   <p>The ARN of an IAM role that has read and write access permissions to the source S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute templated_path_list
    #   <p>A list of templated paths to the source files.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute historical_data_path_list
    #   <p>A list of paths to the historical data files.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute file_format_descriptor
    #   <p>Contains information about a source file's formatting.</p>
    #
    #   @return [FileFormatDescriptor]
    #
    S3SourceConfig = ::Struct.new(
      :role_arn,
      :templated_path_list,
      :historical_data_path_list,
      :file_format_descriptor,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the SNS topic to which you want to send your alerts and the IAM role that has
    #       access to that topic.</p>
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that has access to the target SNS topic.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>The ARN of the target SNS topic.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_format
    #   <p>The format of the SNS topic.</p>
    #
    #   Enum, one of: ["LONG_TEXT", "SHORT_TEXT", "JSON"]
    #
    #   @return [String]
    #
    SNSConfiguration = ::Struct.new(
      :role_arn,
      :sns_topic_arn,
      :sns_format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the source configuration in Amazon S3.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role.</p>
    #
    #   @return [String]
    #
    # @!attribute templated_path_list
    #   <p>An array of strings containing the list of templated paths.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute historical_data_path_list
    #   <p>An array of strings containing the historical set of data paths.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute file_format_descriptor
    #   <p>Contains information about a source file's formatting.</p>
    #
    #   @return [FileFormatDescriptor]
    #
    SampleDataS3SourceConfig = ::Struct.new(
      :role_arn,
      :templated_path_list,
      :historical_data_path_list,
      :file_format_descriptor,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request exceeded the service's quotas. Check the service quotas and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The quota code.</p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The service code.</p>
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SnsFormat
    #
    module SnsFormat
      # No documentation available.
      #
      LONG_TEXT = "LONG_TEXT"

      # No documentation available.
      #
      SHORT_TEXT = "SHORT_TEXT"

      # No documentation available.
      #
      JSON = "JSON"
    end

    # @!attribute resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags to apply to the resource. Tag keys and values can contain letters, numbers, spaces, and the following
    #         symbols: <code>_.:/=+@-</code>
    #            </p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a metric. A metric is an aggregation of the values of a measure for a dimension value, such as
    #         <i>availability</i> in the <i>us-east-1</i> Region.</p>
    #
    # @!attribute time_series_id
    #   <p>The ID of the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute dimension_list
    #   <p>The dimensions of the metric.</p>
    #
    #   @return [Array<DimensionNameValue>]
    #
    # @!attribute metric_value_list
    #   <p>The values for the metric.</p>
    #
    #   @return [Array<Float>]
    #
    TimeSeries = ::Struct.new(
      :time_series_id,
      :dimension_list,
      :metric_value_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about feedback submitted for an anomalous metric.</p>
    #
    # @!attribute time_series_id
    #   <p>The ID of the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute is_anomaly
    #   <p>Feedback on whether the metric is a legitimate anomaly.</p>
    #
    #   @return [Boolean]
    #
    TimeSeriesFeedback = ::Struct.new(
      :time_series_id,
      :is_anomaly,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the column used to track time in a source data file.</p>
    #
    # @!attribute column_name
    #   <p>The name of the timestamp column.</p>
    #
    #   @return [String]
    #
    # @!attribute column_format
    #   <p>The format of the timestamp column.</p>
    #
    #   @return [String]
    #
    TimestampColumn = ::Struct.new(
      :column_name,
      :column_format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was denied due to too many requests being submitted at the same time.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource's Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>Keys to remove from the resource's tags.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the detector to update.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of an AWS KMS encryption key.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_detector_description
    #   <p>The updated detector description.</p>
    #
    #   @return [String]
    #
    # @!attribute anomaly_detector_config
    #   <p>Contains information about the configuration to which the detector will be updated.</p>
    #
    #   @return [AnomalyDetectorConfig]
    #
    UpdateAnomalyDetectorInput = ::Struct.new(
      :anomaly_detector_arn,
      :kms_key_arn,
      :anomaly_detector_description,
      :anomaly_detector_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute anomaly_detector_arn
    #   <p>The ARN of the updated detector.</p>
    #
    #   @return [String]
    #
    UpdateAnomalyDetectorOutput = ::Struct.new(
      :anomaly_detector_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute metric_set_arn
    #   <p>The ARN of the dataset to update.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_set_description
    #   <p>The dataset's description.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_list
    #   <p>The metric list.</p>
    #
    #   @return [Array<Metric>]
    #
    # @!attribute offset
    #   <p>After an interval ends, the amount of seconds that the detector waits before importing data. Offset is only supported for S3 and Redshift datasources.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timestamp_column
    #   <p>The timestamp column.</p>
    #
    #   @return [TimestampColumn]
    #
    # @!attribute dimension_list
    #   <p>The dimension list.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute metric_set_frequency
    #   <p>The dataset's interval.</p>
    #
    #   Enum, one of: ["P1D", "PT1H", "PT10M", "PT5M"]
    #
    #   @return [String]
    #
    # @!attribute metric_source
    #   <p>Contains information about source data used to generate metrics.</p>
    #
    #   @return [MetricSource]
    #
    UpdateMetricSetInput = ::Struct.new(
      :metric_set_arn,
      :metric_set_description,
      :metric_list,
      :offset,
      :timestamp_column,
      :dimension_list,
      :metric_set_frequency,
      :metric_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute metric_set_arn
    #   <p>The ARN of the dataset.</p>
    #
    #   @return [String]
    #
    UpdateMetricSetOutput = ::Struct.new(
      :metric_set_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input fails to satisfy the constraints specified by the AWS service. Check your input values and try
    #       again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason that validation failed.</p>
    #
    #   Enum, one of: ["UNKNOWN_OPERATION", "CANNOT_PARSE", "FIELD_VALIDATION_FAILED", "OTHER"]
    #
    #   @return [String]
    #
    # @!attribute fields
    #   <p>Fields that failed validation.</p>
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

    # <p>Contains information about a a field in a validation exception.</p>
    #
    # @!attribute name
    #   <p>The name of the field.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message with more information about the validation exception.</p>
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
    end

    # <p>Contains configuration information about the Amazon Virtual Private Cloud (VPC).</p>
    #
    # @!attribute subnet_id_list
    #   <p>An array of strings containing the Amazon VPC subnet IDs (e.g., <code>subnet-0bb1c79de3EXAMPLE</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_id_list
    #   <p>An array of strings containing the list of security groups.</p>
    #
    #   @return [Array<String>]
    #
    VpcConfiguration = ::Struct.new(
      :subnet_id_list,
      :security_group_id_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
