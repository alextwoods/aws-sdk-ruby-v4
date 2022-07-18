# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MachineLearning
  module Stubs

    # Operation Stubber for AddTags
    class AddTags
      def self.default(visited=[])
        {
          resource_id: 'resource_id',
          resource_type: 'resource_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateBatchPrediction
    class CreateBatchPrediction
      def self.default(visited=[])
        {
          batch_prediction_id: 'batch_prediction_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BatchPredictionId'] = stub[:batch_prediction_id] unless stub[:batch_prediction_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDataSourceFromRDS
    class CreateDataSourceFromRDS
      def self.default(visited=[])
        {
          data_source_id: 'data_source_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DataSourceId'] = stub[:data_source_id] unless stub[:data_source_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDataSourceFromRedshift
    class CreateDataSourceFromRedshift
      def self.default(visited=[])
        {
          data_source_id: 'data_source_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DataSourceId'] = stub[:data_source_id] unless stub[:data_source_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDataSourceFromS3
    class CreateDataSourceFromS3
      def self.default(visited=[])
        {
          data_source_id: 'data_source_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DataSourceId'] = stub[:data_source_id] unless stub[:data_source_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateEvaluation
    class CreateEvaluation
      def self.default(visited=[])
        {
          evaluation_id: 'evaluation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EvaluationId'] = stub[:evaluation_id] unless stub[:evaluation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateMLModel
    class CreateMLModel
      def self.default(visited=[])
        {
          ml_model_id: 'ml_model_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MLModelId'] = stub[:ml_model_id] unless stub[:ml_model_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateRealtimeEndpoint
    class CreateRealtimeEndpoint
      def self.default(visited=[])
        {
          ml_model_id: 'ml_model_id',
          realtime_endpoint_info: RealtimeEndpointInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MLModelId'] = stub[:ml_model_id] unless stub[:ml_model_id].nil?
        data['RealtimeEndpointInfo'] = Stubs::RealtimeEndpointInfo.stub(stub[:realtime_endpoint_info]) unless stub[:realtime_endpoint_info].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RealtimeEndpointInfo
    class RealtimeEndpointInfo
      def self.default(visited=[])
        return nil if visited.include?('RealtimeEndpointInfo')
        visited = visited + ['RealtimeEndpointInfo']
        {
          peak_requests_per_second: 1,
          created_at: Time.now,
          endpoint_url: 'endpoint_url',
          endpoint_status: 'endpoint_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::RealtimeEndpointInfo.new
        data = {}
        data['PeakRequestsPerSecond'] = stub[:peak_requests_per_second] unless stub[:peak_requests_per_second].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['EndpointUrl'] = stub[:endpoint_url] unless stub[:endpoint_url].nil?
        data['EndpointStatus'] = stub[:endpoint_status] unless stub[:endpoint_status].nil?
        data
      end
    end

    # Operation Stubber for DeleteBatchPrediction
    class DeleteBatchPrediction
      def self.default(visited=[])
        {
          batch_prediction_id: 'batch_prediction_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BatchPredictionId'] = stub[:batch_prediction_id] unless stub[:batch_prediction_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDataSource
    class DeleteDataSource
      def self.default(visited=[])
        {
          data_source_id: 'data_source_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DataSourceId'] = stub[:data_source_id] unless stub[:data_source_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEvaluation
    class DeleteEvaluation
      def self.default(visited=[])
        {
          evaluation_id: 'evaluation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EvaluationId'] = stub[:evaluation_id] unless stub[:evaluation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteMLModel
    class DeleteMLModel
      def self.default(visited=[])
        {
          ml_model_id: 'ml_model_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MLModelId'] = stub[:ml_model_id] unless stub[:ml_model_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRealtimeEndpoint
    class DeleteRealtimeEndpoint
      def self.default(visited=[])
        {
          ml_model_id: 'ml_model_id',
          realtime_endpoint_info: RealtimeEndpointInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MLModelId'] = stub[:ml_model_id] unless stub[:ml_model_id].nil?
        data['RealtimeEndpointInfo'] = Stubs::RealtimeEndpointInfo.stub(stub[:realtime_endpoint_info]) unless stub[:realtime_endpoint_info].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTags
    class DeleteTags
      def self.default(visited=[])
        {
          resource_id: 'resource_id',
          resource_type: 'resource_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeBatchPredictions
    class DescribeBatchPredictions
      def self.default(visited=[])
        {
          results: BatchPredictions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Results'] = Stubs::BatchPredictions.stub(stub[:results]) unless stub[:results].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BatchPredictions
    class BatchPredictions
      def self.default(visited=[])
        return nil if visited.include?('BatchPredictions')
        visited = visited + ['BatchPredictions']
        [
          BatchPrediction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchPrediction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchPrediction
    class BatchPrediction
      def self.default(visited=[])
        return nil if visited.include?('BatchPrediction')
        visited = visited + ['BatchPrediction']
        {
          batch_prediction_id: 'batch_prediction_id',
          ml_model_id: 'ml_model_id',
          batch_prediction_data_source_id: 'batch_prediction_data_source_id',
          input_data_location_s3: 'input_data_location_s3',
          created_by_iam_user: 'created_by_iam_user',
          created_at: Time.now,
          last_updated_at: Time.now,
          name: 'name',
          status: 'status',
          output_uri: 'output_uri',
          message: 'message',
          compute_time: 1,
          finished_at: Time.now,
          started_at: Time.now,
          total_record_count: 1,
          invalid_record_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchPrediction.new
        data = {}
        data['BatchPredictionId'] = stub[:batch_prediction_id] unless stub[:batch_prediction_id].nil?
        data['MLModelId'] = stub[:ml_model_id] unless stub[:ml_model_id].nil?
        data['BatchPredictionDataSourceId'] = stub[:batch_prediction_data_source_id] unless stub[:batch_prediction_data_source_id].nil?
        data['InputDataLocationS3'] = stub[:input_data_location_s3] unless stub[:input_data_location_s3].nil?
        data['CreatedByIamUser'] = stub[:created_by_iam_user] unless stub[:created_by_iam_user].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['OutputUri'] = stub[:output_uri] unless stub[:output_uri].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['ComputeTime'] = stub[:compute_time] unless stub[:compute_time].nil?
        data['FinishedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:finished_at]).to_i unless stub[:finished_at].nil?
        data['StartedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_at]).to_i unless stub[:started_at].nil?
        data['TotalRecordCount'] = stub[:total_record_count] unless stub[:total_record_count].nil?
        data['InvalidRecordCount'] = stub[:invalid_record_count] unless stub[:invalid_record_count].nil?
        data
      end
    end

    # Operation Stubber for DescribeDataSources
    class DescribeDataSources
      def self.default(visited=[])
        {
          results: DataSources.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Results'] = Stubs::DataSources.stub(stub[:results]) unless stub[:results].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DataSources
    class DataSources
      def self.default(visited=[])
        return nil if visited.include?('DataSources')
        visited = visited + ['DataSources']
        [
          DataSource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataSource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataSource
    class DataSource
      def self.default(visited=[])
        return nil if visited.include?('DataSource')
        visited = visited + ['DataSource']
        {
          data_source_id: 'data_source_id',
          data_location_s3: 'data_location_s3',
          data_rearrangement: 'data_rearrangement',
          created_by_iam_user: 'created_by_iam_user',
          created_at: Time.now,
          last_updated_at: Time.now,
          data_size_in_bytes: 1,
          number_of_files: 1,
          name: 'name',
          status: 'status',
          message: 'message',
          redshift_metadata: RedshiftMetadata.default(visited),
          rds_metadata: RDSMetadata.default(visited),
          role_arn: 'role_arn',
          compute_statistics: false,
          compute_time: 1,
          finished_at: Time.now,
          started_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSource.new
        data = {}
        data['DataSourceId'] = stub[:data_source_id] unless stub[:data_source_id].nil?
        data['DataLocationS3'] = stub[:data_location_s3] unless stub[:data_location_s3].nil?
        data['DataRearrangement'] = stub[:data_rearrangement] unless stub[:data_rearrangement].nil?
        data['CreatedByIamUser'] = stub[:created_by_iam_user] unless stub[:created_by_iam_user].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['DataSizeInBytes'] = stub[:data_size_in_bytes] unless stub[:data_size_in_bytes].nil?
        data['NumberOfFiles'] = stub[:number_of_files] unless stub[:number_of_files].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['RedshiftMetadata'] = Stubs::RedshiftMetadata.stub(stub[:redshift_metadata]) unless stub[:redshift_metadata].nil?
        data['RDSMetadata'] = Stubs::RDSMetadata.stub(stub[:rds_metadata]) unless stub[:rds_metadata].nil?
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['ComputeStatistics'] = stub[:compute_statistics] unless stub[:compute_statistics].nil?
        data['ComputeTime'] = stub[:compute_time] unless stub[:compute_time].nil?
        data['FinishedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:finished_at]).to_i unless stub[:finished_at].nil?
        data['StartedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_at]).to_i unless stub[:started_at].nil?
        data
      end
    end

    # Structure Stubber for RDSMetadata
    class RDSMetadata
      def self.default(visited=[])
        return nil if visited.include?('RDSMetadata')
        visited = visited + ['RDSMetadata']
        {
          database: RDSDatabase.default(visited),
          database_user_name: 'database_user_name',
          select_sql_query: 'select_sql_query',
          resource_role: 'resource_role',
          service_role: 'service_role',
          data_pipeline_id: 'data_pipeline_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::RDSMetadata.new
        data = {}
        data['Database'] = Stubs::RDSDatabase.stub(stub[:database]) unless stub[:database].nil?
        data['DatabaseUserName'] = stub[:database_user_name] unless stub[:database_user_name].nil?
        data['SelectSqlQuery'] = stub[:select_sql_query] unless stub[:select_sql_query].nil?
        data['ResourceRole'] = stub[:resource_role] unless stub[:resource_role].nil?
        data['ServiceRole'] = stub[:service_role] unless stub[:service_role].nil?
        data['DataPipelineId'] = stub[:data_pipeline_id] unless stub[:data_pipeline_id].nil?
        data
      end
    end

    # Structure Stubber for RDSDatabase
    class RDSDatabase
      def self.default(visited=[])
        return nil if visited.include?('RDSDatabase')
        visited = visited + ['RDSDatabase']
        {
          instance_identifier: 'instance_identifier',
          database_name: 'database_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::RDSDatabase.new
        data = {}
        data['InstanceIdentifier'] = stub[:instance_identifier] unless stub[:instance_identifier].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data
      end
    end

    # Structure Stubber for RedshiftMetadata
    class RedshiftMetadata
      def self.default(visited=[])
        return nil if visited.include?('RedshiftMetadata')
        visited = visited + ['RedshiftMetadata']
        {
          redshift_database: RedshiftDatabase.default(visited),
          database_user_name: 'database_user_name',
          select_sql_query: 'select_sql_query',
        }
      end

      def self.stub(stub)
        stub ||= Types::RedshiftMetadata.new
        data = {}
        data['RedshiftDatabase'] = Stubs::RedshiftDatabase.stub(stub[:redshift_database]) unless stub[:redshift_database].nil?
        data['DatabaseUserName'] = stub[:database_user_name] unless stub[:database_user_name].nil?
        data['SelectSqlQuery'] = stub[:select_sql_query] unless stub[:select_sql_query].nil?
        data
      end
    end

    # Structure Stubber for RedshiftDatabase
    class RedshiftDatabase
      def self.default(visited=[])
        return nil if visited.include?('RedshiftDatabase')
        visited = visited + ['RedshiftDatabase']
        {
          database_name: 'database_name',
          cluster_identifier: 'cluster_identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::RedshiftDatabase.new
        data = {}
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['ClusterIdentifier'] = stub[:cluster_identifier] unless stub[:cluster_identifier].nil?
        data
      end
    end

    # Operation Stubber for DescribeEvaluations
    class DescribeEvaluations
      def self.default(visited=[])
        {
          results: Evaluations.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Results'] = Stubs::Evaluations.stub(stub[:results]) unless stub[:results].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Evaluations
    class Evaluations
      def self.default(visited=[])
        return nil if visited.include?('Evaluations')
        visited = visited + ['Evaluations']
        [
          Evaluation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Evaluation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Evaluation
    class Evaluation
      def self.default(visited=[])
        return nil if visited.include?('Evaluation')
        visited = visited + ['Evaluation']
        {
          evaluation_id: 'evaluation_id',
          ml_model_id: 'ml_model_id',
          evaluation_data_source_id: 'evaluation_data_source_id',
          input_data_location_s3: 'input_data_location_s3',
          created_by_iam_user: 'created_by_iam_user',
          created_at: Time.now,
          last_updated_at: Time.now,
          name: 'name',
          status: 'status',
          performance_metrics: PerformanceMetrics.default(visited),
          message: 'message',
          compute_time: 1,
          finished_at: Time.now,
          started_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Evaluation.new
        data = {}
        data['EvaluationId'] = stub[:evaluation_id] unless stub[:evaluation_id].nil?
        data['MLModelId'] = stub[:ml_model_id] unless stub[:ml_model_id].nil?
        data['EvaluationDataSourceId'] = stub[:evaluation_data_source_id] unless stub[:evaluation_data_source_id].nil?
        data['InputDataLocationS3'] = stub[:input_data_location_s3] unless stub[:input_data_location_s3].nil?
        data['CreatedByIamUser'] = stub[:created_by_iam_user] unless stub[:created_by_iam_user].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['PerformanceMetrics'] = Stubs::PerformanceMetrics.stub(stub[:performance_metrics]) unless stub[:performance_metrics].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['ComputeTime'] = stub[:compute_time] unless stub[:compute_time].nil?
        data['FinishedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:finished_at]).to_i unless stub[:finished_at].nil?
        data['StartedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_at]).to_i unless stub[:started_at].nil?
        data
      end
    end

    # Structure Stubber for PerformanceMetrics
    class PerformanceMetrics
      def self.default(visited=[])
        return nil if visited.include?('PerformanceMetrics')
        visited = visited + ['PerformanceMetrics']
        {
          properties: PerformanceMetricsProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PerformanceMetrics.new
        data = {}
        data['Properties'] = Stubs::PerformanceMetricsProperties.stub(stub[:properties]) unless stub[:properties].nil?
        data
      end
    end

    # Map Stubber for PerformanceMetricsProperties
    class PerformanceMetricsProperties
      def self.default(visited=[])
        return nil if visited.include?('PerformanceMetricsProperties')
        visited = visited + ['PerformanceMetricsProperties']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeMLModels
    class DescribeMLModels
      def self.default(visited=[])
        {
          results: MLModels.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Results'] = Stubs::MLModels.stub(stub[:results]) unless stub[:results].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MLModels
    class MLModels
      def self.default(visited=[])
        return nil if visited.include?('MLModels')
        visited = visited + ['MLModels']
        [
          MLModel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MLModel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MLModel
    class MLModel
      def self.default(visited=[])
        return nil if visited.include?('MLModel')
        visited = visited + ['MLModel']
        {
          ml_model_id: 'ml_model_id',
          training_data_source_id: 'training_data_source_id',
          created_by_iam_user: 'created_by_iam_user',
          created_at: Time.now,
          last_updated_at: Time.now,
          name: 'name',
          status: 'status',
          size_in_bytes: 1,
          endpoint_info: RealtimeEndpointInfo.default(visited),
          training_parameters: TrainingParameters.default(visited),
          input_data_location_s3: 'input_data_location_s3',
          algorithm: 'algorithm',
          ml_model_type: 'ml_model_type',
          score_threshold: 1.0,
          score_threshold_last_updated_at: Time.now,
          message: 'message',
          compute_time: 1,
          finished_at: Time.now,
          started_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::MLModel.new
        data = {}
        data['MLModelId'] = stub[:ml_model_id] unless stub[:ml_model_id].nil?
        data['TrainingDataSourceId'] = stub[:training_data_source_id] unless stub[:training_data_source_id].nil?
        data['CreatedByIamUser'] = stub[:created_by_iam_user] unless stub[:created_by_iam_user].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['SizeInBytes'] = stub[:size_in_bytes] unless stub[:size_in_bytes].nil?
        data['EndpointInfo'] = Stubs::RealtimeEndpointInfo.stub(stub[:endpoint_info]) unless stub[:endpoint_info].nil?
        data['TrainingParameters'] = Stubs::TrainingParameters.stub(stub[:training_parameters]) unless stub[:training_parameters].nil?
        data['InputDataLocationS3'] = stub[:input_data_location_s3] unless stub[:input_data_location_s3].nil?
        data['Algorithm'] = stub[:algorithm] unless stub[:algorithm].nil?
        data['MLModelType'] = stub[:ml_model_type] unless stub[:ml_model_type].nil?
        data['ScoreThreshold'] = Hearth::NumberHelper.serialize(stub[:score_threshold])
        data['ScoreThresholdLastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:score_threshold_last_updated_at]).to_i unless stub[:score_threshold_last_updated_at].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['ComputeTime'] = stub[:compute_time] unless stub[:compute_time].nil?
        data['FinishedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:finished_at]).to_i unless stub[:finished_at].nil?
        data['StartedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_at]).to_i unless stub[:started_at].nil?
        data
      end
    end

    # Map Stubber for TrainingParameters
    class TrainingParameters
      def self.default(visited=[])
        return nil if visited.include?('TrainingParameters')
        visited = visited + ['TrainingParameters']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeTags
    class DescribeTags
      def self.default(visited=[])
        {
          resource_id: 'resource_id',
          resource_type: 'resource_type',
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for GetBatchPrediction
    class GetBatchPrediction
      def self.default(visited=[])
        {
          batch_prediction_id: 'batch_prediction_id',
          ml_model_id: 'ml_model_id',
          batch_prediction_data_source_id: 'batch_prediction_data_source_id',
          input_data_location_s3: 'input_data_location_s3',
          created_by_iam_user: 'created_by_iam_user',
          created_at: Time.now,
          last_updated_at: Time.now,
          name: 'name',
          status: 'status',
          output_uri: 'output_uri',
          log_uri: 'log_uri',
          message: 'message',
          compute_time: 1,
          finished_at: Time.now,
          started_at: Time.now,
          total_record_count: 1,
          invalid_record_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BatchPredictionId'] = stub[:batch_prediction_id] unless stub[:batch_prediction_id].nil?
        data['MLModelId'] = stub[:ml_model_id] unless stub[:ml_model_id].nil?
        data['BatchPredictionDataSourceId'] = stub[:batch_prediction_data_source_id] unless stub[:batch_prediction_data_source_id].nil?
        data['InputDataLocationS3'] = stub[:input_data_location_s3] unless stub[:input_data_location_s3].nil?
        data['CreatedByIamUser'] = stub[:created_by_iam_user] unless stub[:created_by_iam_user].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['OutputUri'] = stub[:output_uri] unless stub[:output_uri].nil?
        data['LogUri'] = stub[:log_uri] unless stub[:log_uri].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['ComputeTime'] = stub[:compute_time] unless stub[:compute_time].nil?
        data['FinishedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:finished_at]).to_i unless stub[:finished_at].nil?
        data['StartedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_at]).to_i unless stub[:started_at].nil?
        data['TotalRecordCount'] = stub[:total_record_count] unless stub[:total_record_count].nil?
        data['InvalidRecordCount'] = stub[:invalid_record_count] unless stub[:invalid_record_count].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDataSource
    class GetDataSource
      def self.default(visited=[])
        {
          data_source_id: 'data_source_id',
          data_location_s3: 'data_location_s3',
          data_rearrangement: 'data_rearrangement',
          created_by_iam_user: 'created_by_iam_user',
          created_at: Time.now,
          last_updated_at: Time.now,
          data_size_in_bytes: 1,
          number_of_files: 1,
          name: 'name',
          status: 'status',
          log_uri: 'log_uri',
          message: 'message',
          redshift_metadata: RedshiftMetadata.default(visited),
          rds_metadata: RDSMetadata.default(visited),
          role_arn: 'role_arn',
          compute_statistics: false,
          compute_time: 1,
          finished_at: Time.now,
          started_at: Time.now,
          data_source_schema: 'data_source_schema',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DataSourceId'] = stub[:data_source_id] unless stub[:data_source_id].nil?
        data['DataLocationS3'] = stub[:data_location_s3] unless stub[:data_location_s3].nil?
        data['DataRearrangement'] = stub[:data_rearrangement] unless stub[:data_rearrangement].nil?
        data['CreatedByIamUser'] = stub[:created_by_iam_user] unless stub[:created_by_iam_user].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['DataSizeInBytes'] = stub[:data_size_in_bytes] unless stub[:data_size_in_bytes].nil?
        data['NumberOfFiles'] = stub[:number_of_files] unless stub[:number_of_files].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LogUri'] = stub[:log_uri] unless stub[:log_uri].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['RedshiftMetadata'] = Stubs::RedshiftMetadata.stub(stub[:redshift_metadata]) unless stub[:redshift_metadata].nil?
        data['RDSMetadata'] = Stubs::RDSMetadata.stub(stub[:rds_metadata]) unless stub[:rds_metadata].nil?
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['ComputeStatistics'] = stub[:compute_statistics] unless stub[:compute_statistics].nil?
        data['ComputeTime'] = stub[:compute_time] unless stub[:compute_time].nil?
        data['FinishedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:finished_at]).to_i unless stub[:finished_at].nil?
        data['StartedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_at]).to_i unless stub[:started_at].nil?
        data['DataSourceSchema'] = stub[:data_source_schema] unless stub[:data_source_schema].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetEvaluation
    class GetEvaluation
      def self.default(visited=[])
        {
          evaluation_id: 'evaluation_id',
          ml_model_id: 'ml_model_id',
          evaluation_data_source_id: 'evaluation_data_source_id',
          input_data_location_s3: 'input_data_location_s3',
          created_by_iam_user: 'created_by_iam_user',
          created_at: Time.now,
          last_updated_at: Time.now,
          name: 'name',
          status: 'status',
          performance_metrics: PerformanceMetrics.default(visited),
          log_uri: 'log_uri',
          message: 'message',
          compute_time: 1,
          finished_at: Time.now,
          started_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EvaluationId'] = stub[:evaluation_id] unless stub[:evaluation_id].nil?
        data['MLModelId'] = stub[:ml_model_id] unless stub[:ml_model_id].nil?
        data['EvaluationDataSourceId'] = stub[:evaluation_data_source_id] unless stub[:evaluation_data_source_id].nil?
        data['InputDataLocationS3'] = stub[:input_data_location_s3] unless stub[:input_data_location_s3].nil?
        data['CreatedByIamUser'] = stub[:created_by_iam_user] unless stub[:created_by_iam_user].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['PerformanceMetrics'] = Stubs::PerformanceMetrics.stub(stub[:performance_metrics]) unless stub[:performance_metrics].nil?
        data['LogUri'] = stub[:log_uri] unless stub[:log_uri].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['ComputeTime'] = stub[:compute_time] unless stub[:compute_time].nil?
        data['FinishedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:finished_at]).to_i unless stub[:finished_at].nil?
        data['StartedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_at]).to_i unless stub[:started_at].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetMLModel
    class GetMLModel
      def self.default(visited=[])
        {
          ml_model_id: 'ml_model_id',
          training_data_source_id: 'training_data_source_id',
          created_by_iam_user: 'created_by_iam_user',
          created_at: Time.now,
          last_updated_at: Time.now,
          name: 'name',
          status: 'status',
          size_in_bytes: 1,
          endpoint_info: RealtimeEndpointInfo.default(visited),
          training_parameters: TrainingParameters.default(visited),
          input_data_location_s3: 'input_data_location_s3',
          ml_model_type: 'ml_model_type',
          score_threshold: 1.0,
          score_threshold_last_updated_at: Time.now,
          log_uri: 'log_uri',
          message: 'message',
          compute_time: 1,
          finished_at: Time.now,
          started_at: Time.now,
          recipe: 'recipe',
          schema: 'schema',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MLModelId'] = stub[:ml_model_id] unless stub[:ml_model_id].nil?
        data['TrainingDataSourceId'] = stub[:training_data_source_id] unless stub[:training_data_source_id].nil?
        data['CreatedByIamUser'] = stub[:created_by_iam_user] unless stub[:created_by_iam_user].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['SizeInBytes'] = stub[:size_in_bytes] unless stub[:size_in_bytes].nil?
        data['EndpointInfo'] = Stubs::RealtimeEndpointInfo.stub(stub[:endpoint_info]) unless stub[:endpoint_info].nil?
        data['TrainingParameters'] = Stubs::TrainingParameters.stub(stub[:training_parameters]) unless stub[:training_parameters].nil?
        data['InputDataLocationS3'] = stub[:input_data_location_s3] unless stub[:input_data_location_s3].nil?
        data['MLModelType'] = stub[:ml_model_type] unless stub[:ml_model_type].nil?
        data['ScoreThreshold'] = Hearth::NumberHelper.serialize(stub[:score_threshold])
        data['ScoreThresholdLastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:score_threshold_last_updated_at]).to_i unless stub[:score_threshold_last_updated_at].nil?
        data['LogUri'] = stub[:log_uri] unless stub[:log_uri].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['ComputeTime'] = stub[:compute_time] unless stub[:compute_time].nil?
        data['FinishedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:finished_at]).to_i unless stub[:finished_at].nil?
        data['StartedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_at]).to_i unless stub[:started_at].nil?
        data['Recipe'] = stub[:recipe] unless stub[:recipe].nil?
        data['Schema'] = stub[:schema] unless stub[:schema].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for Predict
    class Predict
      def self.default(visited=[])
        {
          prediction: Prediction.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Prediction'] = Stubs::Prediction.stub(stub[:prediction]) unless stub[:prediction].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Prediction
    class Prediction
      def self.default(visited=[])
        return nil if visited.include?('Prediction')
        visited = visited + ['Prediction']
        {
          predicted_label: 'predicted_label',
          predicted_value: 1.0,
          predicted_scores: ScoreValuePerLabelMap.default(visited),
          details: DetailsMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Prediction.new
        data = {}
        data['predictedLabel'] = stub[:predicted_label] unless stub[:predicted_label].nil?
        data['predictedValue'] = Hearth::NumberHelper.serialize(stub[:predicted_value])
        data['predictedScores'] = Stubs::ScoreValuePerLabelMap.stub(stub[:predicted_scores]) unless stub[:predicted_scores].nil?
        data['details'] = Stubs::DetailsMap.stub(stub[:details]) unless stub[:details].nil?
        data
      end
    end

    # Map Stubber for DetailsMap
    class DetailsMap
      def self.default(visited=[])
        return nil if visited.include?('DetailsMap')
        visited = visited + ['DetailsMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Stubber for ScoreValuePerLabelMap
    class ScoreValuePerLabelMap
      def self.default(visited=[])
        return nil if visited.include?('ScoreValuePerLabelMap')
        visited = visited + ['ScoreValuePerLabelMap']
        {
          test_key: 1.0
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Hearth::NumberHelper.serialize(value)
        end
        data
      end
    end

    # Operation Stubber for UpdateBatchPrediction
    class UpdateBatchPrediction
      def self.default(visited=[])
        {
          batch_prediction_id: 'batch_prediction_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BatchPredictionId'] = stub[:batch_prediction_id] unless stub[:batch_prediction_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDataSource
    class UpdateDataSource
      def self.default(visited=[])
        {
          data_source_id: 'data_source_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DataSourceId'] = stub[:data_source_id] unless stub[:data_source_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEvaluation
    class UpdateEvaluation
      def self.default(visited=[])
        {
          evaluation_id: 'evaluation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EvaluationId'] = stub[:evaluation_id] unless stub[:evaluation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateMLModel
    class UpdateMLModel
      def self.default(visited=[])
        {
          ml_model_id: 'ml_model_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MLModelId'] = stub[:ml_model_id] unless stub[:ml_model_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
