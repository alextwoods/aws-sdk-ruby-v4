# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Personalize
  module Stubs

    # Operation Stubber for CreateBatchInferenceJob
    class CreateBatchInferenceJob
      def self.default(visited=[])
        {
          batch_inference_job_arn: 'batch_inference_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['batchInferenceJobArn'] = stub[:batch_inference_job_arn] unless stub[:batch_inference_job_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateBatchSegmentJob
    class CreateBatchSegmentJob
      def self.default(visited=[])
        {
          batch_segment_job_arn: 'batch_segment_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['batchSegmentJobArn'] = stub[:batch_segment_job_arn] unless stub[:batch_segment_job_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateCampaign
    class CreateCampaign
      def self.default(visited=[])
        {
          campaign_arn: 'campaign_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['campaignArn'] = stub[:campaign_arn] unless stub[:campaign_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDataset
    class CreateDataset
      def self.default(visited=[])
        {
          dataset_arn: 'dataset_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['datasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDatasetExportJob
    class CreateDatasetExportJob
      def self.default(visited=[])
        {
          dataset_export_job_arn: 'dataset_export_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['datasetExportJobArn'] = stub[:dataset_export_job_arn] unless stub[:dataset_export_job_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDatasetGroup
    class CreateDatasetGroup
      def self.default(visited=[])
        {
          dataset_group_arn: 'dataset_group_arn',
          domain: 'domain',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['datasetGroupArn'] = stub[:dataset_group_arn] unless stub[:dataset_group_arn].nil?
        data['domain'] = stub[:domain] unless stub[:domain].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDatasetImportJob
    class CreateDatasetImportJob
      def self.default(visited=[])
        {
          dataset_import_job_arn: 'dataset_import_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['datasetImportJobArn'] = stub[:dataset_import_job_arn] unless stub[:dataset_import_job_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateEventTracker
    class CreateEventTracker
      def self.default(visited=[])
        {
          event_tracker_arn: 'event_tracker_arn',
          tracking_id: 'tracking_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['eventTrackerArn'] = stub[:event_tracker_arn] unless stub[:event_tracker_arn].nil?
        data['trackingId'] = stub[:tracking_id] unless stub[:tracking_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateFilter
    class CreateFilter
      def self.default(visited=[])
        {
          filter_arn: 'filter_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['filterArn'] = stub[:filter_arn] unless stub[:filter_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateRecommender
    class CreateRecommender
      def self.default(visited=[])
        {
          recommender_arn: 'recommender_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['recommenderArn'] = stub[:recommender_arn] unless stub[:recommender_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateSchema
    class CreateSchema
      def self.default(visited=[])
        {
          schema_arn: 'schema_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['schemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateSolution
    class CreateSolution
      def self.default(visited=[])
        {
          solution_arn: 'solution_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['solutionArn'] = stub[:solution_arn] unless stub[:solution_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateSolutionVersion
    class CreateSolutionVersion
      def self.default(visited=[])
        {
          solution_version_arn: 'solution_version_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['solutionVersionArn'] = stub[:solution_version_arn] unless stub[:solution_version_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCampaign
    class DeleteCampaign
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDataset
    class DeleteDataset
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDatasetGroup
    class DeleteDatasetGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEventTracker
    class DeleteEventTracker
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFilter
    class DeleteFilter
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRecommender
    class DeleteRecommender
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSchema
    class DeleteSchema
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSolution
    class DeleteSolution
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAlgorithm
    class DescribeAlgorithm
      def self.default(visited=[])
        {
          algorithm: Algorithm.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['algorithm'] = Algorithm.stub(stub[:algorithm]) unless stub[:algorithm].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Algorithm
    class Algorithm
      def self.default(visited=[])
        return nil if visited.include?('Algorithm')
        visited = visited + ['Algorithm']
        {
          name: 'name',
          algorithm_arn: 'algorithm_arn',
          algorithm_image: AlgorithmImage.default(visited),
          default_hyper_parameters: HyperParameters.default(visited),
          default_hyper_parameter_ranges: DefaultHyperParameterRanges.default(visited),
          default_resource_config: ResourceConfig.default(visited),
          training_input_mode: 'training_input_mode',
          role_arn: 'role_arn',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Algorithm.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['algorithmArn'] = stub[:algorithm_arn] unless stub[:algorithm_arn].nil?
        data['algorithmImage'] = AlgorithmImage.stub(stub[:algorithm_image]) unless stub[:algorithm_image].nil?
        data['defaultHyperParameters'] = HyperParameters.stub(stub[:default_hyper_parameters]) unless stub[:default_hyper_parameters].nil?
        data['defaultHyperParameterRanges'] = DefaultHyperParameterRanges.stub(stub[:default_hyper_parameter_ranges]) unless stub[:default_hyper_parameter_ranges].nil?
        data['defaultResourceConfig'] = ResourceConfig.stub(stub[:default_resource_config]) unless stub[:default_resource_config].nil?
        data['trainingInputMode'] = stub[:training_input_mode] unless stub[:training_input_mode].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Map Stubber for ResourceConfig
    class ResourceConfig
      def self.default(visited=[])
        return nil if visited.include?('ResourceConfig')
        visited = visited + ['ResourceConfig']
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

    # Structure Stubber for DefaultHyperParameterRanges
    class DefaultHyperParameterRanges
      def self.default(visited=[])
        return nil if visited.include?('DefaultHyperParameterRanges')
        visited = visited + ['DefaultHyperParameterRanges']
        {
          integer_hyper_parameter_ranges: DefaultIntegerHyperParameterRanges.default(visited),
          continuous_hyper_parameter_ranges: DefaultContinuousHyperParameterRanges.default(visited),
          categorical_hyper_parameter_ranges: DefaultCategoricalHyperParameterRanges.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DefaultHyperParameterRanges.new
        data = {}
        data['integerHyperParameterRanges'] = DefaultIntegerHyperParameterRanges.stub(stub[:integer_hyper_parameter_ranges]) unless stub[:integer_hyper_parameter_ranges].nil?
        data['continuousHyperParameterRanges'] = DefaultContinuousHyperParameterRanges.stub(stub[:continuous_hyper_parameter_ranges]) unless stub[:continuous_hyper_parameter_ranges].nil?
        data['categoricalHyperParameterRanges'] = DefaultCategoricalHyperParameterRanges.stub(stub[:categorical_hyper_parameter_ranges]) unless stub[:categorical_hyper_parameter_ranges].nil?
        data
      end
    end

    # List Stubber for DefaultCategoricalHyperParameterRanges
    class DefaultCategoricalHyperParameterRanges
      def self.default(visited=[])
        return nil if visited.include?('DefaultCategoricalHyperParameterRanges')
        visited = visited + ['DefaultCategoricalHyperParameterRanges']
        [
          DefaultCategoricalHyperParameterRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DefaultCategoricalHyperParameterRange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DefaultCategoricalHyperParameterRange
    class DefaultCategoricalHyperParameterRange
      def self.default(visited=[])
        return nil if visited.include?('DefaultCategoricalHyperParameterRange')
        visited = visited + ['DefaultCategoricalHyperParameterRange']
        {
          name: 'name',
          values: CategoricalValues.default(visited),
          is_tunable: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DefaultCategoricalHyperParameterRange.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['values'] = CategoricalValues.stub(stub[:values]) unless stub[:values].nil?
        data['isTunable'] = stub[:is_tunable] unless stub[:is_tunable].nil?
        data
      end
    end

    # List Stubber for CategoricalValues
    class CategoricalValues
      def self.default(visited=[])
        return nil if visited.include?('CategoricalValues')
        visited = visited + ['CategoricalValues']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for DefaultContinuousHyperParameterRanges
    class DefaultContinuousHyperParameterRanges
      def self.default(visited=[])
        return nil if visited.include?('DefaultContinuousHyperParameterRanges')
        visited = visited + ['DefaultContinuousHyperParameterRanges']
        [
          DefaultContinuousHyperParameterRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DefaultContinuousHyperParameterRange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DefaultContinuousHyperParameterRange
    class DefaultContinuousHyperParameterRange
      def self.default(visited=[])
        return nil if visited.include?('DefaultContinuousHyperParameterRange')
        visited = visited + ['DefaultContinuousHyperParameterRange']
        {
          name: 'name',
          min_value: 1.0,
          max_value: 1.0,
          is_tunable: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DefaultContinuousHyperParameterRange.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['minValue'] = Hearth::NumberHelper.serialize(stub[:min_value])
        data['maxValue'] = Hearth::NumberHelper.serialize(stub[:max_value])
        data['isTunable'] = stub[:is_tunable] unless stub[:is_tunable].nil?
        data
      end
    end

    # List Stubber for DefaultIntegerHyperParameterRanges
    class DefaultIntegerHyperParameterRanges
      def self.default(visited=[])
        return nil if visited.include?('DefaultIntegerHyperParameterRanges')
        visited = visited + ['DefaultIntegerHyperParameterRanges']
        [
          DefaultIntegerHyperParameterRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DefaultIntegerHyperParameterRange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DefaultIntegerHyperParameterRange
    class DefaultIntegerHyperParameterRange
      def self.default(visited=[])
        return nil if visited.include?('DefaultIntegerHyperParameterRange')
        visited = visited + ['DefaultIntegerHyperParameterRange']
        {
          name: 'name',
          min_value: 1,
          max_value: 1,
          is_tunable: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DefaultIntegerHyperParameterRange.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['minValue'] = stub[:min_value] unless stub[:min_value].nil?
        data['maxValue'] = stub[:max_value] unless stub[:max_value].nil?
        data['isTunable'] = stub[:is_tunable] unless stub[:is_tunable].nil?
        data
      end
    end

    # Map Stubber for HyperParameters
    class HyperParameters
      def self.default(visited=[])
        return nil if visited.include?('HyperParameters')
        visited = visited + ['HyperParameters']
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

    # Structure Stubber for AlgorithmImage
    class AlgorithmImage
      def self.default(visited=[])
        return nil if visited.include?('AlgorithmImage')
        visited = visited + ['AlgorithmImage']
        {
          name: 'name',
          docker_uri: 'docker_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::AlgorithmImage.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['dockerURI'] = stub[:docker_uri] unless stub[:docker_uri].nil?
        data
      end
    end

    # Operation Stubber for DescribeBatchInferenceJob
    class DescribeBatchInferenceJob
      def self.default(visited=[])
        {
          batch_inference_job: BatchInferenceJob.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['batchInferenceJob'] = BatchInferenceJob.stub(stub[:batch_inference_job]) unless stub[:batch_inference_job].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for BatchInferenceJob
    class BatchInferenceJob
      def self.default(visited=[])
        return nil if visited.include?('BatchInferenceJob')
        visited = visited + ['BatchInferenceJob']
        {
          job_name: 'job_name',
          batch_inference_job_arn: 'batch_inference_job_arn',
          filter_arn: 'filter_arn',
          failure_reason: 'failure_reason',
          solution_version_arn: 'solution_version_arn',
          num_results: 1,
          job_input: BatchInferenceJobInput.default(visited),
          job_output: BatchInferenceJobOutput.default(visited),
          batch_inference_job_config: BatchInferenceJobConfig.default(visited),
          role_arn: 'role_arn',
          status: 'status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchInferenceJob.new
        data = {}
        data['jobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['batchInferenceJobArn'] = stub[:batch_inference_job_arn] unless stub[:batch_inference_job_arn].nil?
        data['filterArn'] = stub[:filter_arn] unless stub[:filter_arn].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['solutionVersionArn'] = stub[:solution_version_arn] unless stub[:solution_version_arn].nil?
        data['numResults'] = stub[:num_results] unless stub[:num_results].nil?
        data['jobInput'] = BatchInferenceJobInput.stub(stub[:job_input]) unless stub[:job_input].nil?
        data['jobOutput'] = BatchInferenceJobOutput.stub(stub[:job_output]) unless stub[:job_output].nil?
        data['batchInferenceJobConfig'] = BatchInferenceJobConfig.stub(stub[:batch_inference_job_config]) unless stub[:batch_inference_job_config].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Structure Stubber for BatchInferenceJobConfig
    class BatchInferenceJobConfig
      def self.default(visited=[])
        return nil if visited.include?('BatchInferenceJobConfig')
        visited = visited + ['BatchInferenceJobConfig']
        {
          item_exploration_config: HyperParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchInferenceJobConfig.new
        data = {}
        data['itemExplorationConfig'] = HyperParameters.stub(stub[:item_exploration_config]) unless stub[:item_exploration_config].nil?
        data
      end
    end

    # Structure Stubber for BatchInferenceJobOutput
    class BatchInferenceJobOutput
      def self.default(visited=[])
        return nil if visited.include?('BatchInferenceJobOutput')
        visited = visited + ['BatchInferenceJobOutput']
        {
          s3_data_destination: S3DataConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchInferenceJobOutput.new
        data = {}
        data['s3DataDestination'] = S3DataConfig.stub(stub[:s3_data_destination]) unless stub[:s3_data_destination].nil?
        data
      end
    end

    # Structure Stubber for S3DataConfig
    class S3DataConfig
      def self.default(visited=[])
        return nil if visited.include?('S3DataConfig')
        visited = visited + ['S3DataConfig']
        {
          path: 'path',
          kms_key_arn: 'kms_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3DataConfig.new
        data = {}
        data['path'] = stub[:path] unless stub[:path].nil?
        data['kmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data
      end
    end

    # Structure Stubber for BatchInferenceJobInput
    class BatchInferenceJobInput
      def self.default(visited=[])
        return nil if visited.include?('BatchInferenceJobInput')
        visited = visited + ['BatchInferenceJobInput']
        {
          s3_data_source: S3DataConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchInferenceJobInput.new
        data = {}
        data['s3DataSource'] = S3DataConfig.stub(stub[:s3_data_source]) unless stub[:s3_data_source].nil?
        data
      end
    end

    # Operation Stubber for DescribeBatchSegmentJob
    class DescribeBatchSegmentJob
      def self.default(visited=[])
        {
          batch_segment_job: BatchSegmentJob.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['batchSegmentJob'] = BatchSegmentJob.stub(stub[:batch_segment_job]) unless stub[:batch_segment_job].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for BatchSegmentJob
    class BatchSegmentJob
      def self.default(visited=[])
        return nil if visited.include?('BatchSegmentJob')
        visited = visited + ['BatchSegmentJob']
        {
          job_name: 'job_name',
          batch_segment_job_arn: 'batch_segment_job_arn',
          filter_arn: 'filter_arn',
          failure_reason: 'failure_reason',
          solution_version_arn: 'solution_version_arn',
          num_results: 1,
          job_input: BatchSegmentJobInput.default(visited),
          job_output: BatchSegmentJobOutput.default(visited),
          role_arn: 'role_arn',
          status: 'status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchSegmentJob.new
        data = {}
        data['jobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['batchSegmentJobArn'] = stub[:batch_segment_job_arn] unless stub[:batch_segment_job_arn].nil?
        data['filterArn'] = stub[:filter_arn] unless stub[:filter_arn].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['solutionVersionArn'] = stub[:solution_version_arn] unless stub[:solution_version_arn].nil?
        data['numResults'] = stub[:num_results] unless stub[:num_results].nil?
        data['jobInput'] = BatchSegmentJobInput.stub(stub[:job_input]) unless stub[:job_input].nil?
        data['jobOutput'] = BatchSegmentJobOutput.stub(stub[:job_output]) unless stub[:job_output].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Structure Stubber for BatchSegmentJobOutput
    class BatchSegmentJobOutput
      def self.default(visited=[])
        return nil if visited.include?('BatchSegmentJobOutput')
        visited = visited + ['BatchSegmentJobOutput']
        {
          s3_data_destination: S3DataConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchSegmentJobOutput.new
        data = {}
        data['s3DataDestination'] = S3DataConfig.stub(stub[:s3_data_destination]) unless stub[:s3_data_destination].nil?
        data
      end
    end

    # Structure Stubber for BatchSegmentJobInput
    class BatchSegmentJobInput
      def self.default(visited=[])
        return nil if visited.include?('BatchSegmentJobInput')
        visited = visited + ['BatchSegmentJobInput']
        {
          s3_data_source: S3DataConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchSegmentJobInput.new
        data = {}
        data['s3DataSource'] = S3DataConfig.stub(stub[:s3_data_source]) unless stub[:s3_data_source].nil?
        data
      end
    end

    # Operation Stubber for DescribeCampaign
    class DescribeCampaign
      def self.default(visited=[])
        {
          campaign: Campaign.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['campaign'] = Campaign.stub(stub[:campaign]) unless stub[:campaign].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Campaign
    class Campaign
      def self.default(visited=[])
        return nil if visited.include?('Campaign')
        visited = visited + ['Campaign']
        {
          name: 'name',
          campaign_arn: 'campaign_arn',
          solution_version_arn: 'solution_version_arn',
          min_provisioned_tps: 1,
          campaign_config: CampaignConfig.default(visited),
          status: 'status',
          failure_reason: 'failure_reason',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          latest_campaign_update: CampaignUpdateSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Campaign.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['campaignArn'] = stub[:campaign_arn] unless stub[:campaign_arn].nil?
        data['solutionVersionArn'] = stub[:solution_version_arn] unless stub[:solution_version_arn].nil?
        data['minProvisionedTPS'] = stub[:min_provisioned_tps] unless stub[:min_provisioned_tps].nil?
        data['campaignConfig'] = CampaignConfig.stub(stub[:campaign_config]) unless stub[:campaign_config].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['latestCampaignUpdate'] = CampaignUpdateSummary.stub(stub[:latest_campaign_update]) unless stub[:latest_campaign_update].nil?
        data
      end
    end

    # Structure Stubber for CampaignUpdateSummary
    class CampaignUpdateSummary
      def self.default(visited=[])
        return nil if visited.include?('CampaignUpdateSummary')
        visited = visited + ['CampaignUpdateSummary']
        {
          solution_version_arn: 'solution_version_arn',
          min_provisioned_tps: 1,
          campaign_config: CampaignConfig.default(visited),
          status: 'status',
          failure_reason: 'failure_reason',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::CampaignUpdateSummary.new
        data = {}
        data['solutionVersionArn'] = stub[:solution_version_arn] unless stub[:solution_version_arn].nil?
        data['minProvisionedTPS'] = stub[:min_provisioned_tps] unless stub[:min_provisioned_tps].nil?
        data['campaignConfig'] = CampaignConfig.stub(stub[:campaign_config]) unless stub[:campaign_config].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Structure Stubber for CampaignConfig
    class CampaignConfig
      def self.default(visited=[])
        return nil if visited.include?('CampaignConfig')
        visited = visited + ['CampaignConfig']
        {
          item_exploration_config: HyperParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CampaignConfig.new
        data = {}
        data['itemExplorationConfig'] = HyperParameters.stub(stub[:item_exploration_config]) unless stub[:item_exploration_config].nil?
        data
      end
    end

    # Operation Stubber for DescribeDataset
    class DescribeDataset
      def self.default(visited=[])
        {
          dataset: Dataset.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['dataset'] = Dataset.stub(stub[:dataset]) unless stub[:dataset].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Dataset
    class Dataset
      def self.default(visited=[])
        return nil if visited.include?('Dataset')
        visited = visited + ['Dataset']
        {
          name: 'name',
          dataset_arn: 'dataset_arn',
          dataset_group_arn: 'dataset_group_arn',
          dataset_type: 'dataset_type',
          schema_arn: 'schema_arn',
          status: 'status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Dataset.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['datasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        data['datasetGroupArn'] = stub[:dataset_group_arn] unless stub[:dataset_group_arn].nil?
        data['datasetType'] = stub[:dataset_type] unless stub[:dataset_type].nil?
        data['schemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeDatasetExportJob
    class DescribeDatasetExportJob
      def self.default(visited=[])
        {
          dataset_export_job: DatasetExportJob.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['datasetExportJob'] = DatasetExportJob.stub(stub[:dataset_export_job]) unless stub[:dataset_export_job].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DatasetExportJob
    class DatasetExportJob
      def self.default(visited=[])
        return nil if visited.include?('DatasetExportJob')
        visited = visited + ['DatasetExportJob']
        {
          job_name: 'job_name',
          dataset_export_job_arn: 'dataset_export_job_arn',
          dataset_arn: 'dataset_arn',
          ingestion_mode: 'ingestion_mode',
          role_arn: 'role_arn',
          status: 'status',
          job_output: DatasetExportJobOutput.default(visited),
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetExportJob.new
        data = {}
        data['jobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['datasetExportJobArn'] = stub[:dataset_export_job_arn] unless stub[:dataset_export_job_arn].nil?
        data['datasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        data['ingestionMode'] = stub[:ingestion_mode] unless stub[:ingestion_mode].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['jobOutput'] = DatasetExportJobOutput.stub(stub[:job_output]) unless stub[:job_output].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Structure Stubber for DatasetExportJobOutput
    class DatasetExportJobOutput
      def self.default(visited=[])
        return nil if visited.include?('DatasetExportJobOutput')
        visited = visited + ['DatasetExportJobOutput']
        {
          s3_data_destination: S3DataConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetExportJobOutput.new
        data = {}
        data['s3DataDestination'] = S3DataConfig.stub(stub[:s3_data_destination]) unless stub[:s3_data_destination].nil?
        data
      end
    end

    # Operation Stubber for DescribeDatasetGroup
    class DescribeDatasetGroup
      def self.default(visited=[])
        {
          dataset_group: DatasetGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['datasetGroup'] = DatasetGroup.stub(stub[:dataset_group]) unless stub[:dataset_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DatasetGroup
    class DatasetGroup
      def self.default(visited=[])
        return nil if visited.include?('DatasetGroup')
        visited = visited + ['DatasetGroup']
        {
          name: 'name',
          dataset_group_arn: 'dataset_group_arn',
          status: 'status',
          role_arn: 'role_arn',
          kms_key_arn: 'kms_key_arn',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          failure_reason: 'failure_reason',
          domain: 'domain',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetGroup.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['datasetGroupArn'] = stub[:dataset_group_arn] unless stub[:dataset_group_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['kmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['domain'] = stub[:domain] unless stub[:domain].nil?
        data
      end
    end

    # Operation Stubber for DescribeDatasetImportJob
    class DescribeDatasetImportJob
      def self.default(visited=[])
        {
          dataset_import_job: DatasetImportJob.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['datasetImportJob'] = DatasetImportJob.stub(stub[:dataset_import_job]) unless stub[:dataset_import_job].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DatasetImportJob
    class DatasetImportJob
      def self.default(visited=[])
        return nil if visited.include?('DatasetImportJob')
        visited = visited + ['DatasetImportJob']
        {
          job_name: 'job_name',
          dataset_import_job_arn: 'dataset_import_job_arn',
          dataset_arn: 'dataset_arn',
          data_source: DataSource.default(visited),
          role_arn: 'role_arn',
          status: 'status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetImportJob.new
        data = {}
        data['jobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['datasetImportJobArn'] = stub[:dataset_import_job_arn] unless stub[:dataset_import_job_arn].nil?
        data['datasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        data['dataSource'] = DataSource.stub(stub[:data_source]) unless stub[:data_source].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Structure Stubber for DataSource
    class DataSource
      def self.default(visited=[])
        return nil if visited.include?('DataSource')
        visited = visited + ['DataSource']
        {
          data_location: 'data_location',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSource.new
        data = {}
        data['dataLocation'] = stub[:data_location] unless stub[:data_location].nil?
        data
      end
    end

    # Operation Stubber for DescribeEventTracker
    class DescribeEventTracker
      def self.default(visited=[])
        {
          event_tracker: EventTracker.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['eventTracker'] = EventTracker.stub(stub[:event_tracker]) unless stub[:event_tracker].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for EventTracker
    class EventTracker
      def self.default(visited=[])
        return nil if visited.include?('EventTracker')
        visited = visited + ['EventTracker']
        {
          name: 'name',
          event_tracker_arn: 'event_tracker_arn',
          account_id: 'account_id',
          tracking_id: 'tracking_id',
          dataset_group_arn: 'dataset_group_arn',
          status: 'status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EventTracker.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['eventTrackerArn'] = stub[:event_tracker_arn] unless stub[:event_tracker_arn].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['trackingId'] = stub[:tracking_id] unless stub[:tracking_id].nil?
        data['datasetGroupArn'] = stub[:dataset_group_arn] unless stub[:dataset_group_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeFeatureTransformation
    class DescribeFeatureTransformation
      def self.default(visited=[])
        {
          feature_transformation: FeatureTransformation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['featureTransformation'] = FeatureTransformation.stub(stub[:feature_transformation]) unless stub[:feature_transformation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for FeatureTransformation
    class FeatureTransformation
      def self.default(visited=[])
        return nil if visited.include?('FeatureTransformation')
        visited = visited + ['FeatureTransformation']
        {
          name: 'name',
          feature_transformation_arn: 'feature_transformation_arn',
          default_parameters: FeaturizationParameters.default(visited),
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::FeatureTransformation.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['featureTransformationArn'] = stub[:feature_transformation_arn] unless stub[:feature_transformation_arn].nil?
        data['defaultParameters'] = FeaturizationParameters.stub(stub[:default_parameters]) unless stub[:default_parameters].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Map Stubber for FeaturizationParameters
    class FeaturizationParameters
      def self.default(visited=[])
        return nil if visited.include?('FeaturizationParameters')
        visited = visited + ['FeaturizationParameters']
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

    # Operation Stubber for DescribeFilter
    class DescribeFilter
      def self.default(visited=[])
        {
          filter: Filter.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['filter'] = Filter.stub(stub[:filter]) unless stub[:filter].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Filter
    class Filter
      def self.default(visited=[])
        return nil if visited.include?('Filter')
        visited = visited + ['Filter']
        {
          name: 'name',
          filter_arn: 'filter_arn',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          dataset_group_arn: 'dataset_group_arn',
          failure_reason: 'failure_reason',
          filter_expression: 'filter_expression',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::Filter.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['filterArn'] = stub[:filter_arn] unless stub[:filter_arn].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['datasetGroupArn'] = stub[:dataset_group_arn] unless stub[:dataset_group_arn].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['filterExpression'] = stub[:filter_expression] unless stub[:filter_expression].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for DescribeRecipe
    class DescribeRecipe
      def self.default(visited=[])
        {
          recipe: Recipe.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['recipe'] = Recipe.stub(stub[:recipe]) unless stub[:recipe].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Recipe
    class Recipe
      def self.default(visited=[])
        return nil if visited.include?('Recipe')
        visited = visited + ['Recipe']
        {
          name: 'name',
          recipe_arn: 'recipe_arn',
          algorithm_arn: 'algorithm_arn',
          feature_transformation_arn: 'feature_transformation_arn',
          status: 'status',
          description: 'description',
          creation_date_time: Time.now,
          recipe_type: 'recipe_type',
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Recipe.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['recipeArn'] = stub[:recipe_arn] unless stub[:recipe_arn].nil?
        data['algorithmArn'] = stub[:algorithm_arn] unless stub[:algorithm_arn].nil?
        data['featureTransformationArn'] = stub[:feature_transformation_arn] unless stub[:feature_transformation_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['recipeType'] = stub[:recipe_type] unless stub[:recipe_type].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeRecommender
    class DescribeRecommender
      def self.default(visited=[])
        {
          recommender: Recommender.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['recommender'] = Recommender.stub(stub[:recommender]) unless stub[:recommender].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Recommender
    class Recommender
      def self.default(visited=[])
        return nil if visited.include?('Recommender')
        visited = visited + ['Recommender']
        {
          recommender_arn: 'recommender_arn',
          dataset_group_arn: 'dataset_group_arn',
          name: 'name',
          recipe_arn: 'recipe_arn',
          recommender_config: RecommenderConfig.default(visited),
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          status: 'status',
          failure_reason: 'failure_reason',
          latest_recommender_update: RecommenderUpdateSummary.default(visited),
          model_metrics: Metrics.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Recommender.new
        data = {}
        data['recommenderArn'] = stub[:recommender_arn] unless stub[:recommender_arn].nil?
        data['datasetGroupArn'] = stub[:dataset_group_arn] unless stub[:dataset_group_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['recipeArn'] = stub[:recipe_arn] unless stub[:recipe_arn].nil?
        data['recommenderConfig'] = RecommenderConfig.stub(stub[:recommender_config]) unless stub[:recommender_config].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['latestRecommenderUpdate'] = RecommenderUpdateSummary.stub(stub[:latest_recommender_update]) unless stub[:latest_recommender_update].nil?
        data['modelMetrics'] = Metrics.stub(stub[:model_metrics]) unless stub[:model_metrics].nil?
        data
      end
    end

    # Map Stubber for Metrics
    class Metrics
      def self.default(visited=[])
        return nil if visited.include?('Metrics')
        visited = visited + ['Metrics']
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

    # Structure Stubber for RecommenderUpdateSummary
    class RecommenderUpdateSummary
      def self.default(visited=[])
        return nil if visited.include?('RecommenderUpdateSummary')
        visited = visited + ['RecommenderUpdateSummary']
        {
          recommender_config: RecommenderConfig.default(visited),
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          status: 'status',
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommenderUpdateSummary.new
        data = {}
        data['recommenderConfig'] = RecommenderConfig.stub(stub[:recommender_config]) unless stub[:recommender_config].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Structure Stubber for RecommenderConfig
    class RecommenderConfig
      def self.default(visited=[])
        return nil if visited.include?('RecommenderConfig')
        visited = visited + ['RecommenderConfig']
        {
          item_exploration_config: HyperParameters.default(visited),
          min_recommendation_requests_per_second: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommenderConfig.new
        data = {}
        data['itemExplorationConfig'] = HyperParameters.stub(stub[:item_exploration_config]) unless stub[:item_exploration_config].nil?
        data['minRecommendationRequestsPerSecond'] = stub[:min_recommendation_requests_per_second] unless stub[:min_recommendation_requests_per_second].nil?
        data
      end
    end

    # Operation Stubber for DescribeSchema
    class DescribeSchema
      def self.default(visited=[])
        {
          schema: DatasetSchema.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['schema'] = DatasetSchema.stub(stub[:schema]) unless stub[:schema].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DatasetSchema
    class DatasetSchema
      def self.default(visited=[])
        return nil if visited.include?('DatasetSchema')
        visited = visited + ['DatasetSchema']
        {
          name: 'name',
          schema_arn: 'schema_arn',
          schema: 'schema',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          domain: 'domain',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetSchema.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['schemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['schema'] = stub[:schema] unless stub[:schema].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['domain'] = stub[:domain] unless stub[:domain].nil?
        data
      end
    end

    # Operation Stubber for DescribeSolution
    class DescribeSolution
      def self.default(visited=[])
        {
          solution: Solution.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['solution'] = Solution.stub(stub[:solution]) unless stub[:solution].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Solution
    class Solution
      def self.default(visited=[])
        return nil if visited.include?('Solution')
        visited = visited + ['Solution']
        {
          name: 'name',
          solution_arn: 'solution_arn',
          perform_hpo: false,
          perform_auto_ml: false,
          recipe_arn: 'recipe_arn',
          dataset_group_arn: 'dataset_group_arn',
          event_type: 'event_type',
          solution_config: SolutionConfig.default(visited),
          auto_ml_result: AutoMLResult.default(visited),
          status: 'status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          latest_solution_version: SolutionVersionSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Solution.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['solutionArn'] = stub[:solution_arn] unless stub[:solution_arn].nil?
        data['performHPO'] = stub[:perform_hpo] unless stub[:perform_hpo].nil?
        data['performAutoML'] = stub[:perform_auto_ml] unless stub[:perform_auto_ml].nil?
        data['recipeArn'] = stub[:recipe_arn] unless stub[:recipe_arn].nil?
        data['datasetGroupArn'] = stub[:dataset_group_arn] unless stub[:dataset_group_arn].nil?
        data['eventType'] = stub[:event_type] unless stub[:event_type].nil?
        data['solutionConfig'] = SolutionConfig.stub(stub[:solution_config]) unless stub[:solution_config].nil?
        data['autoMLResult'] = AutoMLResult.stub(stub[:auto_ml_result]) unless stub[:auto_ml_result].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['latestSolutionVersion'] = SolutionVersionSummary.stub(stub[:latest_solution_version]) unless stub[:latest_solution_version].nil?
        data
      end
    end

    # Structure Stubber for SolutionVersionSummary
    class SolutionVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('SolutionVersionSummary')
        visited = visited + ['SolutionVersionSummary']
        {
          solution_version_arn: 'solution_version_arn',
          status: 'status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::SolutionVersionSummary.new
        data = {}
        data['solutionVersionArn'] = stub[:solution_version_arn] unless stub[:solution_version_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Structure Stubber for AutoMLResult
    class AutoMLResult
      def self.default(visited=[])
        return nil if visited.include?('AutoMLResult')
        visited = visited + ['AutoMLResult']
        {
          best_recipe_arn: 'best_recipe_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoMLResult.new
        data = {}
        data['bestRecipeArn'] = stub[:best_recipe_arn] unless stub[:best_recipe_arn].nil?
        data
      end
    end

    # Structure Stubber for SolutionConfig
    class SolutionConfig
      def self.default(visited=[])
        return nil if visited.include?('SolutionConfig')
        visited = visited + ['SolutionConfig']
        {
          event_value_threshold: 'event_value_threshold',
          hpo_config: HPOConfig.default(visited),
          algorithm_hyper_parameters: HyperParameters.default(visited),
          feature_transformation_parameters: FeatureTransformationParameters.default(visited),
          auto_ml_config: AutoMLConfig.default(visited),
          optimization_objective: OptimizationObjective.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SolutionConfig.new
        data = {}
        data['eventValueThreshold'] = stub[:event_value_threshold] unless stub[:event_value_threshold].nil?
        data['hpoConfig'] = HPOConfig.stub(stub[:hpo_config]) unless stub[:hpo_config].nil?
        data['algorithmHyperParameters'] = HyperParameters.stub(stub[:algorithm_hyper_parameters]) unless stub[:algorithm_hyper_parameters].nil?
        data['featureTransformationParameters'] = FeatureTransformationParameters.stub(stub[:feature_transformation_parameters]) unless stub[:feature_transformation_parameters].nil?
        data['autoMLConfig'] = AutoMLConfig.stub(stub[:auto_ml_config]) unless stub[:auto_ml_config].nil?
        data['optimizationObjective'] = OptimizationObjective.stub(stub[:optimization_objective]) unless stub[:optimization_objective].nil?
        data
      end
    end

    # Structure Stubber for OptimizationObjective
    class OptimizationObjective
      def self.default(visited=[])
        return nil if visited.include?('OptimizationObjective')
        visited = visited + ['OptimizationObjective']
        {
          item_attribute: 'item_attribute',
          objective_sensitivity: 'objective_sensitivity',
        }
      end

      def self.stub(stub)
        stub ||= Types::OptimizationObjective.new
        data = {}
        data['itemAttribute'] = stub[:item_attribute] unless stub[:item_attribute].nil?
        data['objectiveSensitivity'] = stub[:objective_sensitivity] unless stub[:objective_sensitivity].nil?
        data
      end
    end

    # Structure Stubber for AutoMLConfig
    class AutoMLConfig
      def self.default(visited=[])
        return nil if visited.include?('AutoMLConfig')
        visited = visited + ['AutoMLConfig']
        {
          metric_name: 'metric_name',
          recipe_list: ArnList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoMLConfig.new
        data = {}
        data['metricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['recipeList'] = ArnList.stub(stub[:recipe_list]) unless stub[:recipe_list].nil?
        data
      end
    end

    # List Stubber for ArnList
    class ArnList
      def self.default(visited=[])
        return nil if visited.include?('ArnList')
        visited = visited + ['ArnList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Stubber for FeatureTransformationParameters
    class FeatureTransformationParameters
      def self.default(visited=[])
        return nil if visited.include?('FeatureTransformationParameters')
        visited = visited + ['FeatureTransformationParameters']
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

    # Structure Stubber for HPOConfig
    class HPOConfig
      def self.default(visited=[])
        return nil if visited.include?('HPOConfig')
        visited = visited + ['HPOConfig']
        {
          hpo_objective: HPOObjective.default(visited),
          hpo_resource_config: HPOResourceConfig.default(visited),
          algorithm_hyper_parameter_ranges: HyperParameterRanges.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HPOConfig.new
        data = {}
        data['hpoObjective'] = HPOObjective.stub(stub[:hpo_objective]) unless stub[:hpo_objective].nil?
        data['hpoResourceConfig'] = HPOResourceConfig.stub(stub[:hpo_resource_config]) unless stub[:hpo_resource_config].nil?
        data['algorithmHyperParameterRanges'] = HyperParameterRanges.stub(stub[:algorithm_hyper_parameter_ranges]) unless stub[:algorithm_hyper_parameter_ranges].nil?
        data
      end
    end

    # Structure Stubber for HyperParameterRanges
    class HyperParameterRanges
      def self.default(visited=[])
        return nil if visited.include?('HyperParameterRanges')
        visited = visited + ['HyperParameterRanges']
        {
          integer_hyper_parameter_ranges: IntegerHyperParameterRanges.default(visited),
          continuous_hyper_parameter_ranges: ContinuousHyperParameterRanges.default(visited),
          categorical_hyper_parameter_ranges: CategoricalHyperParameterRanges.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HyperParameterRanges.new
        data = {}
        data['integerHyperParameterRanges'] = IntegerHyperParameterRanges.stub(stub[:integer_hyper_parameter_ranges]) unless stub[:integer_hyper_parameter_ranges].nil?
        data['continuousHyperParameterRanges'] = ContinuousHyperParameterRanges.stub(stub[:continuous_hyper_parameter_ranges]) unless stub[:continuous_hyper_parameter_ranges].nil?
        data['categoricalHyperParameterRanges'] = CategoricalHyperParameterRanges.stub(stub[:categorical_hyper_parameter_ranges]) unless stub[:categorical_hyper_parameter_ranges].nil?
        data
      end
    end

    # List Stubber for CategoricalHyperParameterRanges
    class CategoricalHyperParameterRanges
      def self.default(visited=[])
        return nil if visited.include?('CategoricalHyperParameterRanges')
        visited = visited + ['CategoricalHyperParameterRanges']
        [
          CategoricalHyperParameterRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CategoricalHyperParameterRange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CategoricalHyperParameterRange
    class CategoricalHyperParameterRange
      def self.default(visited=[])
        return nil if visited.include?('CategoricalHyperParameterRange')
        visited = visited + ['CategoricalHyperParameterRange']
        {
          name: 'name',
          values: CategoricalValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CategoricalHyperParameterRange.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['values'] = CategoricalValues.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for ContinuousHyperParameterRanges
    class ContinuousHyperParameterRanges
      def self.default(visited=[])
        return nil if visited.include?('ContinuousHyperParameterRanges')
        visited = visited + ['ContinuousHyperParameterRanges']
        [
          ContinuousHyperParameterRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ContinuousHyperParameterRange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContinuousHyperParameterRange
    class ContinuousHyperParameterRange
      def self.default(visited=[])
        return nil if visited.include?('ContinuousHyperParameterRange')
        visited = visited + ['ContinuousHyperParameterRange']
        {
          name: 'name',
          min_value: 1.0,
          max_value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ContinuousHyperParameterRange.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['minValue'] = Hearth::NumberHelper.serialize(stub[:min_value])
        data['maxValue'] = Hearth::NumberHelper.serialize(stub[:max_value])
        data
      end
    end

    # List Stubber for IntegerHyperParameterRanges
    class IntegerHyperParameterRanges
      def self.default(visited=[])
        return nil if visited.include?('IntegerHyperParameterRanges')
        visited = visited + ['IntegerHyperParameterRanges']
        [
          IntegerHyperParameterRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << IntegerHyperParameterRange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IntegerHyperParameterRange
    class IntegerHyperParameterRange
      def self.default(visited=[])
        return nil if visited.include?('IntegerHyperParameterRange')
        visited = visited + ['IntegerHyperParameterRange']
        {
          name: 'name',
          min_value: 1,
          max_value: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::IntegerHyperParameterRange.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['minValue'] = stub[:min_value] unless stub[:min_value].nil?
        data['maxValue'] = stub[:max_value] unless stub[:max_value].nil?
        data
      end
    end

    # Structure Stubber for HPOResourceConfig
    class HPOResourceConfig
      def self.default(visited=[])
        return nil if visited.include?('HPOResourceConfig')
        visited = visited + ['HPOResourceConfig']
        {
          max_number_of_training_jobs: 'max_number_of_training_jobs',
          max_parallel_training_jobs: 'max_parallel_training_jobs',
        }
      end

      def self.stub(stub)
        stub ||= Types::HPOResourceConfig.new
        data = {}
        data['maxNumberOfTrainingJobs'] = stub[:max_number_of_training_jobs] unless stub[:max_number_of_training_jobs].nil?
        data['maxParallelTrainingJobs'] = stub[:max_parallel_training_jobs] unless stub[:max_parallel_training_jobs].nil?
        data
      end
    end

    # Structure Stubber for HPOObjective
    class HPOObjective
      def self.default(visited=[])
        return nil if visited.include?('HPOObjective')
        visited = visited + ['HPOObjective']
        {
          type: 'type',
          metric_name: 'metric_name',
          metric_regex: 'metric_regex',
        }
      end

      def self.stub(stub)
        stub ||= Types::HPOObjective.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['metricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['metricRegex'] = stub[:metric_regex] unless stub[:metric_regex].nil?
        data
      end
    end

    # Operation Stubber for DescribeSolutionVersion
    class DescribeSolutionVersion
      def self.default(visited=[])
        {
          solution_version: SolutionVersion.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['solutionVersion'] = SolutionVersion.stub(stub[:solution_version]) unless stub[:solution_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SolutionVersion
    class SolutionVersion
      def self.default(visited=[])
        return nil if visited.include?('SolutionVersion')
        visited = visited + ['SolutionVersion']
        {
          solution_version_arn: 'solution_version_arn',
          solution_arn: 'solution_arn',
          perform_hpo: false,
          perform_auto_ml: false,
          recipe_arn: 'recipe_arn',
          event_type: 'event_type',
          dataset_group_arn: 'dataset_group_arn',
          solution_config: SolutionConfig.default(visited),
          training_hours: 1.0,
          training_mode: 'training_mode',
          tuned_hpo_params: TunedHPOParams.default(visited),
          status: 'status',
          failure_reason: 'failure_reason',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SolutionVersion.new
        data = {}
        data['solutionVersionArn'] = stub[:solution_version_arn] unless stub[:solution_version_arn].nil?
        data['solutionArn'] = stub[:solution_arn] unless stub[:solution_arn].nil?
        data['performHPO'] = stub[:perform_hpo] unless stub[:perform_hpo].nil?
        data['performAutoML'] = stub[:perform_auto_ml] unless stub[:perform_auto_ml].nil?
        data['recipeArn'] = stub[:recipe_arn] unless stub[:recipe_arn].nil?
        data['eventType'] = stub[:event_type] unless stub[:event_type].nil?
        data['datasetGroupArn'] = stub[:dataset_group_arn] unless stub[:dataset_group_arn].nil?
        data['solutionConfig'] = SolutionConfig.stub(stub[:solution_config]) unless stub[:solution_config].nil?
        data['trainingHours'] = Hearth::NumberHelper.serialize(stub[:training_hours])
        data['trainingMode'] = stub[:training_mode] unless stub[:training_mode].nil?
        data['tunedHPOParams'] = TunedHPOParams.stub(stub[:tuned_hpo_params]) unless stub[:tuned_hpo_params].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Structure Stubber for TunedHPOParams
    class TunedHPOParams
      def self.default(visited=[])
        return nil if visited.include?('TunedHPOParams')
        visited = visited + ['TunedHPOParams']
        {
          algorithm_hyper_parameters: HyperParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TunedHPOParams.new
        data = {}
        data['algorithmHyperParameters'] = HyperParameters.stub(stub[:algorithm_hyper_parameters]) unless stub[:algorithm_hyper_parameters].nil?
        data
      end
    end

    # Operation Stubber for GetSolutionMetrics
    class GetSolutionMetrics
      def self.default(visited=[])
        {
          solution_version_arn: 'solution_version_arn',
          metrics: Metrics.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['solutionVersionArn'] = stub[:solution_version_arn] unless stub[:solution_version_arn].nil?
        data['metrics'] = Metrics.stub(stub[:metrics]) unless stub[:metrics].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListBatchInferenceJobs
    class ListBatchInferenceJobs
      def self.default(visited=[])
        {
          batch_inference_jobs: BatchInferenceJobs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['batchInferenceJobs'] = BatchInferenceJobs.stub(stub[:batch_inference_jobs]) unless stub[:batch_inference_jobs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BatchInferenceJobs
    class BatchInferenceJobs
      def self.default(visited=[])
        return nil if visited.include?('BatchInferenceJobs')
        visited = visited + ['BatchInferenceJobs']
        [
          BatchInferenceJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchInferenceJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchInferenceJobSummary
    class BatchInferenceJobSummary
      def self.default(visited=[])
        return nil if visited.include?('BatchInferenceJobSummary')
        visited = visited + ['BatchInferenceJobSummary']
        {
          batch_inference_job_arn: 'batch_inference_job_arn',
          job_name: 'job_name',
          status: 'status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          failure_reason: 'failure_reason',
          solution_version_arn: 'solution_version_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchInferenceJobSummary.new
        data = {}
        data['batchInferenceJobArn'] = stub[:batch_inference_job_arn] unless stub[:batch_inference_job_arn].nil?
        data['jobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['solutionVersionArn'] = stub[:solution_version_arn] unless stub[:solution_version_arn].nil?
        data
      end
    end

    # Operation Stubber for ListBatchSegmentJobs
    class ListBatchSegmentJobs
      def self.default(visited=[])
        {
          batch_segment_jobs: BatchSegmentJobs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['batchSegmentJobs'] = BatchSegmentJobs.stub(stub[:batch_segment_jobs]) unless stub[:batch_segment_jobs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BatchSegmentJobs
    class BatchSegmentJobs
      def self.default(visited=[])
        return nil if visited.include?('BatchSegmentJobs')
        visited = visited + ['BatchSegmentJobs']
        [
          BatchSegmentJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchSegmentJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchSegmentJobSummary
    class BatchSegmentJobSummary
      def self.default(visited=[])
        return nil if visited.include?('BatchSegmentJobSummary')
        visited = visited + ['BatchSegmentJobSummary']
        {
          batch_segment_job_arn: 'batch_segment_job_arn',
          job_name: 'job_name',
          status: 'status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          failure_reason: 'failure_reason',
          solution_version_arn: 'solution_version_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchSegmentJobSummary.new
        data = {}
        data['batchSegmentJobArn'] = stub[:batch_segment_job_arn] unless stub[:batch_segment_job_arn].nil?
        data['jobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['solutionVersionArn'] = stub[:solution_version_arn] unless stub[:solution_version_arn].nil?
        data
      end
    end

    # Operation Stubber for ListCampaigns
    class ListCampaigns
      def self.default(visited=[])
        {
          campaigns: Campaigns.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['campaigns'] = Campaigns.stub(stub[:campaigns]) unless stub[:campaigns].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Campaigns
    class Campaigns
      def self.default(visited=[])
        return nil if visited.include?('Campaigns')
        visited = visited + ['Campaigns']
        [
          CampaignSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CampaignSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CampaignSummary
    class CampaignSummary
      def self.default(visited=[])
        return nil if visited.include?('CampaignSummary')
        visited = visited + ['CampaignSummary']
        {
          name: 'name',
          campaign_arn: 'campaign_arn',
          status: 'status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::CampaignSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['campaignArn'] = stub[:campaign_arn] unless stub[:campaign_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Operation Stubber for ListDatasetExportJobs
    class ListDatasetExportJobs
      def self.default(visited=[])
        {
          dataset_export_jobs: DatasetExportJobs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['datasetExportJobs'] = DatasetExportJobs.stub(stub[:dataset_export_jobs]) unless stub[:dataset_export_jobs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DatasetExportJobs
    class DatasetExportJobs
      def self.default(visited=[])
        return nil if visited.include?('DatasetExportJobs')
        visited = visited + ['DatasetExportJobs']
        [
          DatasetExportJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DatasetExportJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatasetExportJobSummary
    class DatasetExportJobSummary
      def self.default(visited=[])
        return nil if visited.include?('DatasetExportJobSummary')
        visited = visited + ['DatasetExportJobSummary']
        {
          dataset_export_job_arn: 'dataset_export_job_arn',
          job_name: 'job_name',
          status: 'status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetExportJobSummary.new
        data = {}
        data['datasetExportJobArn'] = stub[:dataset_export_job_arn] unless stub[:dataset_export_job_arn].nil?
        data['jobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Operation Stubber for ListDatasetGroups
    class ListDatasetGroups
      def self.default(visited=[])
        {
          dataset_groups: DatasetGroups.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['datasetGroups'] = DatasetGroups.stub(stub[:dataset_groups]) unless stub[:dataset_groups].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DatasetGroups
    class DatasetGroups
      def self.default(visited=[])
        return nil if visited.include?('DatasetGroups')
        visited = visited + ['DatasetGroups']
        [
          DatasetGroupSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DatasetGroupSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatasetGroupSummary
    class DatasetGroupSummary
      def self.default(visited=[])
        return nil if visited.include?('DatasetGroupSummary')
        visited = visited + ['DatasetGroupSummary']
        {
          name: 'name',
          dataset_group_arn: 'dataset_group_arn',
          status: 'status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          failure_reason: 'failure_reason',
          domain: 'domain',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetGroupSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['datasetGroupArn'] = stub[:dataset_group_arn] unless stub[:dataset_group_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['domain'] = stub[:domain] unless stub[:domain].nil?
        data
      end
    end

    # Operation Stubber for ListDatasetImportJobs
    class ListDatasetImportJobs
      def self.default(visited=[])
        {
          dataset_import_jobs: DatasetImportJobs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['datasetImportJobs'] = DatasetImportJobs.stub(stub[:dataset_import_jobs]) unless stub[:dataset_import_jobs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DatasetImportJobs
    class DatasetImportJobs
      def self.default(visited=[])
        return nil if visited.include?('DatasetImportJobs')
        visited = visited + ['DatasetImportJobs']
        [
          DatasetImportJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DatasetImportJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatasetImportJobSummary
    class DatasetImportJobSummary
      def self.default(visited=[])
        return nil if visited.include?('DatasetImportJobSummary')
        visited = visited + ['DatasetImportJobSummary']
        {
          dataset_import_job_arn: 'dataset_import_job_arn',
          job_name: 'job_name',
          status: 'status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetImportJobSummary.new
        data = {}
        data['datasetImportJobArn'] = stub[:dataset_import_job_arn] unless stub[:dataset_import_job_arn].nil?
        data['jobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Operation Stubber for ListDatasets
    class ListDatasets
      def self.default(visited=[])
        {
          datasets: Datasets.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['datasets'] = Datasets.stub(stub[:datasets]) unless stub[:datasets].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Datasets
    class Datasets
      def self.default(visited=[])
        return nil if visited.include?('Datasets')
        visited = visited + ['Datasets']
        [
          DatasetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DatasetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatasetSummary
    class DatasetSummary
      def self.default(visited=[])
        return nil if visited.include?('DatasetSummary')
        visited = visited + ['DatasetSummary']
        {
          name: 'name',
          dataset_arn: 'dataset_arn',
          dataset_type: 'dataset_type',
          status: 'status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['datasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        data['datasetType'] = stub[:dataset_type] unless stub[:dataset_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Operation Stubber for ListEventTrackers
    class ListEventTrackers
      def self.default(visited=[])
        {
          event_trackers: EventTrackers.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['eventTrackers'] = EventTrackers.stub(stub[:event_trackers]) unless stub[:event_trackers].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EventTrackers
    class EventTrackers
      def self.default(visited=[])
        return nil if visited.include?('EventTrackers')
        visited = visited + ['EventTrackers']
        [
          EventTrackerSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EventTrackerSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventTrackerSummary
    class EventTrackerSummary
      def self.default(visited=[])
        return nil if visited.include?('EventTrackerSummary')
        visited = visited + ['EventTrackerSummary']
        {
          name: 'name',
          event_tracker_arn: 'event_tracker_arn',
          status: 'status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EventTrackerSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['eventTrackerArn'] = stub[:event_tracker_arn] unless stub[:event_tracker_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Operation Stubber for ListFilters
    class ListFilters
      def self.default(visited=[])
        {
          filters: Filters.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Filters'] = Filters.stub(stub[:filters]) unless stub[:filters].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Filters
    class Filters
      def self.default(visited=[])
        return nil if visited.include?('Filters')
        visited = visited + ['Filters']
        [
          FilterSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FilterSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FilterSummary
    class FilterSummary
      def self.default(visited=[])
        return nil if visited.include?('FilterSummary')
        visited = visited + ['FilterSummary']
        {
          name: 'name',
          filter_arn: 'filter_arn',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          dataset_group_arn: 'dataset_group_arn',
          failure_reason: 'failure_reason',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::FilterSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['filterArn'] = stub[:filter_arn] unless stub[:filter_arn].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['datasetGroupArn'] = stub[:dataset_group_arn] unless stub[:dataset_group_arn].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListRecipes
    class ListRecipes
      def self.default(visited=[])
        {
          recipes: Recipes.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['recipes'] = Recipes.stub(stub[:recipes]) unless stub[:recipes].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Recipes
    class Recipes
      def self.default(visited=[])
        return nil if visited.include?('Recipes')
        visited = visited + ['Recipes']
        [
          RecipeSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RecipeSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecipeSummary
    class RecipeSummary
      def self.default(visited=[])
        return nil if visited.include?('RecipeSummary')
        visited = visited + ['RecipeSummary']
        {
          name: 'name',
          recipe_arn: 'recipe_arn',
          status: 'status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          domain: 'domain',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecipeSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['recipeArn'] = stub[:recipe_arn] unless stub[:recipe_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['domain'] = stub[:domain] unless stub[:domain].nil?
        data
      end
    end

    # Operation Stubber for ListRecommenders
    class ListRecommenders
      def self.default(visited=[])
        {
          recommenders: Recommenders.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['recommenders'] = Recommenders.stub(stub[:recommenders]) unless stub[:recommenders].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Recommenders
    class Recommenders
      def self.default(visited=[])
        return nil if visited.include?('Recommenders')
        visited = visited + ['Recommenders']
        [
          RecommenderSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RecommenderSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecommenderSummary
    class RecommenderSummary
      def self.default(visited=[])
        return nil if visited.include?('RecommenderSummary')
        visited = visited + ['RecommenderSummary']
        {
          name: 'name',
          recommender_arn: 'recommender_arn',
          dataset_group_arn: 'dataset_group_arn',
          recipe_arn: 'recipe_arn',
          recommender_config: RecommenderConfig.default(visited),
          status: 'status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommenderSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['recommenderArn'] = stub[:recommender_arn] unless stub[:recommender_arn].nil?
        data['datasetGroupArn'] = stub[:dataset_group_arn] unless stub[:dataset_group_arn].nil?
        data['recipeArn'] = stub[:recipe_arn] unless stub[:recipe_arn].nil?
        data['recommenderConfig'] = RecommenderConfig.stub(stub[:recommender_config]) unless stub[:recommender_config].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Operation Stubber for ListSchemas
    class ListSchemas
      def self.default(visited=[])
        {
          schemas: Schemas.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['schemas'] = Schemas.stub(stub[:schemas]) unless stub[:schemas].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Schemas
    class Schemas
      def self.default(visited=[])
        return nil if visited.include?('Schemas')
        visited = visited + ['Schemas']
        [
          DatasetSchemaSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DatasetSchemaSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatasetSchemaSummary
    class DatasetSchemaSummary
      def self.default(visited=[])
        return nil if visited.include?('DatasetSchemaSummary')
        visited = visited + ['DatasetSchemaSummary']
        {
          name: 'name',
          schema_arn: 'schema_arn',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
          domain: 'domain',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetSchemaSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['schemaArn'] = stub[:schema_arn] unless stub[:schema_arn].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data['domain'] = stub[:domain] unless stub[:domain].nil?
        data
      end
    end

    # Operation Stubber for ListSolutionVersions
    class ListSolutionVersions
      def self.default(visited=[])
        {
          solution_versions: SolutionVersions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['solutionVersions'] = SolutionVersions.stub(stub[:solution_versions]) unless stub[:solution_versions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SolutionVersions
    class SolutionVersions
      def self.default(visited=[])
        return nil if visited.include?('SolutionVersions')
        visited = visited + ['SolutionVersions']
        [
          SolutionVersionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SolutionVersionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListSolutions
    class ListSolutions
      def self.default(visited=[])
        {
          solutions: Solutions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['solutions'] = Solutions.stub(stub[:solutions]) unless stub[:solutions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Solutions
    class Solutions
      def self.default(visited=[])
        return nil if visited.include?('Solutions')
        visited = visited + ['Solutions']
        [
          SolutionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SolutionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SolutionSummary
    class SolutionSummary
      def self.default(visited=[])
        return nil if visited.include?('SolutionSummary')
        visited = visited + ['SolutionSummary']
        {
          name: 'name',
          solution_arn: 'solution_arn',
          status: 'status',
          creation_date_time: Time.now,
          last_updated_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SolutionSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['solutionArn'] = stub[:solution_arn] unless stub[:solution_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['lastUpdatedDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date_time]).to_i unless stub[:last_updated_date_time].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
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
          tag_key: 'tag_key',
          tag_value: 'tag_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['tagKey'] = stub[:tag_key] unless stub[:tag_key].nil?
        data['tagValue'] = stub[:tag_value] unless stub[:tag_value].nil?
        data
      end
    end

    # Operation Stubber for StartRecommender
    class StartRecommender
      def self.default(visited=[])
        {
          recommender_arn: 'recommender_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['recommenderArn'] = stub[:recommender_arn] unless stub[:recommender_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopRecommender
    class StopRecommender
      def self.default(visited=[])
        {
          recommender_arn: 'recommender_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['recommenderArn'] = stub[:recommender_arn] unless stub[:recommender_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopSolutionVersionCreation
    class StopSolutionVersionCreation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateCampaign
    class UpdateCampaign
      def self.default(visited=[])
        {
          campaign_arn: 'campaign_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['campaignArn'] = stub[:campaign_arn] unless stub[:campaign_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRecommender
    class UpdateRecommender
      def self.default(visited=[])
        {
          recommender_arn: 'recommender_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['recommenderArn'] = stub[:recommender_arn] unless stub[:recommender_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
