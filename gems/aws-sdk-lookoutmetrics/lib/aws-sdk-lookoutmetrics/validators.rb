# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LookoutMetrics
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Action
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Action, context: context)
        Validators::SNSConfiguration.validate!(input[:sns_configuration], context: "#{context}[:sns_configuration]") unless input[:sns_configuration].nil?
        Validators::LambdaConfiguration.validate!(input[:lambda_configuration], context: "#{context}[:lambda_configuration]") unless input[:lambda_configuration].nil?
      end
    end

    class ActivateAnomalyDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivateAnomalyDetectorInput, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
      end
    end

    class ActivateAnomalyDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivateAnomalyDetectorOutput, context: context)
      end
    end

    class Alert
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Alert, context: context)
        Validators::Action.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        Hearth::Validator.validate!(input[:alert_description], ::String, context: "#{context}[:alert_description]")
        Hearth::Validator.validate!(input[:alert_arn], ::String, context: "#{context}[:alert_arn]")
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
        Hearth::Validator.validate!(input[:alert_name], ::String, context: "#{context}[:alert_name]")
        Hearth::Validator.validate!(input[:alert_sensitivity_threshold], ::Integer, context: "#{context}[:alert_sensitivity_threshold]")
        Hearth::Validator.validate!(input[:alert_type], ::String, context: "#{context}[:alert_type]")
        Hearth::Validator.validate!(input[:alert_status], ::String, context: "#{context}[:alert_status]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class AlertSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlertSummary, context: context)
        Hearth::Validator.validate!(input[:alert_arn], ::String, context: "#{context}[:alert_arn]")
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
        Hearth::Validator.validate!(input[:alert_name], ::String, context: "#{context}[:alert_name]")
        Hearth::Validator.validate!(input[:alert_sensitivity_threshold], ::Integer, context: "#{context}[:alert_sensitivity_threshold]")
        Hearth::Validator.validate!(input[:alert_type], ::String, context: "#{context}[:alert_type]")
        Hearth::Validator.validate!(input[:alert_status], ::String, context: "#{context}[:alert_status]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AlertSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AlertSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AnomalyDetectorConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalyDetectorConfig, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_frequency], ::String, context: "#{context}[:anomaly_detector_frequency]")
      end
    end

    class AnomalyDetectorConfigSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalyDetectorConfigSummary, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_frequency], ::String, context: "#{context}[:anomaly_detector_frequency]")
      end
    end

    class AnomalyDetectorSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalyDetectorSummary, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
        Hearth::Validator.validate!(input[:anomaly_detector_name], ::String, context: "#{context}[:anomaly_detector_name]")
        Hearth::Validator.validate!(input[:anomaly_detector_description], ::String, context: "#{context}[:anomaly_detector_description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AnomalyDetectorSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AnomalyDetectorSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AnomalyGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalyGroup, context: context)
        Hearth::Validator.validate!(input[:start_time], ::String, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::String, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:anomaly_group_id], ::String, context: "#{context}[:anomaly_group_id]")
        Hearth::Validator.validate!(input[:anomaly_group_score], ::Float, context: "#{context}[:anomaly_group_score]")
        Hearth::Validator.validate!(input[:primary_metric_name], ::String, context: "#{context}[:primary_metric_name]")
        Validators::MetricLevelImpactList.validate!(input[:metric_level_impact_list], context: "#{context}[:metric_level_impact_list]") unless input[:metric_level_impact_list].nil?
      end
    end

    class AnomalyGroupStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalyGroupStatistics, context: context)
        Hearth::Validator.validate!(input[:evaluation_start_date], ::String, context: "#{context}[:evaluation_start_date]")
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
        Validators::ItemizedMetricStatsList.validate!(input[:itemized_metric_stats_list], context: "#{context}[:itemized_metric_stats_list]") unless input[:itemized_metric_stats_list].nil?
      end
    end

    class AnomalyGroupSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalyGroupSummary, context: context)
        Hearth::Validator.validate!(input[:start_time], ::String, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::String, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:anomaly_group_id], ::String, context: "#{context}[:anomaly_group_id]")
        Hearth::Validator.validate!(input[:anomaly_group_score], ::Float, context: "#{context}[:anomaly_group_score]")
        Hearth::Validator.validate!(input[:primary_metric_name], ::String, context: "#{context}[:primary_metric_name]")
      end
    end

    class AnomalyGroupSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AnomalyGroupSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AnomalyGroupTimeSeries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalyGroupTimeSeries, context: context)
        Hearth::Validator.validate!(input[:anomaly_group_id], ::String, context: "#{context}[:anomaly_group_id]")
        Hearth::Validator.validate!(input[:time_series_id], ::String, context: "#{context}[:time_series_id]")
      end
    end

    class AnomalyGroupTimeSeriesFeedback
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalyGroupTimeSeriesFeedback, context: context)
        Hearth::Validator.validate!(input[:anomaly_group_id], ::String, context: "#{context}[:anomaly_group_id]")
        Hearth::Validator.validate!(input[:time_series_id], ::String, context: "#{context}[:time_series_id]")
        Hearth::Validator.validate!(input[:is_anomaly], ::TrueClass, ::FalseClass, context: "#{context}[:is_anomaly]")
      end
    end

    class AppFlowConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppFlowConfig, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:flow_name], ::String, context: "#{context}[:flow_name]")
      end
    end

    class AthenaSourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AthenaSourceConfig, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:data_catalog], ::String, context: "#{context}[:data_catalog]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:work_group_name], ::String, context: "#{context}[:work_group_name]")
        Hearth::Validator.validate!(input[:s3_results_path], ::String, context: "#{context}[:s3_results_path]")
        Validators::BackTestConfiguration.validate!(input[:back_test_configuration], context: "#{context}[:back_test_configuration]") unless input[:back_test_configuration].nil?
      end
    end

    class AttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttributeValue, context: context)
        Hearth::Validator.validate!(input[:s], ::String, context: "#{context}[:s]")
        Hearth::Validator.validate!(input[:n], ::String, context: "#{context}[:n]")
        Hearth::Validator.validate!(input[:b], ::String, context: "#{context}[:b]")
        Validators::StringListAttributeValue.validate!(input[:ss], context: "#{context}[:ss]") unless input[:ss].nil?
        Validators::NumberListAttributeValue.validate!(input[:ns], context: "#{context}[:ns]") unless input[:ns].nil?
        Validators::BinaryListAttributeValue.validate!(input[:bs], context: "#{context}[:bs]") unless input[:bs].nil?
      end
    end

    class AutoDetectionMetricSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoDetectionMetricSource, context: context)
        Validators::AutoDetectionS3SourceConfig.validate!(input[:s3_source_config], context: "#{context}[:s3_source_config]") unless input[:s3_source_config].nil?
      end
    end

    class AutoDetectionS3SourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoDetectionS3SourceConfig, context: context)
        Validators::TemplatedPathList.validate!(input[:templated_path_list], context: "#{context}[:templated_path_list]") unless input[:templated_path_list].nil?
        Validators::HistoricalDataPathList.validate!(input[:historical_data_path_list], context: "#{context}[:historical_data_path_list]") unless input[:historical_data_path_list].nil?
      end
    end

    class BackTestAnomalyDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackTestAnomalyDetectorInput, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
      end
    end

    class BackTestAnomalyDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackTestAnomalyDetectorOutput, context: context)
      end
    end

    class BackTestConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackTestConfiguration, context: context)
        Hearth::Validator.validate!(input[:run_back_test_mode], ::TrueClass, ::FalseClass, context: "#{context}[:run_back_test_mode]")
      end
    end

    class BinaryListAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CloudWatchConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchConfig, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::BackTestConfiguration.validate!(input[:back_test_configuration], context: "#{context}[:back_test_configuration]") unless input[:back_test_configuration].nil?
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ContributionMatrix
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContributionMatrix, context: context)
        Validators::DimensionContributionList.validate!(input[:dimension_contribution_list], context: "#{context}[:dimension_contribution_list]") unless input[:dimension_contribution_list].nil?
      end
    end

    class CreateAlertInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAlertInput, context: context)
        Hearth::Validator.validate!(input[:alert_name], ::String, context: "#{context}[:alert_name]")
        Hearth::Validator.validate!(input[:alert_sensitivity_threshold], ::Integer, context: "#{context}[:alert_sensitivity_threshold]")
        Hearth::Validator.validate!(input[:alert_description], ::String, context: "#{context}[:alert_description]")
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
        Validators::Action.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAlertOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAlertOutput, context: context)
        Hearth::Validator.validate!(input[:alert_arn], ::String, context: "#{context}[:alert_arn]")
      end
    end

    class CreateAnomalyDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAnomalyDetectorInput, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_name], ::String, context: "#{context}[:anomaly_detector_name]")
        Hearth::Validator.validate!(input[:anomaly_detector_description], ::String, context: "#{context}[:anomaly_detector_description]")
        Validators::AnomalyDetectorConfig.validate!(input[:anomaly_detector_config], context: "#{context}[:anomaly_detector_config]") unless input[:anomaly_detector_config].nil?
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAnomalyDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAnomalyDetectorOutput, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
      end
    end

    class CreateMetricSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMetricSetInput, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
        Hearth::Validator.validate!(input[:metric_set_name], ::String, context: "#{context}[:metric_set_name]")
        Hearth::Validator.validate!(input[:metric_set_description], ::String, context: "#{context}[:metric_set_description]")
        Validators::MetricList.validate!(input[:metric_list], context: "#{context}[:metric_list]") unless input[:metric_list].nil?
        Hearth::Validator.validate!(input[:offset], ::Integer, context: "#{context}[:offset]")
        Validators::TimestampColumn.validate!(input[:timestamp_column], context: "#{context}[:timestamp_column]") unless input[:timestamp_column].nil?
        Validators::DimensionList.validate!(input[:dimension_list], context: "#{context}[:dimension_list]") unless input[:dimension_list].nil?
        Hearth::Validator.validate!(input[:metric_set_frequency], ::String, context: "#{context}[:metric_set_frequency]")
        Validators::MetricSource.validate!(input[:metric_source], context: "#{context}[:metric_source]") unless input[:metric_source].nil?
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateMetricSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMetricSetOutput, context: context)
        Hearth::Validator.validate!(input[:metric_set_arn], ::String, context: "#{context}[:metric_set_arn]")
      end
    end

    class CsvFormatDescriptor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CsvFormatDescriptor, context: context)
        Hearth::Validator.validate!(input[:file_compression], ::String, context: "#{context}[:file_compression]")
        Hearth::Validator.validate!(input[:charset], ::String, context: "#{context}[:charset]")
        Hearth::Validator.validate!(input[:contains_header], ::TrueClass, ::FalseClass, context: "#{context}[:contains_header]")
        Hearth::Validator.validate!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Validators::HeaderList.validate!(input[:header_list], context: "#{context}[:header_list]") unless input[:header_list].nil?
        Hearth::Validator.validate!(input[:quote_symbol], ::String, context: "#{context}[:quote_symbol]")
      end
    end

    class DeactivateAnomalyDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeactivateAnomalyDetectorInput, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
      end
    end

    class DeactivateAnomalyDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeactivateAnomalyDetectorOutput, context: context)
      end
    end

    class DeleteAlertInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAlertInput, context: context)
        Hearth::Validator.validate!(input[:alert_arn], ::String, context: "#{context}[:alert_arn]")
      end
    end

    class DeleteAlertOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAlertOutput, context: context)
      end
    end

    class DeleteAnomalyDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAnomalyDetectorInput, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
      end
    end

    class DeleteAnomalyDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAnomalyDetectorOutput, context: context)
      end
    end

    class DescribeAlertInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAlertInput, context: context)
        Hearth::Validator.validate!(input[:alert_arn], ::String, context: "#{context}[:alert_arn]")
      end
    end

    class DescribeAlertOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAlertOutput, context: context)
        Validators::Alert.validate!(input[:alert], context: "#{context}[:alert]") unless input[:alert].nil?
      end
    end

    class DescribeAnomalyDetectionExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAnomalyDetectionExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
        Hearth::Validator.validate!(input[:timestamp], ::String, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAnomalyDetectionExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAnomalyDetectionExecutionsOutput, context: context)
        Validators::ExecutionList.validate!(input[:execution_list], context: "#{context}[:execution_list]") unless input[:execution_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAnomalyDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAnomalyDetectorInput, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
      end
    end

    class DescribeAnomalyDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAnomalyDetectorOutput, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
        Hearth::Validator.validate!(input[:anomaly_detector_name], ::String, context: "#{context}[:anomaly_detector_name]")
        Hearth::Validator.validate!(input[:anomaly_detector_description], ::String, context: "#{context}[:anomaly_detector_description]")
        Validators::AnomalyDetectorConfigSummary.validate!(input[:anomaly_detector_config], context: "#{context}[:anomaly_detector_config]") unless input[:anomaly_detector_config].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Hearth::Validator.validate!(input[:failure_type], ::String, context: "#{context}[:failure_type]")
      end
    end

    class DescribeMetricSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMetricSetInput, context: context)
        Hearth::Validator.validate!(input[:metric_set_arn], ::String, context: "#{context}[:metric_set_arn]")
      end
    end

    class DescribeMetricSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMetricSetOutput, context: context)
        Hearth::Validator.validate!(input[:metric_set_arn], ::String, context: "#{context}[:metric_set_arn]")
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
        Hearth::Validator.validate!(input[:metric_set_name], ::String, context: "#{context}[:metric_set_name]")
        Hearth::Validator.validate!(input[:metric_set_description], ::String, context: "#{context}[:metric_set_description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
        Hearth::Validator.validate!(input[:offset], ::Integer, context: "#{context}[:offset]")
        Validators::MetricList.validate!(input[:metric_list], context: "#{context}[:metric_list]") unless input[:metric_list].nil?
        Validators::TimestampColumn.validate!(input[:timestamp_column], context: "#{context}[:timestamp_column]") unless input[:timestamp_column].nil?
        Validators::DimensionList.validate!(input[:dimension_list], context: "#{context}[:dimension_list]") unless input[:dimension_list].nil?
        Hearth::Validator.validate!(input[:metric_set_frequency], ::String, context: "#{context}[:metric_set_frequency]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
        Validators::MetricSource.validate!(input[:metric_source], context: "#{context}[:metric_source]") unless input[:metric_source].nil?
      end
    end

    class DetectMetricSetConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectMetricSetConfigInput, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
        Validators::AutoDetectionMetricSource.validate!(input[:auto_detection_metric_source], context: "#{context}[:auto_detection_metric_source]") unless input[:auto_detection_metric_source].nil?
      end
    end

    class DetectMetricSetConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectMetricSetConfigOutput, context: context)
        Validators::DetectedMetricSetConfig.validate!(input[:detected_metric_set_config], context: "#{context}[:detected_metric_set_config]") unless input[:detected_metric_set_config].nil?
      end
    end

    class DetectedCsvFormatDescriptor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectedCsvFormatDescriptor, context: context)
        Validators::DetectedField.validate!(input[:file_compression], context: "#{context}[:file_compression]") unless input[:file_compression].nil?
        Validators::DetectedField.validate!(input[:charset], context: "#{context}[:charset]") unless input[:charset].nil?
        Validators::DetectedField.validate!(input[:contains_header], context: "#{context}[:contains_header]") unless input[:contains_header].nil?
        Validators::DetectedField.validate!(input[:delimiter], context: "#{context}[:delimiter]") unless input[:delimiter].nil?
        Validators::DetectedField.validate!(input[:header_list], context: "#{context}[:header_list]") unless input[:header_list].nil?
        Validators::DetectedField.validate!(input[:quote_symbol], context: "#{context}[:quote_symbol]") unless input[:quote_symbol].nil?
      end
    end

    class DetectedField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectedField, context: context)
        Validators::AttributeValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
        Hearth::Validator.validate!(input[:confidence], ::String, context: "#{context}[:confidence]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DetectedFileFormatDescriptor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectedFileFormatDescriptor, context: context)
        Validators::DetectedCsvFormatDescriptor.validate!(input[:csv_format_descriptor], context: "#{context}[:csv_format_descriptor]") unless input[:csv_format_descriptor].nil?
        Validators::DetectedJsonFormatDescriptor.validate!(input[:json_format_descriptor], context: "#{context}[:json_format_descriptor]") unless input[:json_format_descriptor].nil?
      end
    end

    class DetectedJsonFormatDescriptor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectedJsonFormatDescriptor, context: context)
        Validators::DetectedField.validate!(input[:file_compression], context: "#{context}[:file_compression]") unless input[:file_compression].nil?
        Validators::DetectedField.validate!(input[:charset], context: "#{context}[:charset]") unless input[:charset].nil?
      end
    end

    class DetectedMetricSetConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectedMetricSetConfig, context: context)
        Validators::DetectedField.validate!(input[:offset], context: "#{context}[:offset]") unless input[:offset].nil?
        Validators::DetectedField.validate!(input[:metric_set_frequency], context: "#{context}[:metric_set_frequency]") unless input[:metric_set_frequency].nil?
        Validators::DetectedMetricSource.validate!(input[:metric_source], context: "#{context}[:metric_source]") unless input[:metric_source].nil?
      end
    end

    class DetectedMetricSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectedMetricSource, context: context)
        Validators::DetectedS3SourceConfig.validate!(input[:s3_source_config], context: "#{context}[:s3_source_config]") unless input[:s3_source_config].nil?
      end
    end

    class DetectedS3SourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectedS3SourceConfig, context: context)
        Validators::DetectedFileFormatDescriptor.validate!(input[:file_format_descriptor], context: "#{context}[:file_format_descriptor]") unless input[:file_format_descriptor].nil?
      end
    end

    class DimensionContribution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DimensionContribution, context: context)
        Hearth::Validator.validate!(input[:dimension_name], ::String, context: "#{context}[:dimension_name]")
        Validators::DimensionValueContributionList.validate!(input[:dimension_value_contribution_list], context: "#{context}[:dimension_value_contribution_list]") unless input[:dimension_value_contribution_list].nil?
      end
    end

    class DimensionContributionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DimensionContribution.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DimensionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DimensionNameValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DimensionNameValue, context: context)
        Hearth::Validator.validate!(input[:dimension_name], ::String, context: "#{context}[:dimension_name]")
        Hearth::Validator.validate!(input[:dimension_value], ::String, context: "#{context}[:dimension_value]")
      end
    end

    class DimensionNameValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DimensionNameValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DimensionValueContribution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DimensionValueContribution, context: context)
        Hearth::Validator.validate!(input[:dimension_value], ::String, context: "#{context}[:dimension_value]")
        Hearth::Validator.validate!(input[:contribution_score], ::Float, context: "#{context}[:contribution_score]")
      end
    end

    class DimensionValueContributionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DimensionValueContribution.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExecutionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExecutionStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExecutionStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionStatus, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::String, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class FileFormatDescriptor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileFormatDescriptor, context: context)
        Validators::CsvFormatDescriptor.validate!(input[:csv_format_descriptor], context: "#{context}[:csv_format_descriptor]") unless input[:csv_format_descriptor].nil?
        Validators::JsonFormatDescriptor.validate!(input[:json_format_descriptor], context: "#{context}[:json_format_descriptor]") unless input[:json_format_descriptor].nil?
      end
    end

    class GetAnomalyGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAnomalyGroupInput, context: context)
        Hearth::Validator.validate!(input[:anomaly_group_id], ::String, context: "#{context}[:anomaly_group_id]")
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
      end
    end

    class GetAnomalyGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAnomalyGroupOutput, context: context)
        Validators::AnomalyGroup.validate!(input[:anomaly_group], context: "#{context}[:anomaly_group]") unless input[:anomaly_group].nil?
      end
    end

    class GetFeedbackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFeedbackInput, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
        Validators::AnomalyGroupTimeSeries.validate!(input[:anomaly_group_time_series_feedback], context: "#{context}[:anomaly_group_time_series_feedback]") unless input[:anomaly_group_time_series_feedback].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetFeedbackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFeedbackOutput, context: context)
        Validators::TimeSeriesFeedbackList.validate!(input[:anomaly_group_time_series_feedback], context: "#{context}[:anomaly_group_time_series_feedback]") unless input[:anomaly_group_time_series_feedback].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetSampleDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSampleDataInput, context: context)
        Validators::SampleDataS3SourceConfig.validate!(input[:s3_source_config], context: "#{context}[:s3_source_config]") unless input[:s3_source_config].nil?
      end
    end

    class GetSampleDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSampleDataOutput, context: context)
        Validators::HeaderValueList.validate!(input[:header_values], context: "#{context}[:header_values]") unless input[:header_values].nil?
        Validators::SampleRows.validate!(input[:sample_rows], context: "#{context}[:sample_rows]") unless input[:sample_rows].nil?
      end
    end

    class HeaderList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class HeaderValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class HistoricalDataPathList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InterMetricImpactDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InterMetricImpactDetails, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:anomaly_group_id], ::String, context: "#{context}[:anomaly_group_id]")
        Hearth::Validator.validate!(input[:relationship_type], ::String, context: "#{context}[:relationship_type]")
        Hearth::Validator.validate!(input[:contribution_percentage], ::Float, context: "#{context}[:contribution_percentage]")
      end
    end

    class InterMetricImpactList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InterMetricImpactDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ItemizedMetricStats
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ItemizedMetricStats, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:occurrence_count], ::Integer, context: "#{context}[:occurrence_count]")
      end
    end

    class ItemizedMetricStatsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ItemizedMetricStats.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JsonFormatDescriptor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JsonFormatDescriptor, context: context)
        Hearth::Validator.validate!(input[:file_compression], ::String, context: "#{context}[:file_compression]")
        Hearth::Validator.validate!(input[:charset], ::String, context: "#{context}[:charset]")
      end
    end

    class LambdaConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaConfiguration, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:lambda_arn], ::String, context: "#{context}[:lambda_arn]")
      end
    end

    class ListAlertsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAlertsInput, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAlertsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAlertsOutput, context: context)
        Validators::AlertSummaryList.validate!(input[:alert_summary_list], context: "#{context}[:alert_summary_list]") unless input[:alert_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAnomalyDetectorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAnomalyDetectorsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAnomalyDetectorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAnomalyDetectorsOutput, context: context)
        Validators::AnomalyDetectorSummaryList.validate!(input[:anomaly_detector_summary_list], context: "#{context}[:anomaly_detector_summary_list]") unless input[:anomaly_detector_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAnomalyGroupRelatedMetricsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAnomalyGroupRelatedMetricsInput, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
        Hearth::Validator.validate!(input[:anomaly_group_id], ::String, context: "#{context}[:anomaly_group_id]")
        Hearth::Validator.validate!(input[:relationship_type_filter], ::String, context: "#{context}[:relationship_type_filter]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAnomalyGroupRelatedMetricsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAnomalyGroupRelatedMetricsOutput, context: context)
        Validators::InterMetricImpactList.validate!(input[:inter_metric_impact_list], context: "#{context}[:inter_metric_impact_list]") unless input[:inter_metric_impact_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAnomalyGroupSummariesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAnomalyGroupSummariesInput, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
        Hearth::Validator.validate!(input[:sensitivity_threshold], ::Integer, context: "#{context}[:sensitivity_threshold]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAnomalyGroupSummariesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAnomalyGroupSummariesOutput, context: context)
        Validators::AnomalyGroupSummaryList.validate!(input[:anomaly_group_summary_list], context: "#{context}[:anomaly_group_summary_list]") unless input[:anomaly_group_summary_list].nil?
        Validators::AnomalyGroupStatistics.validate!(input[:anomaly_group_statistics], context: "#{context}[:anomaly_group_statistics]") unless input[:anomaly_group_statistics].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAnomalyGroupTimeSeriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAnomalyGroupTimeSeriesInput, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
        Hearth::Validator.validate!(input[:anomaly_group_id], ::String, context: "#{context}[:anomaly_group_id]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAnomalyGroupTimeSeriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAnomalyGroupTimeSeriesOutput, context: context)
        Hearth::Validator.validate!(input[:anomaly_group_id], ::String, context: "#{context}[:anomaly_group_id]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Validators::TimestampList.validate!(input[:timestamp_list], context: "#{context}[:timestamp_list]") unless input[:timestamp_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::TimeSeriesList.validate!(input[:time_series_list], context: "#{context}[:time_series_list]") unless input[:time_series_list].nil?
      end
    end

    class ListMetricSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMetricSetsInput, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMetricSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMetricSetsOutput, context: context)
        Validators::MetricSetSummaryList.validate!(input[:metric_set_summary_list], context: "#{context}[:metric_set_summary_list]") unless input[:metric_set_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Metric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Metric, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:aggregation_function], ::String, context: "#{context}[:aggregation_function]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class MetricLevelImpact
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricLevelImpact, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:num_time_series], ::Integer, context: "#{context}[:num_time_series]")
        Validators::ContributionMatrix.validate!(input[:contribution_matrix], context: "#{context}[:contribution_matrix]") unless input[:contribution_matrix].nil?
      end
    end

    class MetricLevelImpactList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricLevelImpact.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Metric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricSetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricSetSummary, context: context)
        Hearth::Validator.validate!(input[:metric_set_arn], ::String, context: "#{context}[:metric_set_arn]")
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
        Hearth::Validator.validate!(input[:metric_set_description], ::String, context: "#{context}[:metric_set_description]")
        Hearth::Validator.validate!(input[:metric_set_name], ::String, context: "#{context}[:metric_set_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MetricSetSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricSetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricSource, context: context)
        Validators::S3SourceConfig.validate!(input[:s3_source_config], context: "#{context}[:s3_source_config]") unless input[:s3_source_config].nil?
        Validators::AppFlowConfig.validate!(input[:app_flow_config], context: "#{context}[:app_flow_config]") unless input[:app_flow_config].nil?
        Validators::CloudWatchConfig.validate!(input[:cloud_watch_config], context: "#{context}[:cloud_watch_config]") unless input[:cloud_watch_config].nil?
        Validators::RDSSourceConfig.validate!(input[:rds_source_config], context: "#{context}[:rds_source_config]") unless input[:rds_source_config].nil?
        Validators::RedshiftSourceConfig.validate!(input[:redshift_source_config], context: "#{context}[:redshift_source_config]") unless input[:redshift_source_config].nil?
        Validators::AthenaSourceConfig.validate!(input[:athena_source_config], context: "#{context}[:athena_source_config]") unless input[:athena_source_config].nil?
      end
    end

    class MetricValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

    class NumberListAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PutFeedbackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFeedbackInput, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
        Validators::AnomalyGroupTimeSeriesFeedback.validate!(input[:anomaly_group_time_series_feedback], context: "#{context}[:anomaly_group_time_series_feedback]") unless input[:anomaly_group_time_series_feedback].nil?
      end
    end

    class PutFeedbackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFeedbackOutput, context: context)
      end
    end

    class RDSSourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RDSSourceConfig, context: context)
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:database_host], ::String, context: "#{context}[:database_host]")
        Hearth::Validator.validate!(input[:database_port], ::Integer, context: "#{context}[:database_port]")
        Hearth::Validator.validate!(input[:secret_manager_arn], ::String, context: "#{context}[:secret_manager_arn]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::VpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
      end
    end

    class RedshiftSourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftSourceConfig, context: context)
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
        Hearth::Validator.validate!(input[:database_host], ::String, context: "#{context}[:database_host]")
        Hearth::Validator.validate!(input[:database_port], ::Integer, context: "#{context}[:database_port]")
        Hearth::Validator.validate!(input[:secret_manager_arn], ::String, context: "#{context}[:secret_manager_arn]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::VpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class S3SourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3SourceConfig, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::TemplatedPathList.validate!(input[:templated_path_list], context: "#{context}[:templated_path_list]") unless input[:templated_path_list].nil?
        Validators::HistoricalDataPathList.validate!(input[:historical_data_path_list], context: "#{context}[:historical_data_path_list]") unless input[:historical_data_path_list].nil?
        Validators::FileFormatDescriptor.validate!(input[:file_format_descriptor], context: "#{context}[:file_format_descriptor]") unless input[:file_format_descriptor].nil?
      end
    end

    class SNSConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SNSConfiguration, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:sns_format], ::String, context: "#{context}[:sns_format]")
      end
    end

    class SampleDataS3SourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SampleDataS3SourceConfig, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::TemplatedPathList.validate!(input[:templated_path_list], context: "#{context}[:templated_path_list]") unless input[:templated_path_list].nil?
        Validators::HistoricalDataPathList.validate!(input[:historical_data_path_list], context: "#{context}[:historical_data_path_list]") unless input[:historical_data_path_list].nil?
        Validators::FileFormatDescriptor.validate!(input[:file_format_descriptor], context: "#{context}[:file_format_descriptor]") unless input[:file_format_descriptor].nil?
      end
    end

    class SampleRow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SampleRows
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SampleRow.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SecurityGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
      end
    end

    class StringListAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubnetIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TemplatedPathList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TimeSeries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeSeries, context: context)
        Hearth::Validator.validate!(input[:time_series_id], ::String, context: "#{context}[:time_series_id]")
        Validators::DimensionNameValueList.validate!(input[:dimension_list], context: "#{context}[:dimension_list]") unless input[:dimension_list].nil?
        Validators::MetricValueList.validate!(input[:metric_value_list], context: "#{context}[:metric_value_list]") unless input[:metric_value_list].nil?
      end
    end

    class TimeSeriesFeedback
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeSeriesFeedback, context: context)
        Hearth::Validator.validate!(input[:time_series_id], ::String, context: "#{context}[:time_series_id]")
        Hearth::Validator.validate!(input[:is_anomaly], ::TrueClass, ::FalseClass, context: "#{context}[:is_anomaly]")
      end
    end

    class TimeSeriesFeedbackList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TimeSeriesFeedback.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TimeSeriesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TimeSeries.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TimestampColumn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimestampColumn, context: context)
        Hearth::Validator.validate!(input[:column_name], ::String, context: "#{context}[:column_name]")
        Hearth::Validator.validate!(input[:column_format], ::String, context: "#{context}[:column_format]")
      end
    end

    class TimestampList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAnomalyDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAnomalyDetectorInput, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Hearth::Validator.validate!(input[:anomaly_detector_description], ::String, context: "#{context}[:anomaly_detector_description]")
        Validators::AnomalyDetectorConfig.validate!(input[:anomaly_detector_config], context: "#{context}[:anomaly_detector_config]") unless input[:anomaly_detector_config].nil?
      end
    end

    class UpdateAnomalyDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAnomalyDetectorOutput, context: context)
        Hearth::Validator.validate!(input[:anomaly_detector_arn], ::String, context: "#{context}[:anomaly_detector_arn]")
      end
    end

    class UpdateMetricSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMetricSetInput, context: context)
        Hearth::Validator.validate!(input[:metric_set_arn], ::String, context: "#{context}[:metric_set_arn]")
        Hearth::Validator.validate!(input[:metric_set_description], ::String, context: "#{context}[:metric_set_description]")
        Validators::MetricList.validate!(input[:metric_list], context: "#{context}[:metric_list]") unless input[:metric_list].nil?
        Hearth::Validator.validate!(input[:offset], ::Integer, context: "#{context}[:offset]")
        Validators::TimestampColumn.validate!(input[:timestamp_column], context: "#{context}[:timestamp_column]") unless input[:timestamp_column].nil?
        Validators::DimensionList.validate!(input[:dimension_list], context: "#{context}[:dimension_list]") unless input[:dimension_list].nil?
        Hearth::Validator.validate!(input[:metric_set_frequency], ::String, context: "#{context}[:metric_set_frequency]")
        Validators::MetricSource.validate!(input[:metric_source], context: "#{context}[:metric_source]") unless input[:metric_source].nil?
      end
    end

    class UpdateMetricSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMetricSetOutput, context: context)
        Hearth::Validator.validate!(input[:metric_set_arn], ::String, context: "#{context}[:metric_set_arn]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::ValidationExceptionFieldList.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
      end
    end

    class ValidationExceptionField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationExceptionField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationExceptionFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VpcConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfiguration, context: context)
        Validators::SubnetIdList.validate!(input[:subnet_id_list], context: "#{context}[:subnet_id_list]") unless input[:subnet_id_list].nil?
        Validators::SecurityGroupIdList.validate!(input[:security_group_id_list], context: "#{context}[:security_group_id_list]") unless input[:security_group_id_list].nil?
      end
    end

  end
end
