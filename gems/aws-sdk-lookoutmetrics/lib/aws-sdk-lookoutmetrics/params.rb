# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::LookoutMetrics
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module Action
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Action, context: context)
        type = Types::Action.new
        type.sns_configuration = SNSConfiguration.build(params[:sns_configuration], context: "#{context}[:sns_configuration]") unless params[:sns_configuration].nil?
        type.lambda_configuration = LambdaConfiguration.build(params[:lambda_configuration], context: "#{context}[:lambda_configuration]") unless params[:lambda_configuration].nil?
        type
      end
    end

    module ActivateAnomalyDetectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivateAnomalyDetectorInput, context: context)
        type = Types::ActivateAnomalyDetectorInput.new
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type
      end
    end

    module ActivateAnomalyDetectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivateAnomalyDetectorOutput, context: context)
        type = Types::ActivateAnomalyDetectorOutput.new
        type
      end
    end

    module Alert
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Alert, context: context)
        type = Types::Alert.new
        type.action = Action.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.alert_description = params[:alert_description]
        type.alert_arn = params[:alert_arn]
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type.alert_name = params[:alert_name]
        type.alert_sensitivity_threshold = params[:alert_sensitivity_threshold]
        type.alert_type = params[:alert_type]
        type.alert_status = params[:alert_status]
        type.last_modification_time = params[:last_modification_time]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module AlertSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlertSummary, context: context)
        type = Types::AlertSummary.new
        type.alert_arn = params[:alert_arn]
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type.alert_name = params[:alert_name]
        type.alert_sensitivity_threshold = params[:alert_sensitivity_threshold]
        type.alert_type = params[:alert_type]
        type.alert_status = params[:alert_status]
        type.last_modification_time = params[:last_modification_time]
        type.creation_time = params[:creation_time]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AlertSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AlertSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AnomalyDetectorConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnomalyDetectorConfig, context: context)
        type = Types::AnomalyDetectorConfig.new
        type.anomaly_detector_frequency = params[:anomaly_detector_frequency]
        type
      end
    end

    module AnomalyDetectorConfigSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnomalyDetectorConfigSummary, context: context)
        type = Types::AnomalyDetectorConfigSummary.new
        type.anomaly_detector_frequency = params[:anomaly_detector_frequency]
        type
      end
    end

    module AnomalyDetectorSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnomalyDetectorSummary, context: context)
        type = Types::AnomalyDetectorSummary.new
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type.anomaly_detector_name = params[:anomaly_detector_name]
        type.anomaly_detector_description = params[:anomaly_detector_description]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type.status = params[:status]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AnomalyDetectorSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AnomalyDetectorSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AnomalyGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnomalyGroup, context: context)
        type = Types::AnomalyGroup.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.anomaly_group_id = params[:anomaly_group_id]
        type.anomaly_group_score = params[:anomaly_group_score]
        type.primary_metric_name = params[:primary_metric_name]
        type.metric_level_impact_list = MetricLevelImpactList.build(params[:metric_level_impact_list], context: "#{context}[:metric_level_impact_list]") unless params[:metric_level_impact_list].nil?
        type
      end
    end

    module AnomalyGroupStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnomalyGroupStatistics, context: context)
        type = Types::AnomalyGroupStatistics.new
        type.evaluation_start_date = params[:evaluation_start_date]
        type.total_count = params[:total_count]
        type.itemized_metric_stats_list = ItemizedMetricStatsList.build(params[:itemized_metric_stats_list], context: "#{context}[:itemized_metric_stats_list]") unless params[:itemized_metric_stats_list].nil?
        type
      end
    end

    module AnomalyGroupSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnomalyGroupSummary, context: context)
        type = Types::AnomalyGroupSummary.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.anomaly_group_id = params[:anomaly_group_id]
        type.anomaly_group_score = params[:anomaly_group_score]
        type.primary_metric_name = params[:primary_metric_name]
        type
      end
    end

    module AnomalyGroupSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AnomalyGroupSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AnomalyGroupTimeSeries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnomalyGroupTimeSeries, context: context)
        type = Types::AnomalyGroupTimeSeries.new
        type.anomaly_group_id = params[:anomaly_group_id]
        type.time_series_id = params[:time_series_id]
        type
      end
    end

    module AnomalyGroupTimeSeriesFeedback
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnomalyGroupTimeSeriesFeedback, context: context)
        type = Types::AnomalyGroupTimeSeriesFeedback.new
        type.anomaly_group_id = params[:anomaly_group_id]
        type.time_series_id = params[:time_series_id]
        type.is_anomaly = params[:is_anomaly]
        type
      end
    end

    module AppFlowConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppFlowConfig, context: context)
        type = Types::AppFlowConfig.new
        type.role_arn = params[:role_arn]
        type.flow_name = params[:flow_name]
        type
      end
    end

    module AthenaSourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AthenaSourceConfig, context: context)
        type = Types::AthenaSourceConfig.new
        type.role_arn = params[:role_arn]
        type.database_name = params[:database_name]
        type.data_catalog = params[:data_catalog]
        type.table_name = params[:table_name]
        type.work_group_name = params[:work_group_name]
        type.s3_results_path = params[:s3_results_path]
        type.back_test_configuration = BackTestConfiguration.build(params[:back_test_configuration], context: "#{context}[:back_test_configuration]") unless params[:back_test_configuration].nil?
        type
      end
    end

    module AttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeValue, context: context)
        type = Types::AttributeValue.new
        type.s = params[:s]
        type.n = params[:n]
        type.b = params[:b]
        type.ss = StringListAttributeValue.build(params[:ss], context: "#{context}[:ss]") unless params[:ss].nil?
        type.ns = NumberListAttributeValue.build(params[:ns], context: "#{context}[:ns]") unless params[:ns].nil?
        type.bs = BinaryListAttributeValue.build(params[:bs], context: "#{context}[:bs]") unless params[:bs].nil?
        type
      end
    end

    module AutoDetectionMetricSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoDetectionMetricSource, context: context)
        type = Types::AutoDetectionMetricSource.new
        type.s3_source_config = AutoDetectionS3SourceConfig.build(params[:s3_source_config], context: "#{context}[:s3_source_config]") unless params[:s3_source_config].nil?
        type
      end
    end

    module AutoDetectionS3SourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoDetectionS3SourceConfig, context: context)
        type = Types::AutoDetectionS3SourceConfig.new
        type.templated_path_list = TemplatedPathList.build(params[:templated_path_list], context: "#{context}[:templated_path_list]") unless params[:templated_path_list].nil?
        type.historical_data_path_list = HistoricalDataPathList.build(params[:historical_data_path_list], context: "#{context}[:historical_data_path_list]") unless params[:historical_data_path_list].nil?
        type
      end
    end

    module BackTestAnomalyDetectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackTestAnomalyDetectorInput, context: context)
        type = Types::BackTestAnomalyDetectorInput.new
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type
      end
    end

    module BackTestAnomalyDetectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackTestAnomalyDetectorOutput, context: context)
        type = Types::BackTestAnomalyDetectorOutput.new
        type
      end
    end

    module BackTestConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackTestConfiguration, context: context)
        type = Types::BackTestConfiguration.new
        type.run_back_test_mode = params[:run_back_test_mode]
        type
      end
    end

    module BinaryListAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CloudWatchConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchConfig, context: context)
        type = Types::CloudWatchConfig.new
        type.role_arn = params[:role_arn]
        type.back_test_configuration = BackTestConfiguration.build(params[:back_test_configuration], context: "#{context}[:back_test_configuration]") unless params[:back_test_configuration].nil?
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ContributionMatrix
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContributionMatrix, context: context)
        type = Types::ContributionMatrix.new
        type.dimension_contribution_list = DimensionContributionList.build(params[:dimension_contribution_list], context: "#{context}[:dimension_contribution_list]") unless params[:dimension_contribution_list].nil?
        type
      end
    end

    module CreateAlertInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAlertInput, context: context)
        type = Types::CreateAlertInput.new
        type.alert_name = params[:alert_name]
        type.alert_sensitivity_threshold = params[:alert_sensitivity_threshold]
        type.alert_description = params[:alert_description]
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type.action = Action.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAlertOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAlertOutput, context: context)
        type = Types::CreateAlertOutput.new
        type.alert_arn = params[:alert_arn]
        type
      end
    end

    module CreateAnomalyDetectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAnomalyDetectorInput, context: context)
        type = Types::CreateAnomalyDetectorInput.new
        type.anomaly_detector_name = params[:anomaly_detector_name]
        type.anomaly_detector_description = params[:anomaly_detector_description]
        type.anomaly_detector_config = AnomalyDetectorConfig.build(params[:anomaly_detector_config], context: "#{context}[:anomaly_detector_config]") unless params[:anomaly_detector_config].nil?
        type.kms_key_arn = params[:kms_key_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAnomalyDetectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAnomalyDetectorOutput, context: context)
        type = Types::CreateAnomalyDetectorOutput.new
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type
      end
    end

    module CreateMetricSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMetricSetInput, context: context)
        type = Types::CreateMetricSetInput.new
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type.metric_set_name = params[:metric_set_name]
        type.metric_set_description = params[:metric_set_description]
        type.metric_list = MetricList.build(params[:metric_list], context: "#{context}[:metric_list]") unless params[:metric_list].nil?
        type.offset = params[:offset]
        type.timestamp_column = TimestampColumn.build(params[:timestamp_column], context: "#{context}[:timestamp_column]") unless params[:timestamp_column].nil?
        type.dimension_list = DimensionList.build(params[:dimension_list], context: "#{context}[:dimension_list]") unless params[:dimension_list].nil?
        type.metric_set_frequency = params[:metric_set_frequency]
        type.metric_source = MetricSource.build(params[:metric_source], context: "#{context}[:metric_source]") unless params[:metric_source].nil?
        type.timezone = params[:timezone]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateMetricSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMetricSetOutput, context: context)
        type = Types::CreateMetricSetOutput.new
        type.metric_set_arn = params[:metric_set_arn]
        type
      end
    end

    module CsvFormatDescriptor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CsvFormatDescriptor, context: context)
        type = Types::CsvFormatDescriptor.new
        type.file_compression = params[:file_compression]
        type.charset = params[:charset]
        type.contains_header = params[:contains_header]
        type.delimiter = params[:delimiter]
        type.header_list = HeaderList.build(params[:header_list], context: "#{context}[:header_list]") unless params[:header_list].nil?
        type.quote_symbol = params[:quote_symbol]
        type
      end
    end

    module DeactivateAnomalyDetectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeactivateAnomalyDetectorInput, context: context)
        type = Types::DeactivateAnomalyDetectorInput.new
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type
      end
    end

    module DeactivateAnomalyDetectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeactivateAnomalyDetectorOutput, context: context)
        type = Types::DeactivateAnomalyDetectorOutput.new
        type
      end
    end

    module DeleteAlertInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAlertInput, context: context)
        type = Types::DeleteAlertInput.new
        type.alert_arn = params[:alert_arn]
        type
      end
    end

    module DeleteAlertOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAlertOutput, context: context)
        type = Types::DeleteAlertOutput.new
        type
      end
    end

    module DeleteAnomalyDetectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAnomalyDetectorInput, context: context)
        type = Types::DeleteAnomalyDetectorInput.new
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type
      end
    end

    module DeleteAnomalyDetectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAnomalyDetectorOutput, context: context)
        type = Types::DeleteAnomalyDetectorOutput.new
        type
      end
    end

    module DescribeAlertInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAlertInput, context: context)
        type = Types::DescribeAlertInput.new
        type.alert_arn = params[:alert_arn]
        type
      end
    end

    module DescribeAlertOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAlertOutput, context: context)
        type = Types::DescribeAlertOutput.new
        type.alert = Alert.build(params[:alert], context: "#{context}[:alert]") unless params[:alert].nil?
        type
      end
    end

    module DescribeAnomalyDetectionExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAnomalyDetectionExecutionsInput, context: context)
        type = Types::DescribeAnomalyDetectionExecutionsInput.new
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type.timestamp = params[:timestamp]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAnomalyDetectionExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAnomalyDetectionExecutionsOutput, context: context)
        type = Types::DescribeAnomalyDetectionExecutionsOutput.new
        type.execution_list = ExecutionList.build(params[:execution_list], context: "#{context}[:execution_list]") unless params[:execution_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAnomalyDetectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAnomalyDetectorInput, context: context)
        type = Types::DescribeAnomalyDetectorInput.new
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type
      end
    end

    module DescribeAnomalyDetectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAnomalyDetectorOutput, context: context)
        type = Types::DescribeAnomalyDetectorOutput.new
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type.anomaly_detector_name = params[:anomaly_detector_name]
        type.anomaly_detector_description = params[:anomaly_detector_description]
        type.anomaly_detector_config = AnomalyDetectorConfigSummary.build(params[:anomaly_detector_config], context: "#{context}[:anomaly_detector_config]") unless params[:anomaly_detector_config].nil?
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type.status = params[:status]
        type.failure_reason = params[:failure_reason]
        type.kms_key_arn = params[:kms_key_arn]
        type.failure_type = params[:failure_type]
        type
      end
    end

    module DescribeMetricSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMetricSetInput, context: context)
        type = Types::DescribeMetricSetInput.new
        type.metric_set_arn = params[:metric_set_arn]
        type
      end
    end

    module DescribeMetricSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMetricSetOutput, context: context)
        type = Types::DescribeMetricSetOutput.new
        type.metric_set_arn = params[:metric_set_arn]
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type.metric_set_name = params[:metric_set_name]
        type.metric_set_description = params[:metric_set_description]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type.offset = params[:offset]
        type.metric_list = MetricList.build(params[:metric_list], context: "#{context}[:metric_list]") unless params[:metric_list].nil?
        type.timestamp_column = TimestampColumn.build(params[:timestamp_column], context: "#{context}[:timestamp_column]") unless params[:timestamp_column].nil?
        type.dimension_list = DimensionList.build(params[:dimension_list], context: "#{context}[:dimension_list]") unless params[:dimension_list].nil?
        type.metric_set_frequency = params[:metric_set_frequency]
        type.timezone = params[:timezone]
        type.metric_source = MetricSource.build(params[:metric_source], context: "#{context}[:metric_source]") unless params[:metric_source].nil?
        type
      end
    end

    module DetectMetricSetConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectMetricSetConfigInput, context: context)
        type = Types::DetectMetricSetConfigInput.new
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type.auto_detection_metric_source = AutoDetectionMetricSource.build(params[:auto_detection_metric_source], context: "#{context}[:auto_detection_metric_source]") unless params[:auto_detection_metric_source].nil?
        type
      end
    end

    module DetectMetricSetConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectMetricSetConfigOutput, context: context)
        type = Types::DetectMetricSetConfigOutput.new
        type.detected_metric_set_config = DetectedMetricSetConfig.build(params[:detected_metric_set_config], context: "#{context}[:detected_metric_set_config]") unless params[:detected_metric_set_config].nil?
        type
      end
    end

    module DetectedCsvFormatDescriptor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectedCsvFormatDescriptor, context: context)
        type = Types::DetectedCsvFormatDescriptor.new
        type.file_compression = DetectedField.build(params[:file_compression], context: "#{context}[:file_compression]") unless params[:file_compression].nil?
        type.charset = DetectedField.build(params[:charset], context: "#{context}[:charset]") unless params[:charset].nil?
        type.contains_header = DetectedField.build(params[:contains_header], context: "#{context}[:contains_header]") unless params[:contains_header].nil?
        type.delimiter = DetectedField.build(params[:delimiter], context: "#{context}[:delimiter]") unless params[:delimiter].nil?
        type.header_list = DetectedField.build(params[:header_list], context: "#{context}[:header_list]") unless params[:header_list].nil?
        type.quote_symbol = DetectedField.build(params[:quote_symbol], context: "#{context}[:quote_symbol]") unless params[:quote_symbol].nil?
        type
      end
    end

    module DetectedField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectedField, context: context)
        type = Types::DetectedField.new
        type.value = AttributeValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type.confidence = params[:confidence]
        type.message = params[:message]
        type
      end
    end

    module DetectedFileFormatDescriptor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectedFileFormatDescriptor, context: context)
        type = Types::DetectedFileFormatDescriptor.new
        type.csv_format_descriptor = DetectedCsvFormatDescriptor.build(params[:csv_format_descriptor], context: "#{context}[:csv_format_descriptor]") unless params[:csv_format_descriptor].nil?
        type.json_format_descriptor = DetectedJsonFormatDescriptor.build(params[:json_format_descriptor], context: "#{context}[:json_format_descriptor]") unless params[:json_format_descriptor].nil?
        type
      end
    end

    module DetectedJsonFormatDescriptor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectedJsonFormatDescriptor, context: context)
        type = Types::DetectedJsonFormatDescriptor.new
        type.file_compression = DetectedField.build(params[:file_compression], context: "#{context}[:file_compression]") unless params[:file_compression].nil?
        type.charset = DetectedField.build(params[:charset], context: "#{context}[:charset]") unless params[:charset].nil?
        type
      end
    end

    module DetectedMetricSetConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectedMetricSetConfig, context: context)
        type = Types::DetectedMetricSetConfig.new
        type.offset = DetectedField.build(params[:offset], context: "#{context}[:offset]") unless params[:offset].nil?
        type.metric_set_frequency = DetectedField.build(params[:metric_set_frequency], context: "#{context}[:metric_set_frequency]") unless params[:metric_set_frequency].nil?
        type.metric_source = DetectedMetricSource.build(params[:metric_source], context: "#{context}[:metric_source]") unless params[:metric_source].nil?
        type
      end
    end

    module DetectedMetricSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectedMetricSource, context: context)
        type = Types::DetectedMetricSource.new
        type.s3_source_config = DetectedS3SourceConfig.build(params[:s3_source_config], context: "#{context}[:s3_source_config]") unless params[:s3_source_config].nil?
        type
      end
    end

    module DetectedS3SourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectedS3SourceConfig, context: context)
        type = Types::DetectedS3SourceConfig.new
        type.file_format_descriptor = DetectedFileFormatDescriptor.build(params[:file_format_descriptor], context: "#{context}[:file_format_descriptor]") unless params[:file_format_descriptor].nil?
        type
      end
    end

    module DimensionContribution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DimensionContribution, context: context)
        type = Types::DimensionContribution.new
        type.dimension_name = params[:dimension_name]
        type.dimension_value_contribution_list = DimensionValueContributionList.build(params[:dimension_value_contribution_list], context: "#{context}[:dimension_value_contribution_list]") unless params[:dimension_value_contribution_list].nil?
        type
      end
    end

    module DimensionContributionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DimensionContribution.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DimensionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DimensionNameValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DimensionNameValue, context: context)
        type = Types::DimensionNameValue.new
        type.dimension_name = params[:dimension_name]
        type.dimension_value = params[:dimension_value]
        type
      end
    end

    module DimensionNameValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DimensionNameValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DimensionValueContribution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DimensionValueContribution, context: context)
        type = Types::DimensionValueContribution.new
        type.dimension_value = params[:dimension_value]
        type.contribution_score = params[:contribution_score]
        type
      end
    end

    module DimensionValueContributionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DimensionValueContribution.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExecutionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExecutionStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExecutionStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionStatus, context: context)
        type = Types::ExecutionStatus.new
        type.timestamp = params[:timestamp]
        type.status = params[:status]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module FileFormatDescriptor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileFormatDescriptor, context: context)
        type = Types::FileFormatDescriptor.new
        type.csv_format_descriptor = CsvFormatDescriptor.build(params[:csv_format_descriptor], context: "#{context}[:csv_format_descriptor]") unless params[:csv_format_descriptor].nil?
        type.json_format_descriptor = JsonFormatDescriptor.build(params[:json_format_descriptor], context: "#{context}[:json_format_descriptor]") unless params[:json_format_descriptor].nil?
        type
      end
    end

    module GetAnomalyGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAnomalyGroupInput, context: context)
        type = Types::GetAnomalyGroupInput.new
        type.anomaly_group_id = params[:anomaly_group_id]
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type
      end
    end

    module GetAnomalyGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAnomalyGroupOutput, context: context)
        type = Types::GetAnomalyGroupOutput.new
        type.anomaly_group = AnomalyGroup.build(params[:anomaly_group], context: "#{context}[:anomaly_group]") unless params[:anomaly_group].nil?
        type
      end
    end

    module GetFeedbackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFeedbackInput, context: context)
        type = Types::GetFeedbackInput.new
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type.anomaly_group_time_series_feedback = AnomalyGroupTimeSeries.build(params[:anomaly_group_time_series_feedback], context: "#{context}[:anomaly_group_time_series_feedback]") unless params[:anomaly_group_time_series_feedback].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetFeedbackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFeedbackOutput, context: context)
        type = Types::GetFeedbackOutput.new
        type.anomaly_group_time_series_feedback = TimeSeriesFeedbackList.build(params[:anomaly_group_time_series_feedback], context: "#{context}[:anomaly_group_time_series_feedback]") unless params[:anomaly_group_time_series_feedback].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetSampleDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSampleDataInput, context: context)
        type = Types::GetSampleDataInput.new
        type.s3_source_config = SampleDataS3SourceConfig.build(params[:s3_source_config], context: "#{context}[:s3_source_config]") unless params[:s3_source_config].nil?
        type
      end
    end

    module GetSampleDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSampleDataOutput, context: context)
        type = Types::GetSampleDataOutput.new
        type.header_values = HeaderValueList.build(params[:header_values], context: "#{context}[:header_values]") unless params[:header_values].nil?
        type.sample_rows = SampleRows.build(params[:sample_rows], context: "#{context}[:sample_rows]") unless params[:sample_rows].nil?
        type
      end
    end

    module HeaderList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module HeaderValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module HistoricalDataPathList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InterMetricImpactDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InterMetricImpactDetails, context: context)
        type = Types::InterMetricImpactDetails.new
        type.metric_name = params[:metric_name]
        type.anomaly_group_id = params[:anomaly_group_id]
        type.relationship_type = params[:relationship_type]
        type.contribution_percentage = params[:contribution_percentage]
        type
      end
    end

    module InterMetricImpactList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InterMetricImpactDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module ItemizedMetricStats
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ItemizedMetricStats, context: context)
        type = Types::ItemizedMetricStats.new
        type.metric_name = params[:metric_name]
        type.occurrence_count = params[:occurrence_count]
        type
      end
    end

    module ItemizedMetricStatsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ItemizedMetricStats.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JsonFormatDescriptor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JsonFormatDescriptor, context: context)
        type = Types::JsonFormatDescriptor.new
        type.file_compression = params[:file_compression]
        type.charset = params[:charset]
        type
      end
    end

    module LambdaConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaConfiguration, context: context)
        type = Types::LambdaConfiguration.new
        type.role_arn = params[:role_arn]
        type.lambda_arn = params[:lambda_arn]
        type
      end
    end

    module ListAlertsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAlertsInput, context: context)
        type = Types::ListAlertsInput.new
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAlertsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAlertsOutput, context: context)
        type = Types::ListAlertsOutput.new
        type.alert_summary_list = AlertSummaryList.build(params[:alert_summary_list], context: "#{context}[:alert_summary_list]") unless params[:alert_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAnomalyDetectorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAnomalyDetectorsInput, context: context)
        type = Types::ListAnomalyDetectorsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAnomalyDetectorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAnomalyDetectorsOutput, context: context)
        type = Types::ListAnomalyDetectorsOutput.new
        type.anomaly_detector_summary_list = AnomalyDetectorSummaryList.build(params[:anomaly_detector_summary_list], context: "#{context}[:anomaly_detector_summary_list]") unless params[:anomaly_detector_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAnomalyGroupRelatedMetricsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAnomalyGroupRelatedMetricsInput, context: context)
        type = Types::ListAnomalyGroupRelatedMetricsInput.new
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type.anomaly_group_id = params[:anomaly_group_id]
        type.relationship_type_filter = params[:relationship_type_filter]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAnomalyGroupRelatedMetricsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAnomalyGroupRelatedMetricsOutput, context: context)
        type = Types::ListAnomalyGroupRelatedMetricsOutput.new
        type.inter_metric_impact_list = InterMetricImpactList.build(params[:inter_metric_impact_list], context: "#{context}[:inter_metric_impact_list]") unless params[:inter_metric_impact_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAnomalyGroupSummariesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAnomalyGroupSummariesInput, context: context)
        type = Types::ListAnomalyGroupSummariesInput.new
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type.sensitivity_threshold = params[:sensitivity_threshold]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAnomalyGroupSummariesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAnomalyGroupSummariesOutput, context: context)
        type = Types::ListAnomalyGroupSummariesOutput.new
        type.anomaly_group_summary_list = AnomalyGroupSummaryList.build(params[:anomaly_group_summary_list], context: "#{context}[:anomaly_group_summary_list]") unless params[:anomaly_group_summary_list].nil?
        type.anomaly_group_statistics = AnomalyGroupStatistics.build(params[:anomaly_group_statistics], context: "#{context}[:anomaly_group_statistics]") unless params[:anomaly_group_statistics].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAnomalyGroupTimeSeriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAnomalyGroupTimeSeriesInput, context: context)
        type = Types::ListAnomalyGroupTimeSeriesInput.new
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type.anomaly_group_id = params[:anomaly_group_id]
        type.metric_name = params[:metric_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAnomalyGroupTimeSeriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAnomalyGroupTimeSeriesOutput, context: context)
        type = Types::ListAnomalyGroupTimeSeriesOutput.new
        type.anomaly_group_id = params[:anomaly_group_id]
        type.metric_name = params[:metric_name]
        type.timestamp_list = TimestampList.build(params[:timestamp_list], context: "#{context}[:timestamp_list]") unless params[:timestamp_list].nil?
        type.next_token = params[:next_token]
        type.time_series_list = TimeSeriesList.build(params[:time_series_list], context: "#{context}[:time_series_list]") unless params[:time_series_list].nil?
        type
      end
    end

    module ListMetricSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMetricSetsInput, context: context)
        type = Types::ListMetricSetsInput.new
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMetricSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMetricSetsOutput, context: context)
        type = Types::ListMetricSetsOutput.new
        type.metric_set_summary_list = MetricSetSummaryList.build(params[:metric_set_summary_list], context: "#{context}[:metric_set_summary_list]") unless params[:metric_set_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Metric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Metric, context: context)
        type = Types::Metric.new
        type.metric_name = params[:metric_name]
        type.aggregation_function = params[:aggregation_function]
        type.namespace = params[:namespace]
        type
      end
    end

    module MetricLevelImpact
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricLevelImpact, context: context)
        type = Types::MetricLevelImpact.new
        type.metric_name = params[:metric_name]
        type.num_time_series = params[:num_time_series]
        type.contribution_matrix = ContributionMatrix.build(params[:contribution_matrix], context: "#{context}[:contribution_matrix]") unless params[:contribution_matrix].nil?
        type
      end
    end

    module MetricLevelImpactList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricLevelImpact.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Metric.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricSetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricSetSummary, context: context)
        type = Types::MetricSetSummary.new
        type.metric_set_arn = params[:metric_set_arn]
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type.metric_set_description = params[:metric_set_description]
        type.metric_set_name = params[:metric_set_name]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module MetricSetSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricSetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricSource, context: context)
        type = Types::MetricSource.new
        type.s3_source_config = S3SourceConfig.build(params[:s3_source_config], context: "#{context}[:s3_source_config]") unless params[:s3_source_config].nil?
        type.app_flow_config = AppFlowConfig.build(params[:app_flow_config], context: "#{context}[:app_flow_config]") unless params[:app_flow_config].nil?
        type.cloud_watch_config = CloudWatchConfig.build(params[:cloud_watch_config], context: "#{context}[:cloud_watch_config]") unless params[:cloud_watch_config].nil?
        type.rds_source_config = RDSSourceConfig.build(params[:rds_source_config], context: "#{context}[:rds_source_config]") unless params[:rds_source_config].nil?
        type.redshift_source_config = RedshiftSourceConfig.build(params[:redshift_source_config], context: "#{context}[:redshift_source_config]") unless params[:redshift_source_config].nil?
        type.athena_source_config = AthenaSourceConfig.build(params[:athena_source_config], context: "#{context}[:athena_source_config]") unless params[:athena_source_config].nil?
        type
      end
    end

    module MetricValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NumberListAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PutFeedbackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFeedbackInput, context: context)
        type = Types::PutFeedbackInput.new
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type.anomaly_group_time_series_feedback = AnomalyGroupTimeSeriesFeedback.build(params[:anomaly_group_time_series_feedback], context: "#{context}[:anomaly_group_time_series_feedback]") unless params[:anomaly_group_time_series_feedback].nil?
        type
      end
    end

    module PutFeedbackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFeedbackOutput, context: context)
        type = Types::PutFeedbackOutput.new
        type
      end
    end

    module RDSSourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RDSSourceConfig, context: context)
        type = Types::RDSSourceConfig.new
        type.db_instance_identifier = params[:db_instance_identifier]
        type.database_host = params[:database_host]
        type.database_port = params[:database_port]
        type.secret_manager_arn = params[:secret_manager_arn]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.role_arn = params[:role_arn]
        type.vpc_configuration = VpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type
      end
    end

    module RedshiftSourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftSourceConfig, context: context)
        type = Types::RedshiftSourceConfig.new
        type.cluster_identifier = params[:cluster_identifier]
        type.database_host = params[:database_host]
        type.database_port = params[:database_port]
        type.secret_manager_arn = params[:secret_manager_arn]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.role_arn = params[:role_arn]
        type.vpc_configuration = VpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module S3SourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3SourceConfig, context: context)
        type = Types::S3SourceConfig.new
        type.role_arn = params[:role_arn]
        type.templated_path_list = TemplatedPathList.build(params[:templated_path_list], context: "#{context}[:templated_path_list]") unless params[:templated_path_list].nil?
        type.historical_data_path_list = HistoricalDataPathList.build(params[:historical_data_path_list], context: "#{context}[:historical_data_path_list]") unless params[:historical_data_path_list].nil?
        type.file_format_descriptor = FileFormatDescriptor.build(params[:file_format_descriptor], context: "#{context}[:file_format_descriptor]") unless params[:file_format_descriptor].nil?
        type
      end
    end

    module SNSConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SNSConfiguration, context: context)
        type = Types::SNSConfiguration.new
        type.role_arn = params[:role_arn]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.sns_format = params[:sns_format]
        type
      end
    end

    module SampleDataS3SourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SampleDataS3SourceConfig, context: context)
        type = Types::SampleDataS3SourceConfig.new
        type.role_arn = params[:role_arn]
        type.templated_path_list = TemplatedPathList.build(params[:templated_path_list], context: "#{context}[:templated_path_list]") unless params[:templated_path_list].nil?
        type.historical_data_path_list = HistoricalDataPathList.build(params[:historical_data_path_list], context: "#{context}[:historical_data_path_list]") unless params[:historical_data_path_list].nil?
        type.file_format_descriptor = FileFormatDescriptor.build(params[:file_format_descriptor], context: "#{context}[:file_format_descriptor]") unless params[:file_format_descriptor].nil?
        type
      end
    end

    module SampleRow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SampleRows
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SampleRow.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SecurityGroupIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.quota_code = params[:quota_code]
        type.service_code = params[:service_code]
        type
      end
    end

    module StringListAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubnetIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TemplatedPathList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TimeSeries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeSeries, context: context)
        type = Types::TimeSeries.new
        type.time_series_id = params[:time_series_id]
        type.dimension_list = DimensionNameValueList.build(params[:dimension_list], context: "#{context}[:dimension_list]") unless params[:dimension_list].nil?
        type.metric_value_list = MetricValueList.build(params[:metric_value_list], context: "#{context}[:metric_value_list]") unless params[:metric_value_list].nil?
        type
      end
    end

    module TimeSeriesFeedback
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeSeriesFeedback, context: context)
        type = Types::TimeSeriesFeedback.new
        type.time_series_id = params[:time_series_id]
        type.is_anomaly = params[:is_anomaly]
        type
      end
    end

    module TimeSeriesFeedbackList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TimeSeriesFeedback.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TimeSeriesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TimeSeries.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TimestampColumn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimestampColumn, context: context)
        type = Types::TimestampColumn.new
        type.column_name = params[:column_name]
        type.column_format = params[:column_format]
        type
      end
    end

    module TimestampList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateAnomalyDetectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAnomalyDetectorInput, context: context)
        type = Types::UpdateAnomalyDetectorInput.new
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type.kms_key_arn = params[:kms_key_arn]
        type.anomaly_detector_description = params[:anomaly_detector_description]
        type.anomaly_detector_config = AnomalyDetectorConfig.build(params[:anomaly_detector_config], context: "#{context}[:anomaly_detector_config]") unless params[:anomaly_detector_config].nil?
        type
      end
    end

    module UpdateAnomalyDetectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAnomalyDetectorOutput, context: context)
        type = Types::UpdateAnomalyDetectorOutput.new
        type.anomaly_detector_arn = params[:anomaly_detector_arn]
        type
      end
    end

    module UpdateMetricSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMetricSetInput, context: context)
        type = Types::UpdateMetricSetInput.new
        type.metric_set_arn = params[:metric_set_arn]
        type.metric_set_description = params[:metric_set_description]
        type.metric_list = MetricList.build(params[:metric_list], context: "#{context}[:metric_list]") unless params[:metric_list].nil?
        type.offset = params[:offset]
        type.timestamp_column = TimestampColumn.build(params[:timestamp_column], context: "#{context}[:timestamp_column]") unless params[:timestamp_column].nil?
        type.dimension_list = DimensionList.build(params[:dimension_list], context: "#{context}[:dimension_list]") unless params[:dimension_list].nil?
        type.metric_set_frequency = params[:metric_set_frequency]
        type.metric_source = MetricSource.build(params[:metric_source], context: "#{context}[:metric_source]") unless params[:metric_source].nil?
        type
      end
    end

    module UpdateMetricSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMetricSetOutput, context: context)
        type = Types::UpdateMetricSetOutput.new
        type.metric_set_arn = params[:metric_set_arn]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.fields = ValidationExceptionFieldList.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type
      end
    end

    module ValidationExceptionField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationExceptionField, context: context)
        type = Types::ValidationExceptionField.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module ValidationExceptionFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationExceptionField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VpcConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfiguration, context: context)
        type = Types::VpcConfiguration.new
        type.subnet_id_list = SubnetIdList.build(params[:subnet_id_list], context: "#{context}[:subnet_id_list]") unless params[:subnet_id_list].nil?
        type.security_group_id_list = SecurityGroupIdList.build(params[:security_group_id_list], context: "#{context}[:security_group_id_list]") unless params[:security_group_id_list].nil?
        type
      end
    end

  end
end
