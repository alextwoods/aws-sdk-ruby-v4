# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MachineLearning
  module Parsers

    # Operation Parser for AddTags
    class AddTags
      def self.parse(http_resp)
        data = Types::AddTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.code = map['code']
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
        data.message = map['message']
        data.code = map['code']
        data
      end
    end

    # Error Parser for InvalidTagException
    class InvalidTagException
      def self.parse(http_resp)
        data = Types::InvalidTagException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
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
        data.message = map['message']
        data.code = map['code']
        data
      end
    end

    # Error Parser for TagLimitExceededException
    class TagLimitExceededException
      def self.parse(http_resp)
        data = Types::TagLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateBatchPrediction
    class CreateBatchPrediction
      def self.parse(http_resp)
        data = Types::CreateBatchPredictionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.batch_prediction_id = map['BatchPredictionId']
        data
      end
    end

    # Error Parser for IdempotentParameterMismatchException
    class IdempotentParameterMismatchException
      def self.parse(http_resp)
        data = Types::IdempotentParameterMismatchException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.code = map['code']
        data
      end
    end

    # Operation Parser for CreateDataSourceFromRDS
    class CreateDataSourceFromRDS
      def self.parse(http_resp)
        data = Types::CreateDataSourceFromRDSOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.data_source_id = map['DataSourceId']
        data
      end
    end

    # Operation Parser for CreateDataSourceFromRedshift
    class CreateDataSourceFromRedshift
      def self.parse(http_resp)
        data = Types::CreateDataSourceFromRedshiftOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.data_source_id = map['DataSourceId']
        data
      end
    end

    # Operation Parser for CreateDataSourceFromS3
    class CreateDataSourceFromS3
      def self.parse(http_resp)
        data = Types::CreateDataSourceFromS3Output.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.data_source_id = map['DataSourceId']
        data
      end
    end

    # Operation Parser for CreateEvaluation
    class CreateEvaluation
      def self.parse(http_resp)
        data = Types::CreateEvaluationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.evaluation_id = map['EvaluationId']
        data
      end
    end

    # Operation Parser for CreateMLModel
    class CreateMLModel
      def self.parse(http_resp)
        data = Types::CreateMLModelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ml_model_id = map['MLModelId']
        data
      end
    end

    # Operation Parser for CreateRealtimeEndpoint
    class CreateRealtimeEndpoint
      def self.parse(http_resp)
        data = Types::CreateRealtimeEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ml_model_id = map['MLModelId']
        data.realtime_endpoint_info = (Parsers::RealtimeEndpointInfo.parse(map['RealtimeEndpointInfo']) unless map['RealtimeEndpointInfo'].nil?)
        data
      end
    end

    class RealtimeEndpointInfo
      def self.parse(map)
        data = Types::RealtimeEndpointInfo.new
        data.peak_requests_per_second = map['PeakRequestsPerSecond']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.endpoint_url = map['EndpointUrl']
        data.endpoint_status = map['EndpointStatus']
        return data
      end
    end

    # Operation Parser for DeleteBatchPrediction
    class DeleteBatchPrediction
      def self.parse(http_resp)
        data = Types::DeleteBatchPredictionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.batch_prediction_id = map['BatchPredictionId']
        data
      end
    end

    # Operation Parser for DeleteDataSource
    class DeleteDataSource
      def self.parse(http_resp)
        data = Types::DeleteDataSourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.data_source_id = map['DataSourceId']
        data
      end
    end

    # Operation Parser for DeleteEvaluation
    class DeleteEvaluation
      def self.parse(http_resp)
        data = Types::DeleteEvaluationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.evaluation_id = map['EvaluationId']
        data
      end
    end

    # Operation Parser for DeleteMLModel
    class DeleteMLModel
      def self.parse(http_resp)
        data = Types::DeleteMLModelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ml_model_id = map['MLModelId']
        data
      end
    end

    # Operation Parser for DeleteRealtimeEndpoint
    class DeleteRealtimeEndpoint
      def self.parse(http_resp)
        data = Types::DeleteRealtimeEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ml_model_id = map['MLModelId']
        data.realtime_endpoint_info = (Parsers::RealtimeEndpointInfo.parse(map['RealtimeEndpointInfo']) unless map['RealtimeEndpointInfo'].nil?)
        data
      end
    end

    # Operation Parser for DeleteTags
    class DeleteTags
      def self.parse(http_resp)
        data = Types::DeleteTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Operation Parser for DescribeBatchPredictions
    class DescribeBatchPredictions
      def self.parse(http_resp)
        data = Types::DescribeBatchPredictionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.results = (Parsers::BatchPredictions.parse(map['Results']) unless map['Results'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class BatchPredictions
      def self.parse(list)
        list.map do |value|
          Parsers::BatchPrediction.parse(value) unless value.nil?
        end
      end
    end

    class BatchPrediction
      def self.parse(map)
        data = Types::BatchPrediction.new
        data.batch_prediction_id = map['BatchPredictionId']
        data.ml_model_id = map['MLModelId']
        data.batch_prediction_data_source_id = map['BatchPredictionDataSourceId']
        data.input_data_location_s3 = map['InputDataLocationS3']
        data.created_by_iam_user = map['CreatedByIamUser']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.name = map['Name']
        data.status = map['Status']
        data.output_uri = map['OutputUri']
        data.message = map['Message']
        data.compute_time = map['ComputeTime']
        data.finished_at = Time.at(map['FinishedAt'].to_i) if map['FinishedAt']
        data.started_at = Time.at(map['StartedAt'].to_i) if map['StartedAt']
        data.total_record_count = map['TotalRecordCount']
        data.invalid_record_count = map['InvalidRecordCount']
        return data
      end
    end

    # Operation Parser for DescribeDataSources
    class DescribeDataSources
      def self.parse(http_resp)
        data = Types::DescribeDataSourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.results = (Parsers::DataSources.parse(map['Results']) unless map['Results'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DataSources
      def self.parse(list)
        list.map do |value|
          Parsers::DataSource.parse(value) unless value.nil?
        end
      end
    end

    class DataSource
      def self.parse(map)
        data = Types::DataSource.new
        data.data_source_id = map['DataSourceId']
        data.data_location_s3 = map['DataLocationS3']
        data.data_rearrangement = map['DataRearrangement']
        data.created_by_iam_user = map['CreatedByIamUser']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.data_size_in_bytes = map['DataSizeInBytes']
        data.number_of_files = map['NumberOfFiles']
        data.name = map['Name']
        data.status = map['Status']
        data.message = map['Message']
        data.redshift_metadata = (Parsers::RedshiftMetadata.parse(map['RedshiftMetadata']) unless map['RedshiftMetadata'].nil?)
        data.rds_metadata = (Parsers::RDSMetadata.parse(map['RDSMetadata']) unless map['RDSMetadata'].nil?)
        data.role_arn = map['RoleARN']
        data.compute_statistics = map['ComputeStatistics']
        data.compute_time = map['ComputeTime']
        data.finished_at = Time.at(map['FinishedAt'].to_i) if map['FinishedAt']
        data.started_at = Time.at(map['StartedAt'].to_i) if map['StartedAt']
        return data
      end
    end

    class RDSMetadata
      def self.parse(map)
        data = Types::RDSMetadata.new
        data.database = (Parsers::RDSDatabase.parse(map['Database']) unless map['Database'].nil?)
        data.database_user_name = map['DatabaseUserName']
        data.select_sql_query = map['SelectSqlQuery']
        data.resource_role = map['ResourceRole']
        data.service_role = map['ServiceRole']
        data.data_pipeline_id = map['DataPipelineId']
        return data
      end
    end

    class RDSDatabase
      def self.parse(map)
        data = Types::RDSDatabase.new
        data.instance_identifier = map['InstanceIdentifier']
        data.database_name = map['DatabaseName']
        return data
      end
    end

    class RedshiftMetadata
      def self.parse(map)
        data = Types::RedshiftMetadata.new
        data.redshift_database = (Parsers::RedshiftDatabase.parse(map['RedshiftDatabase']) unless map['RedshiftDatabase'].nil?)
        data.database_user_name = map['DatabaseUserName']
        data.select_sql_query = map['SelectSqlQuery']
        return data
      end
    end

    class RedshiftDatabase
      def self.parse(map)
        data = Types::RedshiftDatabase.new
        data.database_name = map['DatabaseName']
        data.cluster_identifier = map['ClusterIdentifier']
        return data
      end
    end

    # Operation Parser for DescribeEvaluations
    class DescribeEvaluations
      def self.parse(http_resp)
        data = Types::DescribeEvaluationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.results = (Parsers::Evaluations.parse(map['Results']) unless map['Results'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Evaluations
      def self.parse(list)
        list.map do |value|
          Parsers::Evaluation.parse(value) unless value.nil?
        end
      end
    end

    class Evaluation
      def self.parse(map)
        data = Types::Evaluation.new
        data.evaluation_id = map['EvaluationId']
        data.ml_model_id = map['MLModelId']
        data.evaluation_data_source_id = map['EvaluationDataSourceId']
        data.input_data_location_s3 = map['InputDataLocationS3']
        data.created_by_iam_user = map['CreatedByIamUser']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.name = map['Name']
        data.status = map['Status']
        data.performance_metrics = (Parsers::PerformanceMetrics.parse(map['PerformanceMetrics']) unless map['PerformanceMetrics'].nil?)
        data.message = map['Message']
        data.compute_time = map['ComputeTime']
        data.finished_at = Time.at(map['FinishedAt'].to_i) if map['FinishedAt']
        data.started_at = Time.at(map['StartedAt'].to_i) if map['StartedAt']
        return data
      end
    end

    class PerformanceMetrics
      def self.parse(map)
        data = Types::PerformanceMetrics.new
        data.properties = (Parsers::PerformanceMetricsProperties.parse(map['Properties']) unless map['Properties'].nil?)
        return data
      end
    end

    class PerformanceMetricsProperties
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeMLModels
    class DescribeMLModels
      def self.parse(http_resp)
        data = Types::DescribeMLModelsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.results = (Parsers::MLModels.parse(map['Results']) unless map['Results'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MLModels
      def self.parse(list)
        list.map do |value|
          Parsers::MLModel.parse(value) unless value.nil?
        end
      end
    end

    class MLModel
      def self.parse(map)
        data = Types::MLModel.new
        data.ml_model_id = map['MLModelId']
        data.training_data_source_id = map['TrainingDataSourceId']
        data.created_by_iam_user = map['CreatedByIamUser']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.name = map['Name']
        data.status = map['Status']
        data.size_in_bytes = map['SizeInBytes']
        data.endpoint_info = (Parsers::RealtimeEndpointInfo.parse(map['EndpointInfo']) unless map['EndpointInfo'].nil?)
        data.training_parameters = (Parsers::TrainingParameters.parse(map['TrainingParameters']) unless map['TrainingParameters'].nil?)
        data.input_data_location_s3 = map['InputDataLocationS3']
        data.algorithm = map['Algorithm']
        data.ml_model_type = map['MLModelType']
        data.score_threshold = Hearth::NumberHelper.deserialize(map['ScoreThreshold'])
        data.score_threshold_last_updated_at = Time.at(map['ScoreThresholdLastUpdatedAt'].to_i) if map['ScoreThresholdLastUpdatedAt']
        data.message = map['Message']
        data.compute_time = map['ComputeTime']
        data.finished_at = Time.at(map['FinishedAt'].to_i) if map['FinishedAt']
        data.started_at = Time.at(map['StartedAt'].to_i) if map['StartedAt']
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

    # Operation Parser for DescribeTags
    class DescribeTags
      def self.parse(http_resp)
        data = Types::DescribeTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
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

    # Operation Parser for GetBatchPrediction
    class GetBatchPrediction
      def self.parse(http_resp)
        data = Types::GetBatchPredictionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.batch_prediction_id = map['BatchPredictionId']
        data.ml_model_id = map['MLModelId']
        data.batch_prediction_data_source_id = map['BatchPredictionDataSourceId']
        data.input_data_location_s3 = map['InputDataLocationS3']
        data.created_by_iam_user = map['CreatedByIamUser']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.name = map['Name']
        data.status = map['Status']
        data.output_uri = map['OutputUri']
        data.log_uri = map['LogUri']
        data.message = map['Message']
        data.compute_time = map['ComputeTime']
        data.finished_at = Time.at(map['FinishedAt'].to_i) if map['FinishedAt']
        data.started_at = Time.at(map['StartedAt'].to_i) if map['StartedAt']
        data.total_record_count = map['TotalRecordCount']
        data.invalid_record_count = map['InvalidRecordCount']
        data
      end
    end

    # Operation Parser for GetDataSource
    class GetDataSource
      def self.parse(http_resp)
        data = Types::GetDataSourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.data_source_id = map['DataSourceId']
        data.data_location_s3 = map['DataLocationS3']
        data.data_rearrangement = map['DataRearrangement']
        data.created_by_iam_user = map['CreatedByIamUser']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.data_size_in_bytes = map['DataSizeInBytes']
        data.number_of_files = map['NumberOfFiles']
        data.name = map['Name']
        data.status = map['Status']
        data.log_uri = map['LogUri']
        data.message = map['Message']
        data.redshift_metadata = (Parsers::RedshiftMetadata.parse(map['RedshiftMetadata']) unless map['RedshiftMetadata'].nil?)
        data.rds_metadata = (Parsers::RDSMetadata.parse(map['RDSMetadata']) unless map['RDSMetadata'].nil?)
        data.role_arn = map['RoleARN']
        data.compute_statistics = map['ComputeStatistics']
        data.compute_time = map['ComputeTime']
        data.finished_at = Time.at(map['FinishedAt'].to_i) if map['FinishedAt']
        data.started_at = Time.at(map['StartedAt'].to_i) if map['StartedAt']
        data.data_source_schema = map['DataSourceSchema']
        data
      end
    end

    # Operation Parser for GetEvaluation
    class GetEvaluation
      def self.parse(http_resp)
        data = Types::GetEvaluationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.evaluation_id = map['EvaluationId']
        data.ml_model_id = map['MLModelId']
        data.evaluation_data_source_id = map['EvaluationDataSourceId']
        data.input_data_location_s3 = map['InputDataLocationS3']
        data.created_by_iam_user = map['CreatedByIamUser']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.name = map['Name']
        data.status = map['Status']
        data.performance_metrics = (Parsers::PerformanceMetrics.parse(map['PerformanceMetrics']) unless map['PerformanceMetrics'].nil?)
        data.log_uri = map['LogUri']
        data.message = map['Message']
        data.compute_time = map['ComputeTime']
        data.finished_at = Time.at(map['FinishedAt'].to_i) if map['FinishedAt']
        data.started_at = Time.at(map['StartedAt'].to_i) if map['StartedAt']
        data
      end
    end

    # Operation Parser for GetMLModel
    class GetMLModel
      def self.parse(http_resp)
        data = Types::GetMLModelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ml_model_id = map['MLModelId']
        data.training_data_source_id = map['TrainingDataSourceId']
        data.created_by_iam_user = map['CreatedByIamUser']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.name = map['Name']
        data.status = map['Status']
        data.size_in_bytes = map['SizeInBytes']
        data.endpoint_info = (Parsers::RealtimeEndpointInfo.parse(map['EndpointInfo']) unless map['EndpointInfo'].nil?)
        data.training_parameters = (Parsers::TrainingParameters.parse(map['TrainingParameters']) unless map['TrainingParameters'].nil?)
        data.input_data_location_s3 = map['InputDataLocationS3']
        data.ml_model_type = map['MLModelType']
        data.score_threshold = Hearth::NumberHelper.deserialize(map['ScoreThreshold'])
        data.score_threshold_last_updated_at = Time.at(map['ScoreThresholdLastUpdatedAt'].to_i) if map['ScoreThresholdLastUpdatedAt']
        data.log_uri = map['LogUri']
        data.message = map['Message']
        data.compute_time = map['ComputeTime']
        data.finished_at = Time.at(map['FinishedAt'].to_i) if map['FinishedAt']
        data.started_at = Time.at(map['StartedAt'].to_i) if map['StartedAt']
        data.recipe = map['Recipe']
        data.schema = map['Schema']
        data
      end
    end

    # Operation Parser for Predict
    class Predict
      def self.parse(http_resp)
        data = Types::PredictOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.prediction = (Parsers::Prediction.parse(map['Prediction']) unless map['Prediction'].nil?)
        data
      end
    end

    class Prediction
      def self.parse(map)
        data = Types::Prediction.new
        data.predicted_label = map['predictedLabel']
        data.predicted_value = Hearth::NumberHelper.deserialize(map['predictedValue'])
        data.predicted_scores = (Parsers::ScoreValuePerLabelMap.parse(map['predictedScores']) unless map['predictedScores'].nil?)
        data.details = (Parsers::DetailsMap.parse(map['details']) unless map['details'].nil?)
        return data
      end
    end

    class DetailsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ScoreValuePerLabelMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Hearth::NumberHelper.deserialize(value) unless value.nil?
        end
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
        data.message = map['message']
        data.code = map['code']
        data
      end
    end

    # Error Parser for PredictorNotMountedException
    class PredictorNotMountedException
      def self.parse(http_resp)
        data = Types::PredictorNotMountedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UpdateBatchPrediction
    class UpdateBatchPrediction
      def self.parse(http_resp)
        data = Types::UpdateBatchPredictionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.batch_prediction_id = map['BatchPredictionId']
        data
      end
    end

    # Operation Parser for UpdateDataSource
    class UpdateDataSource
      def self.parse(http_resp)
        data = Types::UpdateDataSourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.data_source_id = map['DataSourceId']
        data
      end
    end

    # Operation Parser for UpdateEvaluation
    class UpdateEvaluation
      def self.parse(http_resp)
        data = Types::UpdateEvaluationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.evaluation_id = map['EvaluationId']
        data
      end
    end

    # Operation Parser for UpdateMLModel
    class UpdateMLModel
      def self.parse(http_resp)
        data = Types::UpdateMLModelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ml_model_id = map['MLModelId']
        data
      end
    end
  end
end
