# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::LookoutMetrics
  module Builders

    # Operation Builder for ActivateAnomalyDetector
    class ActivateAnomalyDetector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ActivateAnomalyDetector')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AnomalyDetectorArn'] = input[:anomaly_detector_arn] unless input[:anomaly_detector_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BackTestAnomalyDetector
    class BackTestAnomalyDetector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/BackTestAnomalyDetector')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AnomalyDetectorArn'] = input[:anomaly_detector_arn] unless input[:anomaly_detector_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateAlert
    class CreateAlert
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/CreateAlert')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AlertName'] = input[:alert_name] unless input[:alert_name].nil?
        data['AlertSensitivityThreshold'] = input[:alert_sensitivity_threshold] unless input[:alert_sensitivity_threshold].nil?
        data['AlertDescription'] = input[:alert_description] unless input[:alert_description].nil?
        data['AnomalyDetectorArn'] = input[:anomaly_detector_arn] unless input[:anomaly_detector_arn].nil?
        data['Action'] = Action.build(input[:action]) unless input[:action].nil?
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Action
    class Action
      def self.build(input)
        data = {}
        data['SNSConfiguration'] = SNSConfiguration.build(input[:sns_configuration]) unless input[:sns_configuration].nil?
        data['LambdaConfiguration'] = LambdaConfiguration.build(input[:lambda_configuration]) unless input[:lambda_configuration].nil?
        data
      end
    end

    # Structure Builder for LambdaConfiguration
    class LambdaConfiguration
      def self.build(input)
        data = {}
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['LambdaArn'] = input[:lambda_arn] unless input[:lambda_arn].nil?
        data
      end
    end

    # Structure Builder for SNSConfiguration
    class SNSConfiguration
      def self.build(input)
        data = {}
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['SnsTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['SnsFormat'] = input[:sns_format] unless input[:sns_format].nil?
        data
      end
    end

    # Operation Builder for CreateAnomalyDetector
    class CreateAnomalyDetector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/CreateAnomalyDetector')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AnomalyDetectorName'] = input[:anomaly_detector_name] unless input[:anomaly_detector_name].nil?
        data['AnomalyDetectorDescription'] = input[:anomaly_detector_description] unless input[:anomaly_detector_description].nil?
        data['AnomalyDetectorConfig'] = AnomalyDetectorConfig.build(input[:anomaly_detector_config]) unless input[:anomaly_detector_config].nil?
        data['KmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AnomalyDetectorConfig
    class AnomalyDetectorConfig
      def self.build(input)
        data = {}
        data['AnomalyDetectorFrequency'] = input[:anomaly_detector_frequency] unless input[:anomaly_detector_frequency].nil?
        data
      end
    end

    # Operation Builder for CreateMetricSet
    class CreateMetricSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/CreateMetricSet')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AnomalyDetectorArn'] = input[:anomaly_detector_arn] unless input[:anomaly_detector_arn].nil?
        data['MetricSetName'] = input[:metric_set_name] unless input[:metric_set_name].nil?
        data['MetricSetDescription'] = input[:metric_set_description] unless input[:metric_set_description].nil?
        data['MetricList'] = MetricList.build(input[:metric_list]) unless input[:metric_list].nil?
        data['Offset'] = input[:offset] unless input[:offset].nil?
        data['TimestampColumn'] = TimestampColumn.build(input[:timestamp_column]) unless input[:timestamp_column].nil?
        data['DimensionList'] = DimensionList.build(input[:dimension_list]) unless input[:dimension_list].nil?
        data['MetricSetFrequency'] = input[:metric_set_frequency] unless input[:metric_set_frequency].nil?
        data['MetricSource'] = MetricSource.build(input[:metric_source]) unless input[:metric_source].nil?
        data['Timezone'] = input[:timezone] unless input[:timezone].nil?
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MetricSource
    class MetricSource
      def self.build(input)
        data = {}
        data['S3SourceConfig'] = S3SourceConfig.build(input[:s3_source_config]) unless input[:s3_source_config].nil?
        data['AppFlowConfig'] = AppFlowConfig.build(input[:app_flow_config]) unless input[:app_flow_config].nil?
        data['CloudWatchConfig'] = CloudWatchConfig.build(input[:cloud_watch_config]) unless input[:cloud_watch_config].nil?
        data['RDSSourceConfig'] = RDSSourceConfig.build(input[:rds_source_config]) unless input[:rds_source_config].nil?
        data['RedshiftSourceConfig'] = RedshiftSourceConfig.build(input[:redshift_source_config]) unless input[:redshift_source_config].nil?
        data['AthenaSourceConfig'] = AthenaSourceConfig.build(input[:athena_source_config]) unless input[:athena_source_config].nil?
        data
      end
    end

    # Structure Builder for AthenaSourceConfig
    class AthenaSourceConfig
      def self.build(input)
        data = {}
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['DataCatalog'] = input[:data_catalog] unless input[:data_catalog].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['WorkGroupName'] = input[:work_group_name] unless input[:work_group_name].nil?
        data['S3ResultsPath'] = input[:s3_results_path] unless input[:s3_results_path].nil?
        data['BackTestConfiguration'] = BackTestConfiguration.build(input[:back_test_configuration]) unless input[:back_test_configuration].nil?
        data
      end
    end

    # Structure Builder for BackTestConfiguration
    class BackTestConfiguration
      def self.build(input)
        data = {}
        data['RunBackTestMode'] = input[:run_back_test_mode] unless input[:run_back_test_mode].nil?
        data
      end
    end

    # Structure Builder for RedshiftSourceConfig
    class RedshiftSourceConfig
      def self.build(input)
        data = {}
        data['ClusterIdentifier'] = input[:cluster_identifier] unless input[:cluster_identifier].nil?
        data['DatabaseHost'] = input[:database_host] unless input[:database_host].nil?
        data['DatabasePort'] = input[:database_port] unless input[:database_port].nil?
        data['SecretManagerArn'] = input[:secret_manager_arn] unless input[:secret_manager_arn].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['VpcConfiguration'] = VpcConfiguration.build(input[:vpc_configuration]) unless input[:vpc_configuration].nil?
        data
      end
    end

    # Structure Builder for VpcConfiguration
    class VpcConfiguration
      def self.build(input)
        data = {}
        data['SubnetIdList'] = SubnetIdList.build(input[:subnet_id_list]) unless input[:subnet_id_list].nil?
        data['SecurityGroupIdList'] = SecurityGroupIdList.build(input[:security_group_id_list]) unless input[:security_group_id_list].nil?
        data
      end
    end

    # List Builder for SecurityGroupIdList
    class SecurityGroupIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SubnetIdList
    class SubnetIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RDSSourceConfig
    class RDSSourceConfig
      def self.build(input)
        data = {}
        data['DBInstanceIdentifier'] = input[:db_instance_identifier] unless input[:db_instance_identifier].nil?
        data['DatabaseHost'] = input[:database_host] unless input[:database_host].nil?
        data['DatabasePort'] = input[:database_port] unless input[:database_port].nil?
        data['SecretManagerArn'] = input[:secret_manager_arn] unless input[:secret_manager_arn].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['VpcConfiguration'] = VpcConfiguration.build(input[:vpc_configuration]) unless input[:vpc_configuration].nil?
        data
      end
    end

    # Structure Builder for CloudWatchConfig
    class CloudWatchConfig
      def self.build(input)
        data = {}
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['BackTestConfiguration'] = BackTestConfiguration.build(input[:back_test_configuration]) unless input[:back_test_configuration].nil?
        data
      end
    end

    # Structure Builder for AppFlowConfig
    class AppFlowConfig
      def self.build(input)
        data = {}
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['FlowName'] = input[:flow_name] unless input[:flow_name].nil?
        data
      end
    end

    # Structure Builder for S3SourceConfig
    class S3SourceConfig
      def self.build(input)
        data = {}
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['TemplatedPathList'] = TemplatedPathList.build(input[:templated_path_list]) unless input[:templated_path_list].nil?
        data['HistoricalDataPathList'] = HistoricalDataPathList.build(input[:historical_data_path_list]) unless input[:historical_data_path_list].nil?
        data['FileFormatDescriptor'] = FileFormatDescriptor.build(input[:file_format_descriptor]) unless input[:file_format_descriptor].nil?
        data
      end
    end

    # Structure Builder for FileFormatDescriptor
    class FileFormatDescriptor
      def self.build(input)
        data = {}
        data['CsvFormatDescriptor'] = CsvFormatDescriptor.build(input[:csv_format_descriptor]) unless input[:csv_format_descriptor].nil?
        data['JsonFormatDescriptor'] = JsonFormatDescriptor.build(input[:json_format_descriptor]) unless input[:json_format_descriptor].nil?
        data
      end
    end

    # Structure Builder for JsonFormatDescriptor
    class JsonFormatDescriptor
      def self.build(input)
        data = {}
        data['FileCompression'] = input[:file_compression] unless input[:file_compression].nil?
        data['Charset'] = input[:charset] unless input[:charset].nil?
        data
      end
    end

    # Structure Builder for CsvFormatDescriptor
    class CsvFormatDescriptor
      def self.build(input)
        data = {}
        data['FileCompression'] = input[:file_compression] unless input[:file_compression].nil?
        data['Charset'] = input[:charset] unless input[:charset].nil?
        data['ContainsHeader'] = input[:contains_header] unless input[:contains_header].nil?
        data['Delimiter'] = input[:delimiter] unless input[:delimiter].nil?
        data['HeaderList'] = HeaderList.build(input[:header_list]) unless input[:header_list].nil?
        data['QuoteSymbol'] = input[:quote_symbol] unless input[:quote_symbol].nil?
        data
      end
    end

    # List Builder for HeaderList
    class HeaderList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for HistoricalDataPathList
    class HistoricalDataPathList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for TemplatedPathList
    class TemplatedPathList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for DimensionList
    class DimensionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TimestampColumn
    class TimestampColumn
      def self.build(input)
        data = {}
        data['ColumnName'] = input[:column_name] unless input[:column_name].nil?
        data['ColumnFormat'] = input[:column_format] unless input[:column_format].nil?
        data
      end
    end

    # List Builder for MetricList
    class MetricList
      def self.build(input)
        data = []
        input.each do |element|
          data << Metric.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Metric
    class Metric
      def self.build(input)
        data = {}
        data['MetricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['AggregationFunction'] = input[:aggregation_function] unless input[:aggregation_function].nil?
        data['Namespace'] = input[:namespace] unless input[:namespace].nil?
        data
      end
    end

    # Operation Builder for DeactivateAnomalyDetector
    class DeactivateAnomalyDetector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DeactivateAnomalyDetector')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AnomalyDetectorArn'] = input[:anomaly_detector_arn] unless input[:anomaly_detector_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAlert
    class DeleteAlert
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DeleteAlert')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AlertArn'] = input[:alert_arn] unless input[:alert_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAnomalyDetector
    class DeleteAnomalyDetector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DeleteAnomalyDetector')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AnomalyDetectorArn'] = input[:anomaly_detector_arn] unless input[:anomaly_detector_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAlert
    class DescribeAlert
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DescribeAlert')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AlertArn'] = input[:alert_arn] unless input[:alert_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAnomalyDetectionExecutions
    class DescribeAnomalyDetectionExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DescribeAnomalyDetectionExecutions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AnomalyDetectorArn'] = input[:anomaly_detector_arn] unless input[:anomaly_detector_arn].nil?
        data['Timestamp'] = input[:timestamp] unless input[:timestamp].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAnomalyDetector
    class DescribeAnomalyDetector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DescribeAnomalyDetector')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AnomalyDetectorArn'] = input[:anomaly_detector_arn] unless input[:anomaly_detector_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeMetricSet
    class DescribeMetricSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DescribeMetricSet')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MetricSetArn'] = input[:metric_set_arn] unless input[:metric_set_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetectMetricSetConfig
    class DetectMetricSetConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DetectMetricSetConfig')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AnomalyDetectorArn'] = input[:anomaly_detector_arn] unless input[:anomaly_detector_arn].nil?
        data['AutoDetectionMetricSource'] = AutoDetectionMetricSource.build(input[:auto_detection_metric_source]) unless input[:auto_detection_metric_source].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AutoDetectionMetricSource
    class AutoDetectionMetricSource
      def self.build(input)
        data = {}
        data['S3SourceConfig'] = AutoDetectionS3SourceConfig.build(input[:s3_source_config]) unless input[:s3_source_config].nil?
        data
      end
    end

    # Structure Builder for AutoDetectionS3SourceConfig
    class AutoDetectionS3SourceConfig
      def self.build(input)
        data = {}
        data['TemplatedPathList'] = TemplatedPathList.build(input[:templated_path_list]) unless input[:templated_path_list].nil?
        data['HistoricalDataPathList'] = HistoricalDataPathList.build(input[:historical_data_path_list]) unless input[:historical_data_path_list].nil?
        data
      end
    end

    # Operation Builder for GetAnomalyGroup
    class GetAnomalyGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetAnomalyGroup')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AnomalyGroupId'] = input[:anomaly_group_id] unless input[:anomaly_group_id].nil?
        data['AnomalyDetectorArn'] = input[:anomaly_detector_arn] unless input[:anomaly_detector_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetFeedback
    class GetFeedback
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetFeedback')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AnomalyDetectorArn'] = input[:anomaly_detector_arn] unless input[:anomaly_detector_arn].nil?
        data['AnomalyGroupTimeSeriesFeedback'] = AnomalyGroupTimeSeries.build(input[:anomaly_group_time_series_feedback]) unless input[:anomaly_group_time_series_feedback].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AnomalyGroupTimeSeries
    class AnomalyGroupTimeSeries
      def self.build(input)
        data = {}
        data['AnomalyGroupId'] = input[:anomaly_group_id] unless input[:anomaly_group_id].nil?
        data['TimeSeriesId'] = input[:time_series_id] unless input[:time_series_id].nil?
        data
      end
    end

    # Operation Builder for GetSampleData
    class GetSampleData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetSampleData')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['S3SourceConfig'] = SampleDataS3SourceConfig.build(input[:s3_source_config]) unless input[:s3_source_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SampleDataS3SourceConfig
    class SampleDataS3SourceConfig
      def self.build(input)
        data = {}
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['TemplatedPathList'] = TemplatedPathList.build(input[:templated_path_list]) unless input[:templated_path_list].nil?
        data['HistoricalDataPathList'] = HistoricalDataPathList.build(input[:historical_data_path_list]) unless input[:historical_data_path_list].nil?
        data['FileFormatDescriptor'] = FileFormatDescriptor.build(input[:file_format_descriptor]) unless input[:file_format_descriptor].nil?
        data
      end
    end

    # Operation Builder for ListAlerts
    class ListAlerts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListAlerts')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AnomalyDetectorArn'] = input[:anomaly_detector_arn] unless input[:anomaly_detector_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAnomalyDetectors
    class ListAnomalyDetectors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListAnomalyDetectors')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAnomalyGroupRelatedMetrics
    class ListAnomalyGroupRelatedMetrics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListAnomalyGroupRelatedMetrics')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AnomalyDetectorArn'] = input[:anomaly_detector_arn] unless input[:anomaly_detector_arn].nil?
        data['AnomalyGroupId'] = input[:anomaly_group_id] unless input[:anomaly_group_id].nil?
        data['RelationshipTypeFilter'] = input[:relationship_type_filter] unless input[:relationship_type_filter].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAnomalyGroupSummaries
    class ListAnomalyGroupSummaries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListAnomalyGroupSummaries')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AnomalyDetectorArn'] = input[:anomaly_detector_arn] unless input[:anomaly_detector_arn].nil?
        data['SensitivityThreshold'] = input[:sensitivity_threshold] unless input[:sensitivity_threshold].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAnomalyGroupTimeSeries
    class ListAnomalyGroupTimeSeries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListAnomalyGroupTimeSeries')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AnomalyDetectorArn'] = input[:anomaly_detector_arn] unless input[:anomaly_detector_arn].nil?
        data['AnomalyGroupId'] = input[:anomaly_group_id] unless input[:anomaly_group_id].nil?
        data['MetricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListMetricSets
    class ListMetricSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListMetricSets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AnomalyDetectorArn'] = input[:anomaly_detector_arn] unless input[:anomaly_detector_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutFeedback
    class PutFeedback
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/PutFeedback')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AnomalyDetectorArn'] = input[:anomaly_detector_arn] unless input[:anomaly_detector_arn].nil?
        data['AnomalyGroupTimeSeriesFeedback'] = AnomalyGroupTimeSeriesFeedback.build(input[:anomaly_group_time_series_feedback]) unless input[:anomaly_group_time_series_feedback].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AnomalyGroupTimeSeriesFeedback
    class AnomalyGroupTimeSeriesFeedback
      def self.build(input)
        data = {}
        data['AnomalyGroupId'] = input[:anomaly_group_id] unless input[:anomaly_group_id].nil?
        data['TimeSeriesId'] = input[:time_series_id] unless input[:time_series_id].nil?
        data['IsAnomaly'] = input[:is_anomaly] unless input[:is_anomaly].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateAnomalyDetector
    class UpdateAnomalyDetector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/UpdateAnomalyDetector')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AnomalyDetectorArn'] = input[:anomaly_detector_arn] unless input[:anomaly_detector_arn].nil?
        data['KmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data['AnomalyDetectorDescription'] = input[:anomaly_detector_description] unless input[:anomaly_detector_description].nil?
        data['AnomalyDetectorConfig'] = AnomalyDetectorConfig.build(input[:anomaly_detector_config]) unless input[:anomaly_detector_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMetricSet
    class UpdateMetricSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/UpdateMetricSet')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MetricSetArn'] = input[:metric_set_arn] unless input[:metric_set_arn].nil?
        data['MetricSetDescription'] = input[:metric_set_description] unless input[:metric_set_description].nil?
        data['MetricList'] = MetricList.build(input[:metric_list]) unless input[:metric_list].nil?
        data['Offset'] = input[:offset] unless input[:offset].nil?
        data['TimestampColumn'] = TimestampColumn.build(input[:timestamp_column]) unless input[:timestamp_column].nil?
        data['DimensionList'] = DimensionList.build(input[:dimension_list]) unless input[:dimension_list].nil?
        data['MetricSetFrequency'] = input[:metric_set_frequency] unless input[:metric_set_frequency].nil?
        data['MetricSource'] = MetricSource.build(input[:metric_source]) unless input[:metric_source].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
