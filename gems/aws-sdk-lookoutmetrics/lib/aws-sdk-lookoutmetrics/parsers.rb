# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::LookoutMetrics
  module Parsers

    # Operation Parser for ActivateAnomalyDetector
    class ActivateAnomalyDetector
      def self.parse(http_resp)
        data = Types::ActivateAnomalyDetectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.reason = map['Reason']
        data.fields = (Parsers::ValidationExceptionFieldList.parse(map['Fields']) unless map['Fields'].nil?)
        data
      end
    end

    class ValidationExceptionFieldList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ValidationExceptionField.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['Name']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for BackTestAnomalyDetector
    class BackTestAnomalyDetector
      def self.parse(http_resp)
        data = Types::BackTestAnomalyDetectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CreateAlert
    class CreateAlert
      def self.parse(http_resp)
        data = Types::CreateAlertOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.alert_arn = map['AlertArn']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data.quota_code = map['QuotaCode']
        data.service_code = map['ServiceCode']
        data
      end
    end

    # Operation Parser for CreateAnomalyDetector
    class CreateAnomalyDetector
      def self.parse(http_resp)
        data = Types::CreateAnomalyDetectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.anomaly_detector_arn = map['AnomalyDetectorArn']
        data
      end
    end

    # Operation Parser for CreateMetricSet
    class CreateMetricSet
      def self.parse(http_resp)
        data = Types::CreateMetricSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.metric_set_arn = map['MetricSetArn']
        data
      end
    end

    # Operation Parser for DeactivateAnomalyDetector
    class DeactivateAnomalyDetector
      def self.parse(http_resp)
        data = Types::DeactivateAnomalyDetectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteAlert
    class DeleteAlert
      def self.parse(http_resp)
        data = Types::DeleteAlertOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteAnomalyDetector
    class DeleteAnomalyDetector
      def self.parse(http_resp)
        data = Types::DeleteAnomalyDetectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeAlert
    class DescribeAlert
      def self.parse(http_resp)
        data = Types::DescribeAlertOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.alert = (Parsers::Alert.parse(map['Alert']) unless map['Alert'].nil?)
        data
      end
    end

    class Alert
      def self.parse(map)
        data = Types::Alert.new
        data.action = (Parsers::Action.parse(map['Action']) unless map['Action'].nil?)
        data.alert_description = map['AlertDescription']
        data.alert_arn = map['AlertArn']
        data.anomaly_detector_arn = map['AnomalyDetectorArn']
        data.alert_name = map['AlertName']
        data.alert_sensitivity_threshold = map['AlertSensitivityThreshold']
        data.alert_type = map['AlertType']
        data.alert_status = map['AlertStatus']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        return data
      end
    end

    class Action
      def self.parse(map)
        data = Types::Action.new
        data.sns_configuration = (Parsers::SNSConfiguration.parse(map['SNSConfiguration']) unless map['SNSConfiguration'].nil?)
        data.lambda_configuration = (Parsers::LambdaConfiguration.parse(map['LambdaConfiguration']) unless map['LambdaConfiguration'].nil?)
        return data
      end
    end

    class LambdaConfiguration
      def self.parse(map)
        data = Types::LambdaConfiguration.new
        data.role_arn = map['RoleArn']
        data.lambda_arn = map['LambdaArn']
        return data
      end
    end

    class SNSConfiguration
      def self.parse(map)
        data = Types::SNSConfiguration.new
        data.role_arn = map['RoleArn']
        data.sns_topic_arn = map['SnsTopicArn']
        data.sns_format = map['SnsFormat']
        return data
      end
    end

    # Operation Parser for DescribeAnomalyDetectionExecutions
    class DescribeAnomalyDetectionExecutions
      def self.parse(http_resp)
        data = Types::DescribeAnomalyDetectionExecutionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.execution_list = (Parsers::ExecutionList.parse(map['ExecutionList']) unless map['ExecutionList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ExecutionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ExecutionStatus.parse(value) unless value.nil?
        end
        data
      end
    end

    class ExecutionStatus
      def self.parse(map)
        data = Types::ExecutionStatus.new
        data.timestamp = map['Timestamp']
        data.status = map['Status']
        data.failure_reason = map['FailureReason']
        return data
      end
    end

    # Operation Parser for DescribeAnomalyDetector
    class DescribeAnomalyDetector
      def self.parse(http_resp)
        data = Types::DescribeAnomalyDetectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.anomaly_detector_arn = map['AnomalyDetectorArn']
        data.anomaly_detector_name = map['AnomalyDetectorName']
        data.anomaly_detector_description = map['AnomalyDetectorDescription']
        data.anomaly_detector_config = (Parsers::AnomalyDetectorConfigSummary.parse(map['AnomalyDetectorConfig']) unless map['AnomalyDetectorConfig'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        data.status = map['Status']
        data.failure_reason = map['FailureReason']
        data.kms_key_arn = map['KmsKeyArn']
        data.failure_type = map['FailureType']
        data
      end
    end

    class AnomalyDetectorConfigSummary
      def self.parse(map)
        data = Types::AnomalyDetectorConfigSummary.new
        data.anomaly_detector_frequency = map['AnomalyDetectorFrequency']
        return data
      end
    end

    # Operation Parser for DescribeMetricSet
    class DescribeMetricSet
      def self.parse(http_resp)
        data = Types::DescribeMetricSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.metric_set_arn = map['MetricSetArn']
        data.anomaly_detector_arn = map['AnomalyDetectorArn']
        data.metric_set_name = map['MetricSetName']
        data.metric_set_description = map['MetricSetDescription']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        data.offset = map['Offset']
        data.metric_list = (Parsers::MetricList.parse(map['MetricList']) unless map['MetricList'].nil?)
        data.timestamp_column = (Parsers::TimestampColumn.parse(map['TimestampColumn']) unless map['TimestampColumn'].nil?)
        data.dimension_list = (Parsers::DimensionList.parse(map['DimensionList']) unless map['DimensionList'].nil?)
        data.metric_set_frequency = map['MetricSetFrequency']
        data.timezone = map['Timezone']
        data.metric_source = (Parsers::MetricSource.parse(map['MetricSource']) unless map['MetricSource'].nil?)
        data
      end
    end

    class MetricSource
      def self.parse(map)
        data = Types::MetricSource.new
        data.s3_source_config = (Parsers::S3SourceConfig.parse(map['S3SourceConfig']) unless map['S3SourceConfig'].nil?)
        data.app_flow_config = (Parsers::AppFlowConfig.parse(map['AppFlowConfig']) unless map['AppFlowConfig'].nil?)
        data.cloud_watch_config = (Parsers::CloudWatchConfig.parse(map['CloudWatchConfig']) unless map['CloudWatchConfig'].nil?)
        data.rds_source_config = (Parsers::RDSSourceConfig.parse(map['RDSSourceConfig']) unless map['RDSSourceConfig'].nil?)
        data.redshift_source_config = (Parsers::RedshiftSourceConfig.parse(map['RedshiftSourceConfig']) unless map['RedshiftSourceConfig'].nil?)
        data.athena_source_config = (Parsers::AthenaSourceConfig.parse(map['AthenaSourceConfig']) unless map['AthenaSourceConfig'].nil?)
        return data
      end
    end

    class AthenaSourceConfig
      def self.parse(map)
        data = Types::AthenaSourceConfig.new
        data.role_arn = map['RoleArn']
        data.database_name = map['DatabaseName']
        data.data_catalog = map['DataCatalog']
        data.table_name = map['TableName']
        data.work_group_name = map['WorkGroupName']
        data.s3_results_path = map['S3ResultsPath']
        data.back_test_configuration = (Parsers::BackTestConfiguration.parse(map['BackTestConfiguration']) unless map['BackTestConfiguration'].nil?)
        return data
      end
    end

    class BackTestConfiguration
      def self.parse(map)
        data = Types::BackTestConfiguration.new
        data.run_back_test_mode = map['RunBackTestMode']
        return data
      end
    end

    class RedshiftSourceConfig
      def self.parse(map)
        data = Types::RedshiftSourceConfig.new
        data.cluster_identifier = map['ClusterIdentifier']
        data.database_host = map['DatabaseHost']
        data.database_port = map['DatabasePort']
        data.secret_manager_arn = map['SecretManagerArn']
        data.database_name = map['DatabaseName']
        data.table_name = map['TableName']
        data.role_arn = map['RoleArn']
        data.vpc_configuration = (Parsers::VpcConfiguration.parse(map['VpcConfiguration']) unless map['VpcConfiguration'].nil?)
        return data
      end
    end

    class VpcConfiguration
      def self.parse(map)
        data = Types::VpcConfiguration.new
        data.subnet_id_list = (Parsers::SubnetIdList.parse(map['SubnetIdList']) unless map['SubnetIdList'].nil?)
        data.security_group_id_list = (Parsers::SecurityGroupIdList.parse(map['SecurityGroupIdList']) unless map['SecurityGroupIdList'].nil?)
        return data
      end
    end

    class SecurityGroupIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SubnetIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class RDSSourceConfig
      def self.parse(map)
        data = Types::RDSSourceConfig.new
        data.db_instance_identifier = map['DBInstanceIdentifier']
        data.database_host = map['DatabaseHost']
        data.database_port = map['DatabasePort']
        data.secret_manager_arn = map['SecretManagerArn']
        data.database_name = map['DatabaseName']
        data.table_name = map['TableName']
        data.role_arn = map['RoleArn']
        data.vpc_configuration = (Parsers::VpcConfiguration.parse(map['VpcConfiguration']) unless map['VpcConfiguration'].nil?)
        return data
      end
    end

    class CloudWatchConfig
      def self.parse(map)
        data = Types::CloudWatchConfig.new
        data.role_arn = map['RoleArn']
        data.back_test_configuration = (Parsers::BackTestConfiguration.parse(map['BackTestConfiguration']) unless map['BackTestConfiguration'].nil?)
        return data
      end
    end

    class AppFlowConfig
      def self.parse(map)
        data = Types::AppFlowConfig.new
        data.role_arn = map['RoleArn']
        data.flow_name = map['FlowName']
        return data
      end
    end

    class S3SourceConfig
      def self.parse(map)
        data = Types::S3SourceConfig.new
        data.role_arn = map['RoleArn']
        data.templated_path_list = (Parsers::TemplatedPathList.parse(map['TemplatedPathList']) unless map['TemplatedPathList'].nil?)
        data.historical_data_path_list = (Parsers::HistoricalDataPathList.parse(map['HistoricalDataPathList']) unless map['HistoricalDataPathList'].nil?)
        data.file_format_descriptor = (Parsers::FileFormatDescriptor.parse(map['FileFormatDescriptor']) unless map['FileFormatDescriptor'].nil?)
        return data
      end
    end

    class FileFormatDescriptor
      def self.parse(map)
        data = Types::FileFormatDescriptor.new
        data.csv_format_descriptor = (Parsers::CsvFormatDescriptor.parse(map['CsvFormatDescriptor']) unless map['CsvFormatDescriptor'].nil?)
        data.json_format_descriptor = (Parsers::JsonFormatDescriptor.parse(map['JsonFormatDescriptor']) unless map['JsonFormatDescriptor'].nil?)
        return data
      end
    end

    class JsonFormatDescriptor
      def self.parse(map)
        data = Types::JsonFormatDescriptor.new
        data.file_compression = map['FileCompression']
        data.charset = map['Charset']
        return data
      end
    end

    class CsvFormatDescriptor
      def self.parse(map)
        data = Types::CsvFormatDescriptor.new
        data.file_compression = map['FileCompression']
        data.charset = map['Charset']
        data.contains_header = map['ContainsHeader']
        data.delimiter = map['Delimiter']
        data.header_list = (Parsers::HeaderList.parse(map['HeaderList']) unless map['HeaderList'].nil?)
        data.quote_symbol = map['QuoteSymbol']
        return data
      end
    end

    class HeaderList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class HistoricalDataPathList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class TemplatedPathList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class DimensionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class TimestampColumn
      def self.parse(map)
        data = Types::TimestampColumn.new
        data.column_name = map['ColumnName']
        data.column_format = map['ColumnFormat']
        return data
      end
    end

    class MetricList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Metric.parse(value) unless value.nil?
        end
        data
      end
    end

    class Metric
      def self.parse(map)
        data = Types::Metric.new
        data.metric_name = map['MetricName']
        data.aggregation_function = map['AggregationFunction']
        data.namespace = map['Namespace']
        return data
      end
    end

    # Operation Parser for DetectMetricSetConfig
    class DetectMetricSetConfig
      def self.parse(http_resp)
        data = Types::DetectMetricSetConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.detected_metric_set_config = (Parsers::DetectedMetricSetConfig.parse(map['DetectedMetricSetConfig']) unless map['DetectedMetricSetConfig'].nil?)
        data
      end
    end

    class DetectedMetricSetConfig
      def self.parse(map)
        data = Types::DetectedMetricSetConfig.new
        data.offset = (Parsers::DetectedField.parse(map['Offset']) unless map['Offset'].nil?)
        data.metric_set_frequency = (Parsers::DetectedField.parse(map['MetricSetFrequency']) unless map['MetricSetFrequency'].nil?)
        data.metric_source = (Parsers::DetectedMetricSource.parse(map['MetricSource']) unless map['MetricSource'].nil?)
        return data
      end
    end

    class DetectedMetricSource
      def self.parse(map)
        data = Types::DetectedMetricSource.new
        data.s3_source_config = (Parsers::DetectedS3SourceConfig.parse(map['S3SourceConfig']) unless map['S3SourceConfig'].nil?)
        return data
      end
    end

    class DetectedS3SourceConfig
      def self.parse(map)
        data = Types::DetectedS3SourceConfig.new
        data.file_format_descriptor = (Parsers::DetectedFileFormatDescriptor.parse(map['FileFormatDescriptor']) unless map['FileFormatDescriptor'].nil?)
        return data
      end
    end

    class DetectedFileFormatDescriptor
      def self.parse(map)
        data = Types::DetectedFileFormatDescriptor.new
        data.csv_format_descriptor = (Parsers::DetectedCsvFormatDescriptor.parse(map['CsvFormatDescriptor']) unless map['CsvFormatDescriptor'].nil?)
        data.json_format_descriptor = (Parsers::DetectedJsonFormatDescriptor.parse(map['JsonFormatDescriptor']) unless map['JsonFormatDescriptor'].nil?)
        return data
      end
    end

    class DetectedJsonFormatDescriptor
      def self.parse(map)
        data = Types::DetectedJsonFormatDescriptor.new
        data.file_compression = (Parsers::DetectedField.parse(map['FileCompression']) unless map['FileCompression'].nil?)
        data.charset = (Parsers::DetectedField.parse(map['Charset']) unless map['Charset'].nil?)
        return data
      end
    end

    class DetectedField
      def self.parse(map)
        data = Types::DetectedField.new
        data.value = (Parsers::AttributeValue.parse(map['Value']) unless map['Value'].nil?)
        data.confidence = map['Confidence']
        data.message = map['Message']
        return data
      end
    end

    class AttributeValue
      def self.parse(map)
        data = Types::AttributeValue.new
        data.s = map['S']
        data.n = map['N']
        data.b = map['B']
        data.ss = (Parsers::StringListAttributeValue.parse(map['SS']) unless map['SS'].nil?)
        data.ns = (Parsers::NumberListAttributeValue.parse(map['NS']) unless map['NS'].nil?)
        data.bs = (Parsers::BinaryListAttributeValue.parse(map['BS']) unless map['BS'].nil?)
        return data
      end
    end

    class BinaryListAttributeValue
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class NumberListAttributeValue
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class StringListAttributeValue
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class DetectedCsvFormatDescriptor
      def self.parse(map)
        data = Types::DetectedCsvFormatDescriptor.new
        data.file_compression = (Parsers::DetectedField.parse(map['FileCompression']) unless map['FileCompression'].nil?)
        data.charset = (Parsers::DetectedField.parse(map['Charset']) unless map['Charset'].nil?)
        data.contains_header = (Parsers::DetectedField.parse(map['ContainsHeader']) unless map['ContainsHeader'].nil?)
        data.delimiter = (Parsers::DetectedField.parse(map['Delimiter']) unless map['Delimiter'].nil?)
        data.header_list = (Parsers::DetectedField.parse(map['HeaderList']) unless map['HeaderList'].nil?)
        data.quote_symbol = (Parsers::DetectedField.parse(map['QuoteSymbol']) unless map['QuoteSymbol'].nil?)
        return data
      end
    end

    # Operation Parser for GetAnomalyGroup
    class GetAnomalyGroup
      def self.parse(http_resp)
        data = Types::GetAnomalyGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.anomaly_group = (Parsers::AnomalyGroup.parse(map['AnomalyGroup']) unless map['AnomalyGroup'].nil?)
        data
      end
    end

    class AnomalyGroup
      def self.parse(map)
        data = Types::AnomalyGroup.new
        data.start_time = map['StartTime']
        data.end_time = map['EndTime']
        data.anomaly_group_id = map['AnomalyGroupId']
        data.anomaly_group_score = Hearth::NumberHelper.deserialize(map['AnomalyGroupScore'])
        data.primary_metric_name = map['PrimaryMetricName']
        data.metric_level_impact_list = (Parsers::MetricLevelImpactList.parse(map['MetricLevelImpactList']) unless map['MetricLevelImpactList'].nil?)
        return data
      end
    end

    class MetricLevelImpactList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MetricLevelImpact.parse(value) unless value.nil?
        end
        data
      end
    end

    class MetricLevelImpact
      def self.parse(map)
        data = Types::MetricLevelImpact.new
        data.metric_name = map['MetricName']
        data.num_time_series = map['NumTimeSeries']
        data.contribution_matrix = (Parsers::ContributionMatrix.parse(map['ContributionMatrix']) unless map['ContributionMatrix'].nil?)
        return data
      end
    end

    class ContributionMatrix
      def self.parse(map)
        data = Types::ContributionMatrix.new
        data.dimension_contribution_list = (Parsers::DimensionContributionList.parse(map['DimensionContributionList']) unless map['DimensionContributionList'].nil?)
        return data
      end
    end

    class DimensionContributionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DimensionContribution.parse(value) unless value.nil?
        end
        data
      end
    end

    class DimensionContribution
      def self.parse(map)
        data = Types::DimensionContribution.new
        data.dimension_name = map['DimensionName']
        data.dimension_value_contribution_list = (Parsers::DimensionValueContributionList.parse(map['DimensionValueContributionList']) unless map['DimensionValueContributionList'].nil?)
        return data
      end
    end

    class DimensionValueContributionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DimensionValueContribution.parse(value) unless value.nil?
        end
        data
      end
    end

    class DimensionValueContribution
      def self.parse(map)
        data = Types::DimensionValueContribution.new
        data.dimension_value = map['DimensionValue']
        data.contribution_score = Hearth::NumberHelper.deserialize(map['ContributionScore'])
        return data
      end
    end

    # Operation Parser for GetFeedback
    class GetFeedback
      def self.parse(http_resp)
        data = Types::GetFeedbackOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.anomaly_group_time_series_feedback = (Parsers::TimeSeriesFeedbackList.parse(map['AnomalyGroupTimeSeriesFeedback']) unless map['AnomalyGroupTimeSeriesFeedback'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TimeSeriesFeedbackList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TimeSeriesFeedback.parse(value) unless value.nil?
        end
        data
      end
    end

    class TimeSeriesFeedback
      def self.parse(map)
        data = Types::TimeSeriesFeedback.new
        data.time_series_id = map['TimeSeriesId']
        data.is_anomaly = map['IsAnomaly']
        return data
      end
    end

    # Operation Parser for GetSampleData
    class GetSampleData
      def self.parse(http_resp)
        data = Types::GetSampleDataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.header_values = (Parsers::HeaderValueList.parse(map['HeaderValues']) unless map['HeaderValues'].nil?)
        data.sample_rows = (Parsers::SampleRows.parse(map['SampleRows']) unless map['SampleRows'].nil?)
        data
      end
    end

    class SampleRows
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SampleRow.parse(value) unless value.nil?
        end
        data
      end
    end

    class SampleRow
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class HeaderValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListAlerts
    class ListAlerts
      def self.parse(http_resp)
        data = Types::ListAlertsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.alert_summary_list = (Parsers::AlertSummaryList.parse(map['AlertSummaryList']) unless map['AlertSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AlertSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AlertSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AlertSummary
      def self.parse(map)
        data = Types::AlertSummary.new
        data.alert_arn = map['AlertArn']
        data.anomaly_detector_arn = map['AnomalyDetectorArn']
        data.alert_name = map['AlertName']
        data.alert_sensitivity_threshold = map['AlertSensitivityThreshold']
        data.alert_type = map['AlertType']
        data.alert_status = map['AlertStatus']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListAnomalyDetectors
    class ListAnomalyDetectors
      def self.parse(http_resp)
        data = Types::ListAnomalyDetectorsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.anomaly_detector_summary_list = (Parsers::AnomalyDetectorSummaryList.parse(map['AnomalyDetectorSummaryList']) unless map['AnomalyDetectorSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AnomalyDetectorSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AnomalyDetectorSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AnomalyDetectorSummary
      def self.parse(map)
        data = Types::AnomalyDetectorSummary.new
        data.anomaly_detector_arn = map['AnomalyDetectorArn']
        data.anomaly_detector_name = map['AnomalyDetectorName']
        data.anomaly_detector_description = map['AnomalyDetectorDescription']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        data.status = map['Status']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListAnomalyGroupRelatedMetrics
    class ListAnomalyGroupRelatedMetrics
      def self.parse(http_resp)
        data = Types::ListAnomalyGroupRelatedMetricsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.inter_metric_impact_list = (Parsers::InterMetricImpactList.parse(map['InterMetricImpactList']) unless map['InterMetricImpactList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InterMetricImpactList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InterMetricImpactDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class InterMetricImpactDetails
      def self.parse(map)
        data = Types::InterMetricImpactDetails.new
        data.metric_name = map['MetricName']
        data.anomaly_group_id = map['AnomalyGroupId']
        data.relationship_type = map['RelationshipType']
        data.contribution_percentage = Hearth::NumberHelper.deserialize(map['ContributionPercentage'])
        return data
      end
    end

    # Operation Parser for ListAnomalyGroupSummaries
    class ListAnomalyGroupSummaries
      def self.parse(http_resp)
        data = Types::ListAnomalyGroupSummariesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.anomaly_group_summary_list = (Parsers::AnomalyGroupSummaryList.parse(map['AnomalyGroupSummaryList']) unless map['AnomalyGroupSummaryList'].nil?)
        data.anomaly_group_statistics = (Parsers::AnomalyGroupStatistics.parse(map['AnomalyGroupStatistics']) unless map['AnomalyGroupStatistics'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AnomalyGroupStatistics
      def self.parse(map)
        data = Types::AnomalyGroupStatistics.new
        data.evaluation_start_date = map['EvaluationStartDate']
        data.total_count = map['TotalCount']
        data.itemized_metric_stats_list = (Parsers::ItemizedMetricStatsList.parse(map['ItemizedMetricStatsList']) unless map['ItemizedMetricStatsList'].nil?)
        return data
      end
    end

    class ItemizedMetricStatsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ItemizedMetricStats.parse(value) unless value.nil?
        end
        data
      end
    end

    class ItemizedMetricStats
      def self.parse(map)
        data = Types::ItemizedMetricStats.new
        data.metric_name = map['MetricName']
        data.occurrence_count = map['OccurrenceCount']
        return data
      end
    end

    class AnomalyGroupSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AnomalyGroupSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AnomalyGroupSummary
      def self.parse(map)
        data = Types::AnomalyGroupSummary.new
        data.start_time = map['StartTime']
        data.end_time = map['EndTime']
        data.anomaly_group_id = map['AnomalyGroupId']
        data.anomaly_group_score = Hearth::NumberHelper.deserialize(map['AnomalyGroupScore'])
        data.primary_metric_name = map['PrimaryMetricName']
        return data
      end
    end

    # Operation Parser for ListAnomalyGroupTimeSeries
    class ListAnomalyGroupTimeSeries
      def self.parse(http_resp)
        data = Types::ListAnomalyGroupTimeSeriesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.anomaly_group_id = map['AnomalyGroupId']
        data.metric_name = map['MetricName']
        data.timestamp_list = (Parsers::TimestampList.parse(map['TimestampList']) unless map['TimestampList'].nil?)
        data.next_token = map['NextToken']
        data.time_series_list = (Parsers::TimeSeriesList.parse(map['TimeSeriesList']) unless map['TimeSeriesList'].nil?)
        data
      end
    end

    class TimeSeriesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TimeSeries.parse(value) unless value.nil?
        end
        data
      end
    end

    class TimeSeries
      def self.parse(map)
        data = Types::TimeSeries.new
        data.time_series_id = map['TimeSeriesId']
        data.dimension_list = (Parsers::DimensionNameValueList.parse(map['DimensionList']) unless map['DimensionList'].nil?)
        data.metric_value_list = (Parsers::MetricValueList.parse(map['MetricValueList']) unless map['MetricValueList'].nil?)
        return data
      end
    end

    class MetricValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Hearth::NumberHelper.deserialize(value) unless value.nil?
        end
        data
      end
    end

    class DimensionNameValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DimensionNameValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class DimensionNameValue
      def self.parse(map)
        data = Types::DimensionNameValue.new
        data.dimension_name = map['DimensionName']
        data.dimension_value = map['DimensionValue']
        return data
      end
    end

    class TimestampList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListMetricSets
    class ListMetricSets
      def self.parse(http_resp)
        data = Types::ListMetricSetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.metric_set_summary_list = (Parsers::MetricSetSummaryList.parse(map['MetricSetSummaryList']) unless map['MetricSetSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MetricSetSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MetricSetSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class MetricSetSummary
      def self.parse(map)
        data = Types::MetricSetSummary.new
        data.metric_set_arn = map['MetricSetArn']
        data.anomaly_detector_arn = map['AnomalyDetectorArn']
        data.metric_set_description = map['MetricSetDescription']
        data.metric_set_name = map['MetricSetName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for PutFeedback
    class PutFeedback
      def self.parse(http_resp)
        data = Types::PutFeedbackOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateAnomalyDetector
    class UpdateAnomalyDetector
      def self.parse(http_resp)
        data = Types::UpdateAnomalyDetectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.anomaly_detector_arn = map['AnomalyDetectorArn']
        data
      end
    end

    # Operation Parser for UpdateMetricSet
    class UpdateMetricSet
      def self.parse(http_resp)
        data = Types::UpdateMetricSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.metric_set_arn = map['MetricSetArn']
        data
      end
    end
  end
end
