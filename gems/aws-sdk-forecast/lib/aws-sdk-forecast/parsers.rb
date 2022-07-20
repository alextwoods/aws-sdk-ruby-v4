# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Forecast
  module Parsers

    # Operation Parser for CreateAutoPredictor
    class CreateAutoPredictor
      def self.parse(http_resp)
        data = Types::CreateAutoPredictorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.predictor_arn = map['PredictorArn']
        data
      end
    end

    # Error Parser for InvalidInputException
    class InvalidInputException
      def self.parse(http_resp)
        data = Types::InvalidInputException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateDataset
    class CreateDataset
      def self.parse(http_resp)
        data = Types::CreateDatasetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dataset_arn = map['DatasetArn']
        data
      end
    end

    # Operation Parser for CreateDatasetGroup
    class CreateDatasetGroup
      def self.parse(http_resp)
        data = Types::CreateDatasetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dataset_group_arn = map['DatasetGroupArn']
        data
      end
    end

    # Operation Parser for CreateDatasetImportJob
    class CreateDatasetImportJob
      def self.parse(http_resp)
        data = Types::CreateDatasetImportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dataset_import_job_arn = map['DatasetImportJobArn']
        data
      end
    end

    # Operation Parser for CreateExplainability
    class CreateExplainability
      def self.parse(http_resp)
        data = Types::CreateExplainabilityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.explainability_arn = map['ExplainabilityArn']
        data
      end
    end

    # Operation Parser for CreateExplainabilityExport
    class CreateExplainabilityExport
      def self.parse(http_resp)
        data = Types::CreateExplainabilityExportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.explainability_export_arn = map['ExplainabilityExportArn']
        data
      end
    end

    # Operation Parser for CreateForecast
    class CreateForecast
      def self.parse(http_resp)
        data = Types::CreateForecastOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.forecast_arn = map['ForecastArn']
        data
      end
    end

    # Operation Parser for CreateForecastExportJob
    class CreateForecastExportJob
      def self.parse(http_resp)
        data = Types::CreateForecastExportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.forecast_export_job_arn = map['ForecastExportJobArn']
        data
      end
    end

    # Operation Parser for CreateMonitor
    class CreateMonitor
      def self.parse(http_resp)
        data = Types::CreateMonitorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.monitor_arn = map['MonitorArn']
        data
      end
    end

    # Operation Parser for CreatePredictor
    class CreatePredictor
      def self.parse(http_resp)
        data = Types::CreatePredictorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.predictor_arn = map['PredictorArn']
        data
      end
    end

    # Operation Parser for CreatePredictorBacktestExportJob
    class CreatePredictorBacktestExportJob
      def self.parse(http_resp)
        data = Types::CreatePredictorBacktestExportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.predictor_backtest_export_job_arn = map['PredictorBacktestExportJobArn']
        data
      end
    end

    # Operation Parser for DeleteDataset
    class DeleteDataset
      def self.parse(http_resp)
        data = Types::DeleteDatasetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteDatasetGroup
    class DeleteDatasetGroup
      def self.parse(http_resp)
        data = Types::DeleteDatasetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteDatasetImportJob
    class DeleteDatasetImportJob
      def self.parse(http_resp)
        data = Types::DeleteDatasetImportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteExplainability
    class DeleteExplainability
      def self.parse(http_resp)
        data = Types::DeleteExplainabilityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteExplainabilityExport
    class DeleteExplainabilityExport
      def self.parse(http_resp)
        data = Types::DeleteExplainabilityExportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteForecast
    class DeleteForecast
      def self.parse(http_resp)
        data = Types::DeleteForecastOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteForecastExportJob
    class DeleteForecastExportJob
      def self.parse(http_resp)
        data = Types::DeleteForecastExportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteMonitor
    class DeleteMonitor
      def self.parse(http_resp)
        data = Types::DeleteMonitorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeletePredictor
    class DeletePredictor
      def self.parse(http_resp)
        data = Types::DeletePredictorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeletePredictorBacktestExportJob
    class DeletePredictorBacktestExportJob
      def self.parse(http_resp)
        data = Types::DeletePredictorBacktestExportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteResourceTree
    class DeleteResourceTree
      def self.parse(http_resp)
        data = Types::DeleteResourceTreeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeAutoPredictor
    class DescribeAutoPredictor
      def self.parse(http_resp)
        data = Types::DescribeAutoPredictorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.predictor_arn = map['PredictorArn']
        data.predictor_name = map['PredictorName']
        data.forecast_horizon = map['ForecastHorizon']
        data.forecast_types = (ForecastTypes.parse(map['ForecastTypes']) unless map['ForecastTypes'].nil?)
        data.forecast_frequency = map['ForecastFrequency']
        data.forecast_dimensions = (ForecastDimensions.parse(map['ForecastDimensions']) unless map['ForecastDimensions'].nil?)
        data.dataset_import_job_arns = (ArnList.parse(map['DatasetImportJobArns']) unless map['DatasetImportJobArns'].nil?)
        data.data_config = (DataConfig.parse(map['DataConfig']) unless map['DataConfig'].nil?)
        data.encryption_config = (EncryptionConfig.parse(map['EncryptionConfig']) unless map['EncryptionConfig'].nil?)
        data.reference_predictor_summary = (ReferencePredictorSummary.parse(map['ReferencePredictorSummary']) unless map['ReferencePredictorSummary'].nil?)
        data.estimated_time_remaining_in_minutes = map['EstimatedTimeRemainingInMinutes']
        data.status = map['Status']
        data.message = map['Message']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        data.optimization_metric = map['OptimizationMetric']
        data.explainability_info = (ExplainabilityInfo.parse(map['ExplainabilityInfo']) unless map['ExplainabilityInfo'].nil?)
        data.monitor_info = (MonitorInfo.parse(map['MonitorInfo']) unless map['MonitorInfo'].nil?)
        data.time_alignment_boundary = (TimeAlignmentBoundary.parse(map['TimeAlignmentBoundary']) unless map['TimeAlignmentBoundary'].nil?)
        data
      end
    end

    class TimeAlignmentBoundary
      def self.parse(map)
        data = Types::TimeAlignmentBoundary.new
        data.month = map['Month']
        data.day_of_month = map['DayOfMonth']
        data.day_of_week = map['DayOfWeek']
        data.hour = map['Hour']
        return data
      end
    end

    class MonitorInfo
      def self.parse(map)
        data = Types::MonitorInfo.new
        data.monitor_arn = map['MonitorArn']
        data.status = map['Status']
        return data
      end
    end

    class ExplainabilityInfo
      def self.parse(map)
        data = Types::ExplainabilityInfo.new
        data.explainability_arn = map['ExplainabilityArn']
        data.status = map['Status']
        return data
      end
    end

    class ReferencePredictorSummary
      def self.parse(map)
        data = Types::ReferencePredictorSummary.new
        data.arn = map['Arn']
        data.state = map['State']
        return data
      end
    end

    class EncryptionConfig
      def self.parse(map)
        data = Types::EncryptionConfig.new
        data.role_arn = map['RoleArn']
        data.kms_key_arn = map['KMSKeyArn']
        return data
      end
    end

    class DataConfig
      def self.parse(map)
        data = Types::DataConfig.new
        data.dataset_group_arn = map['DatasetGroupArn']
        data.attribute_configs = (AttributeConfigs.parse(map['AttributeConfigs']) unless map['AttributeConfigs'].nil?)
        data.additional_datasets = (AdditionalDatasets.parse(map['AdditionalDatasets']) unless map['AdditionalDatasets'].nil?)
        return data
      end
    end

    class AdditionalDatasets
      def self.parse(list)
        list.map do |value|
          AdditionalDataset.parse(value) unless value.nil?
        end
      end
    end

    class AdditionalDataset
      def self.parse(map)
        data = Types::AdditionalDataset.new
        data.name = map['Name']
        data.configuration = (Configuration.parse(map['Configuration']) unless map['Configuration'].nil?)
        return data
      end
    end

    class Configuration
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Values.parse(value) unless value.nil?
        end
        data
      end
    end

    class Values
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class AttributeConfigs
      def self.parse(list)
        list.map do |value|
          AttributeConfig.parse(value) unless value.nil?
        end
      end
    end

    class AttributeConfig
      def self.parse(map)
        data = Types::AttributeConfig.new
        data.attribute_name = map['AttributeName']
        data.transformations = (Transformations.parse(map['Transformations']) unless map['Transformations'].nil?)
        return data
      end
    end

    class Transformations
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ArnList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ForecastDimensions
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ForecastTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeDataset
    class DescribeDataset
      def self.parse(http_resp)
        data = Types::DescribeDatasetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dataset_arn = map['DatasetArn']
        data.dataset_name = map['DatasetName']
        data.domain = map['Domain']
        data.dataset_type = map['DatasetType']
        data.data_frequency = map['DataFrequency']
        data.schema = (Schema.parse(map['Schema']) unless map['Schema'].nil?)
        data.encryption_config = (EncryptionConfig.parse(map['EncryptionConfig']) unless map['EncryptionConfig'].nil?)
        data.status = map['Status']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        data
      end
    end

    class Schema
      def self.parse(map)
        data = Types::Schema.new
        data.attributes = (SchemaAttributes.parse(map['Attributes']) unless map['Attributes'].nil?)
        return data
      end
    end

    class SchemaAttributes
      def self.parse(list)
        list.map do |value|
          SchemaAttribute.parse(value) unless value.nil?
        end
      end
    end

    class SchemaAttribute
      def self.parse(map)
        data = Types::SchemaAttribute.new
        data.attribute_name = map['AttributeName']
        data.attribute_type = map['AttributeType']
        return data
      end
    end

    # Operation Parser for DescribeDatasetGroup
    class DescribeDatasetGroup
      def self.parse(http_resp)
        data = Types::DescribeDatasetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dataset_group_name = map['DatasetGroupName']
        data.dataset_group_arn = map['DatasetGroupArn']
        data.dataset_arns = (ArnList.parse(map['DatasetArns']) unless map['DatasetArns'].nil?)
        data.domain = map['Domain']
        data.status = map['Status']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        data
      end
    end

    # Operation Parser for DescribeDatasetImportJob
    class DescribeDatasetImportJob
      def self.parse(http_resp)
        data = Types::DescribeDatasetImportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dataset_import_job_name = map['DatasetImportJobName']
        data.dataset_import_job_arn = map['DatasetImportJobArn']
        data.dataset_arn = map['DatasetArn']
        data.timestamp_format = map['TimestampFormat']
        data.time_zone = map['TimeZone']
        data.use_geolocation_for_time_zone = map['UseGeolocationForTimeZone']
        data.geolocation_format = map['GeolocationFormat']
        data.data_source = (DataSource.parse(map['DataSource']) unless map['DataSource'].nil?)
        data.estimated_time_remaining_in_minutes = map['EstimatedTimeRemainingInMinutes']
        data.field_statistics = (FieldStatistics.parse(map['FieldStatistics']) unless map['FieldStatistics'].nil?)
        data.data_size = Hearth::NumberHelper.deserialize(map['DataSize'])
        data.status = map['Status']
        data.message = map['Message']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        data.format = map['Format']
        data
      end
    end

    class FieldStatistics
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Statistics.parse(value) unless value.nil?
        end
        data
      end
    end

    class Statistics
      def self.parse(map)
        data = Types::Statistics.new
        data.count = map['Count']
        data.count_distinct = map['CountDistinct']
        data.count_null = map['CountNull']
        data.count_nan = map['CountNan']
        data.min = map['Min']
        data.max = map['Max']
        data.avg = Hearth::NumberHelper.deserialize(map['Avg'])
        data.stddev = Hearth::NumberHelper.deserialize(map['Stddev'])
        data.count_long = map['CountLong']
        data.count_distinct_long = map['CountDistinctLong']
        data.count_null_long = map['CountNullLong']
        data.count_nan_long = map['CountNanLong']
        return data
      end
    end

    class DataSource
      def self.parse(map)
        data = Types::DataSource.new
        data.s3_config = (S3Config.parse(map['S3Config']) unless map['S3Config'].nil?)
        return data
      end
    end

    class S3Config
      def self.parse(map)
        data = Types::S3Config.new
        data.path = map['Path']
        data.role_arn = map['RoleArn']
        data.kms_key_arn = map['KMSKeyArn']
        return data
      end
    end

    # Operation Parser for DescribeExplainability
    class DescribeExplainability
      def self.parse(http_resp)
        data = Types::DescribeExplainabilityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.explainability_arn = map['ExplainabilityArn']
        data.explainability_name = map['ExplainabilityName']
        data.resource_arn = map['ResourceArn']
        data.explainability_config = (ExplainabilityConfig.parse(map['ExplainabilityConfig']) unless map['ExplainabilityConfig'].nil?)
        data.enable_visualization = map['EnableVisualization']
        data.data_source = (DataSource.parse(map['DataSource']) unless map['DataSource'].nil?)
        data.schema = (Schema.parse(map['Schema']) unless map['Schema'].nil?)
        data.start_date_time = map['StartDateTime']
        data.end_date_time = map['EndDateTime']
        data.estimated_time_remaining_in_minutes = map['EstimatedTimeRemainingInMinutes']
        data.message = map['Message']
        data.status = map['Status']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        data
      end
    end

    class ExplainabilityConfig
      def self.parse(map)
        data = Types::ExplainabilityConfig.new
        data.time_series_granularity = map['TimeSeriesGranularity']
        data.time_point_granularity = map['TimePointGranularity']
        return data
      end
    end

    # Operation Parser for DescribeExplainabilityExport
    class DescribeExplainabilityExport
      def self.parse(http_resp)
        data = Types::DescribeExplainabilityExportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.explainability_export_arn = map['ExplainabilityExportArn']
        data.explainability_export_name = map['ExplainabilityExportName']
        data.explainability_arn = map['ExplainabilityArn']
        data.destination = (DataDestination.parse(map['Destination']) unless map['Destination'].nil?)
        data.message = map['Message']
        data.status = map['Status']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        data.format = map['Format']
        data
      end
    end

    class DataDestination
      def self.parse(map)
        data = Types::DataDestination.new
        data.s3_config = (S3Config.parse(map['S3Config']) unless map['S3Config'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeForecast
    class DescribeForecast
      def self.parse(http_resp)
        data = Types::DescribeForecastOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.forecast_arn = map['ForecastArn']
        data.forecast_name = map['ForecastName']
        data.forecast_types = (ForecastTypes.parse(map['ForecastTypes']) unless map['ForecastTypes'].nil?)
        data.predictor_arn = map['PredictorArn']
        data.dataset_group_arn = map['DatasetGroupArn']
        data.estimated_time_remaining_in_minutes = map['EstimatedTimeRemainingInMinutes']
        data.status = map['Status']
        data.message = map['Message']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        data.time_series_selector = (TimeSeriesSelector.parse(map['TimeSeriesSelector']) unless map['TimeSeriesSelector'].nil?)
        data
      end
    end

    class TimeSeriesSelector
      def self.parse(map)
        data = Types::TimeSeriesSelector.new
        data.time_series_identifiers = (TimeSeriesIdentifiers.parse(map['TimeSeriesIdentifiers']) unless map['TimeSeriesIdentifiers'].nil?)
        return data
      end
    end

    class TimeSeriesIdentifiers
      def self.parse(map)
        data = Types::TimeSeriesIdentifiers.new
        data.data_source = (DataSource.parse(map['DataSource']) unless map['DataSource'].nil?)
        data.schema = (Schema.parse(map['Schema']) unless map['Schema'].nil?)
        data.format = map['Format']
        return data
      end
    end

    # Operation Parser for DescribeForecastExportJob
    class DescribeForecastExportJob
      def self.parse(http_resp)
        data = Types::DescribeForecastExportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.forecast_export_job_arn = map['ForecastExportJobArn']
        data.forecast_export_job_name = map['ForecastExportJobName']
        data.forecast_arn = map['ForecastArn']
        data.destination = (DataDestination.parse(map['Destination']) unless map['Destination'].nil?)
        data.message = map['Message']
        data.status = map['Status']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        data.format = map['Format']
        data
      end
    end

    # Operation Parser for DescribeMonitor
    class DescribeMonitor
      def self.parse(http_resp)
        data = Types::DescribeMonitorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.monitor_name = map['MonitorName']
        data.monitor_arn = map['MonitorArn']
        data.resource_arn = map['ResourceArn']
        data.status = map['Status']
        data.last_evaluation_time = Time.at(map['LastEvaluationTime'].to_i) if map['LastEvaluationTime']
        data.last_evaluation_state = map['LastEvaluationState']
        data.baseline = (Baseline.parse(map['Baseline']) unless map['Baseline'].nil?)
        data.message = map['Message']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        data.estimated_evaluation_time_remaining_in_minutes = map['EstimatedEvaluationTimeRemainingInMinutes']
        data
      end
    end

    class Baseline
      def self.parse(map)
        data = Types::Baseline.new
        data.predictor_baseline = (PredictorBaseline.parse(map['PredictorBaseline']) unless map['PredictorBaseline'].nil?)
        return data
      end
    end

    class PredictorBaseline
      def self.parse(map)
        data = Types::PredictorBaseline.new
        data.baseline_metrics = (BaselineMetrics.parse(map['BaselineMetrics']) unless map['BaselineMetrics'].nil?)
        return data
      end
    end

    class BaselineMetrics
      def self.parse(list)
        list.map do |value|
          BaselineMetric.parse(value) unless value.nil?
        end
      end
    end

    class BaselineMetric
      def self.parse(map)
        data = Types::BaselineMetric.new
        data.name = map['Name']
        data.value = Hearth::NumberHelper.deserialize(map['Value'])
        return data
      end
    end

    # Operation Parser for DescribePredictor
    class DescribePredictor
      def self.parse(http_resp)
        data = Types::DescribePredictorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.predictor_arn = map['PredictorArn']
        data.predictor_name = map['PredictorName']
        data.algorithm_arn = map['AlgorithmArn']
        data.auto_ml_algorithm_arns = (ArnList.parse(map['AutoMLAlgorithmArns']) unless map['AutoMLAlgorithmArns'].nil?)
        data.forecast_horizon = map['ForecastHorizon']
        data.forecast_types = (ForecastTypes.parse(map['ForecastTypes']) unless map['ForecastTypes'].nil?)
        data.perform_auto_ml = map['PerformAutoML']
        data.auto_ml_override_strategy = map['AutoMLOverrideStrategy']
        data.perform_hpo = map['PerformHPO']
        data.training_parameters = (TrainingParameters.parse(map['TrainingParameters']) unless map['TrainingParameters'].nil?)
        data.evaluation_parameters = (EvaluationParameters.parse(map['EvaluationParameters']) unless map['EvaluationParameters'].nil?)
        data.hpo_config = (HyperParameterTuningJobConfig.parse(map['HPOConfig']) unless map['HPOConfig'].nil?)
        data.input_data_config = (InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.featurization_config = (FeaturizationConfig.parse(map['FeaturizationConfig']) unless map['FeaturizationConfig'].nil?)
        data.encryption_config = (EncryptionConfig.parse(map['EncryptionConfig']) unless map['EncryptionConfig'].nil?)
        data.predictor_execution_details = (PredictorExecutionDetails.parse(map['PredictorExecutionDetails']) unless map['PredictorExecutionDetails'].nil?)
        data.estimated_time_remaining_in_minutes = map['EstimatedTimeRemainingInMinutes']
        data.is_auto_predictor = map['IsAutoPredictor']
        data.dataset_import_job_arns = (ArnList.parse(map['DatasetImportJobArns']) unless map['DatasetImportJobArns'].nil?)
        data.status = map['Status']
        data.message = map['Message']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        data.optimization_metric = map['OptimizationMetric']
        data
      end
    end

    class PredictorExecutionDetails
      def self.parse(map)
        data = Types::PredictorExecutionDetails.new
        data.predictor_executions = (PredictorExecutions.parse(map['PredictorExecutions']) unless map['PredictorExecutions'].nil?)
        return data
      end
    end

    class PredictorExecutions
      def self.parse(list)
        list.map do |value|
          PredictorExecution.parse(value) unless value.nil?
        end
      end
    end

    class PredictorExecution
      def self.parse(map)
        data = Types::PredictorExecution.new
        data.algorithm_arn = map['AlgorithmArn']
        data.test_windows = (TestWindowDetails.parse(map['TestWindows']) unless map['TestWindows'].nil?)
        return data
      end
    end

    class TestWindowDetails
      def self.parse(list)
        list.map do |value|
          TestWindowSummary.parse(value) unless value.nil?
        end
      end
    end

    class TestWindowSummary
      def self.parse(map)
        data = Types::TestWindowSummary.new
        data.test_window_start = Time.at(map['TestWindowStart'].to_i) if map['TestWindowStart']
        data.test_window_end = Time.at(map['TestWindowEnd'].to_i) if map['TestWindowEnd']
        data.status = map['Status']
        data.message = map['Message']
        return data
      end
    end

    class FeaturizationConfig
      def self.parse(map)
        data = Types::FeaturizationConfig.new
        data.forecast_frequency = map['ForecastFrequency']
        data.forecast_dimensions = (ForecastDimensions.parse(map['ForecastDimensions']) unless map['ForecastDimensions'].nil?)
        data.featurizations = (Featurizations.parse(map['Featurizations']) unless map['Featurizations'].nil?)
        return data
      end
    end

    class Featurizations
      def self.parse(list)
        list.map do |value|
          Featurization.parse(value) unless value.nil?
        end
      end
    end

    class Featurization
      def self.parse(map)
        data = Types::Featurization.new
        data.attribute_name = map['AttributeName']
        data.featurization_pipeline = (FeaturizationPipeline.parse(map['FeaturizationPipeline']) unless map['FeaturizationPipeline'].nil?)
        return data
      end
    end

    class FeaturizationPipeline
      def self.parse(list)
        list.map do |value|
          FeaturizationMethod.parse(value) unless value.nil?
        end
      end
    end

    class FeaturizationMethod
      def self.parse(map)
        data = Types::FeaturizationMethod.new
        data.featurization_method_name = map['FeaturizationMethodName']
        data.featurization_method_parameters = (FeaturizationMethodParameters.parse(map['FeaturizationMethodParameters']) unless map['FeaturizationMethodParameters'].nil?)
        return data
      end
    end

    class FeaturizationMethodParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class InputDataConfig
      def self.parse(map)
        data = Types::InputDataConfig.new
        data.dataset_group_arn = map['DatasetGroupArn']
        data.supplementary_features = (SupplementaryFeatures.parse(map['SupplementaryFeatures']) unless map['SupplementaryFeatures'].nil?)
        return data
      end
    end

    class SupplementaryFeatures
      def self.parse(list)
        list.map do |value|
          SupplementaryFeature.parse(value) unless value.nil?
        end
      end
    end

    class SupplementaryFeature
      def self.parse(map)
        data = Types::SupplementaryFeature.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    class HyperParameterTuningJobConfig
      def self.parse(map)
        data = Types::HyperParameterTuningJobConfig.new
        data.parameter_ranges = (ParameterRanges.parse(map['ParameterRanges']) unless map['ParameterRanges'].nil?)
        return data
      end
    end

    class ParameterRanges
      def self.parse(map)
        data = Types::ParameterRanges.new
        data.categorical_parameter_ranges = (CategoricalParameterRanges.parse(map['CategoricalParameterRanges']) unless map['CategoricalParameterRanges'].nil?)
        data.continuous_parameter_ranges = (ContinuousParameterRanges.parse(map['ContinuousParameterRanges']) unless map['ContinuousParameterRanges'].nil?)
        data.integer_parameter_ranges = (IntegerParameterRanges.parse(map['IntegerParameterRanges']) unless map['IntegerParameterRanges'].nil?)
        return data
      end
    end

    class IntegerParameterRanges
      def self.parse(list)
        list.map do |value|
          IntegerParameterRange.parse(value) unless value.nil?
        end
      end
    end

    class IntegerParameterRange
      def self.parse(map)
        data = Types::IntegerParameterRange.new
        data.name = map['Name']
        data.max_value = map['MaxValue']
        data.min_value = map['MinValue']
        data.scaling_type = map['ScalingType']
        return data
      end
    end

    class ContinuousParameterRanges
      def self.parse(list)
        list.map do |value|
          ContinuousParameterRange.parse(value) unless value.nil?
        end
      end
    end

    class ContinuousParameterRange
      def self.parse(map)
        data = Types::ContinuousParameterRange.new
        data.name = map['Name']
        data.max_value = Hearth::NumberHelper.deserialize(map['MaxValue'])
        data.min_value = Hearth::NumberHelper.deserialize(map['MinValue'])
        data.scaling_type = map['ScalingType']
        return data
      end
    end

    class CategoricalParameterRanges
      def self.parse(list)
        list.map do |value|
          CategoricalParameterRange.parse(value) unless value.nil?
        end
      end
    end

    class CategoricalParameterRange
      def self.parse(map)
        data = Types::CategoricalParameterRange.new
        data.name = map['Name']
        data.values = (Values.parse(map['Values']) unless map['Values'].nil?)
        return data
      end
    end

    class EvaluationParameters
      def self.parse(map)
        data = Types::EvaluationParameters.new
        data.number_of_backtest_windows = map['NumberOfBacktestWindows']
        data.back_test_window_offset = map['BackTestWindowOffset']
        return data
      end
    end

    class TrainingParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribePredictorBacktestExportJob
    class DescribePredictorBacktestExportJob
      def self.parse(http_resp)
        data = Types::DescribePredictorBacktestExportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.predictor_backtest_export_job_arn = map['PredictorBacktestExportJobArn']
        data.predictor_backtest_export_job_name = map['PredictorBacktestExportJobName']
        data.predictor_arn = map['PredictorArn']
        data.destination = (DataDestination.parse(map['Destination']) unless map['Destination'].nil?)
        data.message = map['Message']
        data.status = map['Status']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        data.format = map['Format']
        data
      end
    end

    # Operation Parser for GetAccuracyMetrics
    class GetAccuracyMetrics
      def self.parse(http_resp)
        data = Types::GetAccuracyMetricsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.predictor_evaluation_results = (PredictorEvaluationResults.parse(map['PredictorEvaluationResults']) unless map['PredictorEvaluationResults'].nil?)
        data.is_auto_predictor = map['IsAutoPredictor']
        data.auto_ml_override_strategy = map['AutoMLOverrideStrategy']
        data.optimization_metric = map['OptimizationMetric']
        data
      end
    end

    class PredictorEvaluationResults
      def self.parse(list)
        list.map do |value|
          EvaluationResult.parse(value) unless value.nil?
        end
      end
    end

    class EvaluationResult
      def self.parse(map)
        data = Types::EvaluationResult.new
        data.algorithm_arn = map['AlgorithmArn']
        data.test_windows = (TestWindows.parse(map['TestWindows']) unless map['TestWindows'].nil?)
        return data
      end
    end

    class TestWindows
      def self.parse(list)
        list.map do |value|
          WindowSummary.parse(value) unless value.nil?
        end
      end
    end

    class WindowSummary
      def self.parse(map)
        data = Types::WindowSummary.new
        data.test_window_start = Time.at(map['TestWindowStart'].to_i) if map['TestWindowStart']
        data.test_window_end = Time.at(map['TestWindowEnd'].to_i) if map['TestWindowEnd']
        data.item_count = map['ItemCount']
        data.evaluation_type = map['EvaluationType']
        data.metrics = (Metrics.parse(map['Metrics']) unless map['Metrics'].nil?)
        return data
      end
    end

    class Metrics
      def self.parse(map)
        data = Types::Metrics.new
        data.rmse = Hearth::NumberHelper.deserialize(map['RMSE'])
        data.weighted_quantile_losses = (WeightedQuantileLosses.parse(map['WeightedQuantileLosses']) unless map['WeightedQuantileLosses'].nil?)
        data.error_metrics = (ErrorMetrics.parse(map['ErrorMetrics']) unless map['ErrorMetrics'].nil?)
        data.average_weighted_quantile_loss = Hearth::NumberHelper.deserialize(map['AverageWeightedQuantileLoss'])
        return data
      end
    end

    class ErrorMetrics
      def self.parse(list)
        list.map do |value|
          ErrorMetric.parse(value) unless value.nil?
        end
      end
    end

    class ErrorMetric
      def self.parse(map)
        data = Types::ErrorMetric.new
        data.forecast_type = map['ForecastType']
        data.wape = Hearth::NumberHelper.deserialize(map['WAPE'])
        data.rmse = Hearth::NumberHelper.deserialize(map['RMSE'])
        data.mase = Hearth::NumberHelper.deserialize(map['MASE'])
        data.mape = Hearth::NumberHelper.deserialize(map['MAPE'])
        return data
      end
    end

    class WeightedQuantileLosses
      def self.parse(list)
        list.map do |value|
          WeightedQuantileLoss.parse(value) unless value.nil?
        end
      end
    end

    class WeightedQuantileLoss
      def self.parse(map)
        data = Types::WeightedQuantileLoss.new
        data.quantile = Hearth::NumberHelper.deserialize(map['Quantile'])
        data.loss_value = Hearth::NumberHelper.deserialize(map['LossValue'])
        return data
      end
    end

    # Operation Parser for ListDatasetGroups
    class ListDatasetGroups
      def self.parse(http_resp)
        data = Types::ListDatasetGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dataset_groups = (DatasetGroups.parse(map['DatasetGroups']) unless map['DatasetGroups'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DatasetGroups
      def self.parse(list)
        list.map do |value|
          DatasetGroupSummary.parse(value) unless value.nil?
        end
      end
    end

    class DatasetGroupSummary
      def self.parse(map)
        data = Types::DatasetGroupSummary.new
        data.dataset_group_arn = map['DatasetGroupArn']
        data.dataset_group_name = map['DatasetGroupName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        return data
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListDatasetImportJobs
    class ListDatasetImportJobs
      def self.parse(http_resp)
        data = Types::ListDatasetImportJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dataset_import_jobs = (DatasetImportJobs.parse(map['DatasetImportJobs']) unless map['DatasetImportJobs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DatasetImportJobs
      def self.parse(list)
        list.map do |value|
          DatasetImportJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class DatasetImportJobSummary
      def self.parse(map)
        data = Types::DatasetImportJobSummary.new
        data.dataset_import_job_arn = map['DatasetImportJobArn']
        data.dataset_import_job_name = map['DatasetImportJobName']
        data.data_source = (DataSource.parse(map['DataSource']) unless map['DataSource'].nil?)
        data.status = map['Status']
        data.message = map['Message']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        return data
      end
    end

    # Operation Parser for ListDatasets
    class ListDatasets
      def self.parse(http_resp)
        data = Types::ListDatasetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.datasets = (Datasets.parse(map['Datasets']) unless map['Datasets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Datasets
      def self.parse(list)
        list.map do |value|
          DatasetSummary.parse(value) unless value.nil?
        end
      end
    end

    class DatasetSummary
      def self.parse(map)
        data = Types::DatasetSummary.new
        data.dataset_arn = map['DatasetArn']
        data.dataset_name = map['DatasetName']
        data.dataset_type = map['DatasetType']
        data.domain = map['Domain']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        return data
      end
    end

    # Operation Parser for ListExplainabilities
    class ListExplainabilities
      def self.parse(http_resp)
        data = Types::ListExplainabilitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.explainabilities = (Explainabilities.parse(map['Explainabilities']) unless map['Explainabilities'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Explainabilities
      def self.parse(list)
        list.map do |value|
          ExplainabilitySummary.parse(value) unless value.nil?
        end
      end
    end

    class ExplainabilitySummary
      def self.parse(map)
        data = Types::ExplainabilitySummary.new
        data.explainability_arn = map['ExplainabilityArn']
        data.explainability_name = map['ExplainabilityName']
        data.resource_arn = map['ResourceArn']
        data.explainability_config = (ExplainabilityConfig.parse(map['ExplainabilityConfig']) unless map['ExplainabilityConfig'].nil?)
        data.status = map['Status']
        data.message = map['Message']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        return data
      end
    end

    # Operation Parser for ListExplainabilityExports
    class ListExplainabilityExports
      def self.parse(http_resp)
        data = Types::ListExplainabilityExportsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.explainability_exports = (ExplainabilityExports.parse(map['ExplainabilityExports']) unless map['ExplainabilityExports'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ExplainabilityExports
      def self.parse(list)
        list.map do |value|
          ExplainabilityExportSummary.parse(value) unless value.nil?
        end
      end
    end

    class ExplainabilityExportSummary
      def self.parse(map)
        data = Types::ExplainabilityExportSummary.new
        data.explainability_export_arn = map['ExplainabilityExportArn']
        data.explainability_export_name = map['ExplainabilityExportName']
        data.destination = (DataDestination.parse(map['Destination']) unless map['Destination'].nil?)
        data.status = map['Status']
        data.message = map['Message']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        return data
      end
    end

    # Operation Parser for ListForecastExportJobs
    class ListForecastExportJobs
      def self.parse(http_resp)
        data = Types::ListForecastExportJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.forecast_export_jobs = (ForecastExportJobs.parse(map['ForecastExportJobs']) unless map['ForecastExportJobs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ForecastExportJobs
      def self.parse(list)
        list.map do |value|
          ForecastExportJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class ForecastExportJobSummary
      def self.parse(map)
        data = Types::ForecastExportJobSummary.new
        data.forecast_export_job_arn = map['ForecastExportJobArn']
        data.forecast_export_job_name = map['ForecastExportJobName']
        data.destination = (DataDestination.parse(map['Destination']) unless map['Destination'].nil?)
        data.status = map['Status']
        data.message = map['Message']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        return data
      end
    end

    # Operation Parser for ListForecasts
    class ListForecasts
      def self.parse(http_resp)
        data = Types::ListForecastsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.forecasts = (Forecasts.parse(map['Forecasts']) unless map['Forecasts'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Forecasts
      def self.parse(list)
        list.map do |value|
          ForecastSummary.parse(value) unless value.nil?
        end
      end
    end

    class ForecastSummary
      def self.parse(map)
        data = Types::ForecastSummary.new
        data.forecast_arn = map['ForecastArn']
        data.forecast_name = map['ForecastName']
        data.predictor_arn = map['PredictorArn']
        data.created_using_auto_predictor = map['CreatedUsingAutoPredictor']
        data.dataset_group_arn = map['DatasetGroupArn']
        data.status = map['Status']
        data.message = map['Message']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        return data
      end
    end

    # Operation Parser for ListMonitorEvaluations
    class ListMonitorEvaluations
      def self.parse(http_resp)
        data = Types::ListMonitorEvaluationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.predictor_monitor_evaluations = (PredictorMonitorEvaluations.parse(map['PredictorMonitorEvaluations']) unless map['PredictorMonitorEvaluations'].nil?)
        data
      end
    end

    class PredictorMonitorEvaluations
      def self.parse(list)
        list.map do |value|
          PredictorMonitorEvaluation.parse(value) unless value.nil?
        end
      end
    end

    class PredictorMonitorEvaluation
      def self.parse(map)
        data = Types::PredictorMonitorEvaluation.new
        data.resource_arn = map['ResourceArn']
        data.monitor_arn = map['MonitorArn']
        data.evaluation_time = Time.at(map['EvaluationTime'].to_i) if map['EvaluationTime']
        data.evaluation_state = map['EvaluationState']
        data.window_start_datetime = Time.at(map['WindowStartDatetime'].to_i) if map['WindowStartDatetime']
        data.window_end_datetime = Time.at(map['WindowEndDatetime'].to_i) if map['WindowEndDatetime']
        data.predictor_event = (PredictorEvent.parse(map['PredictorEvent']) unless map['PredictorEvent'].nil?)
        data.monitor_data_source = (MonitorDataSource.parse(map['MonitorDataSource']) unless map['MonitorDataSource'].nil?)
        data.metric_results = (MetricResults.parse(map['MetricResults']) unless map['MetricResults'].nil?)
        data.num_items_evaluated = map['NumItemsEvaluated']
        data.message = map['Message']
        return data
      end
    end

    class MetricResults
      def self.parse(list)
        list.map do |value|
          MetricResult.parse(value) unless value.nil?
        end
      end
    end

    class MetricResult
      def self.parse(map)
        data = Types::MetricResult.new
        data.metric_name = map['MetricName']
        data.metric_value = Hearth::NumberHelper.deserialize(map['MetricValue'])
        return data
      end
    end

    class MonitorDataSource
      def self.parse(map)
        data = Types::MonitorDataSource.new
        data.dataset_import_job_arn = map['DatasetImportJobArn']
        data.forecast_arn = map['ForecastArn']
        data.predictor_arn = map['PredictorArn']
        return data
      end
    end

    class PredictorEvent
      def self.parse(map)
        data = Types::PredictorEvent.new
        data.detail = map['Detail']
        data.datetime = Time.at(map['Datetime'].to_i) if map['Datetime']
        return data
      end
    end

    # Operation Parser for ListMonitors
    class ListMonitors
      def self.parse(http_resp)
        data = Types::ListMonitorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.monitors = (Monitors.parse(map['Monitors']) unless map['Monitors'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Monitors
      def self.parse(list)
        list.map do |value|
          MonitorSummary.parse(value) unless value.nil?
        end
      end
    end

    class MonitorSummary
      def self.parse(map)
        data = Types::MonitorSummary.new
        data.monitor_arn = map['MonitorArn']
        data.monitor_name = map['MonitorName']
        data.resource_arn = map['ResourceArn']
        data.status = map['Status']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        return data
      end
    end

    # Operation Parser for ListPredictorBacktestExportJobs
    class ListPredictorBacktestExportJobs
      def self.parse(http_resp)
        data = Types::ListPredictorBacktestExportJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.predictor_backtest_export_jobs = (PredictorBacktestExportJobs.parse(map['PredictorBacktestExportJobs']) unless map['PredictorBacktestExportJobs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PredictorBacktestExportJobs
      def self.parse(list)
        list.map do |value|
          PredictorBacktestExportJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class PredictorBacktestExportJobSummary
      def self.parse(map)
        data = Types::PredictorBacktestExportJobSummary.new
        data.predictor_backtest_export_job_arn = map['PredictorBacktestExportJobArn']
        data.predictor_backtest_export_job_name = map['PredictorBacktestExportJobName']
        data.destination = (DataDestination.parse(map['Destination']) unless map['Destination'].nil?)
        data.status = map['Status']
        data.message = map['Message']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        return data
      end
    end

    # Operation Parser for ListPredictors
    class ListPredictors
      def self.parse(http_resp)
        data = Types::ListPredictorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.predictors = (Predictors.parse(map['Predictors']) unless map['Predictors'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Predictors
      def self.parse(list)
        list.map do |value|
          PredictorSummary.parse(value) unless value.nil?
        end
      end
    end

    class PredictorSummary
      def self.parse(map)
        data = Types::PredictorSummary.new
        data.predictor_arn = map['PredictorArn']
        data.predictor_name = map['PredictorName']
        data.dataset_group_arn = map['DatasetGroupArn']
        data.is_auto_predictor = map['IsAutoPredictor']
        data.reference_predictor_summary = (ReferencePredictorSummary.parse(map['ReferencePredictorSummary']) unless map['ReferencePredictorSummary'].nil?)
        data.status = map['Status']
        data.message = map['Message']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modification_time = Time.at(map['LastModificationTime'].to_i) if map['LastModificationTime']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class Tags
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for ResumeResource
    class ResumeResource
      def self.parse(http_resp)
        data = Types::ResumeResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopResource
    class StopResource
      def self.parse(http_resp)
        data = Types::StopResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateDatasetGroup
    class UpdateDatasetGroup
      def self.parse(http_resp)
        data = Types::UpdateDatasetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
