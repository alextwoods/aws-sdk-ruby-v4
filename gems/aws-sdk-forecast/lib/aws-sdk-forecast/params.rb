# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Forecast
  module Params

    module AdditionalDataset
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdditionalDataset, context: context)
        type = Types::AdditionalDataset.new
        type.name = params[:name]
        type.configuration = Configuration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module AdditionalDatasets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AdditionalDataset.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AttributeConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeConfig, context: context)
        type = Types::AttributeConfig.new
        type.attribute_name = params[:attribute_name]
        type.transformations = Transformations.build(params[:transformations], context: "#{context}[:transformations]") unless params[:transformations].nil?
        type
      end
    end

    module AttributeConfigs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttributeConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Baseline
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Baseline, context: context)
        type = Types::Baseline.new
        type.predictor_baseline = PredictorBaseline.build(params[:predictor_baseline], context: "#{context}[:predictor_baseline]") unless params[:predictor_baseline].nil?
        type
      end
    end

    module BaselineMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BaselineMetric, context: context)
        type = Types::BaselineMetric.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module BaselineMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BaselineMetric.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CategoricalParameterRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CategoricalParameterRange, context: context)
        type = Types::CategoricalParameterRange.new
        type.name = params[:name]
        type.values = Values.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module CategoricalParameterRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CategoricalParameterRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Configuration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Values.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ContinuousParameterRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContinuousParameterRange, context: context)
        type = Types::ContinuousParameterRange.new
        type.name = params[:name]
        type.max_value = params[:max_value]
        type.min_value = params[:min_value]
        type.scaling_type = params[:scaling_type]
        type
      end
    end

    module ContinuousParameterRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContinuousParameterRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateAutoPredictorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAutoPredictorInput, context: context)
        type = Types::CreateAutoPredictorInput.new
        type.predictor_name = params[:predictor_name]
        type.forecast_horizon = params[:forecast_horizon]
        type.forecast_types = ForecastTypes.build(params[:forecast_types], context: "#{context}[:forecast_types]") unless params[:forecast_types].nil?
        type.forecast_dimensions = ForecastDimensions.build(params[:forecast_dimensions], context: "#{context}[:forecast_dimensions]") unless params[:forecast_dimensions].nil?
        type.forecast_frequency = params[:forecast_frequency]
        type.data_config = DataConfig.build(params[:data_config], context: "#{context}[:data_config]") unless params[:data_config].nil?
        type.encryption_config = EncryptionConfig.build(params[:encryption_config], context: "#{context}[:encryption_config]") unless params[:encryption_config].nil?
        type.reference_predictor_arn = params[:reference_predictor_arn]
        type.optimization_metric = params[:optimization_metric]
        type.explain_predictor = params[:explain_predictor]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.monitor_config = MonitorConfig.build(params[:monitor_config], context: "#{context}[:monitor_config]") unless params[:monitor_config].nil?
        type.time_alignment_boundary = TimeAlignmentBoundary.build(params[:time_alignment_boundary], context: "#{context}[:time_alignment_boundary]") unless params[:time_alignment_boundary].nil?
        type
      end
    end

    module CreateAutoPredictorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAutoPredictorOutput, context: context)
        type = Types::CreateAutoPredictorOutput.new
        type.predictor_arn = params[:predictor_arn]
        type
      end
    end

    module CreateDatasetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetGroupInput, context: context)
        type = Types::CreateDatasetGroupInput.new
        type.dataset_group_name = params[:dataset_group_name]
        type.domain = params[:domain]
        type.dataset_arns = ArnList.build(params[:dataset_arns], context: "#{context}[:dataset_arns]") unless params[:dataset_arns].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDatasetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetGroupOutput, context: context)
        type = Types::CreateDatasetGroupOutput.new
        type.dataset_group_arn = params[:dataset_group_arn]
        type
      end
    end

    module CreateDatasetImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetImportJobInput, context: context)
        type = Types::CreateDatasetImportJobInput.new
        type.dataset_import_job_name = params[:dataset_import_job_name]
        type.dataset_arn = params[:dataset_arn]
        type.data_source = DataSource.build(params[:data_source], context: "#{context}[:data_source]") unless params[:data_source].nil?
        type.timestamp_format = params[:timestamp_format]
        type.time_zone = params[:time_zone]
        type.use_geolocation_for_time_zone = params[:use_geolocation_for_time_zone]
        type.geolocation_format = params[:geolocation_format]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.format = params[:format]
        type
      end
    end

    module CreateDatasetImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetImportJobOutput, context: context)
        type = Types::CreateDatasetImportJobOutput.new
        type.dataset_import_job_arn = params[:dataset_import_job_arn]
        type
      end
    end

    module CreateDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetInput, context: context)
        type = Types::CreateDatasetInput.new
        type.dataset_name = params[:dataset_name]
        type.domain = params[:domain]
        type.dataset_type = params[:dataset_type]
        type.data_frequency = params[:data_frequency]
        type.schema = Schema.build(params[:schema], context: "#{context}[:schema]") unless params[:schema].nil?
        type.encryption_config = EncryptionConfig.build(params[:encryption_config], context: "#{context}[:encryption_config]") unless params[:encryption_config].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetOutput, context: context)
        type = Types::CreateDatasetOutput.new
        type.dataset_arn = params[:dataset_arn]
        type
      end
    end

    module CreateExplainabilityExportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExplainabilityExportInput, context: context)
        type = Types::CreateExplainabilityExportInput.new
        type.explainability_export_name = params[:explainability_export_name]
        type.explainability_arn = params[:explainability_arn]
        type.destination = DataDestination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.format = params[:format]
        type
      end
    end

    module CreateExplainabilityExportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExplainabilityExportOutput, context: context)
        type = Types::CreateExplainabilityExportOutput.new
        type.explainability_export_arn = params[:explainability_export_arn]
        type
      end
    end

    module CreateExplainabilityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExplainabilityInput, context: context)
        type = Types::CreateExplainabilityInput.new
        type.explainability_name = params[:explainability_name]
        type.resource_arn = params[:resource_arn]
        type.explainability_config = ExplainabilityConfig.build(params[:explainability_config], context: "#{context}[:explainability_config]") unless params[:explainability_config].nil?
        type.data_source = DataSource.build(params[:data_source], context: "#{context}[:data_source]") unless params[:data_source].nil?
        type.schema = Schema.build(params[:schema], context: "#{context}[:schema]") unless params[:schema].nil?
        type.enable_visualization = params[:enable_visualization]
        type.start_date_time = params[:start_date_time]
        type.end_date_time = params[:end_date_time]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateExplainabilityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExplainabilityOutput, context: context)
        type = Types::CreateExplainabilityOutput.new
        type.explainability_arn = params[:explainability_arn]
        type
      end
    end

    module CreateForecastExportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateForecastExportJobInput, context: context)
        type = Types::CreateForecastExportJobInput.new
        type.forecast_export_job_name = params[:forecast_export_job_name]
        type.forecast_arn = params[:forecast_arn]
        type.destination = DataDestination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.format = params[:format]
        type
      end
    end

    module CreateForecastExportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateForecastExportJobOutput, context: context)
        type = Types::CreateForecastExportJobOutput.new
        type.forecast_export_job_arn = params[:forecast_export_job_arn]
        type
      end
    end

    module CreateForecastInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateForecastInput, context: context)
        type = Types::CreateForecastInput.new
        type.forecast_name = params[:forecast_name]
        type.predictor_arn = params[:predictor_arn]
        type.forecast_types = ForecastTypes.build(params[:forecast_types], context: "#{context}[:forecast_types]") unless params[:forecast_types].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.time_series_selector = TimeSeriesSelector.build(params[:time_series_selector], context: "#{context}[:time_series_selector]") unless params[:time_series_selector].nil?
        type
      end
    end

    module CreateForecastOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateForecastOutput, context: context)
        type = Types::CreateForecastOutput.new
        type.forecast_arn = params[:forecast_arn]
        type
      end
    end

    module CreateMonitorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMonitorInput, context: context)
        type = Types::CreateMonitorInput.new
        type.monitor_name = params[:monitor_name]
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateMonitorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMonitorOutput, context: context)
        type = Types::CreateMonitorOutput.new
        type.monitor_arn = params[:monitor_arn]
        type
      end
    end

    module CreatePredictorBacktestExportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePredictorBacktestExportJobInput, context: context)
        type = Types::CreatePredictorBacktestExportJobInput.new
        type.predictor_backtest_export_job_name = params[:predictor_backtest_export_job_name]
        type.predictor_arn = params[:predictor_arn]
        type.destination = DataDestination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.format = params[:format]
        type
      end
    end

    module CreatePredictorBacktestExportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePredictorBacktestExportJobOutput, context: context)
        type = Types::CreatePredictorBacktestExportJobOutput.new
        type.predictor_backtest_export_job_arn = params[:predictor_backtest_export_job_arn]
        type
      end
    end

    module CreatePredictorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePredictorInput, context: context)
        type = Types::CreatePredictorInput.new
        type.predictor_name = params[:predictor_name]
        type.algorithm_arn = params[:algorithm_arn]
        type.forecast_horizon = params[:forecast_horizon]
        type.forecast_types = ForecastTypes.build(params[:forecast_types], context: "#{context}[:forecast_types]") unless params[:forecast_types].nil?
        type.perform_auto_ml = params[:perform_auto_ml]
        type.auto_ml_override_strategy = params[:auto_ml_override_strategy]
        type.perform_hpo = params[:perform_hpo]
        type.training_parameters = TrainingParameters.build(params[:training_parameters], context: "#{context}[:training_parameters]") unless params[:training_parameters].nil?
        type.evaluation_parameters = EvaluationParameters.build(params[:evaluation_parameters], context: "#{context}[:evaluation_parameters]") unless params[:evaluation_parameters].nil?
        type.hpo_config = HyperParameterTuningJobConfig.build(params[:hpo_config], context: "#{context}[:hpo_config]") unless params[:hpo_config].nil?
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.featurization_config = FeaturizationConfig.build(params[:featurization_config], context: "#{context}[:featurization_config]") unless params[:featurization_config].nil?
        type.encryption_config = EncryptionConfig.build(params[:encryption_config], context: "#{context}[:encryption_config]") unless params[:encryption_config].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.optimization_metric = params[:optimization_metric]
        type
      end
    end

    module CreatePredictorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePredictorOutput, context: context)
        type = Types::CreatePredictorOutput.new
        type.predictor_arn = params[:predictor_arn]
        type
      end
    end

    module DataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataConfig, context: context)
        type = Types::DataConfig.new
        type.dataset_group_arn = params[:dataset_group_arn]
        type.attribute_configs = AttributeConfigs.build(params[:attribute_configs], context: "#{context}[:attribute_configs]") unless params[:attribute_configs].nil?
        type.additional_datasets = AdditionalDatasets.build(params[:additional_datasets], context: "#{context}[:additional_datasets]") unless params[:additional_datasets].nil?
        type
      end
    end

    module DataDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataDestination, context: context)
        type = Types::DataDestination.new
        type.s3_config = S3Config.build(params[:s3_config], context: "#{context}[:s3_config]") unless params[:s3_config].nil?
        type
      end
    end

    module DataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSource, context: context)
        type = Types::DataSource.new
        type.s3_config = S3Config.build(params[:s3_config], context: "#{context}[:s3_config]") unless params[:s3_config].nil?
        type
      end
    end

    module DatasetGroupSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetGroupSummary, context: context)
        type = Types::DatasetGroupSummary.new
        type.dataset_group_arn = params[:dataset_group_arn]
        type.dataset_group_name = params[:dataset_group_name]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type
      end
    end

    module DatasetGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatasetGroupSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatasetImportJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetImportJobSummary, context: context)
        type = Types::DatasetImportJobSummary.new
        type.dataset_import_job_arn = params[:dataset_import_job_arn]
        type.dataset_import_job_name = params[:dataset_import_job_name]
        type.data_source = DataSource.build(params[:data_source], context: "#{context}[:data_source]") unless params[:data_source].nil?
        type.status = params[:status]
        type.message = params[:message]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type
      end
    end

    module DatasetImportJobs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatasetImportJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatasetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetSummary, context: context)
        type = Types::DatasetSummary.new
        type.dataset_arn = params[:dataset_arn]
        type.dataset_name = params[:dataset_name]
        type.dataset_type = params[:dataset_type]
        type.domain = params[:domain]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type
      end
    end

    module Datasets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatasetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteDatasetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetGroupInput, context: context)
        type = Types::DeleteDatasetGroupInput.new
        type.dataset_group_arn = params[:dataset_group_arn]
        type
      end
    end

    module DeleteDatasetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetGroupOutput, context: context)
        type = Types::DeleteDatasetGroupOutput.new
        type
      end
    end

    module DeleteDatasetImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetImportJobInput, context: context)
        type = Types::DeleteDatasetImportJobInput.new
        type.dataset_import_job_arn = params[:dataset_import_job_arn]
        type
      end
    end

    module DeleteDatasetImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetImportJobOutput, context: context)
        type = Types::DeleteDatasetImportJobOutput.new
        type
      end
    end

    module DeleteDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetInput, context: context)
        type = Types::DeleteDatasetInput.new
        type.dataset_arn = params[:dataset_arn]
        type
      end
    end

    module DeleteDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetOutput, context: context)
        type = Types::DeleteDatasetOutput.new
        type
      end
    end

    module DeleteExplainabilityExportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteExplainabilityExportInput, context: context)
        type = Types::DeleteExplainabilityExportInput.new
        type.explainability_export_arn = params[:explainability_export_arn]
        type
      end
    end

    module DeleteExplainabilityExportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteExplainabilityExportOutput, context: context)
        type = Types::DeleteExplainabilityExportOutput.new
        type
      end
    end

    module DeleteExplainabilityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteExplainabilityInput, context: context)
        type = Types::DeleteExplainabilityInput.new
        type.explainability_arn = params[:explainability_arn]
        type
      end
    end

    module DeleteExplainabilityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteExplainabilityOutput, context: context)
        type = Types::DeleteExplainabilityOutput.new
        type
      end
    end

    module DeleteForecastExportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteForecastExportJobInput, context: context)
        type = Types::DeleteForecastExportJobInput.new
        type.forecast_export_job_arn = params[:forecast_export_job_arn]
        type
      end
    end

    module DeleteForecastExportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteForecastExportJobOutput, context: context)
        type = Types::DeleteForecastExportJobOutput.new
        type
      end
    end

    module DeleteForecastInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteForecastInput, context: context)
        type = Types::DeleteForecastInput.new
        type.forecast_arn = params[:forecast_arn]
        type
      end
    end

    module DeleteForecastOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteForecastOutput, context: context)
        type = Types::DeleteForecastOutput.new
        type
      end
    end

    module DeleteMonitorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMonitorInput, context: context)
        type = Types::DeleteMonitorInput.new
        type.monitor_arn = params[:monitor_arn]
        type
      end
    end

    module DeleteMonitorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMonitorOutput, context: context)
        type = Types::DeleteMonitorOutput.new
        type
      end
    end

    module DeletePredictorBacktestExportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePredictorBacktestExportJobInput, context: context)
        type = Types::DeletePredictorBacktestExportJobInput.new
        type.predictor_backtest_export_job_arn = params[:predictor_backtest_export_job_arn]
        type
      end
    end

    module DeletePredictorBacktestExportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePredictorBacktestExportJobOutput, context: context)
        type = Types::DeletePredictorBacktestExportJobOutput.new
        type
      end
    end

    module DeletePredictorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePredictorInput, context: context)
        type = Types::DeletePredictorInput.new
        type.predictor_arn = params[:predictor_arn]
        type
      end
    end

    module DeletePredictorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePredictorOutput, context: context)
        type = Types::DeletePredictorOutput.new
        type
      end
    end

    module DeleteResourceTreeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourceTreeInput, context: context)
        type = Types::DeleteResourceTreeInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module DeleteResourceTreeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourceTreeOutput, context: context)
        type = Types::DeleteResourceTreeOutput.new
        type
      end
    end

    module DescribeAutoPredictorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAutoPredictorInput, context: context)
        type = Types::DescribeAutoPredictorInput.new
        type.predictor_arn = params[:predictor_arn]
        type
      end
    end

    module DescribeAutoPredictorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAutoPredictorOutput, context: context)
        type = Types::DescribeAutoPredictorOutput.new
        type.predictor_arn = params[:predictor_arn]
        type.predictor_name = params[:predictor_name]
        type.forecast_horizon = params[:forecast_horizon]
        type.forecast_types = ForecastTypes.build(params[:forecast_types], context: "#{context}[:forecast_types]") unless params[:forecast_types].nil?
        type.forecast_frequency = params[:forecast_frequency]
        type.forecast_dimensions = ForecastDimensions.build(params[:forecast_dimensions], context: "#{context}[:forecast_dimensions]") unless params[:forecast_dimensions].nil?
        type.dataset_import_job_arns = ArnList.build(params[:dataset_import_job_arns], context: "#{context}[:dataset_import_job_arns]") unless params[:dataset_import_job_arns].nil?
        type.data_config = DataConfig.build(params[:data_config], context: "#{context}[:data_config]") unless params[:data_config].nil?
        type.encryption_config = EncryptionConfig.build(params[:encryption_config], context: "#{context}[:encryption_config]") unless params[:encryption_config].nil?
        type.reference_predictor_summary = ReferencePredictorSummary.build(params[:reference_predictor_summary], context: "#{context}[:reference_predictor_summary]") unless params[:reference_predictor_summary].nil?
        type.estimated_time_remaining_in_minutes = params[:estimated_time_remaining_in_minutes]
        type.status = params[:status]
        type.message = params[:message]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type.optimization_metric = params[:optimization_metric]
        type.explainability_info = ExplainabilityInfo.build(params[:explainability_info], context: "#{context}[:explainability_info]") unless params[:explainability_info].nil?
        type.monitor_info = MonitorInfo.build(params[:monitor_info], context: "#{context}[:monitor_info]") unless params[:monitor_info].nil?
        type.time_alignment_boundary = TimeAlignmentBoundary.build(params[:time_alignment_boundary], context: "#{context}[:time_alignment_boundary]") unless params[:time_alignment_boundary].nil?
        type
      end
    end

    module DescribeDatasetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetGroupInput, context: context)
        type = Types::DescribeDatasetGroupInput.new
        type.dataset_group_arn = params[:dataset_group_arn]
        type
      end
    end

    module DescribeDatasetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetGroupOutput, context: context)
        type = Types::DescribeDatasetGroupOutput.new
        type.dataset_group_name = params[:dataset_group_name]
        type.dataset_group_arn = params[:dataset_group_arn]
        type.dataset_arns = ArnList.build(params[:dataset_arns], context: "#{context}[:dataset_arns]") unless params[:dataset_arns].nil?
        type.domain = params[:domain]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type
      end
    end

    module DescribeDatasetImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetImportJobInput, context: context)
        type = Types::DescribeDatasetImportJobInput.new
        type.dataset_import_job_arn = params[:dataset_import_job_arn]
        type
      end
    end

    module DescribeDatasetImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetImportJobOutput, context: context)
        type = Types::DescribeDatasetImportJobOutput.new
        type.dataset_import_job_name = params[:dataset_import_job_name]
        type.dataset_import_job_arn = params[:dataset_import_job_arn]
        type.dataset_arn = params[:dataset_arn]
        type.timestamp_format = params[:timestamp_format]
        type.time_zone = params[:time_zone]
        type.use_geolocation_for_time_zone = params[:use_geolocation_for_time_zone]
        type.geolocation_format = params[:geolocation_format]
        type.data_source = DataSource.build(params[:data_source], context: "#{context}[:data_source]") unless params[:data_source].nil?
        type.estimated_time_remaining_in_minutes = params[:estimated_time_remaining_in_minutes]
        type.field_statistics = FieldStatistics.build(params[:field_statistics], context: "#{context}[:field_statistics]") unless params[:field_statistics].nil?
        type.data_size = params[:data_size]
        type.status = params[:status]
        type.message = params[:message]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type.format = params[:format]
        type
      end
    end

    module DescribeDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetInput, context: context)
        type = Types::DescribeDatasetInput.new
        type.dataset_arn = params[:dataset_arn]
        type
      end
    end

    module DescribeDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetOutput, context: context)
        type = Types::DescribeDatasetOutput.new
        type.dataset_arn = params[:dataset_arn]
        type.dataset_name = params[:dataset_name]
        type.domain = params[:domain]
        type.dataset_type = params[:dataset_type]
        type.data_frequency = params[:data_frequency]
        type.schema = Schema.build(params[:schema], context: "#{context}[:schema]") unless params[:schema].nil?
        type.encryption_config = EncryptionConfig.build(params[:encryption_config], context: "#{context}[:encryption_config]") unless params[:encryption_config].nil?
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type
      end
    end

    module DescribeExplainabilityExportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExplainabilityExportInput, context: context)
        type = Types::DescribeExplainabilityExportInput.new
        type.explainability_export_arn = params[:explainability_export_arn]
        type
      end
    end

    module DescribeExplainabilityExportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExplainabilityExportOutput, context: context)
        type = Types::DescribeExplainabilityExportOutput.new
        type.explainability_export_arn = params[:explainability_export_arn]
        type.explainability_export_name = params[:explainability_export_name]
        type.explainability_arn = params[:explainability_arn]
        type.destination = DataDestination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.message = params[:message]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type.format = params[:format]
        type
      end
    end

    module DescribeExplainabilityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExplainabilityInput, context: context)
        type = Types::DescribeExplainabilityInput.new
        type.explainability_arn = params[:explainability_arn]
        type
      end
    end

    module DescribeExplainabilityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExplainabilityOutput, context: context)
        type = Types::DescribeExplainabilityOutput.new
        type.explainability_arn = params[:explainability_arn]
        type.explainability_name = params[:explainability_name]
        type.resource_arn = params[:resource_arn]
        type.explainability_config = ExplainabilityConfig.build(params[:explainability_config], context: "#{context}[:explainability_config]") unless params[:explainability_config].nil?
        type.enable_visualization = params[:enable_visualization]
        type.data_source = DataSource.build(params[:data_source], context: "#{context}[:data_source]") unless params[:data_source].nil?
        type.schema = Schema.build(params[:schema], context: "#{context}[:schema]") unless params[:schema].nil?
        type.start_date_time = params[:start_date_time]
        type.end_date_time = params[:end_date_time]
        type.estimated_time_remaining_in_minutes = params[:estimated_time_remaining_in_minutes]
        type.message = params[:message]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type
      end
    end

    module DescribeForecastExportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeForecastExportJobInput, context: context)
        type = Types::DescribeForecastExportJobInput.new
        type.forecast_export_job_arn = params[:forecast_export_job_arn]
        type
      end
    end

    module DescribeForecastExportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeForecastExportJobOutput, context: context)
        type = Types::DescribeForecastExportJobOutput.new
        type.forecast_export_job_arn = params[:forecast_export_job_arn]
        type.forecast_export_job_name = params[:forecast_export_job_name]
        type.forecast_arn = params[:forecast_arn]
        type.destination = DataDestination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.message = params[:message]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type.format = params[:format]
        type
      end
    end

    module DescribeForecastInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeForecastInput, context: context)
        type = Types::DescribeForecastInput.new
        type.forecast_arn = params[:forecast_arn]
        type
      end
    end

    module DescribeForecastOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeForecastOutput, context: context)
        type = Types::DescribeForecastOutput.new
        type.forecast_arn = params[:forecast_arn]
        type.forecast_name = params[:forecast_name]
        type.forecast_types = ForecastTypes.build(params[:forecast_types], context: "#{context}[:forecast_types]") unless params[:forecast_types].nil?
        type.predictor_arn = params[:predictor_arn]
        type.dataset_group_arn = params[:dataset_group_arn]
        type.estimated_time_remaining_in_minutes = params[:estimated_time_remaining_in_minutes]
        type.status = params[:status]
        type.message = params[:message]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type.time_series_selector = TimeSeriesSelector.build(params[:time_series_selector], context: "#{context}[:time_series_selector]") unless params[:time_series_selector].nil?
        type
      end
    end

    module DescribeMonitorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMonitorInput, context: context)
        type = Types::DescribeMonitorInput.new
        type.monitor_arn = params[:monitor_arn]
        type
      end
    end

    module DescribeMonitorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMonitorOutput, context: context)
        type = Types::DescribeMonitorOutput.new
        type.monitor_name = params[:monitor_name]
        type.monitor_arn = params[:monitor_arn]
        type.resource_arn = params[:resource_arn]
        type.status = params[:status]
        type.last_evaluation_time = params[:last_evaluation_time]
        type.last_evaluation_state = params[:last_evaluation_state]
        type.baseline = Baseline.build(params[:baseline], context: "#{context}[:baseline]") unless params[:baseline].nil?
        type.message = params[:message]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type.estimated_evaluation_time_remaining_in_minutes = params[:estimated_evaluation_time_remaining_in_minutes]
        type
      end
    end

    module DescribePredictorBacktestExportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePredictorBacktestExportJobInput, context: context)
        type = Types::DescribePredictorBacktestExportJobInput.new
        type.predictor_backtest_export_job_arn = params[:predictor_backtest_export_job_arn]
        type
      end
    end

    module DescribePredictorBacktestExportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePredictorBacktestExportJobOutput, context: context)
        type = Types::DescribePredictorBacktestExportJobOutput.new
        type.predictor_backtest_export_job_arn = params[:predictor_backtest_export_job_arn]
        type.predictor_backtest_export_job_name = params[:predictor_backtest_export_job_name]
        type.predictor_arn = params[:predictor_arn]
        type.destination = DataDestination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.message = params[:message]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type.format = params[:format]
        type
      end
    end

    module DescribePredictorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePredictorInput, context: context)
        type = Types::DescribePredictorInput.new
        type.predictor_arn = params[:predictor_arn]
        type
      end
    end

    module DescribePredictorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePredictorOutput, context: context)
        type = Types::DescribePredictorOutput.new
        type.predictor_arn = params[:predictor_arn]
        type.predictor_name = params[:predictor_name]
        type.algorithm_arn = params[:algorithm_arn]
        type.auto_ml_algorithm_arns = ArnList.build(params[:auto_ml_algorithm_arns], context: "#{context}[:auto_ml_algorithm_arns]") unless params[:auto_ml_algorithm_arns].nil?
        type.forecast_horizon = params[:forecast_horizon]
        type.forecast_types = ForecastTypes.build(params[:forecast_types], context: "#{context}[:forecast_types]") unless params[:forecast_types].nil?
        type.perform_auto_ml = params[:perform_auto_ml]
        type.auto_ml_override_strategy = params[:auto_ml_override_strategy]
        type.perform_hpo = params[:perform_hpo]
        type.training_parameters = TrainingParameters.build(params[:training_parameters], context: "#{context}[:training_parameters]") unless params[:training_parameters].nil?
        type.evaluation_parameters = EvaluationParameters.build(params[:evaluation_parameters], context: "#{context}[:evaluation_parameters]") unless params[:evaluation_parameters].nil?
        type.hpo_config = HyperParameterTuningJobConfig.build(params[:hpo_config], context: "#{context}[:hpo_config]") unless params[:hpo_config].nil?
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.featurization_config = FeaturizationConfig.build(params[:featurization_config], context: "#{context}[:featurization_config]") unless params[:featurization_config].nil?
        type.encryption_config = EncryptionConfig.build(params[:encryption_config], context: "#{context}[:encryption_config]") unless params[:encryption_config].nil?
        type.predictor_execution_details = PredictorExecutionDetails.build(params[:predictor_execution_details], context: "#{context}[:predictor_execution_details]") unless params[:predictor_execution_details].nil?
        type.estimated_time_remaining_in_minutes = params[:estimated_time_remaining_in_minutes]
        type.is_auto_predictor = params[:is_auto_predictor]
        type.dataset_import_job_arns = ArnList.build(params[:dataset_import_job_arns], context: "#{context}[:dataset_import_job_arns]") unless params[:dataset_import_job_arns].nil?
        type.status = params[:status]
        type.message = params[:message]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type.optimization_metric = params[:optimization_metric]
        type
      end
    end

    module EncryptionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionConfig, context: context)
        type = Types::EncryptionConfig.new
        type.role_arn = params[:role_arn]
        type.kms_key_arn = params[:kms_key_arn]
        type
      end
    end

    module ErrorMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorMetric, context: context)
        type = Types::ErrorMetric.new
        type.forecast_type = params[:forecast_type]
        type.wape = params[:wape]
        type.rmse = params[:rmse]
        type.mase = params[:mase]
        type.mape = params[:mape]
        type
      end
    end

    module ErrorMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ErrorMetric.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EvaluationParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluationParameters, context: context)
        type = Types::EvaluationParameters.new
        type.number_of_backtest_windows = params[:number_of_backtest_windows]
        type.back_test_window_offset = params[:back_test_window_offset]
        type
      end
    end

    module EvaluationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluationResult, context: context)
        type = Types::EvaluationResult.new
        type.algorithm_arn = params[:algorithm_arn]
        type.test_windows = TestWindows.build(params[:test_windows], context: "#{context}[:test_windows]") unless params[:test_windows].nil?
        type
      end
    end

    module Explainabilities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExplainabilitySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExplainabilityConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExplainabilityConfig, context: context)
        type = Types::ExplainabilityConfig.new
        type.time_series_granularity = params[:time_series_granularity]
        type.time_point_granularity = params[:time_point_granularity]
        type
      end
    end

    module ExplainabilityExportSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExplainabilityExportSummary, context: context)
        type = Types::ExplainabilityExportSummary.new
        type.explainability_export_arn = params[:explainability_export_arn]
        type.explainability_export_name = params[:explainability_export_name]
        type.destination = DataDestination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.status = params[:status]
        type.message = params[:message]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type
      end
    end

    module ExplainabilityExports
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExplainabilityExportSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExplainabilityInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExplainabilityInfo, context: context)
        type = Types::ExplainabilityInfo.new
        type.explainability_arn = params[:explainability_arn]
        type.status = params[:status]
        type
      end
    end

    module ExplainabilitySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExplainabilitySummary, context: context)
        type = Types::ExplainabilitySummary.new
        type.explainability_arn = params[:explainability_arn]
        type.explainability_name = params[:explainability_name]
        type.resource_arn = params[:resource_arn]
        type.explainability_config = ExplainabilityConfig.build(params[:explainability_config], context: "#{context}[:explainability_config]") unless params[:explainability_config].nil?
        type.status = params[:status]
        type.message = params[:message]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type
      end
    end

    module Featurization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Featurization, context: context)
        type = Types::Featurization.new
        type.attribute_name = params[:attribute_name]
        type.featurization_pipeline = FeaturizationPipeline.build(params[:featurization_pipeline], context: "#{context}[:featurization_pipeline]") unless params[:featurization_pipeline].nil?
        type
      end
    end

    module FeaturizationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FeaturizationConfig, context: context)
        type = Types::FeaturizationConfig.new
        type.forecast_frequency = params[:forecast_frequency]
        type.forecast_dimensions = ForecastDimensions.build(params[:forecast_dimensions], context: "#{context}[:forecast_dimensions]") unless params[:forecast_dimensions].nil?
        type.featurizations = Featurizations.build(params[:featurizations], context: "#{context}[:featurizations]") unless params[:featurizations].nil?
        type
      end
    end

    module FeaturizationMethod
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FeaturizationMethod, context: context)
        type = Types::FeaturizationMethod.new
        type.featurization_method_name = params[:featurization_method_name]
        type.featurization_method_parameters = FeaturizationMethodParameters.build(params[:featurization_method_parameters], context: "#{context}[:featurization_method_parameters]") unless params[:featurization_method_parameters].nil?
        type
      end
    end

    module FeaturizationMethodParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module FeaturizationPipeline
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FeaturizationMethod.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Featurizations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Featurization.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FieldStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Statistics.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.key = params[:key]
        type.value = params[:value]
        type.condition = params[:condition]
        type
      end
    end

    module Filters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ForecastDimensions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ForecastExportJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForecastExportJobSummary, context: context)
        type = Types::ForecastExportJobSummary.new
        type.forecast_export_job_arn = params[:forecast_export_job_arn]
        type.forecast_export_job_name = params[:forecast_export_job_name]
        type.destination = DataDestination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.status = params[:status]
        type.message = params[:message]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type
      end
    end

    module ForecastExportJobs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ForecastExportJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ForecastSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForecastSummary, context: context)
        type = Types::ForecastSummary.new
        type.forecast_arn = params[:forecast_arn]
        type.forecast_name = params[:forecast_name]
        type.predictor_arn = params[:predictor_arn]
        type.created_using_auto_predictor = params[:created_using_auto_predictor]
        type.dataset_group_arn = params[:dataset_group_arn]
        type.status = params[:status]
        type.message = params[:message]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type
      end
    end

    module ForecastTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Forecasts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ForecastSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetAccuracyMetricsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccuracyMetricsInput, context: context)
        type = Types::GetAccuracyMetricsInput.new
        type.predictor_arn = params[:predictor_arn]
        type
      end
    end

    module GetAccuracyMetricsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccuracyMetricsOutput, context: context)
        type = Types::GetAccuracyMetricsOutput.new
        type.predictor_evaluation_results = PredictorEvaluationResults.build(params[:predictor_evaluation_results], context: "#{context}[:predictor_evaluation_results]") unless params[:predictor_evaluation_results].nil?
        type.is_auto_predictor = params[:is_auto_predictor]
        type.auto_ml_override_strategy = params[:auto_ml_override_strategy]
        type.optimization_metric = params[:optimization_metric]
        type
      end
    end

    module HyperParameterTuningJobConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HyperParameterTuningJobConfig, context: context)
        type = Types::HyperParameterTuningJobConfig.new
        type.parameter_ranges = ParameterRanges.build(params[:parameter_ranges], context: "#{context}[:parameter_ranges]") unless params[:parameter_ranges].nil?
        type
      end
    end

    module InputDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputDataConfig, context: context)
        type = Types::InputDataConfig.new
        type.dataset_group_arn = params[:dataset_group_arn]
        type.supplementary_features = SupplementaryFeatures.build(params[:supplementary_features], context: "#{context}[:supplementary_features]") unless params[:supplementary_features].nil?
        type
      end
    end

    module IntegerParameterRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntegerParameterRange, context: context)
        type = Types::IntegerParameterRange.new
        type.name = params[:name]
        type.max_value = params[:max_value]
        type.min_value = params[:min_value]
        type.scaling_type = params[:scaling_type]
        type
      end
    end

    module IntegerParameterRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IntegerParameterRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InvalidInputException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInputException, context: context)
        type = Types::InvalidInputException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListDatasetGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetGroupsInput, context: context)
        type = Types::ListDatasetGroupsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDatasetGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetGroupsOutput, context: context)
        type = Types::ListDatasetGroupsOutput.new
        type.dataset_groups = DatasetGroups.build(params[:dataset_groups], context: "#{context}[:dataset_groups]") unless params[:dataset_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDatasetImportJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetImportJobsInput, context: context)
        type = Types::ListDatasetImportJobsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListDatasetImportJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetImportJobsOutput, context: context)
        type = Types::ListDatasetImportJobsOutput.new
        type.dataset_import_jobs = DatasetImportJobs.build(params[:dataset_import_jobs], context: "#{context}[:dataset_import_jobs]") unless params[:dataset_import_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDatasetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetsInput, context: context)
        type = Types::ListDatasetsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDatasetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetsOutput, context: context)
        type = Types::ListDatasetsOutput.new
        type.datasets = Datasets.build(params[:datasets], context: "#{context}[:datasets]") unless params[:datasets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListExplainabilitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExplainabilitiesInput, context: context)
        type = Types::ListExplainabilitiesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListExplainabilitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExplainabilitiesOutput, context: context)
        type = Types::ListExplainabilitiesOutput.new
        type.explainabilities = Explainabilities.build(params[:explainabilities], context: "#{context}[:explainabilities]") unless params[:explainabilities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListExplainabilityExportsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExplainabilityExportsInput, context: context)
        type = Types::ListExplainabilityExportsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListExplainabilityExportsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExplainabilityExportsOutput, context: context)
        type = Types::ListExplainabilityExportsOutput.new
        type.explainability_exports = ExplainabilityExports.build(params[:explainability_exports], context: "#{context}[:explainability_exports]") unless params[:explainability_exports].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListForecastExportJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListForecastExportJobsInput, context: context)
        type = Types::ListForecastExportJobsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListForecastExportJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListForecastExportJobsOutput, context: context)
        type = Types::ListForecastExportJobsOutput.new
        type.forecast_export_jobs = ForecastExportJobs.build(params[:forecast_export_jobs], context: "#{context}[:forecast_export_jobs]") unless params[:forecast_export_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListForecastsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListForecastsInput, context: context)
        type = Types::ListForecastsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListForecastsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListForecastsOutput, context: context)
        type = Types::ListForecastsOutput.new
        type.forecasts = Forecasts.build(params[:forecasts], context: "#{context}[:forecasts]") unless params[:forecasts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMonitorEvaluationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMonitorEvaluationsInput, context: context)
        type = Types::ListMonitorEvaluationsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.monitor_arn = params[:monitor_arn]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListMonitorEvaluationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMonitorEvaluationsOutput, context: context)
        type = Types::ListMonitorEvaluationsOutput.new
        type.next_token = params[:next_token]
        type.predictor_monitor_evaluations = PredictorMonitorEvaluations.build(params[:predictor_monitor_evaluations], context: "#{context}[:predictor_monitor_evaluations]") unless params[:predictor_monitor_evaluations].nil?
        type
      end
    end

    module ListMonitorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMonitorsInput, context: context)
        type = Types::ListMonitorsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListMonitorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMonitorsOutput, context: context)
        type = Types::ListMonitorsOutput.new
        type.monitors = Monitors.build(params[:monitors], context: "#{context}[:monitors]") unless params[:monitors].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPredictorBacktestExportJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPredictorBacktestExportJobsInput, context: context)
        type = Types::ListPredictorBacktestExportJobsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListPredictorBacktestExportJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPredictorBacktestExportJobsOutput, context: context)
        type = Types::ListPredictorBacktestExportJobsOutput.new
        type.predictor_backtest_export_jobs = PredictorBacktestExportJobs.build(params[:predictor_backtest_export_jobs], context: "#{context}[:predictor_backtest_export_jobs]") unless params[:predictor_backtest_export_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPredictorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPredictorsInput, context: context)
        type = Types::ListPredictorsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListPredictorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPredictorsOutput, context: context)
        type = Types::ListPredictorsOutput.new
        type.predictors = Predictors.build(params[:predictors], context: "#{context}[:predictors]") unless params[:predictors].nil?
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
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module MetricResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricResult, context: context)
        type = Types::MetricResult.new
        type.metric_name = params[:metric_name]
        type.metric_value = params[:metric_value]
        type
      end
    end

    module MetricResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Metrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Metrics, context: context)
        type = Types::Metrics.new
        type.rmse = params[:rmse]
        type.weighted_quantile_losses = WeightedQuantileLosses.build(params[:weighted_quantile_losses], context: "#{context}[:weighted_quantile_losses]") unless params[:weighted_quantile_losses].nil?
        type.error_metrics = ErrorMetrics.build(params[:error_metrics], context: "#{context}[:error_metrics]") unless params[:error_metrics].nil?
        type.average_weighted_quantile_loss = params[:average_weighted_quantile_loss]
        type
      end
    end

    module MonitorConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitorConfig, context: context)
        type = Types::MonitorConfig.new
        type.monitor_name = params[:monitor_name]
        type
      end
    end

    module MonitorDataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitorDataSource, context: context)
        type = Types::MonitorDataSource.new
        type.dataset_import_job_arn = params[:dataset_import_job_arn]
        type.forecast_arn = params[:forecast_arn]
        type.predictor_arn = params[:predictor_arn]
        type
      end
    end

    module MonitorInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitorInfo, context: context)
        type = Types::MonitorInfo.new
        type.monitor_arn = params[:monitor_arn]
        type.status = params[:status]
        type
      end
    end

    module MonitorSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitorSummary, context: context)
        type = Types::MonitorSummary.new
        type.monitor_arn = params[:monitor_arn]
        type.monitor_name = params[:monitor_name]
        type.resource_arn = params[:resource_arn]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type
      end
    end

    module Monitors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MonitorSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParameterRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterRanges, context: context)
        type = Types::ParameterRanges.new
        type.categorical_parameter_ranges = CategoricalParameterRanges.build(params[:categorical_parameter_ranges], context: "#{context}[:categorical_parameter_ranges]") unless params[:categorical_parameter_ranges].nil?
        type.continuous_parameter_ranges = ContinuousParameterRanges.build(params[:continuous_parameter_ranges], context: "#{context}[:continuous_parameter_ranges]") unless params[:continuous_parameter_ranges].nil?
        type.integer_parameter_ranges = IntegerParameterRanges.build(params[:integer_parameter_ranges], context: "#{context}[:integer_parameter_ranges]") unless params[:integer_parameter_ranges].nil?
        type
      end
    end

    module PredictorBacktestExportJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictorBacktestExportJobSummary, context: context)
        type = Types::PredictorBacktestExportJobSummary.new
        type.predictor_backtest_export_job_arn = params[:predictor_backtest_export_job_arn]
        type.predictor_backtest_export_job_name = params[:predictor_backtest_export_job_name]
        type.destination = DataDestination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.status = params[:status]
        type.message = params[:message]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type
      end
    end

    module PredictorBacktestExportJobs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PredictorBacktestExportJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PredictorBaseline
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictorBaseline, context: context)
        type = Types::PredictorBaseline.new
        type.baseline_metrics = BaselineMetrics.build(params[:baseline_metrics], context: "#{context}[:baseline_metrics]") unless params[:baseline_metrics].nil?
        type
      end
    end

    module PredictorEvaluationResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EvaluationResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PredictorEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictorEvent, context: context)
        type = Types::PredictorEvent.new
        type.detail = params[:detail]
        type.datetime = params[:datetime]
        type
      end
    end

    module PredictorExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictorExecution, context: context)
        type = Types::PredictorExecution.new
        type.algorithm_arn = params[:algorithm_arn]
        type.test_windows = TestWindowDetails.build(params[:test_windows], context: "#{context}[:test_windows]") unless params[:test_windows].nil?
        type
      end
    end

    module PredictorExecutionDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictorExecutionDetails, context: context)
        type = Types::PredictorExecutionDetails.new
        type.predictor_executions = PredictorExecutions.build(params[:predictor_executions], context: "#{context}[:predictor_executions]") unless params[:predictor_executions].nil?
        type
      end
    end

    module PredictorExecutions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PredictorExecution.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PredictorMonitorEvaluation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictorMonitorEvaluation, context: context)
        type = Types::PredictorMonitorEvaluation.new
        type.resource_arn = params[:resource_arn]
        type.monitor_arn = params[:monitor_arn]
        type.evaluation_time = params[:evaluation_time]
        type.evaluation_state = params[:evaluation_state]
        type.window_start_datetime = params[:window_start_datetime]
        type.window_end_datetime = params[:window_end_datetime]
        type.predictor_event = PredictorEvent.build(params[:predictor_event], context: "#{context}[:predictor_event]") unless params[:predictor_event].nil?
        type.monitor_data_source = MonitorDataSource.build(params[:monitor_data_source], context: "#{context}[:monitor_data_source]") unless params[:monitor_data_source].nil?
        type.metric_results = MetricResults.build(params[:metric_results], context: "#{context}[:metric_results]") unless params[:metric_results].nil?
        type.num_items_evaluated = params[:num_items_evaluated]
        type.message = params[:message]
        type
      end
    end

    module PredictorMonitorEvaluations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PredictorMonitorEvaluation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PredictorSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictorSummary, context: context)
        type = Types::PredictorSummary.new
        type.predictor_arn = params[:predictor_arn]
        type.predictor_name = params[:predictor_name]
        type.dataset_group_arn = params[:dataset_group_arn]
        type.is_auto_predictor = params[:is_auto_predictor]
        type.reference_predictor_summary = ReferencePredictorSummary.build(params[:reference_predictor_summary], context: "#{context}[:reference_predictor_summary]") unless params[:reference_predictor_summary].nil?
        type.status = params[:status]
        type.message = params[:message]
        type.creation_time = params[:creation_time]
        type.last_modification_time = params[:last_modification_time]
        type
      end
    end

    module Predictors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PredictorSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReferencePredictorSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReferencePredictorSummary, context: context)
        type = Types::ReferencePredictorSummary.new
        type.arn = params[:arn]
        type.state = params[:state]
        type
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResumeResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResumeResourceInput, context: context)
        type = Types::ResumeResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ResumeResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResumeResourceOutput, context: context)
        type = Types::ResumeResourceOutput.new
        type
      end
    end

    module S3Config
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Config, context: context)
        type = Types::S3Config.new
        type.path = params[:path]
        type.role_arn = params[:role_arn]
        type.kms_key_arn = params[:kms_key_arn]
        type
      end
    end

    module Schema
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Schema, context: context)
        type = Types::Schema.new
        type.attributes = SchemaAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module SchemaAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaAttribute, context: context)
        type = Types::SchemaAttribute.new
        type.attribute_name = params[:attribute_name]
        type.attribute_type = params[:attribute_type]
        type
      end
    end

    module SchemaAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SchemaAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Statistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Statistics, context: context)
        type = Types::Statistics.new
        type.count = params[:count]
        type.count_distinct = params[:count_distinct]
        type.count_null = params[:count_null]
        type.count_nan = params[:count_nan]
        type.min = params[:min]
        type.max = params[:max]
        type.avg = params[:avg]
        type.stddev = params[:stddev]
        type.count_long = params[:count_long]
        type.count_distinct_long = params[:count_distinct_long]
        type.count_null_long = params[:count_null_long]
        type.count_nan_long = params[:count_nan_long]
        type
      end
    end

    module StopResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopResourceInput, context: context)
        type = Types::StopResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module StopResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopResourceOutput, context: context)
        type = Types::StopResourceOutput.new
        type
      end
    end

    module SupplementaryFeature
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SupplementaryFeature, context: context)
        type = Types::SupplementaryFeature.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module SupplementaryFeatures
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SupplementaryFeature.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TestWindowDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TestWindowSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TestWindowSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestWindowSummary, context: context)
        type = Types::TestWindowSummary.new
        type.test_window_start = params[:test_window_start]
        type.test_window_end = params[:test_window_end]
        type.status = params[:status]
        type.message = params[:message]
        type
      end
    end

    module TestWindows
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WindowSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TimeAlignmentBoundary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeAlignmentBoundary, context: context)
        type = Types::TimeAlignmentBoundary.new
        type.month = params[:month]
        type.day_of_month = params[:day_of_month]
        type.day_of_week = params[:day_of_week]
        type.hour = params[:hour]
        type
      end
    end

    module TimeSeriesIdentifiers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeSeriesIdentifiers, context: context)
        type = Types::TimeSeriesIdentifiers.new
        type.data_source = DataSource.build(params[:data_source], context: "#{context}[:data_source]") unless params[:data_source].nil?
        type.schema = Schema.build(params[:schema], context: "#{context}[:schema]") unless params[:schema].nil?
        type.format = params[:format]
        type
      end
    end

    module TimeSeriesSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeSeriesSelector, context: context)
        type = Types::TimeSeriesSelector.new
        type.time_series_identifiers = TimeSeriesIdentifiers.build(params[:time_series_identifiers], context: "#{context}[:time_series_identifiers]") unless params[:time_series_identifiers].nil?
        type
      end
    end

    module TrainingParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Transformations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateDatasetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDatasetGroupInput, context: context)
        type = Types::UpdateDatasetGroupInput.new
        type.dataset_group_arn = params[:dataset_group_arn]
        type.dataset_arns = ArnList.build(params[:dataset_arns], context: "#{context}[:dataset_arns]") unless params[:dataset_arns].nil?
        type
      end
    end

    module UpdateDatasetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDatasetGroupOutput, context: context)
        type = Types::UpdateDatasetGroupOutput.new
        type
      end
    end

    module Values
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module WeightedQuantileLoss
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WeightedQuantileLoss, context: context)
        type = Types::WeightedQuantileLoss.new
        type.quantile = params[:quantile]
        type.loss_value = params[:loss_value]
        type
      end
    end

    module WeightedQuantileLosses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WeightedQuantileLoss.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WindowSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WindowSummary, context: context)
        type = Types::WindowSummary.new
        type.test_window_start = params[:test_window_start]
        type.test_window_end = params[:test_window_end]
        type.item_count = params[:item_count]
        type.evaluation_type = params[:evaluation_type]
        type.metrics = Metrics.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type
      end
    end

  end
end
