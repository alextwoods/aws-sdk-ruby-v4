# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Forecast
  module Validators

    class AdditionalDataset
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdditionalDataset, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Configuration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class AdditionalDatasets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AdditionalDataset.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AttributeConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttributeConfig, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Transformations.validate!(input[:transformations], context: "#{context}[:transformations]") unless input[:transformations].nil?
      end
    end

    class AttributeConfigs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AttributeConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Baseline
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Baseline, context: context)
        PredictorBaseline.validate!(input[:predictor_baseline], context: "#{context}[:predictor_baseline]") unless input[:predictor_baseline].nil?
      end
    end

    class BaselineMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BaselineMetric, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
      end
    end

    class BaselineMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BaselineMetric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CategoricalParameterRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CategoricalParameterRange, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Values.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class CategoricalParameterRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CategoricalParameterRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Configuration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Values.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ContinuousParameterRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContinuousParameterRange, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:max_value], ::Float, context: "#{context}[:max_value]")
        Hearth::Validator.validate!(input[:min_value], ::Float, context: "#{context}[:min_value]")
        Hearth::Validator.validate!(input[:scaling_type], ::String, context: "#{context}[:scaling_type]")
      end
    end

    class ContinuousParameterRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContinuousParameterRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateAutoPredictorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAutoPredictorInput, context: context)
        Hearth::Validator.validate!(input[:predictor_name], ::String, context: "#{context}[:predictor_name]")
        Hearth::Validator.validate!(input[:forecast_horizon], ::Integer, context: "#{context}[:forecast_horizon]")
        ForecastTypes.validate!(input[:forecast_types], context: "#{context}[:forecast_types]") unless input[:forecast_types].nil?
        ForecastDimensions.validate!(input[:forecast_dimensions], context: "#{context}[:forecast_dimensions]") unless input[:forecast_dimensions].nil?
        Hearth::Validator.validate!(input[:forecast_frequency], ::String, context: "#{context}[:forecast_frequency]")
        DataConfig.validate!(input[:data_config], context: "#{context}[:data_config]") unless input[:data_config].nil?
        EncryptionConfig.validate!(input[:encryption_config], context: "#{context}[:encryption_config]") unless input[:encryption_config].nil?
        Hearth::Validator.validate!(input[:reference_predictor_arn], ::String, context: "#{context}[:reference_predictor_arn]")
        Hearth::Validator.validate!(input[:optimization_metric], ::String, context: "#{context}[:optimization_metric]")
        Hearth::Validator.validate!(input[:explain_predictor], ::TrueClass, ::FalseClass, context: "#{context}[:explain_predictor]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        MonitorConfig.validate!(input[:monitor_config], context: "#{context}[:monitor_config]") unless input[:monitor_config].nil?
        TimeAlignmentBoundary.validate!(input[:time_alignment_boundary], context: "#{context}[:time_alignment_boundary]") unless input[:time_alignment_boundary].nil?
      end
    end

    class CreateAutoPredictorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAutoPredictorOutput, context: context)
        Hearth::Validator.validate!(input[:predictor_arn], ::String, context: "#{context}[:predictor_arn]")
      end
    end

    class CreateDatasetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetGroupInput, context: context)
        Hearth::Validator.validate!(input[:dataset_group_name], ::String, context: "#{context}[:dataset_group_name]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        ArnList.validate!(input[:dataset_arns], context: "#{context}[:dataset_arns]") unless input[:dataset_arns].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDatasetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetGroupOutput, context: context)
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
      end
    end

    class CreateDatasetImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetImportJobInput, context: context)
        Hearth::Validator.validate!(input[:dataset_import_job_name], ::String, context: "#{context}[:dataset_import_job_name]")
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        DataSource.validate!(input[:data_source], context: "#{context}[:data_source]") unless input[:data_source].nil?
        Hearth::Validator.validate!(input[:timestamp_format], ::String, context: "#{context}[:timestamp_format]")
        Hearth::Validator.validate!(input[:time_zone], ::String, context: "#{context}[:time_zone]")
        Hearth::Validator.validate!(input[:use_geolocation_for_time_zone], ::TrueClass, ::FalseClass, context: "#{context}[:use_geolocation_for_time_zone]")
        Hearth::Validator.validate!(input[:geolocation_format], ::String, context: "#{context}[:geolocation_format]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
      end
    end

    class CreateDatasetImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetImportJobOutput, context: context)
        Hearth::Validator.validate!(input[:dataset_import_job_arn], ::String, context: "#{context}[:dataset_import_job_arn]")
      end
    end

    class CreateDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetInput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:dataset_type], ::String, context: "#{context}[:dataset_type]")
        Hearth::Validator.validate!(input[:data_frequency], ::String, context: "#{context}[:data_frequency]")
        Schema.validate!(input[:schema], context: "#{context}[:schema]") unless input[:schema].nil?
        EncryptionConfig.validate!(input[:encryption_config], context: "#{context}[:encryption_config]") unless input[:encryption_config].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetOutput, context: context)
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
      end
    end

    class CreateExplainabilityExportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExplainabilityExportInput, context: context)
        Hearth::Validator.validate!(input[:explainability_export_name], ::String, context: "#{context}[:explainability_export_name]")
        Hearth::Validator.validate!(input[:explainability_arn], ::String, context: "#{context}[:explainability_arn]")
        DataDestination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
      end
    end

    class CreateExplainabilityExportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExplainabilityExportOutput, context: context)
        Hearth::Validator.validate!(input[:explainability_export_arn], ::String, context: "#{context}[:explainability_export_arn]")
      end
    end

    class CreateExplainabilityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExplainabilityInput, context: context)
        Hearth::Validator.validate!(input[:explainability_name], ::String, context: "#{context}[:explainability_name]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        ExplainabilityConfig.validate!(input[:explainability_config], context: "#{context}[:explainability_config]") unless input[:explainability_config].nil?
        DataSource.validate!(input[:data_source], context: "#{context}[:data_source]") unless input[:data_source].nil?
        Schema.validate!(input[:schema], context: "#{context}[:schema]") unless input[:schema].nil?
        Hearth::Validator.validate!(input[:enable_visualization], ::TrueClass, ::FalseClass, context: "#{context}[:enable_visualization]")
        Hearth::Validator.validate!(input[:start_date_time], ::String, context: "#{context}[:start_date_time]")
        Hearth::Validator.validate!(input[:end_date_time], ::String, context: "#{context}[:end_date_time]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateExplainabilityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExplainabilityOutput, context: context)
        Hearth::Validator.validate!(input[:explainability_arn], ::String, context: "#{context}[:explainability_arn]")
      end
    end

    class CreateForecastExportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateForecastExportJobInput, context: context)
        Hearth::Validator.validate!(input[:forecast_export_job_name], ::String, context: "#{context}[:forecast_export_job_name]")
        Hearth::Validator.validate!(input[:forecast_arn], ::String, context: "#{context}[:forecast_arn]")
        DataDestination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
      end
    end

    class CreateForecastExportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateForecastExportJobOutput, context: context)
        Hearth::Validator.validate!(input[:forecast_export_job_arn], ::String, context: "#{context}[:forecast_export_job_arn]")
      end
    end

    class CreateForecastInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateForecastInput, context: context)
        Hearth::Validator.validate!(input[:forecast_name], ::String, context: "#{context}[:forecast_name]")
        Hearth::Validator.validate!(input[:predictor_arn], ::String, context: "#{context}[:predictor_arn]")
        ForecastTypes.validate!(input[:forecast_types], context: "#{context}[:forecast_types]") unless input[:forecast_types].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        TimeSeriesSelector.validate!(input[:time_series_selector], context: "#{context}[:time_series_selector]") unless input[:time_series_selector].nil?
      end
    end

    class CreateForecastOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateForecastOutput, context: context)
        Hearth::Validator.validate!(input[:forecast_arn], ::String, context: "#{context}[:forecast_arn]")
      end
    end

    class CreateMonitorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMonitorInput, context: context)
        Hearth::Validator.validate!(input[:monitor_name], ::String, context: "#{context}[:monitor_name]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateMonitorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMonitorOutput, context: context)
        Hearth::Validator.validate!(input[:monitor_arn], ::String, context: "#{context}[:monitor_arn]")
      end
    end

    class CreatePredictorBacktestExportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePredictorBacktestExportJobInput, context: context)
        Hearth::Validator.validate!(input[:predictor_backtest_export_job_name], ::String, context: "#{context}[:predictor_backtest_export_job_name]")
        Hearth::Validator.validate!(input[:predictor_arn], ::String, context: "#{context}[:predictor_arn]")
        DataDestination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
      end
    end

    class CreatePredictorBacktestExportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePredictorBacktestExportJobOutput, context: context)
        Hearth::Validator.validate!(input[:predictor_backtest_export_job_arn], ::String, context: "#{context}[:predictor_backtest_export_job_arn]")
      end
    end

    class CreatePredictorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePredictorInput, context: context)
        Hearth::Validator.validate!(input[:predictor_name], ::String, context: "#{context}[:predictor_name]")
        Hearth::Validator.validate!(input[:algorithm_arn], ::String, context: "#{context}[:algorithm_arn]")
        Hearth::Validator.validate!(input[:forecast_horizon], ::Integer, context: "#{context}[:forecast_horizon]")
        ForecastTypes.validate!(input[:forecast_types], context: "#{context}[:forecast_types]") unless input[:forecast_types].nil?
        Hearth::Validator.validate!(input[:perform_auto_ml], ::TrueClass, ::FalseClass, context: "#{context}[:perform_auto_ml]")
        Hearth::Validator.validate!(input[:auto_ml_override_strategy], ::String, context: "#{context}[:auto_ml_override_strategy]")
        Hearth::Validator.validate!(input[:perform_hpo], ::TrueClass, ::FalseClass, context: "#{context}[:perform_hpo]")
        TrainingParameters.validate!(input[:training_parameters], context: "#{context}[:training_parameters]") unless input[:training_parameters].nil?
        EvaluationParameters.validate!(input[:evaluation_parameters], context: "#{context}[:evaluation_parameters]") unless input[:evaluation_parameters].nil?
        HyperParameterTuningJobConfig.validate!(input[:hpo_config], context: "#{context}[:hpo_config]") unless input[:hpo_config].nil?
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        FeaturizationConfig.validate!(input[:featurization_config], context: "#{context}[:featurization_config]") unless input[:featurization_config].nil?
        EncryptionConfig.validate!(input[:encryption_config], context: "#{context}[:encryption_config]") unless input[:encryption_config].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:optimization_metric], ::String, context: "#{context}[:optimization_metric]")
      end
    end

    class CreatePredictorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePredictorOutput, context: context)
        Hearth::Validator.validate!(input[:predictor_arn], ::String, context: "#{context}[:predictor_arn]")
      end
    end

    class DataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataConfig, context: context)
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        AttributeConfigs.validate!(input[:attribute_configs], context: "#{context}[:attribute_configs]") unless input[:attribute_configs].nil?
        AdditionalDatasets.validate!(input[:additional_datasets], context: "#{context}[:additional_datasets]") unless input[:additional_datasets].nil?
      end
    end

    class DataDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataDestination, context: context)
        S3Config.validate!(input[:s3_config], context: "#{context}[:s3_config]") unless input[:s3_config].nil?
      end
    end

    class DataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSource, context: context)
        S3Config.validate!(input[:s3_config], context: "#{context}[:s3_config]") unless input[:s3_config].nil?
      end
    end

    class DatasetGroupSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetGroupSummary, context: context)
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:dataset_group_name], ::String, context: "#{context}[:dataset_group_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
      end
    end

    class DatasetGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DatasetGroupSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatasetImportJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetImportJobSummary, context: context)
        Hearth::Validator.validate!(input[:dataset_import_job_arn], ::String, context: "#{context}[:dataset_import_job_arn]")
        Hearth::Validator.validate!(input[:dataset_import_job_name], ::String, context: "#{context}[:dataset_import_job_name]")
        DataSource.validate!(input[:data_source], context: "#{context}[:data_source]") unless input[:data_source].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
      end
    end

    class DatasetImportJobs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DatasetImportJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatasetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetSummary, context: context)
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:dataset_type], ::String, context: "#{context}[:dataset_type]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
      end
    end

    class Datasets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DatasetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteDatasetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetGroupInput, context: context)
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
      end
    end

    class DeleteDatasetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetGroupOutput, context: context)
      end
    end

    class DeleteDatasetImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetImportJobInput, context: context)
        Hearth::Validator.validate!(input[:dataset_import_job_arn], ::String, context: "#{context}[:dataset_import_job_arn]")
      end
    end

    class DeleteDatasetImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetImportJobOutput, context: context)
      end
    end

    class DeleteDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetInput, context: context)
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
      end
    end

    class DeleteDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetOutput, context: context)
      end
    end

    class DeleteExplainabilityExportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteExplainabilityExportInput, context: context)
        Hearth::Validator.validate!(input[:explainability_export_arn], ::String, context: "#{context}[:explainability_export_arn]")
      end
    end

    class DeleteExplainabilityExportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteExplainabilityExportOutput, context: context)
      end
    end

    class DeleteExplainabilityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteExplainabilityInput, context: context)
        Hearth::Validator.validate!(input[:explainability_arn], ::String, context: "#{context}[:explainability_arn]")
      end
    end

    class DeleteExplainabilityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteExplainabilityOutput, context: context)
      end
    end

    class DeleteForecastExportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteForecastExportJobInput, context: context)
        Hearth::Validator.validate!(input[:forecast_export_job_arn], ::String, context: "#{context}[:forecast_export_job_arn]")
      end
    end

    class DeleteForecastExportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteForecastExportJobOutput, context: context)
      end
    end

    class DeleteForecastInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteForecastInput, context: context)
        Hearth::Validator.validate!(input[:forecast_arn], ::String, context: "#{context}[:forecast_arn]")
      end
    end

    class DeleteForecastOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteForecastOutput, context: context)
      end
    end

    class DeleteMonitorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMonitorInput, context: context)
        Hearth::Validator.validate!(input[:monitor_arn], ::String, context: "#{context}[:monitor_arn]")
      end
    end

    class DeleteMonitorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMonitorOutput, context: context)
      end
    end

    class DeletePredictorBacktestExportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePredictorBacktestExportJobInput, context: context)
        Hearth::Validator.validate!(input[:predictor_backtest_export_job_arn], ::String, context: "#{context}[:predictor_backtest_export_job_arn]")
      end
    end

    class DeletePredictorBacktestExportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePredictorBacktestExportJobOutput, context: context)
      end
    end

    class DeletePredictorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePredictorInput, context: context)
        Hearth::Validator.validate!(input[:predictor_arn], ::String, context: "#{context}[:predictor_arn]")
      end
    end

    class DeletePredictorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePredictorOutput, context: context)
      end
    end

    class DeleteResourceTreeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourceTreeInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DeleteResourceTreeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourceTreeOutput, context: context)
      end
    end

    class DescribeAutoPredictorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAutoPredictorInput, context: context)
        Hearth::Validator.validate!(input[:predictor_arn], ::String, context: "#{context}[:predictor_arn]")
      end
    end

    class DescribeAutoPredictorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAutoPredictorOutput, context: context)
        Hearth::Validator.validate!(input[:predictor_arn], ::String, context: "#{context}[:predictor_arn]")
        Hearth::Validator.validate!(input[:predictor_name], ::String, context: "#{context}[:predictor_name]")
        Hearth::Validator.validate!(input[:forecast_horizon], ::Integer, context: "#{context}[:forecast_horizon]")
        ForecastTypes.validate!(input[:forecast_types], context: "#{context}[:forecast_types]") unless input[:forecast_types].nil?
        Hearth::Validator.validate!(input[:forecast_frequency], ::String, context: "#{context}[:forecast_frequency]")
        ForecastDimensions.validate!(input[:forecast_dimensions], context: "#{context}[:forecast_dimensions]") unless input[:forecast_dimensions].nil?
        ArnList.validate!(input[:dataset_import_job_arns], context: "#{context}[:dataset_import_job_arns]") unless input[:dataset_import_job_arns].nil?
        DataConfig.validate!(input[:data_config], context: "#{context}[:data_config]") unless input[:data_config].nil?
        EncryptionConfig.validate!(input[:encryption_config], context: "#{context}[:encryption_config]") unless input[:encryption_config].nil?
        ReferencePredictorSummary.validate!(input[:reference_predictor_summary], context: "#{context}[:reference_predictor_summary]") unless input[:reference_predictor_summary].nil?
        Hearth::Validator.validate!(input[:estimated_time_remaining_in_minutes], ::Integer, context: "#{context}[:estimated_time_remaining_in_minutes]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
        Hearth::Validator.validate!(input[:optimization_metric], ::String, context: "#{context}[:optimization_metric]")
        ExplainabilityInfo.validate!(input[:explainability_info], context: "#{context}[:explainability_info]") unless input[:explainability_info].nil?
        MonitorInfo.validate!(input[:monitor_info], context: "#{context}[:monitor_info]") unless input[:monitor_info].nil?
        TimeAlignmentBoundary.validate!(input[:time_alignment_boundary], context: "#{context}[:time_alignment_boundary]") unless input[:time_alignment_boundary].nil?
      end
    end

    class DescribeDatasetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetGroupInput, context: context)
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
      end
    end

    class DescribeDatasetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetGroupOutput, context: context)
        Hearth::Validator.validate!(input[:dataset_group_name], ::String, context: "#{context}[:dataset_group_name]")
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        ArnList.validate!(input[:dataset_arns], context: "#{context}[:dataset_arns]") unless input[:dataset_arns].nil?
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
      end
    end

    class DescribeDatasetImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetImportJobInput, context: context)
        Hearth::Validator.validate!(input[:dataset_import_job_arn], ::String, context: "#{context}[:dataset_import_job_arn]")
      end
    end

    class DescribeDatasetImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetImportJobOutput, context: context)
        Hearth::Validator.validate!(input[:dataset_import_job_name], ::String, context: "#{context}[:dataset_import_job_name]")
        Hearth::Validator.validate!(input[:dataset_import_job_arn], ::String, context: "#{context}[:dataset_import_job_arn]")
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Hearth::Validator.validate!(input[:timestamp_format], ::String, context: "#{context}[:timestamp_format]")
        Hearth::Validator.validate!(input[:time_zone], ::String, context: "#{context}[:time_zone]")
        Hearth::Validator.validate!(input[:use_geolocation_for_time_zone], ::TrueClass, ::FalseClass, context: "#{context}[:use_geolocation_for_time_zone]")
        Hearth::Validator.validate!(input[:geolocation_format], ::String, context: "#{context}[:geolocation_format]")
        DataSource.validate!(input[:data_source], context: "#{context}[:data_source]") unless input[:data_source].nil?
        Hearth::Validator.validate!(input[:estimated_time_remaining_in_minutes], ::Integer, context: "#{context}[:estimated_time_remaining_in_minutes]")
        FieldStatistics.validate!(input[:field_statistics], context: "#{context}[:field_statistics]") unless input[:field_statistics].nil?
        Hearth::Validator.validate!(input[:data_size], ::Float, context: "#{context}[:data_size]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
      end
    end

    class DescribeDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetInput, context: context)
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
      end
    end

    class DescribeDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetOutput, context: context)
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:dataset_type], ::String, context: "#{context}[:dataset_type]")
        Hearth::Validator.validate!(input[:data_frequency], ::String, context: "#{context}[:data_frequency]")
        Schema.validate!(input[:schema], context: "#{context}[:schema]") unless input[:schema].nil?
        EncryptionConfig.validate!(input[:encryption_config], context: "#{context}[:encryption_config]") unless input[:encryption_config].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
      end
    end

    class DescribeExplainabilityExportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExplainabilityExportInput, context: context)
        Hearth::Validator.validate!(input[:explainability_export_arn], ::String, context: "#{context}[:explainability_export_arn]")
      end
    end

    class DescribeExplainabilityExportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExplainabilityExportOutput, context: context)
        Hearth::Validator.validate!(input[:explainability_export_arn], ::String, context: "#{context}[:explainability_export_arn]")
        Hearth::Validator.validate!(input[:explainability_export_name], ::String, context: "#{context}[:explainability_export_name]")
        Hearth::Validator.validate!(input[:explainability_arn], ::String, context: "#{context}[:explainability_arn]")
        DataDestination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
      end
    end

    class DescribeExplainabilityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExplainabilityInput, context: context)
        Hearth::Validator.validate!(input[:explainability_arn], ::String, context: "#{context}[:explainability_arn]")
      end
    end

    class DescribeExplainabilityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExplainabilityOutput, context: context)
        Hearth::Validator.validate!(input[:explainability_arn], ::String, context: "#{context}[:explainability_arn]")
        Hearth::Validator.validate!(input[:explainability_name], ::String, context: "#{context}[:explainability_name]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        ExplainabilityConfig.validate!(input[:explainability_config], context: "#{context}[:explainability_config]") unless input[:explainability_config].nil?
        Hearth::Validator.validate!(input[:enable_visualization], ::TrueClass, ::FalseClass, context: "#{context}[:enable_visualization]")
        DataSource.validate!(input[:data_source], context: "#{context}[:data_source]") unless input[:data_source].nil?
        Schema.validate!(input[:schema], context: "#{context}[:schema]") unless input[:schema].nil?
        Hearth::Validator.validate!(input[:start_date_time], ::String, context: "#{context}[:start_date_time]")
        Hearth::Validator.validate!(input[:end_date_time], ::String, context: "#{context}[:end_date_time]")
        Hearth::Validator.validate!(input[:estimated_time_remaining_in_minutes], ::Integer, context: "#{context}[:estimated_time_remaining_in_minutes]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
      end
    end

    class DescribeForecastExportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeForecastExportJobInput, context: context)
        Hearth::Validator.validate!(input[:forecast_export_job_arn], ::String, context: "#{context}[:forecast_export_job_arn]")
      end
    end

    class DescribeForecastExportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeForecastExportJobOutput, context: context)
        Hearth::Validator.validate!(input[:forecast_export_job_arn], ::String, context: "#{context}[:forecast_export_job_arn]")
        Hearth::Validator.validate!(input[:forecast_export_job_name], ::String, context: "#{context}[:forecast_export_job_name]")
        Hearth::Validator.validate!(input[:forecast_arn], ::String, context: "#{context}[:forecast_arn]")
        DataDestination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
      end
    end

    class DescribeForecastInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeForecastInput, context: context)
        Hearth::Validator.validate!(input[:forecast_arn], ::String, context: "#{context}[:forecast_arn]")
      end
    end

    class DescribeForecastOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeForecastOutput, context: context)
        Hearth::Validator.validate!(input[:forecast_arn], ::String, context: "#{context}[:forecast_arn]")
        Hearth::Validator.validate!(input[:forecast_name], ::String, context: "#{context}[:forecast_name]")
        ForecastTypes.validate!(input[:forecast_types], context: "#{context}[:forecast_types]") unless input[:forecast_types].nil?
        Hearth::Validator.validate!(input[:predictor_arn], ::String, context: "#{context}[:predictor_arn]")
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:estimated_time_remaining_in_minutes], ::Integer, context: "#{context}[:estimated_time_remaining_in_minutes]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
        TimeSeriesSelector.validate!(input[:time_series_selector], context: "#{context}[:time_series_selector]") unless input[:time_series_selector].nil?
      end
    end

    class DescribeMonitorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMonitorInput, context: context)
        Hearth::Validator.validate!(input[:monitor_arn], ::String, context: "#{context}[:monitor_arn]")
      end
    end

    class DescribeMonitorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMonitorOutput, context: context)
        Hearth::Validator.validate!(input[:monitor_name], ::String, context: "#{context}[:monitor_name]")
        Hearth::Validator.validate!(input[:monitor_arn], ::String, context: "#{context}[:monitor_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_evaluation_time], ::Time, context: "#{context}[:last_evaluation_time]")
        Hearth::Validator.validate!(input[:last_evaluation_state], ::String, context: "#{context}[:last_evaluation_state]")
        Baseline.validate!(input[:baseline], context: "#{context}[:baseline]") unless input[:baseline].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
        Hearth::Validator.validate!(input[:estimated_evaluation_time_remaining_in_minutes], ::Integer, context: "#{context}[:estimated_evaluation_time_remaining_in_minutes]")
      end
    end

    class DescribePredictorBacktestExportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePredictorBacktestExportJobInput, context: context)
        Hearth::Validator.validate!(input[:predictor_backtest_export_job_arn], ::String, context: "#{context}[:predictor_backtest_export_job_arn]")
      end
    end

    class DescribePredictorBacktestExportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePredictorBacktestExportJobOutput, context: context)
        Hearth::Validator.validate!(input[:predictor_backtest_export_job_arn], ::String, context: "#{context}[:predictor_backtest_export_job_arn]")
        Hearth::Validator.validate!(input[:predictor_backtest_export_job_name], ::String, context: "#{context}[:predictor_backtest_export_job_name]")
        Hearth::Validator.validate!(input[:predictor_arn], ::String, context: "#{context}[:predictor_arn]")
        DataDestination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
      end
    end

    class DescribePredictorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePredictorInput, context: context)
        Hearth::Validator.validate!(input[:predictor_arn], ::String, context: "#{context}[:predictor_arn]")
      end
    end

    class DescribePredictorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePredictorOutput, context: context)
        Hearth::Validator.validate!(input[:predictor_arn], ::String, context: "#{context}[:predictor_arn]")
        Hearth::Validator.validate!(input[:predictor_name], ::String, context: "#{context}[:predictor_name]")
        Hearth::Validator.validate!(input[:algorithm_arn], ::String, context: "#{context}[:algorithm_arn]")
        ArnList.validate!(input[:auto_ml_algorithm_arns], context: "#{context}[:auto_ml_algorithm_arns]") unless input[:auto_ml_algorithm_arns].nil?
        Hearth::Validator.validate!(input[:forecast_horizon], ::Integer, context: "#{context}[:forecast_horizon]")
        ForecastTypes.validate!(input[:forecast_types], context: "#{context}[:forecast_types]") unless input[:forecast_types].nil?
        Hearth::Validator.validate!(input[:perform_auto_ml], ::TrueClass, ::FalseClass, context: "#{context}[:perform_auto_ml]")
        Hearth::Validator.validate!(input[:auto_ml_override_strategy], ::String, context: "#{context}[:auto_ml_override_strategy]")
        Hearth::Validator.validate!(input[:perform_hpo], ::TrueClass, ::FalseClass, context: "#{context}[:perform_hpo]")
        TrainingParameters.validate!(input[:training_parameters], context: "#{context}[:training_parameters]") unless input[:training_parameters].nil?
        EvaluationParameters.validate!(input[:evaluation_parameters], context: "#{context}[:evaluation_parameters]") unless input[:evaluation_parameters].nil?
        HyperParameterTuningJobConfig.validate!(input[:hpo_config], context: "#{context}[:hpo_config]") unless input[:hpo_config].nil?
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        FeaturizationConfig.validate!(input[:featurization_config], context: "#{context}[:featurization_config]") unless input[:featurization_config].nil?
        EncryptionConfig.validate!(input[:encryption_config], context: "#{context}[:encryption_config]") unless input[:encryption_config].nil?
        PredictorExecutionDetails.validate!(input[:predictor_execution_details], context: "#{context}[:predictor_execution_details]") unless input[:predictor_execution_details].nil?
        Hearth::Validator.validate!(input[:estimated_time_remaining_in_minutes], ::Integer, context: "#{context}[:estimated_time_remaining_in_minutes]")
        Hearth::Validator.validate!(input[:is_auto_predictor], ::TrueClass, ::FalseClass, context: "#{context}[:is_auto_predictor]")
        ArnList.validate!(input[:dataset_import_job_arns], context: "#{context}[:dataset_import_job_arns]") unless input[:dataset_import_job_arns].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
        Hearth::Validator.validate!(input[:optimization_metric], ::String, context: "#{context}[:optimization_metric]")
      end
    end

    class EncryptionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionConfig, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
      end
    end

    class ErrorMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorMetric, context: context)
        Hearth::Validator.validate!(input[:forecast_type], ::String, context: "#{context}[:forecast_type]")
        Hearth::Validator.validate!(input[:wape], ::Float, context: "#{context}[:wape]")
        Hearth::Validator.validate!(input[:rmse], ::Float, context: "#{context}[:rmse]")
        Hearth::Validator.validate!(input[:mase], ::Float, context: "#{context}[:mase]")
        Hearth::Validator.validate!(input[:mape], ::Float, context: "#{context}[:mape]")
      end
    end

    class ErrorMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ErrorMetric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EvaluationParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluationParameters, context: context)
        Hearth::Validator.validate!(input[:number_of_backtest_windows], ::Integer, context: "#{context}[:number_of_backtest_windows]")
        Hearth::Validator.validate!(input[:back_test_window_offset], ::Integer, context: "#{context}[:back_test_window_offset]")
      end
    end

    class EvaluationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluationResult, context: context)
        Hearth::Validator.validate!(input[:algorithm_arn], ::String, context: "#{context}[:algorithm_arn]")
        TestWindows.validate!(input[:test_windows], context: "#{context}[:test_windows]") unless input[:test_windows].nil?
      end
    end

    class Explainabilities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExplainabilitySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExplainabilityConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExplainabilityConfig, context: context)
        Hearth::Validator.validate!(input[:time_series_granularity], ::String, context: "#{context}[:time_series_granularity]")
        Hearth::Validator.validate!(input[:time_point_granularity], ::String, context: "#{context}[:time_point_granularity]")
      end
    end

    class ExplainabilityExportSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExplainabilityExportSummary, context: context)
        Hearth::Validator.validate!(input[:explainability_export_arn], ::String, context: "#{context}[:explainability_export_arn]")
        Hearth::Validator.validate!(input[:explainability_export_name], ::String, context: "#{context}[:explainability_export_name]")
        DataDestination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
      end
    end

    class ExplainabilityExports
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExplainabilityExportSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExplainabilityInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExplainabilityInfo, context: context)
        Hearth::Validator.validate!(input[:explainability_arn], ::String, context: "#{context}[:explainability_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ExplainabilitySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExplainabilitySummary, context: context)
        Hearth::Validator.validate!(input[:explainability_arn], ::String, context: "#{context}[:explainability_arn]")
        Hearth::Validator.validate!(input[:explainability_name], ::String, context: "#{context}[:explainability_name]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        ExplainabilityConfig.validate!(input[:explainability_config], context: "#{context}[:explainability_config]") unless input[:explainability_config].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
      end
    end

    class Featurization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Featurization, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        FeaturizationPipeline.validate!(input[:featurization_pipeline], context: "#{context}[:featurization_pipeline]") unless input[:featurization_pipeline].nil?
      end
    end

    class FeaturizationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FeaturizationConfig, context: context)
        Hearth::Validator.validate!(input[:forecast_frequency], ::String, context: "#{context}[:forecast_frequency]")
        ForecastDimensions.validate!(input[:forecast_dimensions], context: "#{context}[:forecast_dimensions]") unless input[:forecast_dimensions].nil?
        Featurizations.validate!(input[:featurizations], context: "#{context}[:featurizations]") unless input[:featurizations].nil?
      end
    end

    class FeaturizationMethod
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FeaturizationMethod, context: context)
        Hearth::Validator.validate!(input[:featurization_method_name], ::String, context: "#{context}[:featurization_method_name]")
        FeaturizationMethodParameters.validate!(input[:featurization_method_parameters], context: "#{context}[:featurization_method_parameters]") unless input[:featurization_method_parameters].nil?
      end
    end

    class FeaturizationMethodParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class FeaturizationPipeline
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FeaturizationMethod.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Featurizations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Featurization.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FieldStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Statistics.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:condition], ::String, context: "#{context}[:condition]")
      end
    end

    class Filters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ForecastDimensions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ForecastExportJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForecastExportJobSummary, context: context)
        Hearth::Validator.validate!(input[:forecast_export_job_arn], ::String, context: "#{context}[:forecast_export_job_arn]")
        Hearth::Validator.validate!(input[:forecast_export_job_name], ::String, context: "#{context}[:forecast_export_job_name]")
        DataDestination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
      end
    end

    class ForecastExportJobs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ForecastExportJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ForecastSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForecastSummary, context: context)
        Hearth::Validator.validate!(input[:forecast_arn], ::String, context: "#{context}[:forecast_arn]")
        Hearth::Validator.validate!(input[:forecast_name], ::String, context: "#{context}[:forecast_name]")
        Hearth::Validator.validate!(input[:predictor_arn], ::String, context: "#{context}[:predictor_arn]")
        Hearth::Validator.validate!(input[:created_using_auto_predictor], ::TrueClass, ::FalseClass, context: "#{context}[:created_using_auto_predictor]")
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
      end
    end

    class ForecastTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Forecasts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ForecastSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetAccuracyMetricsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccuracyMetricsInput, context: context)
        Hearth::Validator.validate!(input[:predictor_arn], ::String, context: "#{context}[:predictor_arn]")
      end
    end

    class GetAccuracyMetricsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccuracyMetricsOutput, context: context)
        PredictorEvaluationResults.validate!(input[:predictor_evaluation_results], context: "#{context}[:predictor_evaluation_results]") unless input[:predictor_evaluation_results].nil?
        Hearth::Validator.validate!(input[:is_auto_predictor], ::TrueClass, ::FalseClass, context: "#{context}[:is_auto_predictor]")
        Hearth::Validator.validate!(input[:auto_ml_override_strategy], ::String, context: "#{context}[:auto_ml_override_strategy]")
        Hearth::Validator.validate!(input[:optimization_metric], ::String, context: "#{context}[:optimization_metric]")
      end
    end

    class HyperParameterTuningJobConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HyperParameterTuningJobConfig, context: context)
        ParameterRanges.validate!(input[:parameter_ranges], context: "#{context}[:parameter_ranges]") unless input[:parameter_ranges].nil?
      end
    end

    class InputDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputDataConfig, context: context)
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        SupplementaryFeatures.validate!(input[:supplementary_features], context: "#{context}[:supplementary_features]") unless input[:supplementary_features].nil?
      end
    end

    class IntegerParameterRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntegerParameterRange, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:max_value], ::Integer, context: "#{context}[:max_value]")
        Hearth::Validator.validate!(input[:min_value], ::Integer, context: "#{context}[:min_value]")
        Hearth::Validator.validate!(input[:scaling_type], ::String, context: "#{context}[:scaling_type]")
      end
    end

    class IntegerParameterRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IntegerParameterRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InvalidInputException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInputException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListDatasetGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetGroupsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDatasetGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetGroupsOutput, context: context)
        DatasetGroups.validate!(input[:dataset_groups], context: "#{context}[:dataset_groups]") unless input[:dataset_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDatasetImportJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetImportJobsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListDatasetImportJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetImportJobsOutput, context: context)
        DatasetImportJobs.validate!(input[:dataset_import_jobs], context: "#{context}[:dataset_import_jobs]") unless input[:dataset_import_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDatasetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDatasetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetsOutput, context: context)
        Datasets.validate!(input[:datasets], context: "#{context}[:datasets]") unless input[:datasets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExplainabilitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExplainabilitiesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListExplainabilitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExplainabilitiesOutput, context: context)
        Explainabilities.validate!(input[:explainabilities], context: "#{context}[:explainabilities]") unless input[:explainabilities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExplainabilityExportsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExplainabilityExportsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListExplainabilityExportsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExplainabilityExportsOutput, context: context)
        ExplainabilityExports.validate!(input[:explainability_exports], context: "#{context}[:explainability_exports]") unless input[:explainability_exports].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListForecastExportJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListForecastExportJobsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListForecastExportJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListForecastExportJobsOutput, context: context)
        ForecastExportJobs.validate!(input[:forecast_export_jobs], context: "#{context}[:forecast_export_jobs]") unless input[:forecast_export_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListForecastsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListForecastsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListForecastsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListForecastsOutput, context: context)
        Forecasts.validate!(input[:forecasts], context: "#{context}[:forecasts]") unless input[:forecasts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMonitorEvaluationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMonitorEvaluationsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:monitor_arn], ::String, context: "#{context}[:monitor_arn]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListMonitorEvaluationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMonitorEvaluationsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        PredictorMonitorEvaluations.validate!(input[:predictor_monitor_evaluations], context: "#{context}[:predictor_monitor_evaluations]") unless input[:predictor_monitor_evaluations].nil?
      end
    end

    class ListMonitorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMonitorsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListMonitorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMonitorsOutput, context: context)
        Monitors.validate!(input[:monitors], context: "#{context}[:monitors]") unless input[:monitors].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPredictorBacktestExportJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPredictorBacktestExportJobsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListPredictorBacktestExportJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPredictorBacktestExportJobsOutput, context: context)
        PredictorBacktestExportJobs.validate!(input[:predictor_backtest_export_jobs], context: "#{context}[:predictor_backtest_export_jobs]") unless input[:predictor_backtest_export_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPredictorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPredictorsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListPredictorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPredictorsOutput, context: context)
        Predictors.validate!(input[:predictors], context: "#{context}[:predictors]") unless input[:predictors].nil?
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
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MetricResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricResult, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:metric_value], ::Float, context: "#{context}[:metric_value]")
      end
    end

    class MetricResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Metrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Metrics, context: context)
        Hearth::Validator.validate!(input[:rmse], ::Float, context: "#{context}[:rmse]")
        WeightedQuantileLosses.validate!(input[:weighted_quantile_losses], context: "#{context}[:weighted_quantile_losses]") unless input[:weighted_quantile_losses].nil?
        ErrorMetrics.validate!(input[:error_metrics], context: "#{context}[:error_metrics]") unless input[:error_metrics].nil?
        Hearth::Validator.validate!(input[:average_weighted_quantile_loss], ::Float, context: "#{context}[:average_weighted_quantile_loss]")
      end
    end

    class MonitorConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitorConfig, context: context)
        Hearth::Validator.validate!(input[:monitor_name], ::String, context: "#{context}[:monitor_name]")
      end
    end

    class MonitorDataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitorDataSource, context: context)
        Hearth::Validator.validate!(input[:dataset_import_job_arn], ::String, context: "#{context}[:dataset_import_job_arn]")
        Hearth::Validator.validate!(input[:forecast_arn], ::String, context: "#{context}[:forecast_arn]")
        Hearth::Validator.validate!(input[:predictor_arn], ::String, context: "#{context}[:predictor_arn]")
      end
    end

    class MonitorInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitorInfo, context: context)
        Hearth::Validator.validate!(input[:monitor_arn], ::String, context: "#{context}[:monitor_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class MonitorSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitorSummary, context: context)
        Hearth::Validator.validate!(input[:monitor_arn], ::String, context: "#{context}[:monitor_arn]")
        Hearth::Validator.validate!(input[:monitor_name], ::String, context: "#{context}[:monitor_name]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
      end
    end

    class Monitors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MonitorSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParameterRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterRanges, context: context)
        CategoricalParameterRanges.validate!(input[:categorical_parameter_ranges], context: "#{context}[:categorical_parameter_ranges]") unless input[:categorical_parameter_ranges].nil?
        ContinuousParameterRanges.validate!(input[:continuous_parameter_ranges], context: "#{context}[:continuous_parameter_ranges]") unless input[:continuous_parameter_ranges].nil?
        IntegerParameterRanges.validate!(input[:integer_parameter_ranges], context: "#{context}[:integer_parameter_ranges]") unless input[:integer_parameter_ranges].nil?
      end
    end

    class PredictorBacktestExportJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictorBacktestExportJobSummary, context: context)
        Hearth::Validator.validate!(input[:predictor_backtest_export_job_arn], ::String, context: "#{context}[:predictor_backtest_export_job_arn]")
        Hearth::Validator.validate!(input[:predictor_backtest_export_job_name], ::String, context: "#{context}[:predictor_backtest_export_job_name]")
        DataDestination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
      end
    end

    class PredictorBacktestExportJobs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PredictorBacktestExportJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PredictorBaseline
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictorBaseline, context: context)
        BaselineMetrics.validate!(input[:baseline_metrics], context: "#{context}[:baseline_metrics]") unless input[:baseline_metrics].nil?
      end
    end

    class PredictorEvaluationResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EvaluationResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PredictorEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictorEvent, context: context)
        Hearth::Validator.validate!(input[:detail], ::String, context: "#{context}[:detail]")
        Hearth::Validator.validate!(input[:datetime], ::Time, context: "#{context}[:datetime]")
      end
    end

    class PredictorExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictorExecution, context: context)
        Hearth::Validator.validate!(input[:algorithm_arn], ::String, context: "#{context}[:algorithm_arn]")
        TestWindowDetails.validate!(input[:test_windows], context: "#{context}[:test_windows]") unless input[:test_windows].nil?
      end
    end

    class PredictorExecutionDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictorExecutionDetails, context: context)
        PredictorExecutions.validate!(input[:predictor_executions], context: "#{context}[:predictor_executions]") unless input[:predictor_executions].nil?
      end
    end

    class PredictorExecutions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PredictorExecution.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PredictorMonitorEvaluation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictorMonitorEvaluation, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:monitor_arn], ::String, context: "#{context}[:monitor_arn]")
        Hearth::Validator.validate!(input[:evaluation_time], ::Time, context: "#{context}[:evaluation_time]")
        Hearth::Validator.validate!(input[:evaluation_state], ::String, context: "#{context}[:evaluation_state]")
        Hearth::Validator.validate!(input[:window_start_datetime], ::Time, context: "#{context}[:window_start_datetime]")
        Hearth::Validator.validate!(input[:window_end_datetime], ::Time, context: "#{context}[:window_end_datetime]")
        PredictorEvent.validate!(input[:predictor_event], context: "#{context}[:predictor_event]") unless input[:predictor_event].nil?
        MonitorDataSource.validate!(input[:monitor_data_source], context: "#{context}[:monitor_data_source]") unless input[:monitor_data_source].nil?
        MetricResults.validate!(input[:metric_results], context: "#{context}[:metric_results]") unless input[:metric_results].nil?
        Hearth::Validator.validate!(input[:num_items_evaluated], ::Integer, context: "#{context}[:num_items_evaluated]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PredictorMonitorEvaluations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PredictorMonitorEvaluation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PredictorSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictorSummary, context: context)
        Hearth::Validator.validate!(input[:predictor_arn], ::String, context: "#{context}[:predictor_arn]")
        Hearth::Validator.validate!(input[:predictor_name], ::String, context: "#{context}[:predictor_name]")
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        Hearth::Validator.validate!(input[:is_auto_predictor], ::TrueClass, ::FalseClass, context: "#{context}[:is_auto_predictor]")
        ReferencePredictorSummary.validate!(input[:reference_predictor_summary], context: "#{context}[:reference_predictor_summary]") unless input[:reference_predictor_summary].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modification_time], ::Time, context: "#{context}[:last_modification_time]")
      end
    end

    class Predictors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PredictorSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReferencePredictorSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReferencePredictorSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResumeResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResumeResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ResumeResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResumeResourceOutput, context: context)
      end
    end

    class S3Config
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Config, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
      end
    end

    class Schema
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Schema, context: context)
        SchemaAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class SchemaAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaAttribute, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:attribute_type], ::String, context: "#{context}[:attribute_type]")
      end
    end

    class SchemaAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SchemaAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Statistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Statistics, context: context)
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:count_distinct], ::Integer, context: "#{context}[:count_distinct]")
        Hearth::Validator.validate!(input[:count_null], ::Integer, context: "#{context}[:count_null]")
        Hearth::Validator.validate!(input[:count_nan], ::Integer, context: "#{context}[:count_nan]")
        Hearth::Validator.validate!(input[:min], ::String, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::String, context: "#{context}[:max]")
        Hearth::Validator.validate!(input[:avg], ::Float, context: "#{context}[:avg]")
        Hearth::Validator.validate!(input[:stddev], ::Float, context: "#{context}[:stddev]")
        Hearth::Validator.validate!(input[:count_long], ::Integer, context: "#{context}[:count_long]")
        Hearth::Validator.validate!(input[:count_distinct_long], ::Integer, context: "#{context}[:count_distinct_long]")
        Hearth::Validator.validate!(input[:count_null_long], ::Integer, context: "#{context}[:count_null_long]")
        Hearth::Validator.validate!(input[:count_nan_long], ::Integer, context: "#{context}[:count_nan_long]")
      end
    end

    class StopResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class StopResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopResourceOutput, context: context)
      end
    end

    class SupplementaryFeature
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SupplementaryFeature, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class SupplementaryFeatures
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SupplementaryFeature.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TestWindowDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TestWindowSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TestWindowSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestWindowSummary, context: context)
        Hearth::Validator.validate!(input[:test_window_start], ::Time, context: "#{context}[:test_window_start]")
        Hearth::Validator.validate!(input[:test_window_end], ::Time, context: "#{context}[:test_window_end]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TestWindows
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WindowSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TimeAlignmentBoundary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeAlignmentBoundary, context: context)
        Hearth::Validator.validate!(input[:month], ::String, context: "#{context}[:month]")
        Hearth::Validator.validate!(input[:day_of_month], ::Integer, context: "#{context}[:day_of_month]")
        Hearth::Validator.validate!(input[:day_of_week], ::String, context: "#{context}[:day_of_week]")
        Hearth::Validator.validate!(input[:hour], ::Integer, context: "#{context}[:hour]")
      end
    end

    class TimeSeriesIdentifiers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeSeriesIdentifiers, context: context)
        DataSource.validate!(input[:data_source], context: "#{context}[:data_source]") unless input[:data_source].nil?
        Schema.validate!(input[:schema], context: "#{context}[:schema]") unless input[:schema].nil?
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
      end
    end

    class TimeSeriesSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeSeriesSelector, context: context)
        TimeSeriesIdentifiers.validate!(input[:time_series_identifiers], context: "#{context}[:time_series_identifiers]") unless input[:time_series_identifiers].nil?
      end
    end

    class TrainingParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Transformations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateDatasetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDatasetGroupInput, context: context)
        Hearth::Validator.validate!(input[:dataset_group_arn], ::String, context: "#{context}[:dataset_group_arn]")
        ArnList.validate!(input[:dataset_arns], context: "#{context}[:dataset_arns]") unless input[:dataset_arns].nil?
      end
    end

    class UpdateDatasetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDatasetGroupOutput, context: context)
      end
    end

    class Values
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class WeightedQuantileLoss
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WeightedQuantileLoss, context: context)
        Hearth::Validator.validate!(input[:quantile], ::Float, context: "#{context}[:quantile]")
        Hearth::Validator.validate!(input[:loss_value], ::Float, context: "#{context}[:loss_value]")
      end
    end

    class WeightedQuantileLosses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WeightedQuantileLoss.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WindowSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WindowSummary, context: context)
        Hearth::Validator.validate!(input[:test_window_start], ::Time, context: "#{context}[:test_window_start]")
        Hearth::Validator.validate!(input[:test_window_end], ::Time, context: "#{context}[:test_window_end]")
        Hearth::Validator.validate!(input[:item_count], ::Integer, context: "#{context}[:item_count]")
        Hearth::Validator.validate!(input[:evaluation_type], ::String, context: "#{context}[:evaluation_type]")
        Metrics.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
      end
    end

  end
end
