# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MachineLearning
  module Builders

    # Operation Builder for AddTags
    class AddTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.AddTags'
        data = {}
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
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

    # Operation Builder for CreateBatchPrediction
    class CreateBatchPrediction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.CreateBatchPrediction'
        data = {}
        data['BatchPredictionId'] = input[:batch_prediction_id] unless input[:batch_prediction_id].nil?
        data['BatchPredictionName'] = input[:batch_prediction_name] unless input[:batch_prediction_name].nil?
        data['MLModelId'] = input[:ml_model_id] unless input[:ml_model_id].nil?
        data['BatchPredictionDataSourceId'] = input[:batch_prediction_data_source_id] unless input[:batch_prediction_data_source_id].nil?
        data['OutputUri'] = input[:output_uri] unless input[:output_uri].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDataSourceFromRDS
    class CreateDataSourceFromRDS
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.CreateDataSourceFromRDS'
        data = {}
        data['DataSourceId'] = input[:data_source_id] unless input[:data_source_id].nil?
        data['DataSourceName'] = input[:data_source_name] unless input[:data_source_name].nil?
        data['RDSData'] = Builders::RDSDataSpec.build(input[:rds_data]) unless input[:rds_data].nil?
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['ComputeStatistics'] = input[:compute_statistics] unless input[:compute_statistics].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RDSDataSpec
    class RDSDataSpec
      def self.build(input)
        data = {}
        data['DatabaseInformation'] = Builders::RDSDatabase.build(input[:database_information]) unless input[:database_information].nil?
        data['SelectSqlQuery'] = input[:select_sql_query] unless input[:select_sql_query].nil?
        data['DatabaseCredentials'] = Builders::RDSDatabaseCredentials.build(input[:database_credentials]) unless input[:database_credentials].nil?
        data['S3StagingLocation'] = input[:s3_staging_location] unless input[:s3_staging_location].nil?
        data['DataRearrangement'] = input[:data_rearrangement] unless input[:data_rearrangement].nil?
        data['DataSchema'] = input[:data_schema] unless input[:data_schema].nil?
        data['DataSchemaUri'] = input[:data_schema_uri] unless input[:data_schema_uri].nil?
        data['ResourceRole'] = input[:resource_role] unless input[:resource_role].nil?
        data['ServiceRole'] = input[:service_role] unless input[:service_role].nil?
        data['SubnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data['SecurityGroupIds'] = Builders::EDPSecurityGroupIds.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data
      end
    end

    # List Builder for EDPSecurityGroupIds
    class EDPSecurityGroupIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RDSDatabaseCredentials
    class RDSDatabaseCredentials
      def self.build(input)
        data = {}
        data['Username'] = input[:username] unless input[:username].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data
      end
    end

    # Structure Builder for RDSDatabase
    class RDSDatabase
      def self.build(input)
        data = {}
        data['InstanceIdentifier'] = input[:instance_identifier] unless input[:instance_identifier].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data
      end
    end

    # Operation Builder for CreateDataSourceFromRedshift
    class CreateDataSourceFromRedshift
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.CreateDataSourceFromRedshift'
        data = {}
        data['DataSourceId'] = input[:data_source_id] unless input[:data_source_id].nil?
        data['DataSourceName'] = input[:data_source_name] unless input[:data_source_name].nil?
        data['DataSpec'] = Builders::RedshiftDataSpec.build(input[:data_spec]) unless input[:data_spec].nil?
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['ComputeStatistics'] = input[:compute_statistics] unless input[:compute_statistics].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RedshiftDataSpec
    class RedshiftDataSpec
      def self.build(input)
        data = {}
        data['DatabaseInformation'] = Builders::RedshiftDatabase.build(input[:database_information]) unless input[:database_information].nil?
        data['SelectSqlQuery'] = input[:select_sql_query] unless input[:select_sql_query].nil?
        data['DatabaseCredentials'] = Builders::RedshiftDatabaseCredentials.build(input[:database_credentials]) unless input[:database_credentials].nil?
        data['S3StagingLocation'] = input[:s3_staging_location] unless input[:s3_staging_location].nil?
        data['DataRearrangement'] = input[:data_rearrangement] unless input[:data_rearrangement].nil?
        data['DataSchema'] = input[:data_schema] unless input[:data_schema].nil?
        data['DataSchemaUri'] = input[:data_schema_uri] unless input[:data_schema_uri].nil?
        data
      end
    end

    # Structure Builder for RedshiftDatabaseCredentials
    class RedshiftDatabaseCredentials
      def self.build(input)
        data = {}
        data['Username'] = input[:username] unless input[:username].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data
      end
    end

    # Structure Builder for RedshiftDatabase
    class RedshiftDatabase
      def self.build(input)
        data = {}
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['ClusterIdentifier'] = input[:cluster_identifier] unless input[:cluster_identifier].nil?
        data
      end
    end

    # Operation Builder for CreateDataSourceFromS3
    class CreateDataSourceFromS3
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.CreateDataSourceFromS3'
        data = {}
        data['DataSourceId'] = input[:data_source_id] unless input[:data_source_id].nil?
        data['DataSourceName'] = input[:data_source_name] unless input[:data_source_name].nil?
        data['DataSpec'] = Builders::S3DataSpec.build(input[:data_spec]) unless input[:data_spec].nil?
        data['ComputeStatistics'] = input[:compute_statistics] unless input[:compute_statistics].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for S3DataSpec
    class S3DataSpec
      def self.build(input)
        data = {}
        data['DataLocationS3'] = input[:data_location_s3] unless input[:data_location_s3].nil?
        data['DataRearrangement'] = input[:data_rearrangement] unless input[:data_rearrangement].nil?
        data['DataSchema'] = input[:data_schema] unless input[:data_schema].nil?
        data['DataSchemaLocationS3'] = input[:data_schema_location_s3] unless input[:data_schema_location_s3].nil?
        data
      end
    end

    # Operation Builder for CreateEvaluation
    class CreateEvaluation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.CreateEvaluation'
        data = {}
        data['EvaluationId'] = input[:evaluation_id] unless input[:evaluation_id].nil?
        data['EvaluationName'] = input[:evaluation_name] unless input[:evaluation_name].nil?
        data['MLModelId'] = input[:ml_model_id] unless input[:ml_model_id].nil?
        data['EvaluationDataSourceId'] = input[:evaluation_data_source_id] unless input[:evaluation_data_source_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateMLModel
    class CreateMLModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.CreateMLModel'
        data = {}
        data['MLModelId'] = input[:ml_model_id] unless input[:ml_model_id].nil?
        data['MLModelName'] = input[:ml_model_name] unless input[:ml_model_name].nil?
        data['MLModelType'] = input[:ml_model_type] unless input[:ml_model_type].nil?
        data['Parameters'] = Builders::TrainingParameters.build(input[:parameters]) unless input[:parameters].nil?
        data['TrainingDataSourceId'] = input[:training_data_source_id] unless input[:training_data_source_id].nil?
        data['Recipe'] = input[:recipe] unless input[:recipe].nil?
        data['RecipeUri'] = input[:recipe_uri] unless input[:recipe_uri].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for CreateRealtimeEndpoint
    class CreateRealtimeEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.CreateRealtimeEndpoint'
        data = {}
        data['MLModelId'] = input[:ml_model_id] unless input[:ml_model_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteBatchPrediction
    class DeleteBatchPrediction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.DeleteBatchPrediction'
        data = {}
        data['BatchPredictionId'] = input[:batch_prediction_id] unless input[:batch_prediction_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDataSource
    class DeleteDataSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.DeleteDataSource'
        data = {}
        data['DataSourceId'] = input[:data_source_id] unless input[:data_source_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEvaluation
    class DeleteEvaluation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.DeleteEvaluation'
        data = {}
        data['EvaluationId'] = input[:evaluation_id] unless input[:evaluation_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteMLModel
    class DeleteMLModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.DeleteMLModel'
        data = {}
        data['MLModelId'] = input[:ml_model_id] unless input[:ml_model_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRealtimeEndpoint
    class DeleteRealtimeEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.DeleteRealtimeEndpoint'
        data = {}
        data['MLModelId'] = input[:ml_model_id] unless input[:ml_model_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTags
    class DeleteTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.DeleteTags'
        data = {}
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for DescribeBatchPredictions
    class DescribeBatchPredictions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.DescribeBatchPredictions'
        data = {}
        data['FilterVariable'] = input[:filter_variable] unless input[:filter_variable].nil?
        data['EQ'] = input[:eq] unless input[:eq].nil?
        data['GT'] = input[:gt] unless input[:gt].nil?
        data['LT'] = input[:lt] unless input[:lt].nil?
        data['GE'] = input[:ge] unless input[:ge].nil?
        data['LE'] = input[:le] unless input[:le].nil?
        data['NE'] = input[:ne] unless input[:ne].nil?
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDataSources
    class DescribeDataSources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.DescribeDataSources'
        data = {}
        data['FilterVariable'] = input[:filter_variable] unless input[:filter_variable].nil?
        data['EQ'] = input[:eq] unless input[:eq].nil?
        data['GT'] = input[:gt] unless input[:gt].nil?
        data['LT'] = input[:lt] unless input[:lt].nil?
        data['GE'] = input[:ge] unless input[:ge].nil?
        data['LE'] = input[:le] unless input[:le].nil?
        data['NE'] = input[:ne] unless input[:ne].nil?
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEvaluations
    class DescribeEvaluations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.DescribeEvaluations'
        data = {}
        data['FilterVariable'] = input[:filter_variable] unless input[:filter_variable].nil?
        data['EQ'] = input[:eq] unless input[:eq].nil?
        data['GT'] = input[:gt] unless input[:gt].nil?
        data['LT'] = input[:lt] unless input[:lt].nil?
        data['GE'] = input[:ge] unless input[:ge].nil?
        data['LE'] = input[:le] unless input[:le].nil?
        data['NE'] = input[:ne] unless input[:ne].nil?
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeMLModels
    class DescribeMLModels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.DescribeMLModels'
        data = {}
        data['FilterVariable'] = input[:filter_variable] unless input[:filter_variable].nil?
        data['EQ'] = input[:eq] unless input[:eq].nil?
        data['GT'] = input[:gt] unless input[:gt].nil?
        data['LT'] = input[:lt] unless input[:lt].nil?
        data['GE'] = input[:ge] unless input[:ge].nil?
        data['LE'] = input[:le] unless input[:le].nil?
        data['NE'] = input[:ne] unless input[:ne].nil?
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTags
    class DescribeTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.DescribeTags'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetBatchPrediction
    class GetBatchPrediction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.GetBatchPrediction'
        data = {}
        data['BatchPredictionId'] = input[:batch_prediction_id] unless input[:batch_prediction_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDataSource
    class GetDataSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.GetDataSource'
        data = {}
        data['DataSourceId'] = input[:data_source_id] unless input[:data_source_id].nil?
        data['Verbose'] = input[:verbose] unless input[:verbose].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetEvaluation
    class GetEvaluation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.GetEvaluation'
        data = {}
        data['EvaluationId'] = input[:evaluation_id] unless input[:evaluation_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMLModel
    class GetMLModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.GetMLModel'
        data = {}
        data['MLModelId'] = input[:ml_model_id] unless input[:ml_model_id].nil?
        data['Verbose'] = input[:verbose] unless input[:verbose].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for Predict
    class Predict
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.Predict'
        data = {}
        data['MLModelId'] = input[:ml_model_id] unless input[:ml_model_id].nil?
        data['Record'] = Builders::Record.build(input[:record]) unless input[:record].nil?
        data['PredictEndpoint'] = input[:predict_endpoint] unless input[:predict_endpoint].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Record
    class Record
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateBatchPrediction
    class UpdateBatchPrediction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.UpdateBatchPrediction'
        data = {}
        data['BatchPredictionId'] = input[:batch_prediction_id] unless input[:batch_prediction_id].nil?
        data['BatchPredictionName'] = input[:batch_prediction_name] unless input[:batch_prediction_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDataSource
    class UpdateDataSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.UpdateDataSource'
        data = {}
        data['DataSourceId'] = input[:data_source_id] unless input[:data_source_id].nil?
        data['DataSourceName'] = input[:data_source_name] unless input[:data_source_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEvaluation
    class UpdateEvaluation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.UpdateEvaluation'
        data = {}
        data['EvaluationId'] = input[:evaluation_id] unless input[:evaluation_id].nil?
        data['EvaluationName'] = input[:evaluation_name] unless input[:evaluation_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMLModel
    class UpdateMLModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonML_20141212.UpdateMLModel'
        data = {}
        data['MLModelId'] = input[:ml_model_id] unless input[:ml_model_id].nil?
        data['MLModelName'] = input[:ml_model_name] unless input[:ml_model_name].nil?
        data['ScoreThreshold'] = Hearth::NumberHelper.serialize(input[:score_threshold]) unless input[:score_threshold].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
