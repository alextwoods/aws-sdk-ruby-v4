# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Personalize
  module Parsers

    # Operation Parser for CreateBatchInferenceJob
    class CreateBatchInferenceJob
      def self.parse(http_resp)
        data = Types::CreateBatchInferenceJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.batch_inference_job_arn = map['batchInferenceJobArn']
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
        data.message = map['message']
        data
      end
    end

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
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
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateBatchSegmentJob
    class CreateBatchSegmentJob
      def self.parse(http_resp)
        data = Types::CreateBatchSegmentJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.batch_segment_job_arn = map['batchSegmentJobArn']
        data
      end
    end

    # Operation Parser for CreateCampaign
    class CreateCampaign
      def self.parse(http_resp)
        data = Types::CreateCampaignOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.campaign_arn = map['campaignArn']
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
        data.dataset_arn = map['datasetArn']
        data
      end
    end

    # Operation Parser for CreateDatasetExportJob
    class CreateDatasetExportJob
      def self.parse(http_resp)
        data = Types::CreateDatasetExportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dataset_export_job_arn = map['datasetExportJobArn']
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
        data.dataset_group_arn = map['datasetGroupArn']
        data.domain = map['domain']
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
        data.dataset_import_job_arn = map['datasetImportJobArn']
        data
      end
    end

    # Operation Parser for CreateEventTracker
    class CreateEventTracker
      def self.parse(http_resp)
        data = Types::CreateEventTrackerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_tracker_arn = map['eventTrackerArn']
        data.tracking_id = map['trackingId']
        data
      end
    end

    # Operation Parser for CreateFilter
    class CreateFilter
      def self.parse(http_resp)
        data = Types::CreateFilterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.filter_arn = map['filterArn']
        data
      end
    end

    # Operation Parser for CreateRecommender
    class CreateRecommender
      def self.parse(http_resp)
        data = Types::CreateRecommenderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.recommender_arn = map['recommenderArn']
        data
      end
    end

    # Operation Parser for CreateSchema
    class CreateSchema
      def self.parse(http_resp)
        data = Types::CreateSchemaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.schema_arn = map['schemaArn']
        data
      end
    end

    # Operation Parser for CreateSolution
    class CreateSolution
      def self.parse(http_resp)
        data = Types::CreateSolutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.solution_arn = map['solutionArn']
        data
      end
    end

    # Operation Parser for CreateSolutionVersion
    class CreateSolutionVersion
      def self.parse(http_resp)
        data = Types::CreateSolutionVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.solution_version_arn = map['solutionVersionArn']
        data
      end
    end

    # Operation Parser for DeleteCampaign
    class DeleteCampaign
      def self.parse(http_resp)
        data = Types::DeleteCampaignOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
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

    # Operation Parser for DeleteEventTracker
    class DeleteEventTracker
      def self.parse(http_resp)
        data = Types::DeleteEventTrackerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteFilter
    class DeleteFilter
      def self.parse(http_resp)
        data = Types::DeleteFilterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteRecommender
    class DeleteRecommender
      def self.parse(http_resp)
        data = Types::DeleteRecommenderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteSchema
    class DeleteSchema
      def self.parse(http_resp)
        data = Types::DeleteSchemaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteSolution
    class DeleteSolution
      def self.parse(http_resp)
        data = Types::DeleteSolutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeAlgorithm
    class DescribeAlgorithm
      def self.parse(http_resp)
        data = Types::DescribeAlgorithmOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.algorithm = (Parsers::Algorithm.parse(map['algorithm']) unless map['algorithm'].nil?)
        data
      end
    end

    class Algorithm
      def self.parse(map)
        data = Types::Algorithm.new
        data.name = map['name']
        data.algorithm_arn = map['algorithmArn']
        data.algorithm_image = (Parsers::AlgorithmImage.parse(map['algorithmImage']) unless map['algorithmImage'].nil?)
        data.default_hyper_parameters = (Parsers::HyperParameters.parse(map['defaultHyperParameters']) unless map['defaultHyperParameters'].nil?)
        data.default_hyper_parameter_ranges = (Parsers::DefaultHyperParameterRanges.parse(map['defaultHyperParameterRanges']) unless map['defaultHyperParameterRanges'].nil?)
        data.default_resource_config = (Parsers::ResourceConfig.parse(map['defaultResourceConfig']) unless map['defaultResourceConfig'].nil?)
        data.training_input_mode = map['trainingInputMode']
        data.role_arn = map['roleArn']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        return data
      end
    end

    class ResourceConfig
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class DefaultHyperParameterRanges
      def self.parse(map)
        data = Types::DefaultHyperParameterRanges.new
        data.integer_hyper_parameter_ranges = (Parsers::DefaultIntegerHyperParameterRanges.parse(map['integerHyperParameterRanges']) unless map['integerHyperParameterRanges'].nil?)
        data.continuous_hyper_parameter_ranges = (Parsers::DefaultContinuousHyperParameterRanges.parse(map['continuousHyperParameterRanges']) unless map['continuousHyperParameterRanges'].nil?)
        data.categorical_hyper_parameter_ranges = (Parsers::DefaultCategoricalHyperParameterRanges.parse(map['categoricalHyperParameterRanges']) unless map['categoricalHyperParameterRanges'].nil?)
        return data
      end
    end

    class DefaultCategoricalHyperParameterRanges
      def self.parse(list)
        list.map do |value|
          Parsers::DefaultCategoricalHyperParameterRange.parse(value) unless value.nil?
        end
      end
    end

    class DefaultCategoricalHyperParameterRange
      def self.parse(map)
        data = Types::DefaultCategoricalHyperParameterRange.new
        data.name = map['name']
        data.values = (Parsers::CategoricalValues.parse(map['values']) unless map['values'].nil?)
        data.is_tunable = map['isTunable']
        return data
      end
    end

    class CategoricalValues
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class DefaultContinuousHyperParameterRanges
      def self.parse(list)
        list.map do |value|
          Parsers::DefaultContinuousHyperParameterRange.parse(value) unless value.nil?
        end
      end
    end

    class DefaultContinuousHyperParameterRange
      def self.parse(map)
        data = Types::DefaultContinuousHyperParameterRange.new
        data.name = map['name']
        data.min_value = Hearth::NumberHelper.deserialize(map['minValue'])
        data.max_value = Hearth::NumberHelper.deserialize(map['maxValue'])
        data.is_tunable = map['isTunable']
        return data
      end
    end

    class DefaultIntegerHyperParameterRanges
      def self.parse(list)
        list.map do |value|
          Parsers::DefaultIntegerHyperParameterRange.parse(value) unless value.nil?
        end
      end
    end

    class DefaultIntegerHyperParameterRange
      def self.parse(map)
        data = Types::DefaultIntegerHyperParameterRange.new
        data.name = map['name']
        data.min_value = map['minValue']
        data.max_value = map['maxValue']
        data.is_tunable = map['isTunable']
        return data
      end
    end

    class HyperParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class AlgorithmImage
      def self.parse(map)
        data = Types::AlgorithmImage.new
        data.name = map['name']
        data.docker_uri = map['dockerURI']
        return data
      end
    end

    # Operation Parser for DescribeBatchInferenceJob
    class DescribeBatchInferenceJob
      def self.parse(http_resp)
        data = Types::DescribeBatchInferenceJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.batch_inference_job = (Parsers::BatchInferenceJob.parse(map['batchInferenceJob']) unless map['batchInferenceJob'].nil?)
        data
      end
    end

    class BatchInferenceJob
      def self.parse(map)
        data = Types::BatchInferenceJob.new
        data.job_name = map['jobName']
        data.batch_inference_job_arn = map['batchInferenceJobArn']
        data.filter_arn = map['filterArn']
        data.failure_reason = map['failureReason']
        data.solution_version_arn = map['solutionVersionArn']
        data.num_results = map['numResults']
        data.job_input = (Parsers::BatchInferenceJobInput.parse(map['jobInput']) unless map['jobInput'].nil?)
        data.job_output = (Parsers::BatchInferenceJobOutput.parse(map['jobOutput']) unless map['jobOutput'].nil?)
        data.batch_inference_job_config = (Parsers::BatchInferenceJobConfig.parse(map['batchInferenceJobConfig']) unless map['batchInferenceJobConfig'].nil?)
        data.role_arn = map['roleArn']
        data.status = map['status']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        return data
      end
    end

    class BatchInferenceJobConfig
      def self.parse(map)
        data = Types::BatchInferenceJobConfig.new
        data.item_exploration_config = (Parsers::HyperParameters.parse(map['itemExplorationConfig']) unless map['itemExplorationConfig'].nil?)
        return data
      end
    end

    class BatchInferenceJobOutput
      def self.parse(map)
        data = Types::BatchInferenceJobOutput.new
        data.s3_data_destination = (Parsers::S3DataConfig.parse(map['s3DataDestination']) unless map['s3DataDestination'].nil?)
        return data
      end
    end

    class S3DataConfig
      def self.parse(map)
        data = Types::S3DataConfig.new
        data.path = map['path']
        data.kms_key_arn = map['kmsKeyArn']
        return data
      end
    end

    class BatchInferenceJobInput
      def self.parse(map)
        data = Types::BatchInferenceJobInput.new
        data.s3_data_source = (Parsers::S3DataConfig.parse(map['s3DataSource']) unless map['s3DataSource'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeBatchSegmentJob
    class DescribeBatchSegmentJob
      def self.parse(http_resp)
        data = Types::DescribeBatchSegmentJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.batch_segment_job = (Parsers::BatchSegmentJob.parse(map['batchSegmentJob']) unless map['batchSegmentJob'].nil?)
        data
      end
    end

    class BatchSegmentJob
      def self.parse(map)
        data = Types::BatchSegmentJob.new
        data.job_name = map['jobName']
        data.batch_segment_job_arn = map['batchSegmentJobArn']
        data.filter_arn = map['filterArn']
        data.failure_reason = map['failureReason']
        data.solution_version_arn = map['solutionVersionArn']
        data.num_results = map['numResults']
        data.job_input = (Parsers::BatchSegmentJobInput.parse(map['jobInput']) unless map['jobInput'].nil?)
        data.job_output = (Parsers::BatchSegmentJobOutput.parse(map['jobOutput']) unless map['jobOutput'].nil?)
        data.role_arn = map['roleArn']
        data.status = map['status']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        return data
      end
    end

    class BatchSegmentJobOutput
      def self.parse(map)
        data = Types::BatchSegmentJobOutput.new
        data.s3_data_destination = (Parsers::S3DataConfig.parse(map['s3DataDestination']) unless map['s3DataDestination'].nil?)
        return data
      end
    end

    class BatchSegmentJobInput
      def self.parse(map)
        data = Types::BatchSegmentJobInput.new
        data.s3_data_source = (Parsers::S3DataConfig.parse(map['s3DataSource']) unless map['s3DataSource'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeCampaign
    class DescribeCampaign
      def self.parse(http_resp)
        data = Types::DescribeCampaignOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.campaign = (Parsers::Campaign.parse(map['campaign']) unless map['campaign'].nil?)
        data
      end
    end

    class Campaign
      def self.parse(map)
        data = Types::Campaign.new
        data.name = map['name']
        data.campaign_arn = map['campaignArn']
        data.solution_version_arn = map['solutionVersionArn']
        data.min_provisioned_tps = map['minProvisionedTPS']
        data.campaign_config = (Parsers::CampaignConfig.parse(map['campaignConfig']) unless map['campaignConfig'].nil?)
        data.status = map['status']
        data.failure_reason = map['failureReason']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.latest_campaign_update = (Parsers::CampaignUpdateSummary.parse(map['latestCampaignUpdate']) unless map['latestCampaignUpdate'].nil?)
        return data
      end
    end

    class CampaignUpdateSummary
      def self.parse(map)
        data = Types::CampaignUpdateSummary.new
        data.solution_version_arn = map['solutionVersionArn']
        data.min_provisioned_tps = map['minProvisionedTPS']
        data.campaign_config = (Parsers::CampaignConfig.parse(map['campaignConfig']) unless map['campaignConfig'].nil?)
        data.status = map['status']
        data.failure_reason = map['failureReason']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        return data
      end
    end

    class CampaignConfig
      def self.parse(map)
        data = Types::CampaignConfig.new
        data.item_exploration_config = (Parsers::HyperParameters.parse(map['itemExplorationConfig']) unless map['itemExplorationConfig'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeDataset
    class DescribeDataset
      def self.parse(http_resp)
        data = Types::DescribeDatasetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dataset = (Parsers::Dataset.parse(map['dataset']) unless map['dataset'].nil?)
        data
      end
    end

    class Dataset
      def self.parse(map)
        data = Types::Dataset.new
        data.name = map['name']
        data.dataset_arn = map['datasetArn']
        data.dataset_group_arn = map['datasetGroupArn']
        data.dataset_type = map['datasetType']
        data.schema_arn = map['schemaArn']
        data.status = map['status']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        return data
      end
    end

    # Operation Parser for DescribeDatasetExportJob
    class DescribeDatasetExportJob
      def self.parse(http_resp)
        data = Types::DescribeDatasetExportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dataset_export_job = (Parsers::DatasetExportJob.parse(map['datasetExportJob']) unless map['datasetExportJob'].nil?)
        data
      end
    end

    class DatasetExportJob
      def self.parse(map)
        data = Types::DatasetExportJob.new
        data.job_name = map['jobName']
        data.dataset_export_job_arn = map['datasetExportJobArn']
        data.dataset_arn = map['datasetArn']
        data.ingestion_mode = map['ingestionMode']
        data.role_arn = map['roleArn']
        data.status = map['status']
        data.job_output = (Parsers::DatasetExportJobOutput.parse(map['jobOutput']) unless map['jobOutput'].nil?)
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.failure_reason = map['failureReason']
        return data
      end
    end

    class DatasetExportJobOutput
      def self.parse(map)
        data = Types::DatasetExportJobOutput.new
        data.s3_data_destination = (Parsers::S3DataConfig.parse(map['s3DataDestination']) unless map['s3DataDestination'].nil?)
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
        data.dataset_group = (Parsers::DatasetGroup.parse(map['datasetGroup']) unless map['datasetGroup'].nil?)
        data
      end
    end

    class DatasetGroup
      def self.parse(map)
        data = Types::DatasetGroup.new
        data.name = map['name']
        data.dataset_group_arn = map['datasetGroupArn']
        data.status = map['status']
        data.role_arn = map['roleArn']
        data.kms_key_arn = map['kmsKeyArn']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.failure_reason = map['failureReason']
        data.domain = map['domain']
        return data
      end
    end

    # Operation Parser for DescribeDatasetImportJob
    class DescribeDatasetImportJob
      def self.parse(http_resp)
        data = Types::DescribeDatasetImportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dataset_import_job = (Parsers::DatasetImportJob.parse(map['datasetImportJob']) unless map['datasetImportJob'].nil?)
        data
      end
    end

    class DatasetImportJob
      def self.parse(map)
        data = Types::DatasetImportJob.new
        data.job_name = map['jobName']
        data.dataset_import_job_arn = map['datasetImportJobArn']
        data.dataset_arn = map['datasetArn']
        data.data_source = (Parsers::DataSource.parse(map['dataSource']) unless map['dataSource'].nil?)
        data.role_arn = map['roleArn']
        data.status = map['status']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.failure_reason = map['failureReason']
        return data
      end
    end

    class DataSource
      def self.parse(map)
        data = Types::DataSource.new
        data.data_location = map['dataLocation']
        return data
      end
    end

    # Operation Parser for DescribeEventTracker
    class DescribeEventTracker
      def self.parse(http_resp)
        data = Types::DescribeEventTrackerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_tracker = (Parsers::EventTracker.parse(map['eventTracker']) unless map['eventTracker'].nil?)
        data
      end
    end

    class EventTracker
      def self.parse(map)
        data = Types::EventTracker.new
        data.name = map['name']
        data.event_tracker_arn = map['eventTrackerArn']
        data.account_id = map['accountId']
        data.tracking_id = map['trackingId']
        data.dataset_group_arn = map['datasetGroupArn']
        data.status = map['status']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        return data
      end
    end

    # Operation Parser for DescribeFeatureTransformation
    class DescribeFeatureTransformation
      def self.parse(http_resp)
        data = Types::DescribeFeatureTransformationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.feature_transformation = (Parsers::FeatureTransformation.parse(map['featureTransformation']) unless map['featureTransformation'].nil?)
        data
      end
    end

    class FeatureTransformation
      def self.parse(map)
        data = Types::FeatureTransformation.new
        data.name = map['name']
        data.feature_transformation_arn = map['featureTransformationArn']
        data.default_parameters = (Parsers::FeaturizationParameters.parse(map['defaultParameters']) unless map['defaultParameters'].nil?)
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.status = map['status']
        return data
      end
    end

    class FeaturizationParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeFilter
    class DescribeFilter
      def self.parse(http_resp)
        data = Types::DescribeFilterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.filter = (Parsers::Filter.parse(map['filter']) unless map['filter'].nil?)
        data
      end
    end

    class Filter
      def self.parse(map)
        data = Types::Filter.new
        data.name = map['name']
        data.filter_arn = map['filterArn']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.dataset_group_arn = map['datasetGroupArn']
        data.failure_reason = map['failureReason']
        data.filter_expression = map['filterExpression']
        data.status = map['status']
        return data
      end
    end

    # Operation Parser for DescribeRecipe
    class DescribeRecipe
      def self.parse(http_resp)
        data = Types::DescribeRecipeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.recipe = (Parsers::Recipe.parse(map['recipe']) unless map['recipe'].nil?)
        data
      end
    end

    class Recipe
      def self.parse(map)
        data = Types::Recipe.new
        data.name = map['name']
        data.recipe_arn = map['recipeArn']
        data.algorithm_arn = map['algorithmArn']
        data.feature_transformation_arn = map['featureTransformationArn']
        data.status = map['status']
        data.description = map['description']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.recipe_type = map['recipeType']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        return data
      end
    end

    # Operation Parser for DescribeRecommender
    class DescribeRecommender
      def self.parse(http_resp)
        data = Types::DescribeRecommenderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.recommender = (Parsers::Recommender.parse(map['recommender']) unless map['recommender'].nil?)
        data
      end
    end

    class Recommender
      def self.parse(map)
        data = Types::Recommender.new
        data.recommender_arn = map['recommenderArn']
        data.dataset_group_arn = map['datasetGroupArn']
        data.name = map['name']
        data.recipe_arn = map['recipeArn']
        data.recommender_config = (Parsers::RecommenderConfig.parse(map['recommenderConfig']) unless map['recommenderConfig'].nil?)
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.status = map['status']
        data.failure_reason = map['failureReason']
        data.latest_recommender_update = (Parsers::RecommenderUpdateSummary.parse(map['latestRecommenderUpdate']) unless map['latestRecommenderUpdate'].nil?)
        data.model_metrics = (Parsers::Metrics.parse(map['modelMetrics']) unless map['modelMetrics'].nil?)
        return data
      end
    end

    class Metrics
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Hearth::NumberHelper.deserialize(value) unless value.nil?
        end
        data
      end
    end

    class RecommenderUpdateSummary
      def self.parse(map)
        data = Types::RecommenderUpdateSummary.new
        data.recommender_config = (Parsers::RecommenderConfig.parse(map['recommenderConfig']) unless map['recommenderConfig'].nil?)
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.status = map['status']
        data.failure_reason = map['failureReason']
        return data
      end
    end

    class RecommenderConfig
      def self.parse(map)
        data = Types::RecommenderConfig.new
        data.item_exploration_config = (Parsers::HyperParameters.parse(map['itemExplorationConfig']) unless map['itemExplorationConfig'].nil?)
        data.min_recommendation_requests_per_second = map['minRecommendationRequestsPerSecond']
        return data
      end
    end

    # Operation Parser for DescribeSchema
    class DescribeSchema
      def self.parse(http_resp)
        data = Types::DescribeSchemaOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.schema = (Parsers::DatasetSchema.parse(map['schema']) unless map['schema'].nil?)
        data
      end
    end

    class DatasetSchema
      def self.parse(map)
        data = Types::DatasetSchema.new
        data.name = map['name']
        data.schema_arn = map['schemaArn']
        data.schema = map['schema']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.domain = map['domain']
        return data
      end
    end

    # Operation Parser for DescribeSolution
    class DescribeSolution
      def self.parse(http_resp)
        data = Types::DescribeSolutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.solution = (Parsers::Solution.parse(map['solution']) unless map['solution'].nil?)
        data
      end
    end

    class Solution
      def self.parse(map)
        data = Types::Solution.new
        data.name = map['name']
        data.solution_arn = map['solutionArn']
        data.perform_hpo = map['performHPO']
        data.perform_auto_ml = map['performAutoML']
        data.recipe_arn = map['recipeArn']
        data.dataset_group_arn = map['datasetGroupArn']
        data.event_type = map['eventType']
        data.solution_config = (Parsers::SolutionConfig.parse(map['solutionConfig']) unless map['solutionConfig'].nil?)
        data.auto_ml_result = (Parsers::AutoMLResult.parse(map['autoMLResult']) unless map['autoMLResult'].nil?)
        data.status = map['status']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.latest_solution_version = (Parsers::SolutionVersionSummary.parse(map['latestSolutionVersion']) unless map['latestSolutionVersion'].nil?)
        return data
      end
    end

    class SolutionVersionSummary
      def self.parse(map)
        data = Types::SolutionVersionSummary.new
        data.solution_version_arn = map['solutionVersionArn']
        data.status = map['status']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.failure_reason = map['failureReason']
        return data
      end
    end

    class AutoMLResult
      def self.parse(map)
        data = Types::AutoMLResult.new
        data.best_recipe_arn = map['bestRecipeArn']
        return data
      end
    end

    class SolutionConfig
      def self.parse(map)
        data = Types::SolutionConfig.new
        data.event_value_threshold = map['eventValueThreshold']
        data.hpo_config = (Parsers::HPOConfig.parse(map['hpoConfig']) unless map['hpoConfig'].nil?)
        data.algorithm_hyper_parameters = (Parsers::HyperParameters.parse(map['algorithmHyperParameters']) unless map['algorithmHyperParameters'].nil?)
        data.feature_transformation_parameters = (Parsers::FeatureTransformationParameters.parse(map['featureTransformationParameters']) unless map['featureTransformationParameters'].nil?)
        data.auto_ml_config = (Parsers::AutoMLConfig.parse(map['autoMLConfig']) unless map['autoMLConfig'].nil?)
        data.optimization_objective = (Parsers::OptimizationObjective.parse(map['optimizationObjective']) unless map['optimizationObjective'].nil?)
        return data
      end
    end

    class OptimizationObjective
      def self.parse(map)
        data = Types::OptimizationObjective.new
        data.item_attribute = map['itemAttribute']
        data.objective_sensitivity = map['objectiveSensitivity']
        return data
      end
    end

    class AutoMLConfig
      def self.parse(map)
        data = Types::AutoMLConfig.new
        data.metric_name = map['metricName']
        data.recipe_list = (Parsers::ArnList.parse(map['recipeList']) unless map['recipeList'].nil?)
        return data
      end
    end

    class ArnList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class FeatureTransformationParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class HPOConfig
      def self.parse(map)
        data = Types::HPOConfig.new
        data.hpo_objective = (Parsers::HPOObjective.parse(map['hpoObjective']) unless map['hpoObjective'].nil?)
        data.hpo_resource_config = (Parsers::HPOResourceConfig.parse(map['hpoResourceConfig']) unless map['hpoResourceConfig'].nil?)
        data.algorithm_hyper_parameter_ranges = (Parsers::HyperParameterRanges.parse(map['algorithmHyperParameterRanges']) unless map['algorithmHyperParameterRanges'].nil?)
        return data
      end
    end

    class HyperParameterRanges
      def self.parse(map)
        data = Types::HyperParameterRanges.new
        data.integer_hyper_parameter_ranges = (Parsers::IntegerHyperParameterRanges.parse(map['integerHyperParameterRanges']) unless map['integerHyperParameterRanges'].nil?)
        data.continuous_hyper_parameter_ranges = (Parsers::ContinuousHyperParameterRanges.parse(map['continuousHyperParameterRanges']) unless map['continuousHyperParameterRanges'].nil?)
        data.categorical_hyper_parameter_ranges = (Parsers::CategoricalHyperParameterRanges.parse(map['categoricalHyperParameterRanges']) unless map['categoricalHyperParameterRanges'].nil?)
        return data
      end
    end

    class CategoricalHyperParameterRanges
      def self.parse(list)
        list.map do |value|
          Parsers::CategoricalHyperParameterRange.parse(value) unless value.nil?
        end
      end
    end

    class CategoricalHyperParameterRange
      def self.parse(map)
        data = Types::CategoricalHyperParameterRange.new
        data.name = map['name']
        data.values = (Parsers::CategoricalValues.parse(map['values']) unless map['values'].nil?)
        return data
      end
    end

    class ContinuousHyperParameterRanges
      def self.parse(list)
        list.map do |value|
          Parsers::ContinuousHyperParameterRange.parse(value) unless value.nil?
        end
      end
    end

    class ContinuousHyperParameterRange
      def self.parse(map)
        data = Types::ContinuousHyperParameterRange.new
        data.name = map['name']
        data.min_value = Hearth::NumberHelper.deserialize(map['minValue'])
        data.max_value = Hearth::NumberHelper.deserialize(map['maxValue'])
        return data
      end
    end

    class IntegerHyperParameterRanges
      def self.parse(list)
        list.map do |value|
          Parsers::IntegerHyperParameterRange.parse(value) unless value.nil?
        end
      end
    end

    class IntegerHyperParameterRange
      def self.parse(map)
        data = Types::IntegerHyperParameterRange.new
        data.name = map['name']
        data.min_value = map['minValue']
        data.max_value = map['maxValue']
        return data
      end
    end

    class HPOResourceConfig
      def self.parse(map)
        data = Types::HPOResourceConfig.new
        data.max_number_of_training_jobs = map['maxNumberOfTrainingJobs']
        data.max_parallel_training_jobs = map['maxParallelTrainingJobs']
        return data
      end
    end

    class HPOObjective
      def self.parse(map)
        data = Types::HPOObjective.new
        data.type = map['type']
        data.metric_name = map['metricName']
        data.metric_regex = map['metricRegex']
        return data
      end
    end

    # Operation Parser for DescribeSolutionVersion
    class DescribeSolutionVersion
      def self.parse(http_resp)
        data = Types::DescribeSolutionVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.solution_version = (Parsers::SolutionVersion.parse(map['solutionVersion']) unless map['solutionVersion'].nil?)
        data
      end
    end

    class SolutionVersion
      def self.parse(map)
        data = Types::SolutionVersion.new
        data.solution_version_arn = map['solutionVersionArn']
        data.solution_arn = map['solutionArn']
        data.perform_hpo = map['performHPO']
        data.perform_auto_ml = map['performAutoML']
        data.recipe_arn = map['recipeArn']
        data.event_type = map['eventType']
        data.dataset_group_arn = map['datasetGroupArn']
        data.solution_config = (Parsers::SolutionConfig.parse(map['solutionConfig']) unless map['solutionConfig'].nil?)
        data.training_hours = Hearth::NumberHelper.deserialize(map['trainingHours'])
        data.training_mode = map['trainingMode']
        data.tuned_hpo_params = (Parsers::TunedHPOParams.parse(map['tunedHPOParams']) unless map['tunedHPOParams'].nil?)
        data.status = map['status']
        data.failure_reason = map['failureReason']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        return data
      end
    end

    class TunedHPOParams
      def self.parse(map)
        data = Types::TunedHPOParams.new
        data.algorithm_hyper_parameters = (Parsers::HyperParameters.parse(map['algorithmHyperParameters']) unless map['algorithmHyperParameters'].nil?)
        return data
      end
    end

    # Operation Parser for GetSolutionMetrics
    class GetSolutionMetrics
      def self.parse(http_resp)
        data = Types::GetSolutionMetricsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.solution_version_arn = map['solutionVersionArn']
        data.metrics = (Parsers::Metrics.parse(map['metrics']) unless map['metrics'].nil?)
        data
      end
    end

    # Operation Parser for ListBatchInferenceJobs
    class ListBatchInferenceJobs
      def self.parse(http_resp)
        data = Types::ListBatchInferenceJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.batch_inference_jobs = (Parsers::BatchInferenceJobs.parse(map['batchInferenceJobs']) unless map['batchInferenceJobs'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BatchInferenceJobs
      def self.parse(list)
        list.map do |value|
          Parsers::BatchInferenceJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class BatchInferenceJobSummary
      def self.parse(map)
        data = Types::BatchInferenceJobSummary.new
        data.batch_inference_job_arn = map['batchInferenceJobArn']
        data.job_name = map['jobName']
        data.status = map['status']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.failure_reason = map['failureReason']
        data.solution_version_arn = map['solutionVersionArn']
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
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListBatchSegmentJobs
    class ListBatchSegmentJobs
      def self.parse(http_resp)
        data = Types::ListBatchSegmentJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.batch_segment_jobs = (Parsers::BatchSegmentJobs.parse(map['batchSegmentJobs']) unless map['batchSegmentJobs'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BatchSegmentJobs
      def self.parse(list)
        list.map do |value|
          Parsers::BatchSegmentJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class BatchSegmentJobSummary
      def self.parse(map)
        data = Types::BatchSegmentJobSummary.new
        data.batch_segment_job_arn = map['batchSegmentJobArn']
        data.job_name = map['jobName']
        data.status = map['status']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.failure_reason = map['failureReason']
        data.solution_version_arn = map['solutionVersionArn']
        return data
      end
    end

    # Operation Parser for ListCampaigns
    class ListCampaigns
      def self.parse(http_resp)
        data = Types::ListCampaignsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.campaigns = (Parsers::Campaigns.parse(map['campaigns']) unless map['campaigns'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Campaigns
      def self.parse(list)
        list.map do |value|
          Parsers::CampaignSummary.parse(value) unless value.nil?
        end
      end
    end

    class CampaignSummary
      def self.parse(map)
        data = Types::CampaignSummary.new
        data.name = map['name']
        data.campaign_arn = map['campaignArn']
        data.status = map['status']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.failure_reason = map['failureReason']
        return data
      end
    end

    # Operation Parser for ListDatasetExportJobs
    class ListDatasetExportJobs
      def self.parse(http_resp)
        data = Types::ListDatasetExportJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dataset_export_jobs = (Parsers::DatasetExportJobs.parse(map['datasetExportJobs']) unless map['datasetExportJobs'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DatasetExportJobs
      def self.parse(list)
        list.map do |value|
          Parsers::DatasetExportJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class DatasetExportJobSummary
      def self.parse(map)
        data = Types::DatasetExportJobSummary.new
        data.dataset_export_job_arn = map['datasetExportJobArn']
        data.job_name = map['jobName']
        data.status = map['status']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.failure_reason = map['failureReason']
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
        data.dataset_groups = (Parsers::DatasetGroups.parse(map['datasetGroups']) unless map['datasetGroups'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DatasetGroups
      def self.parse(list)
        list.map do |value|
          Parsers::DatasetGroupSummary.parse(value) unless value.nil?
        end
      end
    end

    class DatasetGroupSummary
      def self.parse(map)
        data = Types::DatasetGroupSummary.new
        data.name = map['name']
        data.dataset_group_arn = map['datasetGroupArn']
        data.status = map['status']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.failure_reason = map['failureReason']
        data.domain = map['domain']
        return data
      end
    end

    # Operation Parser for ListDatasetImportJobs
    class ListDatasetImportJobs
      def self.parse(http_resp)
        data = Types::ListDatasetImportJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dataset_import_jobs = (Parsers::DatasetImportJobs.parse(map['datasetImportJobs']) unless map['datasetImportJobs'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DatasetImportJobs
      def self.parse(list)
        list.map do |value|
          Parsers::DatasetImportJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class DatasetImportJobSummary
      def self.parse(map)
        data = Types::DatasetImportJobSummary.new
        data.dataset_import_job_arn = map['datasetImportJobArn']
        data.job_name = map['jobName']
        data.status = map['status']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.failure_reason = map['failureReason']
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
        data.datasets = (Parsers::Datasets.parse(map['datasets']) unless map['datasets'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Datasets
      def self.parse(list)
        list.map do |value|
          Parsers::DatasetSummary.parse(value) unless value.nil?
        end
      end
    end

    class DatasetSummary
      def self.parse(map)
        data = Types::DatasetSummary.new
        data.name = map['name']
        data.dataset_arn = map['datasetArn']
        data.dataset_type = map['datasetType']
        data.status = map['status']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        return data
      end
    end

    # Operation Parser for ListEventTrackers
    class ListEventTrackers
      def self.parse(http_resp)
        data = Types::ListEventTrackersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_trackers = (Parsers::EventTrackers.parse(map['eventTrackers']) unless map['eventTrackers'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class EventTrackers
      def self.parse(list)
        list.map do |value|
          Parsers::EventTrackerSummary.parse(value) unless value.nil?
        end
      end
    end

    class EventTrackerSummary
      def self.parse(map)
        data = Types::EventTrackerSummary.new
        data.name = map['name']
        data.event_tracker_arn = map['eventTrackerArn']
        data.status = map['status']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        return data
      end
    end

    # Operation Parser for ListFilters
    class ListFilters
      def self.parse(http_resp)
        data = Types::ListFiltersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.filters = (Parsers::Filters.parse(map['Filters']) unless map['Filters'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Filters
      def self.parse(list)
        list.map do |value|
          Parsers::FilterSummary.parse(value) unless value.nil?
        end
      end
    end

    class FilterSummary
      def self.parse(map)
        data = Types::FilterSummary.new
        data.name = map['name']
        data.filter_arn = map['filterArn']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.dataset_group_arn = map['datasetGroupArn']
        data.failure_reason = map['failureReason']
        data.status = map['status']
        return data
      end
    end

    # Operation Parser for ListRecipes
    class ListRecipes
      def self.parse(http_resp)
        data = Types::ListRecipesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.recipes = (Parsers::Recipes.parse(map['recipes']) unless map['recipes'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Recipes
      def self.parse(list)
        list.map do |value|
          Parsers::RecipeSummary.parse(value) unless value.nil?
        end
      end
    end

    class RecipeSummary
      def self.parse(map)
        data = Types::RecipeSummary.new
        data.name = map['name']
        data.recipe_arn = map['recipeArn']
        data.status = map['status']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.domain = map['domain']
        return data
      end
    end

    # Operation Parser for ListRecommenders
    class ListRecommenders
      def self.parse(http_resp)
        data = Types::ListRecommendersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.recommenders = (Parsers::Recommenders.parse(map['recommenders']) unless map['recommenders'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Recommenders
      def self.parse(list)
        list.map do |value|
          Parsers::RecommenderSummary.parse(value) unless value.nil?
        end
      end
    end

    class RecommenderSummary
      def self.parse(map)
        data = Types::RecommenderSummary.new
        data.name = map['name']
        data.recommender_arn = map['recommenderArn']
        data.dataset_group_arn = map['datasetGroupArn']
        data.recipe_arn = map['recipeArn']
        data.recommender_config = (Parsers::RecommenderConfig.parse(map['recommenderConfig']) unless map['recommenderConfig'].nil?)
        data.status = map['status']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        return data
      end
    end

    # Operation Parser for ListSchemas
    class ListSchemas
      def self.parse(http_resp)
        data = Types::ListSchemasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.schemas = (Parsers::Schemas.parse(map['schemas']) unless map['schemas'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Schemas
      def self.parse(list)
        list.map do |value|
          Parsers::DatasetSchemaSummary.parse(value) unless value.nil?
        end
      end
    end

    class DatasetSchemaSummary
      def self.parse(map)
        data = Types::DatasetSchemaSummary.new
        data.name = map['name']
        data.schema_arn = map['schemaArn']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
        data.domain = map['domain']
        return data
      end
    end

    # Operation Parser for ListSolutionVersions
    class ListSolutionVersions
      def self.parse(http_resp)
        data = Types::ListSolutionVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.solution_versions = (Parsers::SolutionVersions.parse(map['solutionVersions']) unless map['solutionVersions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SolutionVersions
      def self.parse(list)
        list.map do |value|
          Parsers::SolutionVersionSummary.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListSolutions
    class ListSolutions
      def self.parse(http_resp)
        data = Types::ListSolutionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.solutions = (Parsers::Solutions.parse(map['solutions']) unless map['solutions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Solutions
      def self.parse(list)
        list.map do |value|
          Parsers::SolutionSummary.parse(value) unless value.nil?
        end
      end
    end

    class SolutionSummary
      def self.parse(map)
        data = Types::SolutionSummary.new
        data.name = map['name']
        data.solution_arn = map['solutionArn']
        data.status = map['status']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.last_updated_date_time = Time.at(map['lastUpdatedDateTime'].to_i) if map['lastUpdatedDateTime']
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
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class Tags
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.tag_key = map['tagKey']
        data.tag_value = map['tagValue']
        return data
      end
    end

    # Operation Parser for StartRecommender
    class StartRecommender
      def self.parse(http_resp)
        data = Types::StartRecommenderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.recommender_arn = map['recommenderArn']
        data
      end
    end

    # Operation Parser for StopRecommender
    class StopRecommender
      def self.parse(http_resp)
        data = Types::StopRecommenderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.recommender_arn = map['recommenderArn']
        data
      end
    end

    # Operation Parser for StopSolutionVersionCreation
    class StopSolutionVersionCreation
      def self.parse(http_resp)
        data = Types::StopSolutionVersionCreationOutput.new
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

    # Error Parser for TooManyTagKeysException
    class TooManyTagKeysException
      def self.parse(http_resp)
        data = Types::TooManyTagKeysException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UpdateCampaign
    class UpdateCampaign
      def self.parse(http_resp)
        data = Types::UpdateCampaignOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.campaign_arn = map['campaignArn']
        data
      end
    end

    # Operation Parser for UpdateRecommender
    class UpdateRecommender
      def self.parse(http_resp)
        data = Types::UpdateRecommenderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.recommender_arn = map['recommenderArn']
        data
      end
    end
  end
end
