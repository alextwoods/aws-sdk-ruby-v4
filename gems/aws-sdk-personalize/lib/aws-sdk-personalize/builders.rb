# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Personalize
  module Builders

    # Operation Builder for CreateBatchInferenceJob
    class CreateBatchInferenceJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.CreateBatchInferenceJob'
        data = {}
        data['jobName'] = input[:job_name] unless input[:job_name].nil?
        data['solutionVersionArn'] = input[:solution_version_arn] unless input[:solution_version_arn].nil?
        data['filterArn'] = input[:filter_arn] unless input[:filter_arn].nil?
        data['numResults'] = input[:num_results] unless input[:num_results].nil?
        data['jobInput'] = BatchInferenceJobInput.build(input[:job_input]) unless input[:job_input].nil?
        data['jobOutput'] = BatchInferenceJobOutput.build(input[:job_output]) unless input[:job_output].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['batchInferenceJobConfig'] = BatchInferenceJobConfig.build(input[:batch_inference_job_config]) unless input[:batch_inference_job_config].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Tags
    class Tags
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['tagKey'] = input[:tag_key] unless input[:tag_key].nil?
        data['tagValue'] = input[:tag_value] unless input[:tag_value].nil?
        data
      end
    end

    # Structure Builder for BatchInferenceJobConfig
    class BatchInferenceJobConfig
      def self.build(input)
        data = {}
        data['itemExplorationConfig'] = HyperParameters.build(input[:item_exploration_config]) unless input[:item_exploration_config].nil?
        data
      end
    end

    # Map Builder for HyperParameters
    class HyperParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for BatchInferenceJobOutput
    class BatchInferenceJobOutput
      def self.build(input)
        data = {}
        data['s3DataDestination'] = S3DataConfig.build(input[:s3_data_destination]) unless input[:s3_data_destination].nil?
        data
      end
    end

    # Structure Builder for S3DataConfig
    class S3DataConfig
      def self.build(input)
        data = {}
        data['path'] = input[:path] unless input[:path].nil?
        data['kmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data
      end
    end

    # Structure Builder for BatchInferenceJobInput
    class BatchInferenceJobInput
      def self.build(input)
        data = {}
        data['s3DataSource'] = S3DataConfig.build(input[:s3_data_source]) unless input[:s3_data_source].nil?
        data
      end
    end

    # Operation Builder for CreateBatchSegmentJob
    class CreateBatchSegmentJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.CreateBatchSegmentJob'
        data = {}
        data['jobName'] = input[:job_name] unless input[:job_name].nil?
        data['solutionVersionArn'] = input[:solution_version_arn] unless input[:solution_version_arn].nil?
        data['filterArn'] = input[:filter_arn] unless input[:filter_arn].nil?
        data['numResults'] = input[:num_results] unless input[:num_results].nil?
        data['jobInput'] = BatchSegmentJobInput.build(input[:job_input]) unless input[:job_input].nil?
        data['jobOutput'] = BatchSegmentJobOutput.build(input[:job_output]) unless input[:job_output].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for BatchSegmentJobOutput
    class BatchSegmentJobOutput
      def self.build(input)
        data = {}
        data['s3DataDestination'] = S3DataConfig.build(input[:s3_data_destination]) unless input[:s3_data_destination].nil?
        data
      end
    end

    # Structure Builder for BatchSegmentJobInput
    class BatchSegmentJobInput
      def self.build(input)
        data = {}
        data['s3DataSource'] = S3DataConfig.build(input[:s3_data_source]) unless input[:s3_data_source].nil?
        data
      end
    end

    # Operation Builder for CreateCampaign
    class CreateCampaign
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.CreateCampaign'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['solutionVersionArn'] = input[:solution_version_arn] unless input[:solution_version_arn].nil?
        data['minProvisionedTPS'] = input[:min_provisioned_tps] unless input[:min_provisioned_tps].nil?
        data['campaignConfig'] = CampaignConfig.build(input[:campaign_config]) unless input[:campaign_config].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CampaignConfig
    class CampaignConfig
      def self.build(input)
        data = {}
        data['itemExplorationConfig'] = HyperParameters.build(input[:item_exploration_config]) unless input[:item_exploration_config].nil?
        data
      end
    end

    # Operation Builder for CreateDataset
    class CreateDataset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.CreateDataset'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['schemaArn'] = input[:schema_arn] unless input[:schema_arn].nil?
        data['datasetGroupArn'] = input[:dataset_group_arn] unless input[:dataset_group_arn].nil?
        data['datasetType'] = input[:dataset_type] unless input[:dataset_type].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDatasetExportJob
    class CreateDatasetExportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.CreateDatasetExportJob'
        data = {}
        data['jobName'] = input[:job_name] unless input[:job_name].nil?
        data['datasetArn'] = input[:dataset_arn] unless input[:dataset_arn].nil?
        data['ingestionMode'] = input[:ingestion_mode] unless input[:ingestion_mode].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['jobOutput'] = DatasetExportJobOutput.build(input[:job_output]) unless input[:job_output].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DatasetExportJobOutput
    class DatasetExportJobOutput
      def self.build(input)
        data = {}
        data['s3DataDestination'] = S3DataConfig.build(input[:s3_data_destination]) unless input[:s3_data_destination].nil?
        data
      end
    end

    # Operation Builder for CreateDatasetGroup
    class CreateDatasetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.CreateDatasetGroup'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['kmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data['domain'] = input[:domain] unless input[:domain].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDatasetImportJob
    class CreateDatasetImportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.CreateDatasetImportJob'
        data = {}
        data['jobName'] = input[:job_name] unless input[:job_name].nil?
        data['datasetArn'] = input[:dataset_arn] unless input[:dataset_arn].nil?
        data['dataSource'] = DataSource.build(input[:data_source]) unless input[:data_source].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DataSource
    class DataSource
      def self.build(input)
        data = {}
        data['dataLocation'] = input[:data_location] unless input[:data_location].nil?
        data
      end
    end

    # Operation Builder for CreateEventTracker
    class CreateEventTracker
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.CreateEventTracker'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['datasetGroupArn'] = input[:dataset_group_arn] unless input[:dataset_group_arn].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateFilter
    class CreateFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.CreateFilter'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['datasetGroupArn'] = input[:dataset_group_arn] unless input[:dataset_group_arn].nil?
        data['filterExpression'] = input[:filter_expression] unless input[:filter_expression].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRecommender
    class CreateRecommender
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.CreateRecommender'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['datasetGroupArn'] = input[:dataset_group_arn] unless input[:dataset_group_arn].nil?
        data['recipeArn'] = input[:recipe_arn] unless input[:recipe_arn].nil?
        data['recommenderConfig'] = RecommenderConfig.build(input[:recommender_config]) unless input[:recommender_config].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RecommenderConfig
    class RecommenderConfig
      def self.build(input)
        data = {}
        data['itemExplorationConfig'] = HyperParameters.build(input[:item_exploration_config]) unless input[:item_exploration_config].nil?
        data['minRecommendationRequestsPerSecond'] = input[:min_recommendation_requests_per_second] unless input[:min_recommendation_requests_per_second].nil?
        data
      end
    end

    # Operation Builder for CreateSchema
    class CreateSchema
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.CreateSchema'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['schema'] = input[:schema] unless input[:schema].nil?
        data['domain'] = input[:domain] unless input[:domain].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateSolution
    class CreateSolution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.CreateSolution'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['performHPO'] = input[:perform_hpo] unless input[:perform_hpo].nil?
        data['performAutoML'] = input[:perform_auto_ml] unless input[:perform_auto_ml].nil?
        data['recipeArn'] = input[:recipe_arn] unless input[:recipe_arn].nil?
        data['datasetGroupArn'] = input[:dataset_group_arn] unless input[:dataset_group_arn].nil?
        data['eventType'] = input[:event_type] unless input[:event_type].nil?
        data['solutionConfig'] = SolutionConfig.build(input[:solution_config]) unless input[:solution_config].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SolutionConfig
    class SolutionConfig
      def self.build(input)
        data = {}
        data['eventValueThreshold'] = input[:event_value_threshold] unless input[:event_value_threshold].nil?
        data['hpoConfig'] = HPOConfig.build(input[:hpo_config]) unless input[:hpo_config].nil?
        data['algorithmHyperParameters'] = HyperParameters.build(input[:algorithm_hyper_parameters]) unless input[:algorithm_hyper_parameters].nil?
        data['featureTransformationParameters'] = FeatureTransformationParameters.build(input[:feature_transformation_parameters]) unless input[:feature_transformation_parameters].nil?
        data['autoMLConfig'] = AutoMLConfig.build(input[:auto_ml_config]) unless input[:auto_ml_config].nil?
        data['optimizationObjective'] = OptimizationObjective.build(input[:optimization_objective]) unless input[:optimization_objective].nil?
        data
      end
    end

    # Structure Builder for OptimizationObjective
    class OptimizationObjective
      def self.build(input)
        data = {}
        data['itemAttribute'] = input[:item_attribute] unless input[:item_attribute].nil?
        data['objectiveSensitivity'] = input[:objective_sensitivity] unless input[:objective_sensitivity].nil?
        data
      end
    end

    # Structure Builder for AutoMLConfig
    class AutoMLConfig
      def self.build(input)
        data = {}
        data['metricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['recipeList'] = ArnList.build(input[:recipe_list]) unless input[:recipe_list].nil?
        data
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

    # Map Builder for FeatureTransformationParameters
    class FeatureTransformationParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for HPOConfig
    class HPOConfig
      def self.build(input)
        data = {}
        data['hpoObjective'] = HPOObjective.build(input[:hpo_objective]) unless input[:hpo_objective].nil?
        data['hpoResourceConfig'] = HPOResourceConfig.build(input[:hpo_resource_config]) unless input[:hpo_resource_config].nil?
        data['algorithmHyperParameterRanges'] = HyperParameterRanges.build(input[:algorithm_hyper_parameter_ranges]) unless input[:algorithm_hyper_parameter_ranges].nil?
        data
      end
    end

    # Structure Builder for HyperParameterRanges
    class HyperParameterRanges
      def self.build(input)
        data = {}
        data['integerHyperParameterRanges'] = IntegerHyperParameterRanges.build(input[:integer_hyper_parameter_ranges]) unless input[:integer_hyper_parameter_ranges].nil?
        data['continuousHyperParameterRanges'] = ContinuousHyperParameterRanges.build(input[:continuous_hyper_parameter_ranges]) unless input[:continuous_hyper_parameter_ranges].nil?
        data['categoricalHyperParameterRanges'] = CategoricalHyperParameterRanges.build(input[:categorical_hyper_parameter_ranges]) unless input[:categorical_hyper_parameter_ranges].nil?
        data
      end
    end

    # List Builder for CategoricalHyperParameterRanges
    class CategoricalHyperParameterRanges
      def self.build(input)
        data = []
        input.each do |element|
          data << CategoricalHyperParameterRange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CategoricalHyperParameterRange
    class CategoricalHyperParameterRange
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = CategoricalValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for CategoricalValues
    class CategoricalValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ContinuousHyperParameterRanges
    class ContinuousHyperParameterRanges
      def self.build(input)
        data = []
        input.each do |element|
          data << ContinuousHyperParameterRange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ContinuousHyperParameterRange
    class ContinuousHyperParameterRange
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['minValue'] = Hearth::NumberHelper.serialize(input[:min_value]) unless input[:min_value].nil?
        data['maxValue'] = Hearth::NumberHelper.serialize(input[:max_value]) unless input[:max_value].nil?
        data
      end
    end

    # List Builder for IntegerHyperParameterRanges
    class IntegerHyperParameterRanges
      def self.build(input)
        data = []
        input.each do |element|
          data << IntegerHyperParameterRange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for IntegerHyperParameterRange
    class IntegerHyperParameterRange
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['minValue'] = input[:min_value] unless input[:min_value].nil?
        data['maxValue'] = input[:max_value] unless input[:max_value].nil?
        data
      end
    end

    # Structure Builder for HPOResourceConfig
    class HPOResourceConfig
      def self.build(input)
        data = {}
        data['maxNumberOfTrainingJobs'] = input[:max_number_of_training_jobs] unless input[:max_number_of_training_jobs].nil?
        data['maxParallelTrainingJobs'] = input[:max_parallel_training_jobs] unless input[:max_parallel_training_jobs].nil?
        data
      end
    end

    # Structure Builder for HPOObjective
    class HPOObjective
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['metricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['metricRegex'] = input[:metric_regex] unless input[:metric_regex].nil?
        data
      end
    end

    # Operation Builder for CreateSolutionVersion
    class CreateSolutionVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.CreateSolutionVersion'
        data = {}
        data['solutionArn'] = input[:solution_arn] unless input[:solution_arn].nil?
        data['trainingMode'] = input[:training_mode] unless input[:training_mode].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteCampaign
    class DeleteCampaign
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DeleteCampaign'
        data = {}
        data['campaignArn'] = input[:campaign_arn] unless input[:campaign_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDataset
    class DeleteDataset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DeleteDataset'
        data = {}
        data['datasetArn'] = input[:dataset_arn] unless input[:dataset_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDatasetGroup
    class DeleteDatasetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DeleteDatasetGroup'
        data = {}
        data['datasetGroupArn'] = input[:dataset_group_arn] unless input[:dataset_group_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEventTracker
    class DeleteEventTracker
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DeleteEventTracker'
        data = {}
        data['eventTrackerArn'] = input[:event_tracker_arn] unless input[:event_tracker_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteFilter
    class DeleteFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DeleteFilter'
        data = {}
        data['filterArn'] = input[:filter_arn] unless input[:filter_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRecommender
    class DeleteRecommender
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DeleteRecommender'
        data = {}
        data['recommenderArn'] = input[:recommender_arn] unless input[:recommender_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSchema
    class DeleteSchema
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DeleteSchema'
        data = {}
        data['schemaArn'] = input[:schema_arn] unless input[:schema_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSolution
    class DeleteSolution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DeleteSolution'
        data = {}
        data['solutionArn'] = input[:solution_arn] unless input[:solution_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAlgorithm
    class DescribeAlgorithm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DescribeAlgorithm'
        data = {}
        data['algorithmArn'] = input[:algorithm_arn] unless input[:algorithm_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeBatchInferenceJob
    class DescribeBatchInferenceJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DescribeBatchInferenceJob'
        data = {}
        data['batchInferenceJobArn'] = input[:batch_inference_job_arn] unless input[:batch_inference_job_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeBatchSegmentJob
    class DescribeBatchSegmentJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DescribeBatchSegmentJob'
        data = {}
        data['batchSegmentJobArn'] = input[:batch_segment_job_arn] unless input[:batch_segment_job_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCampaign
    class DescribeCampaign
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DescribeCampaign'
        data = {}
        data['campaignArn'] = input[:campaign_arn] unless input[:campaign_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDataset
    class DescribeDataset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DescribeDataset'
        data = {}
        data['datasetArn'] = input[:dataset_arn] unless input[:dataset_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDatasetExportJob
    class DescribeDatasetExportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DescribeDatasetExportJob'
        data = {}
        data['datasetExportJobArn'] = input[:dataset_export_job_arn] unless input[:dataset_export_job_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDatasetGroup
    class DescribeDatasetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DescribeDatasetGroup'
        data = {}
        data['datasetGroupArn'] = input[:dataset_group_arn] unless input[:dataset_group_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDatasetImportJob
    class DescribeDatasetImportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DescribeDatasetImportJob'
        data = {}
        data['datasetImportJobArn'] = input[:dataset_import_job_arn] unless input[:dataset_import_job_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEventTracker
    class DescribeEventTracker
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DescribeEventTracker'
        data = {}
        data['eventTrackerArn'] = input[:event_tracker_arn] unless input[:event_tracker_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFeatureTransformation
    class DescribeFeatureTransformation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DescribeFeatureTransformation'
        data = {}
        data['featureTransformationArn'] = input[:feature_transformation_arn] unless input[:feature_transformation_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFilter
    class DescribeFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DescribeFilter'
        data = {}
        data['filterArn'] = input[:filter_arn] unless input[:filter_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRecipe
    class DescribeRecipe
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DescribeRecipe'
        data = {}
        data['recipeArn'] = input[:recipe_arn] unless input[:recipe_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRecommender
    class DescribeRecommender
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DescribeRecommender'
        data = {}
        data['recommenderArn'] = input[:recommender_arn] unless input[:recommender_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSchema
    class DescribeSchema
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DescribeSchema'
        data = {}
        data['schemaArn'] = input[:schema_arn] unless input[:schema_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSolution
    class DescribeSolution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DescribeSolution'
        data = {}
        data['solutionArn'] = input[:solution_arn] unless input[:solution_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSolutionVersion
    class DescribeSolutionVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.DescribeSolutionVersion'
        data = {}
        data['solutionVersionArn'] = input[:solution_version_arn] unless input[:solution_version_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSolutionMetrics
    class GetSolutionMetrics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.GetSolutionMetrics'
        data = {}
        data['solutionVersionArn'] = input[:solution_version_arn] unless input[:solution_version_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListBatchInferenceJobs
    class ListBatchInferenceJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.ListBatchInferenceJobs'
        data = {}
        data['solutionVersionArn'] = input[:solution_version_arn] unless input[:solution_version_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListBatchSegmentJobs
    class ListBatchSegmentJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.ListBatchSegmentJobs'
        data = {}
        data['solutionVersionArn'] = input[:solution_version_arn] unless input[:solution_version_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCampaigns
    class ListCampaigns
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.ListCampaigns'
        data = {}
        data['solutionArn'] = input[:solution_arn] unless input[:solution_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDatasetExportJobs
    class ListDatasetExportJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.ListDatasetExportJobs'
        data = {}
        data['datasetArn'] = input[:dataset_arn] unless input[:dataset_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDatasetGroups
    class ListDatasetGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.ListDatasetGroups'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDatasetImportJobs
    class ListDatasetImportJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.ListDatasetImportJobs'
        data = {}
        data['datasetArn'] = input[:dataset_arn] unless input[:dataset_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDatasets
    class ListDatasets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.ListDatasets'
        data = {}
        data['datasetGroupArn'] = input[:dataset_group_arn] unless input[:dataset_group_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEventTrackers
    class ListEventTrackers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.ListEventTrackers'
        data = {}
        data['datasetGroupArn'] = input[:dataset_group_arn] unless input[:dataset_group_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFilters
    class ListFilters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.ListFilters'
        data = {}
        data['datasetGroupArn'] = input[:dataset_group_arn] unless input[:dataset_group_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRecipes
    class ListRecipes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.ListRecipes'
        data = {}
        data['recipeProvider'] = input[:recipe_provider] unless input[:recipe_provider].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['domain'] = input[:domain] unless input[:domain].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRecommenders
    class ListRecommenders
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.ListRecommenders'
        data = {}
        data['datasetGroupArn'] = input[:dataset_group_arn] unless input[:dataset_group_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSchemas
    class ListSchemas
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.ListSchemas'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSolutionVersions
    class ListSolutionVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.ListSolutionVersions'
        data = {}
        data['solutionArn'] = input[:solution_arn] unless input[:solution_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSolutions
    class ListSolutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.ListSolutions'
        data = {}
        data['datasetGroupArn'] = input[:dataset_group_arn] unless input[:dataset_group_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.ListTagsForResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartRecommender
    class StartRecommender
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.StartRecommender'
        data = {}
        data['recommenderArn'] = input[:recommender_arn] unless input[:recommender_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopRecommender
    class StopRecommender
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.StopRecommender'
        data = {}
        data['recommenderArn'] = input[:recommender_arn] unless input[:recommender_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopSolutionVersionCreation
    class StopSolutionVersionCreation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.StopSolutionVersionCreation'
        data = {}
        data['solutionVersionArn'] = input[:solution_version_arn] unless input[:solution_version_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.TagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.UntagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tagKeys'] = TagKeys.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateCampaign
    class UpdateCampaign
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.UpdateCampaign'
        data = {}
        data['campaignArn'] = input[:campaign_arn] unless input[:campaign_arn].nil?
        data['solutionVersionArn'] = input[:solution_version_arn] unless input[:solution_version_arn].nil?
        data['minProvisionedTPS'] = input[:min_provisioned_tps] unless input[:min_provisioned_tps].nil?
        data['campaignConfig'] = CampaignConfig.build(input[:campaign_config]) unless input[:campaign_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRecommender
    class UpdateRecommender
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonPersonalize.UpdateRecommender'
        data = {}
        data['recommenderArn'] = input[:recommender_arn] unless input[:recommender_arn].nil?
        data['recommenderConfig'] = RecommenderConfig.build(input[:recommender_config]) unless input[:recommender_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
