# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Forecast
  module Builders

    # Operation Builder for CreateAutoPredictor
    class CreateAutoPredictor
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.CreateAutoPredictor'
        data = {}
        data['PredictorName'] = input[:predictor_name] unless input[:predictor_name].nil?
        data['ForecastHorizon'] = input[:forecast_horizon] unless input[:forecast_horizon].nil?
        data['ForecastTypes'] = Builders::ForecastTypes.build(input[:forecast_types]) unless input[:forecast_types].nil?
        data['ForecastDimensions'] = Builders::ForecastDimensions.build(input[:forecast_dimensions]) unless input[:forecast_dimensions].nil?
        data['ForecastFrequency'] = input[:forecast_frequency] unless input[:forecast_frequency].nil?
        data['DataConfig'] = Builders::DataConfig.build(input[:data_config]) unless input[:data_config].nil?
        data['EncryptionConfig'] = Builders::EncryptionConfig.build(input[:encryption_config]) unless input[:encryption_config].nil?
        data['ReferencePredictorArn'] = input[:reference_predictor_arn] unless input[:reference_predictor_arn].nil?
        data['OptimizationMetric'] = input[:optimization_metric] unless input[:optimization_metric].nil?
        data['ExplainPredictor'] = input[:explain_predictor] unless input[:explain_predictor].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['MonitorConfig'] = Builders::MonitorConfig.build(input[:monitor_config]) unless input[:monitor_config].nil?
        data['TimeAlignmentBoundary'] = Builders::TimeAlignmentBoundary.build(input[:time_alignment_boundary]) unless input[:time_alignment_boundary].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TimeAlignmentBoundary
    class TimeAlignmentBoundary
      def self.build(input)
        data = {}
        data['Month'] = input[:month] unless input[:month].nil?
        data['DayOfMonth'] = input[:day_of_month] unless input[:day_of_month].nil?
        data['DayOfWeek'] = input[:day_of_week] unless input[:day_of_week].nil?
        data['Hour'] = input[:hour] unless input[:hour].nil?
        data
      end
    end

    # Structure Builder for MonitorConfig
    class MonitorConfig
      def self.build(input)
        data = {}
        data['MonitorName'] = input[:monitor_name] unless input[:monitor_name].nil?
        data
      end
    end

    # List Builder for Tags
    class Tags
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for EncryptionConfig
    class EncryptionConfig
      def self.build(input)
        data = {}
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['KMSKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data
      end
    end

    # Structure Builder for DataConfig
    class DataConfig
      def self.build(input)
        data = {}
        data['DatasetGroupArn'] = input[:dataset_group_arn] unless input[:dataset_group_arn].nil?
        data['AttributeConfigs'] = Builders::AttributeConfigs.build(input[:attribute_configs]) unless input[:attribute_configs].nil?
        data['AdditionalDatasets'] = Builders::AdditionalDatasets.build(input[:additional_datasets]) unless input[:additional_datasets].nil?
        data
      end
    end

    # List Builder for AdditionalDatasets
    class AdditionalDatasets
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AdditionalDataset.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AdditionalDataset
    class AdditionalDataset
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Configuration'] = Builders::Configuration.build(input[:configuration]) unless input[:configuration].nil?
        data
      end
    end

    # Map Builder for Configuration
    class Configuration
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::Values.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for Values
    class Values
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AttributeConfigs
    class AttributeConfigs
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AttributeConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AttributeConfig
    class AttributeConfig
      def self.build(input)
        data = {}
        data['AttributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['Transformations'] = Builders::Transformations.build(input[:transformations]) unless input[:transformations].nil?
        data
      end
    end

    # Map Builder for Transformations
    class Transformations
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for ForecastDimensions
    class ForecastDimensions
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ForecastTypes
    class ForecastTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDataset
    class CreateDataset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.CreateDataset'
        data = {}
        data['DatasetName'] = input[:dataset_name] unless input[:dataset_name].nil?
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data['DatasetType'] = input[:dataset_type] unless input[:dataset_type].nil?
        data['DataFrequency'] = input[:data_frequency] unless input[:data_frequency].nil?
        data['Schema'] = Builders::Schema.build(input[:schema]) unless input[:schema].nil?
        data['EncryptionConfig'] = Builders::EncryptionConfig.build(input[:encryption_config]) unless input[:encryption_config].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Schema
    class Schema
      def self.build(input)
        data = {}
        data['Attributes'] = Builders::SchemaAttributes.build(input[:attributes]) unless input[:attributes].nil?
        data
      end
    end

    # List Builder for SchemaAttributes
    class SchemaAttributes
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SchemaAttribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SchemaAttribute
    class SchemaAttribute
      def self.build(input)
        data = {}
        data['AttributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['AttributeType'] = input[:attribute_type] unless input[:attribute_type].nil?
        data
      end
    end

    # Operation Builder for CreateDatasetGroup
    class CreateDatasetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.CreateDatasetGroup'
        data = {}
        data['DatasetGroupName'] = input[:dataset_group_name] unless input[:dataset_group_name].nil?
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data['DatasetArns'] = Builders::ArnList.build(input[:dataset_arns]) unless input[:dataset_arns].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ArnList
    class ArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDatasetImportJob
    class CreateDatasetImportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.CreateDatasetImportJob'
        data = {}
        data['DatasetImportJobName'] = input[:dataset_import_job_name] unless input[:dataset_import_job_name].nil?
        data['DatasetArn'] = input[:dataset_arn] unless input[:dataset_arn].nil?
        data['DataSource'] = Builders::DataSource.build(input[:data_source]) unless input[:data_source].nil?
        data['TimestampFormat'] = input[:timestamp_format] unless input[:timestamp_format].nil?
        data['TimeZone'] = input[:time_zone] unless input[:time_zone].nil?
        data['UseGeolocationForTimeZone'] = input[:use_geolocation_for_time_zone] unless input[:use_geolocation_for_time_zone].nil?
        data['GeolocationFormat'] = input[:geolocation_format] unless input[:geolocation_format].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['Format'] = input[:format] unless input[:format].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DataSource
    class DataSource
      def self.build(input)
        data = {}
        data['S3Config'] = Builders::S3Config.build(input[:s3_config]) unless input[:s3_config].nil?
        data
      end
    end

    # Structure Builder for S3Config
    class S3Config
      def self.build(input)
        data = {}
        data['Path'] = input[:path] unless input[:path].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['KMSKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data
      end
    end

    # Operation Builder for CreateExplainability
    class CreateExplainability
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.CreateExplainability'
        data = {}
        data['ExplainabilityName'] = input[:explainability_name] unless input[:explainability_name].nil?
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['ExplainabilityConfig'] = Builders::ExplainabilityConfig.build(input[:explainability_config]) unless input[:explainability_config].nil?
        data['DataSource'] = Builders::DataSource.build(input[:data_source]) unless input[:data_source].nil?
        data['Schema'] = Builders::Schema.build(input[:schema]) unless input[:schema].nil?
        data['EnableVisualization'] = input[:enable_visualization] unless input[:enable_visualization].nil?
        data['StartDateTime'] = input[:start_date_time] unless input[:start_date_time].nil?
        data['EndDateTime'] = input[:end_date_time] unless input[:end_date_time].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ExplainabilityConfig
    class ExplainabilityConfig
      def self.build(input)
        data = {}
        data['TimeSeriesGranularity'] = input[:time_series_granularity] unless input[:time_series_granularity].nil?
        data['TimePointGranularity'] = input[:time_point_granularity] unless input[:time_point_granularity].nil?
        data
      end
    end

    # Operation Builder for CreateExplainabilityExport
    class CreateExplainabilityExport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.CreateExplainabilityExport'
        data = {}
        data['ExplainabilityExportName'] = input[:explainability_export_name] unless input[:explainability_export_name].nil?
        data['ExplainabilityArn'] = input[:explainability_arn] unless input[:explainability_arn].nil?
        data['Destination'] = Builders::DataDestination.build(input[:destination]) unless input[:destination].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['Format'] = input[:format] unless input[:format].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DataDestination
    class DataDestination
      def self.build(input)
        data = {}
        data['S3Config'] = Builders::S3Config.build(input[:s3_config]) unless input[:s3_config].nil?
        data
      end
    end

    # Operation Builder for CreateForecast
    class CreateForecast
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.CreateForecast'
        data = {}
        data['ForecastName'] = input[:forecast_name] unless input[:forecast_name].nil?
        data['PredictorArn'] = input[:predictor_arn] unless input[:predictor_arn].nil?
        data['ForecastTypes'] = Builders::ForecastTypes.build(input[:forecast_types]) unless input[:forecast_types].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['TimeSeriesSelector'] = Builders::TimeSeriesSelector.build(input[:time_series_selector]) unless input[:time_series_selector].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TimeSeriesSelector
    class TimeSeriesSelector
      def self.build(input)
        data = {}
        data['TimeSeriesIdentifiers'] = Builders::TimeSeriesIdentifiers.build(input[:time_series_identifiers]) unless input[:time_series_identifiers].nil?
        data
      end
    end

    # Structure Builder for TimeSeriesIdentifiers
    class TimeSeriesIdentifiers
      def self.build(input)
        data = {}
        data['DataSource'] = Builders::DataSource.build(input[:data_source]) unless input[:data_source].nil?
        data['Schema'] = Builders::Schema.build(input[:schema]) unless input[:schema].nil?
        data['Format'] = input[:format] unless input[:format].nil?
        data
      end
    end

    # Operation Builder for CreateForecastExportJob
    class CreateForecastExportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.CreateForecastExportJob'
        data = {}
        data['ForecastExportJobName'] = input[:forecast_export_job_name] unless input[:forecast_export_job_name].nil?
        data['ForecastArn'] = input[:forecast_arn] unless input[:forecast_arn].nil?
        data['Destination'] = Builders::DataDestination.build(input[:destination]) unless input[:destination].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['Format'] = input[:format] unless input[:format].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateMonitor
    class CreateMonitor
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.CreateMonitor'
        data = {}
        data['MonitorName'] = input[:monitor_name] unless input[:monitor_name].nil?
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreatePredictor
    class CreatePredictor
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.CreatePredictor'
        data = {}
        data['PredictorName'] = input[:predictor_name] unless input[:predictor_name].nil?
        data['AlgorithmArn'] = input[:algorithm_arn] unless input[:algorithm_arn].nil?
        data['ForecastHorizon'] = input[:forecast_horizon] unless input[:forecast_horizon].nil?
        data['ForecastTypes'] = Builders::ForecastTypes.build(input[:forecast_types]) unless input[:forecast_types].nil?
        data['PerformAutoML'] = input[:perform_auto_ml] unless input[:perform_auto_ml].nil?
        data['AutoMLOverrideStrategy'] = input[:auto_ml_override_strategy] unless input[:auto_ml_override_strategy].nil?
        data['PerformHPO'] = input[:perform_hpo] unless input[:perform_hpo].nil?
        data['TrainingParameters'] = Builders::TrainingParameters.build(input[:training_parameters]) unless input[:training_parameters].nil?
        data['EvaluationParameters'] = Builders::EvaluationParameters.build(input[:evaluation_parameters]) unless input[:evaluation_parameters].nil?
        data['HPOConfig'] = Builders::HyperParameterTuningJobConfig.build(input[:hpo_config]) unless input[:hpo_config].nil?
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['FeaturizationConfig'] = Builders::FeaturizationConfig.build(input[:featurization_config]) unless input[:featurization_config].nil?
        data['EncryptionConfig'] = Builders::EncryptionConfig.build(input[:encryption_config]) unless input[:encryption_config].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['OptimizationMetric'] = input[:optimization_metric] unless input[:optimization_metric].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for FeaturizationConfig
    class FeaturizationConfig
      def self.build(input)
        data = {}
        data['ForecastFrequency'] = input[:forecast_frequency] unless input[:forecast_frequency].nil?
        data['ForecastDimensions'] = Builders::ForecastDimensions.build(input[:forecast_dimensions]) unless input[:forecast_dimensions].nil?
        data['Featurizations'] = Builders::Featurizations.build(input[:featurizations]) unless input[:featurizations].nil?
        data
      end
    end

    # List Builder for Featurizations
    class Featurizations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Featurization.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Featurization
    class Featurization
      def self.build(input)
        data = {}
        data['AttributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['FeaturizationPipeline'] = Builders::FeaturizationPipeline.build(input[:featurization_pipeline]) unless input[:featurization_pipeline].nil?
        data
      end
    end

    # List Builder for FeaturizationPipeline
    class FeaturizationPipeline
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::FeaturizationMethod.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FeaturizationMethod
    class FeaturizationMethod
      def self.build(input)
        data = {}
        data['FeaturizationMethodName'] = input[:featurization_method_name] unless input[:featurization_method_name].nil?
        data['FeaturizationMethodParameters'] = Builders::FeaturizationMethodParameters.build(input[:featurization_method_parameters]) unless input[:featurization_method_parameters].nil?
        data
      end
    end

    # Map Builder for FeaturizationMethodParameters
    class FeaturizationMethodParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for InputDataConfig
    class InputDataConfig
      def self.build(input)
        data = {}
        data['DatasetGroupArn'] = input[:dataset_group_arn] unless input[:dataset_group_arn].nil?
        data['SupplementaryFeatures'] = Builders::SupplementaryFeatures.build(input[:supplementary_features]) unless input[:supplementary_features].nil?
        data
      end
    end

    # List Builder for SupplementaryFeatures
    class SupplementaryFeatures
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SupplementaryFeature.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SupplementaryFeature
    class SupplementaryFeature
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for HyperParameterTuningJobConfig
    class HyperParameterTuningJobConfig
      def self.build(input)
        data = {}
        data['ParameterRanges'] = Builders::ParameterRanges.build(input[:parameter_ranges]) unless input[:parameter_ranges].nil?
        data
      end
    end

    # Structure Builder for ParameterRanges
    class ParameterRanges
      def self.build(input)
        data = {}
        data['CategoricalParameterRanges'] = Builders::CategoricalParameterRanges.build(input[:categorical_parameter_ranges]) unless input[:categorical_parameter_ranges].nil?
        data['ContinuousParameterRanges'] = Builders::ContinuousParameterRanges.build(input[:continuous_parameter_ranges]) unless input[:continuous_parameter_ranges].nil?
        data['IntegerParameterRanges'] = Builders::IntegerParameterRanges.build(input[:integer_parameter_ranges]) unless input[:integer_parameter_ranges].nil?
        data
      end
    end

    # List Builder for IntegerParameterRanges
    class IntegerParameterRanges
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::IntegerParameterRange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for IntegerParameterRange
    class IntegerParameterRange
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['MaxValue'] = input[:max_value] unless input[:max_value].nil?
        data['MinValue'] = input[:min_value] unless input[:min_value].nil?
        data['ScalingType'] = input[:scaling_type] unless input[:scaling_type].nil?
        data
      end
    end

    # List Builder for ContinuousParameterRanges
    class ContinuousParameterRanges
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ContinuousParameterRange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ContinuousParameterRange
    class ContinuousParameterRange
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['MaxValue'] = Hearth::NumberHelper.serialize(input[:max_value]) unless input[:max_value].nil?
        data['MinValue'] = Hearth::NumberHelper.serialize(input[:min_value]) unless input[:min_value].nil?
        data['ScalingType'] = input[:scaling_type] unless input[:scaling_type].nil?
        data
      end
    end

    # List Builder for CategoricalParameterRanges
    class CategoricalParameterRanges
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CategoricalParameterRange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CategoricalParameterRange
    class CategoricalParameterRange
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = Builders::Values.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # Structure Builder for EvaluationParameters
    class EvaluationParameters
      def self.build(input)
        data = {}
        data['NumberOfBacktestWindows'] = input[:number_of_backtest_windows] unless input[:number_of_backtest_windows].nil?
        data['BackTestWindowOffset'] = input[:back_test_window_offset] unless input[:back_test_window_offset].nil?
        data
      end
    end

    # Map Builder for TrainingParameters
    class TrainingParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreatePredictorBacktestExportJob
    class CreatePredictorBacktestExportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.CreatePredictorBacktestExportJob'
        data = {}
        data['PredictorBacktestExportJobName'] = input[:predictor_backtest_export_job_name] unless input[:predictor_backtest_export_job_name].nil?
        data['PredictorArn'] = input[:predictor_arn] unless input[:predictor_arn].nil?
        data['Destination'] = Builders::DataDestination.build(input[:destination]) unless input[:destination].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['Format'] = input[:format] unless input[:format].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDataset
    class DeleteDataset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DeleteDataset'
        data = {}
        data['DatasetArn'] = input[:dataset_arn] unless input[:dataset_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDatasetGroup
    class DeleteDatasetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DeleteDatasetGroup'
        data = {}
        data['DatasetGroupArn'] = input[:dataset_group_arn] unless input[:dataset_group_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDatasetImportJob
    class DeleteDatasetImportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DeleteDatasetImportJob'
        data = {}
        data['DatasetImportJobArn'] = input[:dataset_import_job_arn] unless input[:dataset_import_job_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteExplainability
    class DeleteExplainability
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DeleteExplainability'
        data = {}
        data['ExplainabilityArn'] = input[:explainability_arn] unless input[:explainability_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteExplainabilityExport
    class DeleteExplainabilityExport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DeleteExplainabilityExport'
        data = {}
        data['ExplainabilityExportArn'] = input[:explainability_export_arn] unless input[:explainability_export_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteForecast
    class DeleteForecast
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DeleteForecast'
        data = {}
        data['ForecastArn'] = input[:forecast_arn] unless input[:forecast_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteForecastExportJob
    class DeleteForecastExportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DeleteForecastExportJob'
        data = {}
        data['ForecastExportJobArn'] = input[:forecast_export_job_arn] unless input[:forecast_export_job_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteMonitor
    class DeleteMonitor
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DeleteMonitor'
        data = {}
        data['MonitorArn'] = input[:monitor_arn] unless input[:monitor_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePredictor
    class DeletePredictor
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DeletePredictor'
        data = {}
        data['PredictorArn'] = input[:predictor_arn] unless input[:predictor_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePredictorBacktestExportJob
    class DeletePredictorBacktestExportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DeletePredictorBacktestExportJob'
        data = {}
        data['PredictorBacktestExportJobArn'] = input[:predictor_backtest_export_job_arn] unless input[:predictor_backtest_export_job_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteResourceTree
    class DeleteResourceTree
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DeleteResourceTree'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAutoPredictor
    class DescribeAutoPredictor
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DescribeAutoPredictor'
        data = {}
        data['PredictorArn'] = input[:predictor_arn] unless input[:predictor_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDataset
    class DescribeDataset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DescribeDataset'
        data = {}
        data['DatasetArn'] = input[:dataset_arn] unless input[:dataset_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDatasetGroup
    class DescribeDatasetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DescribeDatasetGroup'
        data = {}
        data['DatasetGroupArn'] = input[:dataset_group_arn] unless input[:dataset_group_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDatasetImportJob
    class DescribeDatasetImportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DescribeDatasetImportJob'
        data = {}
        data['DatasetImportJobArn'] = input[:dataset_import_job_arn] unless input[:dataset_import_job_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeExplainability
    class DescribeExplainability
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DescribeExplainability'
        data = {}
        data['ExplainabilityArn'] = input[:explainability_arn] unless input[:explainability_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeExplainabilityExport
    class DescribeExplainabilityExport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DescribeExplainabilityExport'
        data = {}
        data['ExplainabilityExportArn'] = input[:explainability_export_arn] unless input[:explainability_export_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeForecast
    class DescribeForecast
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DescribeForecast'
        data = {}
        data['ForecastArn'] = input[:forecast_arn] unless input[:forecast_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeForecastExportJob
    class DescribeForecastExportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DescribeForecastExportJob'
        data = {}
        data['ForecastExportJobArn'] = input[:forecast_export_job_arn] unless input[:forecast_export_job_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeMonitor
    class DescribeMonitor
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DescribeMonitor'
        data = {}
        data['MonitorArn'] = input[:monitor_arn] unless input[:monitor_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePredictor
    class DescribePredictor
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DescribePredictor'
        data = {}
        data['PredictorArn'] = input[:predictor_arn] unless input[:predictor_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePredictorBacktestExportJob
    class DescribePredictorBacktestExportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.DescribePredictorBacktestExportJob'
        data = {}
        data['PredictorBacktestExportJobArn'] = input[:predictor_backtest_export_job_arn] unless input[:predictor_backtest_export_job_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAccuracyMetrics
    class GetAccuracyMetrics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.GetAccuracyMetrics'
        data = {}
        data['PredictorArn'] = input[:predictor_arn] unless input[:predictor_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDatasetGroups
    class ListDatasetGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.ListDatasetGroups'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDatasetImportJobs
    class ListDatasetImportJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.ListDatasetImportJobs'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Filters
    class Filters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Filter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['Condition'] = input[:condition] unless input[:condition].nil?
        data
      end
    end

    # Operation Builder for ListDatasets
    class ListDatasets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.ListDatasets'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListExplainabilities
    class ListExplainabilities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.ListExplainabilities'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListExplainabilityExports
    class ListExplainabilityExports
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.ListExplainabilityExports'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListForecastExportJobs
    class ListForecastExportJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.ListForecastExportJobs'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListForecasts
    class ListForecasts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.ListForecasts'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListMonitorEvaluations
    class ListMonitorEvaluations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.ListMonitorEvaluations'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['MonitorArn'] = input[:monitor_arn] unless input[:monitor_arn].nil?
        data['Filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListMonitors
    class ListMonitors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.ListMonitors'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPredictorBacktestExportJobs
    class ListPredictorBacktestExportJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.ListPredictorBacktestExportJobs'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPredictors
    class ListPredictors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.ListPredictors'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ResumeResource
    class ResumeResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.ResumeResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopResource
    class StopResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.StopResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeys.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateDatasetGroup
    class UpdateDatasetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecast.UpdateDatasetGroup'
        data = {}
        data['DatasetGroupArn'] = input[:dataset_group_arn] unless input[:dataset_group_arn].nil?
        data['DatasetArns'] = Builders::ArnList.build(input[:dataset_arns]) unless input[:dataset_arns].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
