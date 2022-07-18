# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MachineLearning
  module Params

    module AddTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsInput, context: context)
        type = Types::AddTagsInput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module AddTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsOutput, context: context)
        type = Types::AddTagsOutput.new
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module BatchPrediction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPrediction, context: context)
        type = Types::BatchPrediction.new
        type.batch_prediction_id = params[:batch_prediction_id]
        type.ml_model_id = params[:ml_model_id]
        type.batch_prediction_data_source_id = params[:batch_prediction_data_source_id]
        type.input_data_location_s3 = params[:input_data_location_s3]
        type.created_by_iam_user = params[:created_by_iam_user]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.name = params[:name]
        type.status = params[:status]
        type.output_uri = params[:output_uri]
        type.message = params[:message]
        type.compute_time = params[:compute_time]
        type.finished_at = params[:finished_at]
        type.started_at = params[:started_at]
        type.total_record_count = params[:total_record_count]
        type.invalid_record_count = params[:invalid_record_count]
        type
      end
    end

    module BatchPredictions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchPrediction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateBatchPredictionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBatchPredictionInput, context: context)
        type = Types::CreateBatchPredictionInput.new
        type.batch_prediction_id = params[:batch_prediction_id]
        type.batch_prediction_name = params[:batch_prediction_name]
        type.ml_model_id = params[:ml_model_id]
        type.batch_prediction_data_source_id = params[:batch_prediction_data_source_id]
        type.output_uri = params[:output_uri]
        type
      end
    end

    module CreateBatchPredictionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBatchPredictionOutput, context: context)
        type = Types::CreateBatchPredictionOutput.new
        type.batch_prediction_id = params[:batch_prediction_id]
        type
      end
    end

    module CreateDataSourceFromRDSInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataSourceFromRDSInput, context: context)
        type = Types::CreateDataSourceFromRDSInput.new
        type.data_source_id = params[:data_source_id]
        type.data_source_name = params[:data_source_name]
        type.rds_data = RDSDataSpec.build(params[:rds_data], context: "#{context}[:rds_data]") unless params[:rds_data].nil?
        type.role_arn = params[:role_arn]
        type.compute_statistics = params[:compute_statistics]
        type
      end
    end

    module CreateDataSourceFromRDSOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataSourceFromRDSOutput, context: context)
        type = Types::CreateDataSourceFromRDSOutput.new
        type.data_source_id = params[:data_source_id]
        type
      end
    end

    module CreateDataSourceFromRedshiftInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataSourceFromRedshiftInput, context: context)
        type = Types::CreateDataSourceFromRedshiftInput.new
        type.data_source_id = params[:data_source_id]
        type.data_source_name = params[:data_source_name]
        type.data_spec = RedshiftDataSpec.build(params[:data_spec], context: "#{context}[:data_spec]") unless params[:data_spec].nil?
        type.role_arn = params[:role_arn]
        type.compute_statistics = params[:compute_statistics]
        type
      end
    end

    module CreateDataSourceFromRedshiftOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataSourceFromRedshiftOutput, context: context)
        type = Types::CreateDataSourceFromRedshiftOutput.new
        type.data_source_id = params[:data_source_id]
        type
      end
    end

    module CreateDataSourceFromS3Input
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataSourceFromS3Input, context: context)
        type = Types::CreateDataSourceFromS3Input.new
        type.data_source_id = params[:data_source_id]
        type.data_source_name = params[:data_source_name]
        type.data_spec = S3DataSpec.build(params[:data_spec], context: "#{context}[:data_spec]") unless params[:data_spec].nil?
        type.compute_statistics = params[:compute_statistics]
        type
      end
    end

    module CreateDataSourceFromS3Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataSourceFromS3Output, context: context)
        type = Types::CreateDataSourceFromS3Output.new
        type.data_source_id = params[:data_source_id]
        type
      end
    end

    module CreateEvaluationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEvaluationInput, context: context)
        type = Types::CreateEvaluationInput.new
        type.evaluation_id = params[:evaluation_id]
        type.evaluation_name = params[:evaluation_name]
        type.ml_model_id = params[:ml_model_id]
        type.evaluation_data_source_id = params[:evaluation_data_source_id]
        type
      end
    end

    module CreateEvaluationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEvaluationOutput, context: context)
        type = Types::CreateEvaluationOutput.new
        type.evaluation_id = params[:evaluation_id]
        type
      end
    end

    module CreateMLModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMLModelInput, context: context)
        type = Types::CreateMLModelInput.new
        type.ml_model_id = params[:ml_model_id]
        type.ml_model_name = params[:ml_model_name]
        type.ml_model_type = params[:ml_model_type]
        type.parameters = TrainingParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.training_data_source_id = params[:training_data_source_id]
        type.recipe = params[:recipe]
        type.recipe_uri = params[:recipe_uri]
        type
      end
    end

    module CreateMLModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMLModelOutput, context: context)
        type = Types::CreateMLModelOutput.new
        type.ml_model_id = params[:ml_model_id]
        type
      end
    end

    module CreateRealtimeEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRealtimeEndpointInput, context: context)
        type = Types::CreateRealtimeEndpointInput.new
        type.ml_model_id = params[:ml_model_id]
        type
      end
    end

    module CreateRealtimeEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRealtimeEndpointOutput, context: context)
        type = Types::CreateRealtimeEndpointOutput.new
        type.ml_model_id = params[:ml_model_id]
        type.realtime_endpoint_info = RealtimeEndpointInfo.build(params[:realtime_endpoint_info], context: "#{context}[:realtime_endpoint_info]") unless params[:realtime_endpoint_info].nil?
        type
      end
    end

    module DataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSource, context: context)
        type = Types::DataSource.new
        type.data_source_id = params[:data_source_id]
        type.data_location_s3 = params[:data_location_s3]
        type.data_rearrangement = params[:data_rearrangement]
        type.created_by_iam_user = params[:created_by_iam_user]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.data_size_in_bytes = params[:data_size_in_bytes]
        type.number_of_files = params[:number_of_files]
        type.name = params[:name]
        type.status = params[:status]
        type.message = params[:message]
        type.redshift_metadata = RedshiftMetadata.build(params[:redshift_metadata], context: "#{context}[:redshift_metadata]") unless params[:redshift_metadata].nil?
        type.rds_metadata = RDSMetadata.build(params[:rds_metadata], context: "#{context}[:rds_metadata]") unless params[:rds_metadata].nil?
        type.role_arn = params[:role_arn]
        type.compute_statistics = params[:compute_statistics]
        type.compute_time = params[:compute_time]
        type.finished_at = params[:finished_at]
        type.started_at = params[:started_at]
        type
      end
    end

    module DataSources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteBatchPredictionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBatchPredictionInput, context: context)
        type = Types::DeleteBatchPredictionInput.new
        type.batch_prediction_id = params[:batch_prediction_id]
        type
      end
    end

    module DeleteBatchPredictionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBatchPredictionOutput, context: context)
        type = Types::DeleteBatchPredictionOutput.new
        type.batch_prediction_id = params[:batch_prediction_id]
        type
      end
    end

    module DeleteDataSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataSourceInput, context: context)
        type = Types::DeleteDataSourceInput.new
        type.data_source_id = params[:data_source_id]
        type
      end
    end

    module DeleteDataSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataSourceOutput, context: context)
        type = Types::DeleteDataSourceOutput.new
        type.data_source_id = params[:data_source_id]
        type
      end
    end

    module DeleteEvaluationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEvaluationInput, context: context)
        type = Types::DeleteEvaluationInput.new
        type.evaluation_id = params[:evaluation_id]
        type
      end
    end

    module DeleteEvaluationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEvaluationOutput, context: context)
        type = Types::DeleteEvaluationOutput.new
        type.evaluation_id = params[:evaluation_id]
        type
      end
    end

    module DeleteMLModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMLModelInput, context: context)
        type = Types::DeleteMLModelInput.new
        type.ml_model_id = params[:ml_model_id]
        type
      end
    end

    module DeleteMLModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMLModelOutput, context: context)
        type = Types::DeleteMLModelOutput.new
        type.ml_model_id = params[:ml_model_id]
        type
      end
    end

    module DeleteRealtimeEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRealtimeEndpointInput, context: context)
        type = Types::DeleteRealtimeEndpointInput.new
        type.ml_model_id = params[:ml_model_id]
        type
      end
    end

    module DeleteRealtimeEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRealtimeEndpointOutput, context: context)
        type = Types::DeleteRealtimeEndpointOutput.new
        type.ml_model_id = params[:ml_model_id]
        type.realtime_endpoint_info = RealtimeEndpointInfo.build(params[:realtime_endpoint_info], context: "#{context}[:realtime_endpoint_info]") unless params[:realtime_endpoint_info].nil?
        type
      end
    end

    module DeleteTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsInput, context: context)
        type = Types::DeleteTagsInput.new
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module DeleteTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsOutput, context: context)
        type = Types::DeleteTagsOutput.new
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module DescribeBatchPredictionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBatchPredictionsInput, context: context)
        type = Types::DescribeBatchPredictionsInput.new
        type.filter_variable = params[:filter_variable]
        type.eq = params[:eq]
        type.gt = params[:gt]
        type.lt = params[:lt]
        type.ge = params[:ge]
        type.le = params[:le]
        type.ne = params[:ne]
        type.prefix = params[:prefix]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeBatchPredictionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBatchPredictionsOutput, context: context)
        type = Types::DescribeBatchPredictionsOutput.new
        type.results = BatchPredictions.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDataSourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataSourcesInput, context: context)
        type = Types::DescribeDataSourcesInput.new
        type.filter_variable = params[:filter_variable]
        type.eq = params[:eq]
        type.gt = params[:gt]
        type.lt = params[:lt]
        type.ge = params[:ge]
        type.le = params[:le]
        type.ne = params[:ne]
        type.prefix = params[:prefix]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeDataSourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataSourcesOutput, context: context)
        type = Types::DescribeDataSourcesOutput.new
        type.results = DataSources.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEvaluationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEvaluationsInput, context: context)
        type = Types::DescribeEvaluationsInput.new
        type.filter_variable = params[:filter_variable]
        type.eq = params[:eq]
        type.gt = params[:gt]
        type.lt = params[:lt]
        type.ge = params[:ge]
        type.le = params[:le]
        type.ne = params[:ne]
        type.prefix = params[:prefix]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeEvaluationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEvaluationsOutput, context: context)
        type = Types::DescribeEvaluationsOutput.new
        type.results = Evaluations.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMLModelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMLModelsInput, context: context)
        type = Types::DescribeMLModelsInput.new
        type.filter_variable = params[:filter_variable]
        type.eq = params[:eq]
        type.gt = params[:gt]
        type.lt = params[:lt]
        type.ge = params[:ge]
        type.le = params[:le]
        type.ne = params[:ne]
        type.prefix = params[:prefix]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeMLModelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMLModelsOutput, context: context)
        type = Types::DescribeMLModelsOutput.new
        type.results = MLModels.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTagsInput, context: context)
        type = Types::DescribeTagsInput.new
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module DescribeTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTagsOutput, context: context)
        type = Types::DescribeTagsOutput.new
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DetailsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module EDPSecurityGroupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Evaluation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Evaluation, context: context)
        type = Types::Evaluation.new
        type.evaluation_id = params[:evaluation_id]
        type.ml_model_id = params[:ml_model_id]
        type.evaluation_data_source_id = params[:evaluation_data_source_id]
        type.input_data_location_s3 = params[:input_data_location_s3]
        type.created_by_iam_user = params[:created_by_iam_user]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.name = params[:name]
        type.status = params[:status]
        type.performance_metrics = PerformanceMetrics.build(params[:performance_metrics], context: "#{context}[:performance_metrics]") unless params[:performance_metrics].nil?
        type.message = params[:message]
        type.compute_time = params[:compute_time]
        type.finished_at = params[:finished_at]
        type.started_at = params[:started_at]
        type
      end
    end

    module Evaluations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Evaluation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetBatchPredictionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBatchPredictionInput, context: context)
        type = Types::GetBatchPredictionInput.new
        type.batch_prediction_id = params[:batch_prediction_id]
        type
      end
    end

    module GetBatchPredictionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBatchPredictionOutput, context: context)
        type = Types::GetBatchPredictionOutput.new
        type.batch_prediction_id = params[:batch_prediction_id]
        type.ml_model_id = params[:ml_model_id]
        type.batch_prediction_data_source_id = params[:batch_prediction_data_source_id]
        type.input_data_location_s3 = params[:input_data_location_s3]
        type.created_by_iam_user = params[:created_by_iam_user]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.name = params[:name]
        type.status = params[:status]
        type.output_uri = params[:output_uri]
        type.log_uri = params[:log_uri]
        type.message = params[:message]
        type.compute_time = params[:compute_time]
        type.finished_at = params[:finished_at]
        type.started_at = params[:started_at]
        type.total_record_count = params[:total_record_count]
        type.invalid_record_count = params[:invalid_record_count]
        type
      end
    end

    module GetDataSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataSourceInput, context: context)
        type = Types::GetDataSourceInput.new
        type.data_source_id = params[:data_source_id]
        type.verbose = params[:verbose]
        type
      end
    end

    module GetDataSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataSourceOutput, context: context)
        type = Types::GetDataSourceOutput.new
        type.data_source_id = params[:data_source_id]
        type.data_location_s3 = params[:data_location_s3]
        type.data_rearrangement = params[:data_rearrangement]
        type.created_by_iam_user = params[:created_by_iam_user]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.data_size_in_bytes = params[:data_size_in_bytes]
        type.number_of_files = params[:number_of_files]
        type.name = params[:name]
        type.status = params[:status]
        type.log_uri = params[:log_uri]
        type.message = params[:message]
        type.redshift_metadata = RedshiftMetadata.build(params[:redshift_metadata], context: "#{context}[:redshift_metadata]") unless params[:redshift_metadata].nil?
        type.rds_metadata = RDSMetadata.build(params[:rds_metadata], context: "#{context}[:rds_metadata]") unless params[:rds_metadata].nil?
        type.role_arn = params[:role_arn]
        type.compute_statistics = params[:compute_statistics]
        type.compute_time = params[:compute_time]
        type.finished_at = params[:finished_at]
        type.started_at = params[:started_at]
        type.data_source_schema = params[:data_source_schema]
        type
      end
    end

    module GetEvaluationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEvaluationInput, context: context)
        type = Types::GetEvaluationInput.new
        type.evaluation_id = params[:evaluation_id]
        type
      end
    end

    module GetEvaluationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEvaluationOutput, context: context)
        type = Types::GetEvaluationOutput.new
        type.evaluation_id = params[:evaluation_id]
        type.ml_model_id = params[:ml_model_id]
        type.evaluation_data_source_id = params[:evaluation_data_source_id]
        type.input_data_location_s3 = params[:input_data_location_s3]
        type.created_by_iam_user = params[:created_by_iam_user]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.name = params[:name]
        type.status = params[:status]
        type.performance_metrics = PerformanceMetrics.build(params[:performance_metrics], context: "#{context}[:performance_metrics]") unless params[:performance_metrics].nil?
        type.log_uri = params[:log_uri]
        type.message = params[:message]
        type.compute_time = params[:compute_time]
        type.finished_at = params[:finished_at]
        type.started_at = params[:started_at]
        type
      end
    end

    module GetMLModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMLModelInput, context: context)
        type = Types::GetMLModelInput.new
        type.ml_model_id = params[:ml_model_id]
        type.verbose = params[:verbose]
        type
      end
    end

    module GetMLModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMLModelOutput, context: context)
        type = Types::GetMLModelOutput.new
        type.ml_model_id = params[:ml_model_id]
        type.training_data_source_id = params[:training_data_source_id]
        type.created_by_iam_user = params[:created_by_iam_user]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.name = params[:name]
        type.status = params[:status]
        type.size_in_bytes = params[:size_in_bytes]
        type.endpoint_info = RealtimeEndpointInfo.build(params[:endpoint_info], context: "#{context}[:endpoint_info]") unless params[:endpoint_info].nil?
        type.training_parameters = TrainingParameters.build(params[:training_parameters], context: "#{context}[:training_parameters]") unless params[:training_parameters].nil?
        type.input_data_location_s3 = params[:input_data_location_s3]
        type.ml_model_type = params[:ml_model_type]
        type.score_threshold = params[:score_threshold]
        type.score_threshold_last_updated_at = params[:score_threshold_last_updated_at]
        type.log_uri = params[:log_uri]
        type.message = params[:message]
        type.compute_time = params[:compute_time]
        type.finished_at = params[:finished_at]
        type.started_at = params[:started_at]
        type.recipe = params[:recipe]
        type.schema = params[:schema]
        type
      end
    end

    module IdempotentParameterMismatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdempotentParameterMismatchException, context: context)
        type = Types::IdempotentParameterMismatchException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module InvalidInputException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInputException, context: context)
        type = Types::InvalidInputException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module InvalidTagException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTagException, context: context)
        type = Types::InvalidTagException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module MLModel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MLModel, context: context)
        type = Types::MLModel.new
        type.ml_model_id = params[:ml_model_id]
        type.training_data_source_id = params[:training_data_source_id]
        type.created_by_iam_user = params[:created_by_iam_user]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.name = params[:name]
        type.status = params[:status]
        type.size_in_bytes = params[:size_in_bytes]
        type.endpoint_info = RealtimeEndpointInfo.build(params[:endpoint_info], context: "#{context}[:endpoint_info]") unless params[:endpoint_info].nil?
        type.training_parameters = TrainingParameters.build(params[:training_parameters], context: "#{context}[:training_parameters]") unless params[:training_parameters].nil?
        type.input_data_location_s3 = params[:input_data_location_s3]
        type.algorithm = params[:algorithm]
        type.ml_model_type = params[:ml_model_type]
        type.score_threshold = params[:score_threshold]
        type.score_threshold_last_updated_at = params[:score_threshold_last_updated_at]
        type.message = params[:message]
        type.compute_time = params[:compute_time]
        type.finished_at = params[:finished_at]
        type.started_at = params[:started_at]
        type
      end
    end

    module MLModels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MLModel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PerformanceMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PerformanceMetrics, context: context)
        type = Types::PerformanceMetrics.new
        type.properties = PerformanceMetricsProperties.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type
      end
    end

    module PerformanceMetricsProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module PredictInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictInput, context: context)
        type = Types::PredictInput.new
        type.ml_model_id = params[:ml_model_id]
        type.record = Record.build(params[:record], context: "#{context}[:record]") unless params[:record].nil?
        type.predict_endpoint = params[:predict_endpoint]
        type
      end
    end

    module PredictOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictOutput, context: context)
        type = Types::PredictOutput.new
        type.prediction = Prediction.build(params[:prediction], context: "#{context}[:prediction]") unless params[:prediction].nil?
        type
      end
    end

    module Prediction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Prediction, context: context)
        type = Types::Prediction.new
        type.predicted_label = params[:predicted_label]
        type.predicted_value = params[:predicted_value]
        type.predicted_scores = ScoreValuePerLabelMap.build(params[:predicted_scores], context: "#{context}[:predicted_scores]") unless params[:predicted_scores].nil?
        type.details = DetailsMap.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module PredictorNotMountedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictorNotMountedException, context: context)
        type = Types::PredictorNotMountedException.new
        type.message = params[:message]
        type
      end
    end

    module RDSDataSpec
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RDSDataSpec, context: context)
        type = Types::RDSDataSpec.new
        type.database_information = RDSDatabase.build(params[:database_information], context: "#{context}[:database_information]") unless params[:database_information].nil?
        type.select_sql_query = params[:select_sql_query]
        type.database_credentials = RDSDatabaseCredentials.build(params[:database_credentials], context: "#{context}[:database_credentials]") unless params[:database_credentials].nil?
        type.s3_staging_location = params[:s3_staging_location]
        type.data_rearrangement = params[:data_rearrangement]
        type.data_schema = params[:data_schema]
        type.data_schema_uri = params[:data_schema_uri]
        type.resource_role = params[:resource_role]
        type.service_role = params[:service_role]
        type.subnet_id = params[:subnet_id]
        type.security_group_ids = EDPSecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

    module RDSDatabase
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RDSDatabase, context: context)
        type = Types::RDSDatabase.new
        type.instance_identifier = params[:instance_identifier]
        type.database_name = params[:database_name]
        type
      end
    end

    module RDSDatabaseCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RDSDatabaseCredentials, context: context)
        type = Types::RDSDatabaseCredentials.new
        type.username = params[:username]
        type.password = params[:password]
        type
      end
    end

    module RDSMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RDSMetadata, context: context)
        type = Types::RDSMetadata.new
        type.database = RDSDatabase.build(params[:database], context: "#{context}[:database]") unless params[:database].nil?
        type.database_user_name = params[:database_user_name]
        type.select_sql_query = params[:select_sql_query]
        type.resource_role = params[:resource_role]
        type.service_role = params[:service_role]
        type.data_pipeline_id = params[:data_pipeline_id]
        type
      end
    end

    module RealtimeEndpointInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RealtimeEndpointInfo, context: context)
        type = Types::RealtimeEndpointInfo.new
        type.peak_requests_per_second = params[:peak_requests_per_second]
        type.created_at = params[:created_at]
        type.endpoint_url = params[:endpoint_url]
        type.endpoint_status = params[:endpoint_status]
        type
      end
    end

    module Record
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module RedshiftDataSpec
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftDataSpec, context: context)
        type = Types::RedshiftDataSpec.new
        type.database_information = RedshiftDatabase.build(params[:database_information], context: "#{context}[:database_information]") unless params[:database_information].nil?
        type.select_sql_query = params[:select_sql_query]
        type.database_credentials = RedshiftDatabaseCredentials.build(params[:database_credentials], context: "#{context}[:database_credentials]") unless params[:database_credentials].nil?
        type.s3_staging_location = params[:s3_staging_location]
        type.data_rearrangement = params[:data_rearrangement]
        type.data_schema = params[:data_schema]
        type.data_schema_uri = params[:data_schema_uri]
        type
      end
    end

    module RedshiftDatabase
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftDatabase, context: context)
        type = Types::RedshiftDatabase.new
        type.database_name = params[:database_name]
        type.cluster_identifier = params[:cluster_identifier]
        type
      end
    end

    module RedshiftDatabaseCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftDatabaseCredentials, context: context)
        type = Types::RedshiftDatabaseCredentials.new
        type.username = params[:username]
        type.password = params[:password]
        type
      end
    end

    module RedshiftMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftMetadata, context: context)
        type = Types::RedshiftMetadata.new
        type.redshift_database = RedshiftDatabase.build(params[:redshift_database], context: "#{context}[:redshift_database]") unless params[:redshift_database].nil?
        type.database_user_name = params[:database_user_name]
        type.select_sql_query = params[:select_sql_query]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module S3DataSpec
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3DataSpec, context: context)
        type = Types::S3DataSpec.new
        type.data_location_s3 = params[:data_location_s3]
        type.data_rearrangement = params[:data_rearrangement]
        type.data_schema = params[:data_schema]
        type.data_schema_location_s3 = params[:data_schema_location_s3]
        type
      end
    end

    module ScoreValuePerLabelMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
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

    module TagLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagLimitExceededException, context: context)
        type = Types::TagLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module UpdateBatchPredictionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBatchPredictionInput, context: context)
        type = Types::UpdateBatchPredictionInput.new
        type.batch_prediction_id = params[:batch_prediction_id]
        type.batch_prediction_name = params[:batch_prediction_name]
        type
      end
    end

    module UpdateBatchPredictionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBatchPredictionOutput, context: context)
        type = Types::UpdateBatchPredictionOutput.new
        type.batch_prediction_id = params[:batch_prediction_id]
        type
      end
    end

    module UpdateDataSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataSourceInput, context: context)
        type = Types::UpdateDataSourceInput.new
        type.data_source_id = params[:data_source_id]
        type.data_source_name = params[:data_source_name]
        type
      end
    end

    module UpdateDataSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataSourceOutput, context: context)
        type = Types::UpdateDataSourceOutput.new
        type.data_source_id = params[:data_source_id]
        type
      end
    end

    module UpdateEvaluationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEvaluationInput, context: context)
        type = Types::UpdateEvaluationInput.new
        type.evaluation_id = params[:evaluation_id]
        type.evaluation_name = params[:evaluation_name]
        type
      end
    end

    module UpdateEvaluationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEvaluationOutput, context: context)
        type = Types::UpdateEvaluationOutput.new
        type.evaluation_id = params[:evaluation_id]
        type
      end
    end

    module UpdateMLModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMLModelInput, context: context)
        type = Types::UpdateMLModelInput.new
        type.ml_model_id = params[:ml_model_id]
        type.ml_model_name = params[:ml_model_name]
        type.score_threshold = params[:score_threshold]
        type
      end
    end

    module UpdateMLModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMLModelOutput, context: context)
        type = Types::UpdateMLModelOutput.new
        type.ml_model_id = params[:ml_model_id]
        type
      end
    end

  end
end
