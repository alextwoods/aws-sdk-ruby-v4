# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MachineLearning
  module Validators

    class AddTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsInput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class AddTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsOutput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class BatchPrediction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPrediction, context: context)
        Hearth::Validator.validate!(input[:batch_prediction_id], ::String, context: "#{context}[:batch_prediction_id]")
        Hearth::Validator.validate!(input[:ml_model_id], ::String, context: "#{context}[:ml_model_id]")
        Hearth::Validator.validate!(input[:batch_prediction_data_source_id], ::String, context: "#{context}[:batch_prediction_data_source_id]")
        Hearth::Validator.validate!(input[:input_data_location_s3], ::String, context: "#{context}[:input_data_location_s3]")
        Hearth::Validator.validate!(input[:created_by_iam_user], ::String, context: "#{context}[:created_by_iam_user]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:output_uri], ::String, context: "#{context}[:output_uri]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:compute_time], ::Integer, context: "#{context}[:compute_time]")
        Hearth::Validator.validate!(input[:finished_at], ::Time, context: "#{context}[:finished_at]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:total_record_count], ::Integer, context: "#{context}[:total_record_count]")
        Hearth::Validator.validate!(input[:invalid_record_count], ::Integer, context: "#{context}[:invalid_record_count]")
      end
    end

    class BatchPredictions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchPrediction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateBatchPredictionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBatchPredictionInput, context: context)
        Hearth::Validator.validate!(input[:batch_prediction_id], ::String, context: "#{context}[:batch_prediction_id]")
        Hearth::Validator.validate!(input[:batch_prediction_name], ::String, context: "#{context}[:batch_prediction_name]")
        Hearth::Validator.validate!(input[:ml_model_id], ::String, context: "#{context}[:ml_model_id]")
        Hearth::Validator.validate!(input[:batch_prediction_data_source_id], ::String, context: "#{context}[:batch_prediction_data_source_id]")
        Hearth::Validator.validate!(input[:output_uri], ::String, context: "#{context}[:output_uri]")
      end
    end

    class CreateBatchPredictionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBatchPredictionOutput, context: context)
        Hearth::Validator.validate!(input[:batch_prediction_id], ::String, context: "#{context}[:batch_prediction_id]")
      end
    end

    class CreateDataSourceFromRDSInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataSourceFromRDSInput, context: context)
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Hearth::Validator.validate!(input[:data_source_name], ::String, context: "#{context}[:data_source_name]")
        Validators::RDSDataSpec.validate!(input[:rds_data], context: "#{context}[:rds_data]") unless input[:rds_data].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:compute_statistics], ::TrueClass, ::FalseClass, context: "#{context}[:compute_statistics]")
      end
    end

    class CreateDataSourceFromRDSOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataSourceFromRDSOutput, context: context)
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
      end
    end

    class CreateDataSourceFromRedshiftInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataSourceFromRedshiftInput, context: context)
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Hearth::Validator.validate!(input[:data_source_name], ::String, context: "#{context}[:data_source_name]")
        Validators::RedshiftDataSpec.validate!(input[:data_spec], context: "#{context}[:data_spec]") unless input[:data_spec].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:compute_statistics], ::TrueClass, ::FalseClass, context: "#{context}[:compute_statistics]")
      end
    end

    class CreateDataSourceFromRedshiftOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataSourceFromRedshiftOutput, context: context)
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
      end
    end

    class CreateDataSourceFromS3Input
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataSourceFromS3Input, context: context)
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Hearth::Validator.validate!(input[:data_source_name], ::String, context: "#{context}[:data_source_name]")
        Validators::S3DataSpec.validate!(input[:data_spec], context: "#{context}[:data_spec]") unless input[:data_spec].nil?
        Hearth::Validator.validate!(input[:compute_statistics], ::TrueClass, ::FalseClass, context: "#{context}[:compute_statistics]")
      end
    end

    class CreateDataSourceFromS3Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataSourceFromS3Output, context: context)
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
      end
    end

    class CreateEvaluationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEvaluationInput, context: context)
        Hearth::Validator.validate!(input[:evaluation_id], ::String, context: "#{context}[:evaluation_id]")
        Hearth::Validator.validate!(input[:evaluation_name], ::String, context: "#{context}[:evaluation_name]")
        Hearth::Validator.validate!(input[:ml_model_id], ::String, context: "#{context}[:ml_model_id]")
        Hearth::Validator.validate!(input[:evaluation_data_source_id], ::String, context: "#{context}[:evaluation_data_source_id]")
      end
    end

    class CreateEvaluationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEvaluationOutput, context: context)
        Hearth::Validator.validate!(input[:evaluation_id], ::String, context: "#{context}[:evaluation_id]")
      end
    end

    class CreateMLModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMLModelInput, context: context)
        Hearth::Validator.validate!(input[:ml_model_id], ::String, context: "#{context}[:ml_model_id]")
        Hearth::Validator.validate!(input[:ml_model_name], ::String, context: "#{context}[:ml_model_name]")
        Hearth::Validator.validate!(input[:ml_model_type], ::String, context: "#{context}[:ml_model_type]")
        Validators::TrainingParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:training_data_source_id], ::String, context: "#{context}[:training_data_source_id]")
        Hearth::Validator.validate!(input[:recipe], ::String, context: "#{context}[:recipe]")
        Hearth::Validator.validate!(input[:recipe_uri], ::String, context: "#{context}[:recipe_uri]")
      end
    end

    class CreateMLModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMLModelOutput, context: context)
        Hearth::Validator.validate!(input[:ml_model_id], ::String, context: "#{context}[:ml_model_id]")
      end
    end

    class CreateRealtimeEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRealtimeEndpointInput, context: context)
        Hearth::Validator.validate!(input[:ml_model_id], ::String, context: "#{context}[:ml_model_id]")
      end
    end

    class CreateRealtimeEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRealtimeEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:ml_model_id], ::String, context: "#{context}[:ml_model_id]")
        Validators::RealtimeEndpointInfo.validate!(input[:realtime_endpoint_info], context: "#{context}[:realtime_endpoint_info]") unless input[:realtime_endpoint_info].nil?
      end
    end

    class DataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSource, context: context)
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Hearth::Validator.validate!(input[:data_location_s3], ::String, context: "#{context}[:data_location_s3]")
        Hearth::Validator.validate!(input[:data_rearrangement], ::String, context: "#{context}[:data_rearrangement]")
        Hearth::Validator.validate!(input[:created_by_iam_user], ::String, context: "#{context}[:created_by_iam_user]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:data_size_in_bytes], ::Integer, context: "#{context}[:data_size_in_bytes]")
        Hearth::Validator.validate!(input[:number_of_files], ::Integer, context: "#{context}[:number_of_files]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Validators::RedshiftMetadata.validate!(input[:redshift_metadata], context: "#{context}[:redshift_metadata]") unless input[:redshift_metadata].nil?
        Validators::RDSMetadata.validate!(input[:rds_metadata], context: "#{context}[:rds_metadata]") unless input[:rds_metadata].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:compute_statistics], ::TrueClass, ::FalseClass, context: "#{context}[:compute_statistics]")
        Hearth::Validator.validate!(input[:compute_time], ::Integer, context: "#{context}[:compute_time]")
        Hearth::Validator.validate!(input[:finished_at], ::Time, context: "#{context}[:finished_at]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
      end
    end

    class DataSources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteBatchPredictionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBatchPredictionInput, context: context)
        Hearth::Validator.validate!(input[:batch_prediction_id], ::String, context: "#{context}[:batch_prediction_id]")
      end
    end

    class DeleteBatchPredictionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBatchPredictionOutput, context: context)
        Hearth::Validator.validate!(input[:batch_prediction_id], ::String, context: "#{context}[:batch_prediction_id]")
      end
    end

    class DeleteDataSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataSourceInput, context: context)
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
      end
    end

    class DeleteDataSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataSourceOutput, context: context)
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
      end
    end

    class DeleteEvaluationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEvaluationInput, context: context)
        Hearth::Validator.validate!(input[:evaluation_id], ::String, context: "#{context}[:evaluation_id]")
      end
    end

    class DeleteEvaluationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEvaluationOutput, context: context)
        Hearth::Validator.validate!(input[:evaluation_id], ::String, context: "#{context}[:evaluation_id]")
      end
    end

    class DeleteMLModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMLModelInput, context: context)
        Hearth::Validator.validate!(input[:ml_model_id], ::String, context: "#{context}[:ml_model_id]")
      end
    end

    class DeleteMLModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMLModelOutput, context: context)
        Hearth::Validator.validate!(input[:ml_model_id], ::String, context: "#{context}[:ml_model_id]")
      end
    end

    class DeleteRealtimeEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRealtimeEndpointInput, context: context)
        Hearth::Validator.validate!(input[:ml_model_id], ::String, context: "#{context}[:ml_model_id]")
      end
    end

    class DeleteRealtimeEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRealtimeEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:ml_model_id], ::String, context: "#{context}[:ml_model_id]")
        Validators::RealtimeEndpointInfo.validate!(input[:realtime_endpoint_info], context: "#{context}[:realtime_endpoint_info]") unless input[:realtime_endpoint_info].nil?
      end
    end

    class DeleteTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsInput, context: context)
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class DeleteTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsOutput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class DescribeBatchPredictionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBatchPredictionsInput, context: context)
        Hearth::Validator.validate!(input[:filter_variable], ::String, context: "#{context}[:filter_variable]")
        Hearth::Validator.validate!(input[:eq], ::String, context: "#{context}[:eq]")
        Hearth::Validator.validate!(input[:gt], ::String, context: "#{context}[:gt]")
        Hearth::Validator.validate!(input[:lt], ::String, context: "#{context}[:lt]")
        Hearth::Validator.validate!(input[:ge], ::String, context: "#{context}[:ge]")
        Hearth::Validator.validate!(input[:le], ::String, context: "#{context}[:le]")
        Hearth::Validator.validate!(input[:ne], ::String, context: "#{context}[:ne]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeBatchPredictionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBatchPredictionsOutput, context: context)
        Validators::BatchPredictions.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDataSourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataSourcesInput, context: context)
        Hearth::Validator.validate!(input[:filter_variable], ::String, context: "#{context}[:filter_variable]")
        Hearth::Validator.validate!(input[:eq], ::String, context: "#{context}[:eq]")
        Hearth::Validator.validate!(input[:gt], ::String, context: "#{context}[:gt]")
        Hearth::Validator.validate!(input[:lt], ::String, context: "#{context}[:lt]")
        Hearth::Validator.validate!(input[:ge], ::String, context: "#{context}[:ge]")
        Hearth::Validator.validate!(input[:le], ::String, context: "#{context}[:le]")
        Hearth::Validator.validate!(input[:ne], ::String, context: "#{context}[:ne]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeDataSourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataSourcesOutput, context: context)
        Validators::DataSources.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEvaluationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEvaluationsInput, context: context)
        Hearth::Validator.validate!(input[:filter_variable], ::String, context: "#{context}[:filter_variable]")
        Hearth::Validator.validate!(input[:eq], ::String, context: "#{context}[:eq]")
        Hearth::Validator.validate!(input[:gt], ::String, context: "#{context}[:gt]")
        Hearth::Validator.validate!(input[:lt], ::String, context: "#{context}[:lt]")
        Hearth::Validator.validate!(input[:ge], ::String, context: "#{context}[:ge]")
        Hearth::Validator.validate!(input[:le], ::String, context: "#{context}[:le]")
        Hearth::Validator.validate!(input[:ne], ::String, context: "#{context}[:ne]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeEvaluationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEvaluationsOutput, context: context)
        Validators::Evaluations.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMLModelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMLModelsInput, context: context)
        Hearth::Validator.validate!(input[:filter_variable], ::String, context: "#{context}[:filter_variable]")
        Hearth::Validator.validate!(input[:eq], ::String, context: "#{context}[:eq]")
        Hearth::Validator.validate!(input[:gt], ::String, context: "#{context}[:gt]")
        Hearth::Validator.validate!(input[:lt], ::String, context: "#{context}[:lt]")
        Hearth::Validator.validate!(input[:ge], ::String, context: "#{context}[:ge]")
        Hearth::Validator.validate!(input[:le], ::String, context: "#{context}[:le]")
        Hearth::Validator.validate!(input[:ne], ::String, context: "#{context}[:ne]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeMLModelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMLModelsOutput, context: context)
        Validators::MLModels.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class DescribeTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagsOutput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DetailsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class EDPSecurityGroupIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Evaluation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Evaluation, context: context)
        Hearth::Validator.validate!(input[:evaluation_id], ::String, context: "#{context}[:evaluation_id]")
        Hearth::Validator.validate!(input[:ml_model_id], ::String, context: "#{context}[:ml_model_id]")
        Hearth::Validator.validate!(input[:evaluation_data_source_id], ::String, context: "#{context}[:evaluation_data_source_id]")
        Hearth::Validator.validate!(input[:input_data_location_s3], ::String, context: "#{context}[:input_data_location_s3]")
        Hearth::Validator.validate!(input[:created_by_iam_user], ::String, context: "#{context}[:created_by_iam_user]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::PerformanceMetrics.validate!(input[:performance_metrics], context: "#{context}[:performance_metrics]") unless input[:performance_metrics].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:compute_time], ::Integer, context: "#{context}[:compute_time]")
        Hearth::Validator.validate!(input[:finished_at], ::Time, context: "#{context}[:finished_at]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
      end
    end

    class Evaluations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Evaluation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetBatchPredictionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBatchPredictionInput, context: context)
        Hearth::Validator.validate!(input[:batch_prediction_id], ::String, context: "#{context}[:batch_prediction_id]")
      end
    end

    class GetBatchPredictionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBatchPredictionOutput, context: context)
        Hearth::Validator.validate!(input[:batch_prediction_id], ::String, context: "#{context}[:batch_prediction_id]")
        Hearth::Validator.validate!(input[:ml_model_id], ::String, context: "#{context}[:ml_model_id]")
        Hearth::Validator.validate!(input[:batch_prediction_data_source_id], ::String, context: "#{context}[:batch_prediction_data_source_id]")
        Hearth::Validator.validate!(input[:input_data_location_s3], ::String, context: "#{context}[:input_data_location_s3]")
        Hearth::Validator.validate!(input[:created_by_iam_user], ::String, context: "#{context}[:created_by_iam_user]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:output_uri], ::String, context: "#{context}[:output_uri]")
        Hearth::Validator.validate!(input[:log_uri], ::String, context: "#{context}[:log_uri]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:compute_time], ::Integer, context: "#{context}[:compute_time]")
        Hearth::Validator.validate!(input[:finished_at], ::Time, context: "#{context}[:finished_at]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:total_record_count], ::Integer, context: "#{context}[:total_record_count]")
        Hearth::Validator.validate!(input[:invalid_record_count], ::Integer, context: "#{context}[:invalid_record_count]")
      end
    end

    class GetDataSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataSourceInput, context: context)
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Hearth::Validator.validate!(input[:verbose], ::TrueClass, ::FalseClass, context: "#{context}[:verbose]")
      end
    end

    class GetDataSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataSourceOutput, context: context)
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Hearth::Validator.validate!(input[:data_location_s3], ::String, context: "#{context}[:data_location_s3]")
        Hearth::Validator.validate!(input[:data_rearrangement], ::String, context: "#{context}[:data_rearrangement]")
        Hearth::Validator.validate!(input[:created_by_iam_user], ::String, context: "#{context}[:created_by_iam_user]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:data_size_in_bytes], ::Integer, context: "#{context}[:data_size_in_bytes]")
        Hearth::Validator.validate!(input[:number_of_files], ::Integer, context: "#{context}[:number_of_files]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:log_uri], ::String, context: "#{context}[:log_uri]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Validators::RedshiftMetadata.validate!(input[:redshift_metadata], context: "#{context}[:redshift_metadata]") unless input[:redshift_metadata].nil?
        Validators::RDSMetadata.validate!(input[:rds_metadata], context: "#{context}[:rds_metadata]") unless input[:rds_metadata].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:compute_statistics], ::TrueClass, ::FalseClass, context: "#{context}[:compute_statistics]")
        Hearth::Validator.validate!(input[:compute_time], ::Integer, context: "#{context}[:compute_time]")
        Hearth::Validator.validate!(input[:finished_at], ::Time, context: "#{context}[:finished_at]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:data_source_schema], ::String, context: "#{context}[:data_source_schema]")
      end
    end

    class GetEvaluationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEvaluationInput, context: context)
        Hearth::Validator.validate!(input[:evaluation_id], ::String, context: "#{context}[:evaluation_id]")
      end
    end

    class GetEvaluationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEvaluationOutput, context: context)
        Hearth::Validator.validate!(input[:evaluation_id], ::String, context: "#{context}[:evaluation_id]")
        Hearth::Validator.validate!(input[:ml_model_id], ::String, context: "#{context}[:ml_model_id]")
        Hearth::Validator.validate!(input[:evaluation_data_source_id], ::String, context: "#{context}[:evaluation_data_source_id]")
        Hearth::Validator.validate!(input[:input_data_location_s3], ::String, context: "#{context}[:input_data_location_s3]")
        Hearth::Validator.validate!(input[:created_by_iam_user], ::String, context: "#{context}[:created_by_iam_user]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::PerformanceMetrics.validate!(input[:performance_metrics], context: "#{context}[:performance_metrics]") unless input[:performance_metrics].nil?
        Hearth::Validator.validate!(input[:log_uri], ::String, context: "#{context}[:log_uri]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:compute_time], ::Integer, context: "#{context}[:compute_time]")
        Hearth::Validator.validate!(input[:finished_at], ::Time, context: "#{context}[:finished_at]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
      end
    end

    class GetMLModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMLModelInput, context: context)
        Hearth::Validator.validate!(input[:ml_model_id], ::String, context: "#{context}[:ml_model_id]")
        Hearth::Validator.validate!(input[:verbose], ::TrueClass, ::FalseClass, context: "#{context}[:verbose]")
      end
    end

    class GetMLModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMLModelOutput, context: context)
        Hearth::Validator.validate!(input[:ml_model_id], ::String, context: "#{context}[:ml_model_id]")
        Hearth::Validator.validate!(input[:training_data_source_id], ::String, context: "#{context}[:training_data_source_id]")
        Hearth::Validator.validate!(input[:created_by_iam_user], ::String, context: "#{context}[:created_by_iam_user]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:size_in_bytes], ::Integer, context: "#{context}[:size_in_bytes]")
        Validators::RealtimeEndpointInfo.validate!(input[:endpoint_info], context: "#{context}[:endpoint_info]") unless input[:endpoint_info].nil?
        Validators::TrainingParameters.validate!(input[:training_parameters], context: "#{context}[:training_parameters]") unless input[:training_parameters].nil?
        Hearth::Validator.validate!(input[:input_data_location_s3], ::String, context: "#{context}[:input_data_location_s3]")
        Hearth::Validator.validate!(input[:ml_model_type], ::String, context: "#{context}[:ml_model_type]")
        Hearth::Validator.validate!(input[:score_threshold], ::Float, context: "#{context}[:score_threshold]")
        Hearth::Validator.validate!(input[:score_threshold_last_updated_at], ::Time, context: "#{context}[:score_threshold_last_updated_at]")
        Hearth::Validator.validate!(input[:log_uri], ::String, context: "#{context}[:log_uri]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:compute_time], ::Integer, context: "#{context}[:compute_time]")
        Hearth::Validator.validate!(input[:finished_at], ::Time, context: "#{context}[:finished_at]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:recipe], ::String, context: "#{context}[:recipe]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
      end
    end

    class IdempotentParameterMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdempotentParameterMismatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::Integer, context: "#{context}[:code]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::Integer, context: "#{context}[:code]")
      end
    end

    class InvalidInputException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInputException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::Integer, context: "#{context}[:code]")
      end
    end

    class InvalidTagException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTagException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::Integer, context: "#{context}[:code]")
      end
    end

    class MLModel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MLModel, context: context)
        Hearth::Validator.validate!(input[:ml_model_id], ::String, context: "#{context}[:ml_model_id]")
        Hearth::Validator.validate!(input[:training_data_source_id], ::String, context: "#{context}[:training_data_source_id]")
        Hearth::Validator.validate!(input[:created_by_iam_user], ::String, context: "#{context}[:created_by_iam_user]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:size_in_bytes], ::Integer, context: "#{context}[:size_in_bytes]")
        Validators::RealtimeEndpointInfo.validate!(input[:endpoint_info], context: "#{context}[:endpoint_info]") unless input[:endpoint_info].nil?
        Validators::TrainingParameters.validate!(input[:training_parameters], context: "#{context}[:training_parameters]") unless input[:training_parameters].nil?
        Hearth::Validator.validate!(input[:input_data_location_s3], ::String, context: "#{context}[:input_data_location_s3]")
        Hearth::Validator.validate!(input[:algorithm], ::String, context: "#{context}[:algorithm]")
        Hearth::Validator.validate!(input[:ml_model_type], ::String, context: "#{context}[:ml_model_type]")
        Hearth::Validator.validate!(input[:score_threshold], ::Float, context: "#{context}[:score_threshold]")
        Hearth::Validator.validate!(input[:score_threshold_last_updated_at], ::Time, context: "#{context}[:score_threshold_last_updated_at]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:compute_time], ::Integer, context: "#{context}[:compute_time]")
        Hearth::Validator.validate!(input[:finished_at], ::Time, context: "#{context}[:finished_at]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
      end
    end

    class MLModels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MLModel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PerformanceMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PerformanceMetrics, context: context)
        Validators::PerformanceMetricsProperties.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
      end
    end

    class PerformanceMetricsProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class PredictInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictInput, context: context)
        Hearth::Validator.validate!(input[:ml_model_id], ::String, context: "#{context}[:ml_model_id]")
        Validators::Record.validate!(input[:record], context: "#{context}[:record]") unless input[:record].nil?
        Hearth::Validator.validate!(input[:predict_endpoint], ::String, context: "#{context}[:predict_endpoint]")
      end
    end

    class PredictOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictOutput, context: context)
        Validators::Prediction.validate!(input[:prediction], context: "#{context}[:prediction]") unless input[:prediction].nil?
      end
    end

    class Prediction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Prediction, context: context)
        Hearth::Validator.validate!(input[:predicted_label], ::String, context: "#{context}[:predicted_label]")
        Hearth::Validator.validate!(input[:predicted_value], ::Float, context: "#{context}[:predicted_value]")
        Validators::ScoreValuePerLabelMap.validate!(input[:predicted_scores], context: "#{context}[:predicted_scores]") unless input[:predicted_scores].nil?
        Validators::DetailsMap.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class PredictorNotMountedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictorNotMountedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RDSDataSpec
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RDSDataSpec, context: context)
        Validators::RDSDatabase.validate!(input[:database_information], context: "#{context}[:database_information]") unless input[:database_information].nil?
        Hearth::Validator.validate!(input[:select_sql_query], ::String, context: "#{context}[:select_sql_query]")
        Validators::RDSDatabaseCredentials.validate!(input[:database_credentials], context: "#{context}[:database_credentials]") unless input[:database_credentials].nil?
        Hearth::Validator.validate!(input[:s3_staging_location], ::String, context: "#{context}[:s3_staging_location]")
        Hearth::Validator.validate!(input[:data_rearrangement], ::String, context: "#{context}[:data_rearrangement]")
        Hearth::Validator.validate!(input[:data_schema], ::String, context: "#{context}[:data_schema]")
        Hearth::Validator.validate!(input[:data_schema_uri], ::String, context: "#{context}[:data_schema_uri]")
        Hearth::Validator.validate!(input[:resource_role], ::String, context: "#{context}[:resource_role]")
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Validators::EDPSecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class RDSDatabase
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RDSDatabase, context: context)
        Hearth::Validator.validate!(input[:instance_identifier], ::String, context: "#{context}[:instance_identifier]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
      end
    end

    class RDSDatabaseCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RDSDatabaseCredentials, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
      end
    end

    class RDSMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RDSMetadata, context: context)
        Validators::RDSDatabase.validate!(input[:database], context: "#{context}[:database]") unless input[:database].nil?
        Hearth::Validator.validate!(input[:database_user_name], ::String, context: "#{context}[:database_user_name]")
        Hearth::Validator.validate!(input[:select_sql_query], ::String, context: "#{context}[:select_sql_query]")
        Hearth::Validator.validate!(input[:resource_role], ::String, context: "#{context}[:resource_role]")
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        Hearth::Validator.validate!(input[:data_pipeline_id], ::String, context: "#{context}[:data_pipeline_id]")
      end
    end

    class RealtimeEndpointInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RealtimeEndpointInfo, context: context)
        Hearth::Validator.validate!(input[:peak_requests_per_second], ::Integer, context: "#{context}[:peak_requests_per_second]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:endpoint_url], ::String, context: "#{context}[:endpoint_url]")
        Hearth::Validator.validate!(input[:endpoint_status], ::String, context: "#{context}[:endpoint_status]")
      end
    end

    class Record
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class RedshiftDataSpec
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftDataSpec, context: context)
        Validators::RedshiftDatabase.validate!(input[:database_information], context: "#{context}[:database_information]") unless input[:database_information].nil?
        Hearth::Validator.validate!(input[:select_sql_query], ::String, context: "#{context}[:select_sql_query]")
        Validators::RedshiftDatabaseCredentials.validate!(input[:database_credentials], context: "#{context}[:database_credentials]") unless input[:database_credentials].nil?
        Hearth::Validator.validate!(input[:s3_staging_location], ::String, context: "#{context}[:s3_staging_location]")
        Hearth::Validator.validate!(input[:data_rearrangement], ::String, context: "#{context}[:data_rearrangement]")
        Hearth::Validator.validate!(input[:data_schema], ::String, context: "#{context}[:data_schema]")
        Hearth::Validator.validate!(input[:data_schema_uri], ::String, context: "#{context}[:data_schema_uri]")
      end
    end

    class RedshiftDatabase
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftDatabase, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:cluster_identifier], ::String, context: "#{context}[:cluster_identifier]")
      end
    end

    class RedshiftDatabaseCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftDatabaseCredentials, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
      end
    end

    class RedshiftMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftMetadata, context: context)
        Validators::RedshiftDatabase.validate!(input[:redshift_database], context: "#{context}[:redshift_database]") unless input[:redshift_database].nil?
        Hearth::Validator.validate!(input[:database_user_name], ::String, context: "#{context}[:database_user_name]")
        Hearth::Validator.validate!(input[:select_sql_query], ::String, context: "#{context}[:select_sql_query]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::Integer, context: "#{context}[:code]")
      end
    end

    class S3DataSpec
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3DataSpec, context: context)
        Hearth::Validator.validate!(input[:data_location_s3], ::String, context: "#{context}[:data_location_s3]")
        Hearth::Validator.validate!(input[:data_rearrangement], ::String, context: "#{context}[:data_rearrangement]")
        Hearth::Validator.validate!(input[:data_schema], ::String, context: "#{context}[:data_schema]")
        Hearth::Validator.validate!(input[:data_schema_location_s3], ::String, context: "#{context}[:data_schema_location_s3]")
      end
    end

    class ScoreValuePerLabelMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Float, context: "#{context}[:#{key}]")
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

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class UpdateBatchPredictionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBatchPredictionInput, context: context)
        Hearth::Validator.validate!(input[:batch_prediction_id], ::String, context: "#{context}[:batch_prediction_id]")
        Hearth::Validator.validate!(input[:batch_prediction_name], ::String, context: "#{context}[:batch_prediction_name]")
      end
    end

    class UpdateBatchPredictionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBatchPredictionOutput, context: context)
        Hearth::Validator.validate!(input[:batch_prediction_id], ::String, context: "#{context}[:batch_prediction_id]")
      end
    end

    class UpdateDataSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataSourceInput, context: context)
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Hearth::Validator.validate!(input[:data_source_name], ::String, context: "#{context}[:data_source_name]")
      end
    end

    class UpdateDataSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataSourceOutput, context: context)
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
      end
    end

    class UpdateEvaluationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEvaluationInput, context: context)
        Hearth::Validator.validate!(input[:evaluation_id], ::String, context: "#{context}[:evaluation_id]")
        Hearth::Validator.validate!(input[:evaluation_name], ::String, context: "#{context}[:evaluation_name]")
      end
    end

    class UpdateEvaluationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEvaluationOutput, context: context)
        Hearth::Validator.validate!(input[:evaluation_id], ::String, context: "#{context}[:evaluation_id]")
      end
    end

    class UpdateMLModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMLModelInput, context: context)
        Hearth::Validator.validate!(input[:ml_model_id], ::String, context: "#{context}[:ml_model_id]")
        Hearth::Validator.validate!(input[:ml_model_name], ::String, context: "#{context}[:ml_model_name]")
        Hearth::Validator.validate!(input[:score_threshold], ::Float, context: "#{context}[:score_threshold]")
      end
    end

    class UpdateMLModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMLModelOutput, context: context)
        Hearth::Validator.validate!(input[:ml_model_id], ::String, context: "#{context}[:ml_model_id]")
      end
    end

  end
end
