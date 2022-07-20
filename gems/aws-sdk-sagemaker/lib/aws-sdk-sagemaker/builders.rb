# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SageMaker
  module Builders

    # Operation Builder for AddAssociation
    class AddAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.AddAssociation'
        data = {}
        data['SourceArn'] = input[:source_arn] unless input[:source_arn].nil?
        data['DestinationArn'] = input[:destination_arn] unless input[:destination_arn].nil?
        data['AssociationType'] = input[:association_type] unless input[:association_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AddTags
    class AddTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.AddTags'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
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

    # Operation Builder for AssociateTrialComponent
    class AssociateTrialComponent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.AssociateTrialComponent'
        data = {}
        data['TrialComponentName'] = input[:trial_component_name] unless input[:trial_component_name].nil?
        data['TrialName'] = input[:trial_name] unless input[:trial_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchDescribeModelPackage
    class BatchDescribeModelPackage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.BatchDescribeModelPackage'
        data = {}
        data['ModelPackageArnList'] = Builders::ModelPackageArnList.build(input[:model_package_arn_list]) unless input[:model_package_arn_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ModelPackageArnList
    class ModelPackageArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateAction
    class CreateAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateAction'
        data = {}
        data['ActionName'] = input[:action_name] unless input[:action_name].nil?
        data['Source'] = Builders::ActionSource.build(input[:source]) unless input[:source].nil?
        data['ActionType'] = input[:action_type] unless input[:action_type].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['Properties'] = Builders::LineageEntityParameters.build(input[:properties]) unless input[:properties].nil?
        data['MetadataProperties'] = Builders::MetadataProperties.build(input[:metadata_properties]) unless input[:metadata_properties].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MetadataProperties
    class MetadataProperties
      def self.build(input)
        data = {}
        data['CommitId'] = input[:commit_id] unless input[:commit_id].nil?
        data['Repository'] = input[:repository] unless input[:repository].nil?
        data['GeneratedBy'] = input[:generated_by] unless input[:generated_by].nil?
        data['ProjectId'] = input[:project_id] unless input[:project_id].nil?
        data
      end
    end

    # Map Builder for LineageEntityParameters
    class LineageEntityParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ActionSource
    class ActionSource
      def self.build(input)
        data = {}
        data['SourceUri'] = input[:source_uri] unless input[:source_uri].nil?
        data['SourceType'] = input[:source_type] unless input[:source_type].nil?
        data['SourceId'] = input[:source_id] unless input[:source_id].nil?
        data
      end
    end

    # Operation Builder for CreateAlgorithm
    class CreateAlgorithm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateAlgorithm'
        data = {}
        data['AlgorithmName'] = input[:algorithm_name] unless input[:algorithm_name].nil?
        data['AlgorithmDescription'] = input[:algorithm_description] unless input[:algorithm_description].nil?
        data['TrainingSpecification'] = Builders::TrainingSpecification.build(input[:training_specification]) unless input[:training_specification].nil?
        data['InferenceSpecification'] = Builders::InferenceSpecification.build(input[:inference_specification]) unless input[:inference_specification].nil?
        data['ValidationSpecification'] = Builders::AlgorithmValidationSpecification.build(input[:validation_specification]) unless input[:validation_specification].nil?
        data['CertifyForMarketplace'] = input[:certify_for_marketplace] unless input[:certify_for_marketplace].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AlgorithmValidationSpecification
    class AlgorithmValidationSpecification
      def self.build(input)
        data = {}
        data['ValidationRole'] = input[:validation_role] unless input[:validation_role].nil?
        data['ValidationProfiles'] = Builders::AlgorithmValidationProfiles.build(input[:validation_profiles]) unless input[:validation_profiles].nil?
        data
      end
    end

    # List Builder for AlgorithmValidationProfiles
    class AlgorithmValidationProfiles
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AlgorithmValidationProfile.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AlgorithmValidationProfile
    class AlgorithmValidationProfile
      def self.build(input)
        data = {}
        data['ProfileName'] = input[:profile_name] unless input[:profile_name].nil?
        data['TrainingJobDefinition'] = Builders::TrainingJobDefinition.build(input[:training_job_definition]) unless input[:training_job_definition].nil?
        data['TransformJobDefinition'] = Builders::TransformJobDefinition.build(input[:transform_job_definition]) unless input[:transform_job_definition].nil?
        data
      end
    end

    # Structure Builder for TransformJobDefinition
    class TransformJobDefinition
      def self.build(input)
        data = {}
        data['MaxConcurrentTransforms'] = input[:max_concurrent_transforms] unless input[:max_concurrent_transforms].nil?
        data['MaxPayloadInMB'] = input[:max_payload_in_mb] unless input[:max_payload_in_mb].nil?
        data['BatchStrategy'] = input[:batch_strategy] unless input[:batch_strategy].nil?
        data['Environment'] = Builders::TransformEnvironmentMap.build(input[:environment]) unless input[:environment].nil?
        data['TransformInput'] = Builders::TransformInput.build(input[:transform_input]) unless input[:transform_input].nil?
        data['TransformOutput'] = Builders::TransformOutput.build(input[:transform_output]) unless input[:transform_output].nil?
        data['TransformResources'] = Builders::TransformResources.build(input[:transform_resources]) unless input[:transform_resources].nil?
        data
      end
    end

    # Structure Builder for TransformResources
    class TransformResources
      def self.build(input)
        data = {}
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['InstanceCount'] = input[:instance_count] unless input[:instance_count].nil?
        data['VolumeKmsKeyId'] = input[:volume_kms_key_id] unless input[:volume_kms_key_id].nil?
        data
      end
    end

    # Structure Builder for TransformOutput
    class TransformOutput
      def self.build(input)
        data = {}
        data['S3OutputPath'] = input[:s3_output_path] unless input[:s3_output_path].nil?
        data['Accept'] = input[:accept] unless input[:accept].nil?
        data['AssembleWith'] = input[:assemble_with] unless input[:assemble_with].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # Structure Builder for TransformInput
    class TransformInput
      def self.build(input)
        data = {}
        data['DataSource'] = Builders::TransformDataSource.build(input[:data_source]) unless input[:data_source].nil?
        data['ContentType'] = input[:content_type] unless input[:content_type].nil?
        data['CompressionType'] = input[:compression_type] unless input[:compression_type].nil?
        data['SplitType'] = input[:split_type] unless input[:split_type].nil?
        data
      end
    end

    # Structure Builder for TransformDataSource
    class TransformDataSource
      def self.build(input)
        data = {}
        data['S3DataSource'] = Builders::TransformS3DataSource.build(input[:s3_data_source]) unless input[:s3_data_source].nil?
        data
      end
    end

    # Structure Builder for TransformS3DataSource
    class TransformS3DataSource
      def self.build(input)
        data = {}
        data['S3DataType'] = input[:s3_data_type] unless input[:s3_data_type].nil?
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data
      end
    end

    # Map Builder for TransformEnvironmentMap
    class TransformEnvironmentMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for TrainingJobDefinition
    class TrainingJobDefinition
      def self.build(input)
        data = {}
        data['TrainingInputMode'] = input[:training_input_mode] unless input[:training_input_mode].nil?
        data['HyperParameters'] = Builders::HyperParameters.build(input[:hyper_parameters]) unless input[:hyper_parameters].nil?
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = Builders::OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['ResourceConfig'] = Builders::ResourceConfig.build(input[:resource_config]) unless input[:resource_config].nil?
        data['StoppingCondition'] = Builders::StoppingCondition.build(input[:stopping_condition]) unless input[:stopping_condition].nil?
        data
      end
    end

    # Structure Builder for StoppingCondition
    class StoppingCondition
      def self.build(input)
        data = {}
        data['MaxRuntimeInSeconds'] = input[:max_runtime_in_seconds] unless input[:max_runtime_in_seconds].nil?
        data['MaxWaitTimeInSeconds'] = input[:max_wait_time_in_seconds] unless input[:max_wait_time_in_seconds].nil?
        data
      end
    end

    # Structure Builder for ResourceConfig
    class ResourceConfig
      def self.build(input)
        data = {}
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['InstanceCount'] = input[:instance_count] unless input[:instance_count].nil?
        data['VolumeSizeInGB'] = input[:volume_size_in_gb] unless input[:volume_size_in_gb].nil?
        data['VolumeKmsKeyId'] = input[:volume_kms_key_id] unless input[:volume_kms_key_id].nil?
        data
      end
    end

    # Structure Builder for OutputDataConfig
    class OutputDataConfig
      def self.build(input)
        data = {}
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['S3OutputPath'] = input[:s3_output_path] unless input[:s3_output_path].nil?
        data
      end
    end

    # List Builder for InputDataConfig
    class InputDataConfig
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Channel.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Channel
    class Channel
      def self.build(input)
        data = {}
        data['ChannelName'] = input[:channel_name] unless input[:channel_name].nil?
        data['DataSource'] = Builders::DataSource.build(input[:data_source]) unless input[:data_source].nil?
        data['ContentType'] = input[:content_type] unless input[:content_type].nil?
        data['CompressionType'] = input[:compression_type] unless input[:compression_type].nil?
        data['RecordWrapperType'] = input[:record_wrapper_type] unless input[:record_wrapper_type].nil?
        data['InputMode'] = input[:input_mode] unless input[:input_mode].nil?
        data['ShuffleConfig'] = Builders::ShuffleConfig.build(input[:shuffle_config]) unless input[:shuffle_config].nil?
        data
      end
    end

    # Structure Builder for ShuffleConfig
    class ShuffleConfig
      def self.build(input)
        data = {}
        data['Seed'] = input[:seed] unless input[:seed].nil?
        data
      end
    end

    # Structure Builder for DataSource
    class DataSource
      def self.build(input)
        data = {}
        data['S3DataSource'] = Builders::S3DataSource.build(input[:s3_data_source]) unless input[:s3_data_source].nil?
        data['FileSystemDataSource'] = Builders::FileSystemDataSource.build(input[:file_system_data_source]) unless input[:file_system_data_source].nil?
        data
      end
    end

    # Structure Builder for FileSystemDataSource
    class FileSystemDataSource
      def self.build(input)
        data = {}
        data['FileSystemId'] = input[:file_system_id] unless input[:file_system_id].nil?
        data['FileSystemAccessMode'] = input[:file_system_access_mode] unless input[:file_system_access_mode].nil?
        data['FileSystemType'] = input[:file_system_type] unless input[:file_system_type].nil?
        data['DirectoryPath'] = input[:directory_path] unless input[:directory_path].nil?
        data
      end
    end

    # Structure Builder for S3DataSource
    class S3DataSource
      def self.build(input)
        data = {}
        data['S3DataType'] = input[:s3_data_type] unless input[:s3_data_type].nil?
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data['S3DataDistributionType'] = input[:s3_data_distribution_type] unless input[:s3_data_distribution_type].nil?
        data['AttributeNames'] = Builders::AttributeNames.build(input[:attribute_names]) unless input[:attribute_names].nil?
        data
      end
    end

    # List Builder for AttributeNames
    class AttributeNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
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

    # Structure Builder for InferenceSpecification
    class InferenceSpecification
      def self.build(input)
        data = {}
        data['Containers'] = Builders::ModelPackageContainerDefinitionList.build(input[:containers]) unless input[:containers].nil?
        data['SupportedTransformInstanceTypes'] = Builders::TransformInstanceTypes.build(input[:supported_transform_instance_types]) unless input[:supported_transform_instance_types].nil?
        data['SupportedRealtimeInferenceInstanceTypes'] = Builders::RealtimeInferenceInstanceTypes.build(input[:supported_realtime_inference_instance_types]) unless input[:supported_realtime_inference_instance_types].nil?
        data['SupportedContentTypes'] = Builders::ContentTypes.build(input[:supported_content_types]) unless input[:supported_content_types].nil?
        data['SupportedResponseMIMETypes'] = Builders::ResponseMIMETypes.build(input[:supported_response_mime_types]) unless input[:supported_response_mime_types].nil?
        data
      end
    end

    # List Builder for ResponseMIMETypes
    class ResponseMIMETypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ContentTypes
    class ContentTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for RealtimeInferenceInstanceTypes
    class RealtimeInferenceInstanceTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for TransformInstanceTypes
    class TransformInstanceTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ModelPackageContainerDefinitionList
    class ModelPackageContainerDefinitionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ModelPackageContainerDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ModelPackageContainerDefinition
    class ModelPackageContainerDefinition
      def self.build(input)
        data = {}
        data['ContainerHostname'] = input[:container_hostname] unless input[:container_hostname].nil?
        data['Image'] = input[:image] unless input[:image].nil?
        data['ImageDigest'] = input[:image_digest] unless input[:image_digest].nil?
        data['ModelDataUrl'] = input[:model_data_url] unless input[:model_data_url].nil?
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['Environment'] = Builders::EnvironmentMap.build(input[:environment]) unless input[:environment].nil?
        data['ModelInput'] = Builders::ModelInput.build(input[:model_input]) unless input[:model_input].nil?
        data['Framework'] = input[:framework] unless input[:framework].nil?
        data['FrameworkVersion'] = input[:framework_version] unless input[:framework_version].nil?
        data['NearestModelName'] = input[:nearest_model_name] unless input[:nearest_model_name].nil?
        data
      end
    end

    # Structure Builder for ModelInput
    class ModelInput
      def self.build(input)
        data = {}
        data['DataInputConfig'] = input[:data_input_config] unless input[:data_input_config].nil?
        data
      end
    end

    # Map Builder for EnvironmentMap
    class EnvironmentMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for TrainingSpecification
    class TrainingSpecification
      def self.build(input)
        data = {}
        data['TrainingImage'] = input[:training_image] unless input[:training_image].nil?
        data['TrainingImageDigest'] = input[:training_image_digest] unless input[:training_image_digest].nil?
        data['SupportedHyperParameters'] = Builders::HyperParameterSpecifications.build(input[:supported_hyper_parameters]) unless input[:supported_hyper_parameters].nil?
        data['SupportedTrainingInstanceTypes'] = Builders::TrainingInstanceTypes.build(input[:supported_training_instance_types]) unless input[:supported_training_instance_types].nil?
        data['SupportsDistributedTraining'] = input[:supports_distributed_training] unless input[:supports_distributed_training].nil?
        data['MetricDefinitions'] = Builders::MetricDefinitionList.build(input[:metric_definitions]) unless input[:metric_definitions].nil?
        data['TrainingChannels'] = Builders::ChannelSpecifications.build(input[:training_channels]) unless input[:training_channels].nil?
        data['SupportedTuningJobObjectiveMetrics'] = Builders::HyperParameterTuningJobObjectives.build(input[:supported_tuning_job_objective_metrics]) unless input[:supported_tuning_job_objective_metrics].nil?
        data
      end
    end

    # List Builder for HyperParameterTuningJobObjectives
    class HyperParameterTuningJobObjectives
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::HyperParameterTuningJobObjective.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HyperParameterTuningJobObjective
    class HyperParameterTuningJobObjective
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['MetricName'] = input[:metric_name] unless input[:metric_name].nil?
        data
      end
    end

    # List Builder for ChannelSpecifications
    class ChannelSpecifications
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ChannelSpecification.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ChannelSpecification
    class ChannelSpecification
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['IsRequired'] = input[:is_required] unless input[:is_required].nil?
        data['SupportedContentTypes'] = Builders::ContentTypes.build(input[:supported_content_types]) unless input[:supported_content_types].nil?
        data['SupportedCompressionTypes'] = Builders::CompressionTypes.build(input[:supported_compression_types]) unless input[:supported_compression_types].nil?
        data['SupportedInputModes'] = Builders::InputModes.build(input[:supported_input_modes]) unless input[:supported_input_modes].nil?
        data
      end
    end

    # List Builder for InputModes
    class InputModes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CompressionTypes
    class CompressionTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for MetricDefinitionList
    class MetricDefinitionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MetricDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MetricDefinition
    class MetricDefinition
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Regex'] = input[:regex] unless input[:regex].nil?
        data
      end
    end

    # List Builder for TrainingInstanceTypes
    class TrainingInstanceTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for HyperParameterSpecifications
    class HyperParameterSpecifications
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::HyperParameterSpecification.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HyperParameterSpecification
    class HyperParameterSpecification
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Range'] = Builders::ParameterRange.build(input[:range]) unless input[:range].nil?
        data['IsTunable'] = input[:is_tunable] unless input[:is_tunable].nil?
        data['IsRequired'] = input[:is_required] unless input[:is_required].nil?
        data['DefaultValue'] = input[:default_value] unless input[:default_value].nil?
        data
      end
    end

    # Structure Builder for ParameterRange
    class ParameterRange
      def self.build(input)
        data = {}
        data['IntegerParameterRangeSpecification'] = Builders::IntegerParameterRangeSpecification.build(input[:integer_parameter_range_specification]) unless input[:integer_parameter_range_specification].nil?
        data['ContinuousParameterRangeSpecification'] = Builders::ContinuousParameterRangeSpecification.build(input[:continuous_parameter_range_specification]) unless input[:continuous_parameter_range_specification].nil?
        data['CategoricalParameterRangeSpecification'] = Builders::CategoricalParameterRangeSpecification.build(input[:categorical_parameter_range_specification]) unless input[:categorical_parameter_range_specification].nil?
        data
      end
    end

    # Structure Builder for CategoricalParameterRangeSpecification
    class CategoricalParameterRangeSpecification
      def self.build(input)
        data = {}
        data['Values'] = Builders::ParameterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for ParameterValues
    class ParameterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ContinuousParameterRangeSpecification
    class ContinuousParameterRangeSpecification
      def self.build(input)
        data = {}
        data['MinValue'] = input[:min_value] unless input[:min_value].nil?
        data['MaxValue'] = input[:max_value] unless input[:max_value].nil?
        data
      end
    end

    # Structure Builder for IntegerParameterRangeSpecification
    class IntegerParameterRangeSpecification
      def self.build(input)
        data = {}
        data['MinValue'] = input[:min_value] unless input[:min_value].nil?
        data['MaxValue'] = input[:max_value] unless input[:max_value].nil?
        data
      end
    end

    # Operation Builder for CreateApp
    class CreateApp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateApp'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['UserProfileName'] = input[:user_profile_name] unless input[:user_profile_name].nil?
        data['AppType'] = input[:app_type] unless input[:app_type].nil?
        data['AppName'] = input[:app_name] unless input[:app_name].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['ResourceSpec'] = Builders::ResourceSpec.build(input[:resource_spec]) unless input[:resource_spec].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ResourceSpec
    class ResourceSpec
      def self.build(input)
        data = {}
        data['SageMakerImageArn'] = input[:sage_maker_image_arn] unless input[:sage_maker_image_arn].nil?
        data['SageMakerImageVersionArn'] = input[:sage_maker_image_version_arn] unless input[:sage_maker_image_version_arn].nil?
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['LifecycleConfigArn'] = input[:lifecycle_config_arn] unless input[:lifecycle_config_arn].nil?
        data
      end
    end

    # Operation Builder for CreateAppImageConfig
    class CreateAppImageConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateAppImageConfig'
        data = {}
        data['AppImageConfigName'] = input[:app_image_config_name] unless input[:app_image_config_name].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['KernelGatewayImageConfig'] = Builders::KernelGatewayImageConfig.build(input[:kernel_gateway_image_config]) unless input[:kernel_gateway_image_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for KernelGatewayImageConfig
    class KernelGatewayImageConfig
      def self.build(input)
        data = {}
        data['KernelSpecs'] = Builders::KernelSpecs.build(input[:kernel_specs]) unless input[:kernel_specs].nil?
        data['FileSystemConfig'] = Builders::FileSystemConfig.build(input[:file_system_config]) unless input[:file_system_config].nil?
        data
      end
    end

    # Structure Builder for FileSystemConfig
    class FileSystemConfig
      def self.build(input)
        data = {}
        data['MountPath'] = input[:mount_path] unless input[:mount_path].nil?
        data['DefaultUid'] = input[:default_uid] unless input[:default_uid].nil?
        data['DefaultGid'] = input[:default_gid] unless input[:default_gid].nil?
        data
      end
    end

    # List Builder for KernelSpecs
    class KernelSpecs
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::KernelSpec.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for KernelSpec
    class KernelSpec
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data
      end
    end

    # Operation Builder for CreateArtifact
    class CreateArtifact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateArtifact'
        data = {}
        data['ArtifactName'] = input[:artifact_name] unless input[:artifact_name].nil?
        data['Source'] = Builders::ArtifactSource.build(input[:source]) unless input[:source].nil?
        data['ArtifactType'] = input[:artifact_type] unless input[:artifact_type].nil?
        data['Properties'] = Builders::LineageEntityParameters.build(input[:properties]) unless input[:properties].nil?
        data['MetadataProperties'] = Builders::MetadataProperties.build(input[:metadata_properties]) unless input[:metadata_properties].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ArtifactSource
    class ArtifactSource
      def self.build(input)
        data = {}
        data['SourceUri'] = input[:source_uri] unless input[:source_uri].nil?
        data['SourceTypes'] = Builders::ArtifactSourceTypes.build(input[:source_types]) unless input[:source_types].nil?
        data
      end
    end

    # List Builder for ArtifactSourceTypes
    class ArtifactSourceTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ArtifactSourceType.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ArtifactSourceType
    class ArtifactSourceType
      def self.build(input)
        data = {}
        data['SourceIdType'] = input[:source_id_type] unless input[:source_id_type].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateAutoMLJob
    class CreateAutoMLJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateAutoMLJob'
        data = {}
        data['AutoMLJobName'] = input[:auto_ml_job_name] unless input[:auto_ml_job_name].nil?
        data['InputDataConfig'] = Builders::AutoMLInputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = Builders::AutoMLOutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['ProblemType'] = input[:problem_type] unless input[:problem_type].nil?
        data['AutoMLJobObjective'] = Builders::AutoMLJobObjective.build(input[:auto_ml_job_objective]) unless input[:auto_ml_job_objective].nil?
        data['AutoMLJobConfig'] = Builders::AutoMLJobConfig.build(input[:auto_ml_job_config]) unless input[:auto_ml_job_config].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['GenerateCandidateDefinitionsOnly'] = input[:generate_candidate_definitions_only] unless input[:generate_candidate_definitions_only].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['ModelDeployConfig'] = Builders::ModelDeployConfig.build(input[:model_deploy_config]) unless input[:model_deploy_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ModelDeployConfig
    class ModelDeployConfig
      def self.build(input)
        data = {}
        data['AutoGenerateEndpointName'] = input[:auto_generate_endpoint_name] unless input[:auto_generate_endpoint_name].nil?
        data['EndpointName'] = input[:endpoint_name] unless input[:endpoint_name].nil?
        data
      end
    end

    # Structure Builder for AutoMLJobConfig
    class AutoMLJobConfig
      def self.build(input)
        data = {}
        data['CompletionCriteria'] = Builders::AutoMLJobCompletionCriteria.build(input[:completion_criteria]) unless input[:completion_criteria].nil?
        data['SecurityConfig'] = Builders::AutoMLSecurityConfig.build(input[:security_config]) unless input[:security_config].nil?
        data['DataSplitConfig'] = Builders::AutoMLDataSplitConfig.build(input[:data_split_config]) unless input[:data_split_config].nil?
        data['CandidateGenerationConfig'] = Builders::AutoMLCandidateGenerationConfig.build(input[:candidate_generation_config]) unless input[:candidate_generation_config].nil?
        data
      end
    end

    # Structure Builder for AutoMLCandidateGenerationConfig
    class AutoMLCandidateGenerationConfig
      def self.build(input)
        data = {}
        data['FeatureSpecificationS3Uri'] = input[:feature_specification_s3_uri] unless input[:feature_specification_s3_uri].nil?
        data
      end
    end

    # Structure Builder for AutoMLDataSplitConfig
    class AutoMLDataSplitConfig
      def self.build(input)
        data = {}
        data['ValidationFraction'] = Hearth::NumberHelper.serialize(input[:validation_fraction]) unless input[:validation_fraction].nil?
        data
      end
    end

    # Structure Builder for AutoMLSecurityConfig
    class AutoMLSecurityConfig
      def self.build(input)
        data = {}
        data['VolumeKmsKeyId'] = input[:volume_kms_key_id] unless input[:volume_kms_key_id].nil?
        data['EnableInterContainerTrafficEncryption'] = input[:enable_inter_container_traffic_encryption] unless input[:enable_inter_container_traffic_encryption].nil?
        data['VpcConfig'] = Builders::VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data
      end
    end

    # Structure Builder for VpcConfig
    class VpcConfig
      def self.build(input)
        data = {}
        data['SecurityGroupIds'] = Builders::VpcSecurityGroupIds.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['Subnets'] = Builders::Subnets.build(input[:subnets]) unless input[:subnets].nil?
        data
      end
    end

    # List Builder for Subnets
    class Subnets
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for VpcSecurityGroupIds
    class VpcSecurityGroupIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AutoMLJobCompletionCriteria
    class AutoMLJobCompletionCriteria
      def self.build(input)
        data = {}
        data['MaxCandidates'] = input[:max_candidates] unless input[:max_candidates].nil?
        data['MaxRuntimePerTrainingJobInSeconds'] = input[:max_runtime_per_training_job_in_seconds] unless input[:max_runtime_per_training_job_in_seconds].nil?
        data['MaxAutoMLJobRuntimeInSeconds'] = input[:max_auto_ml_job_runtime_in_seconds] unless input[:max_auto_ml_job_runtime_in_seconds].nil?
        data
      end
    end

    # Structure Builder for AutoMLJobObjective
    class AutoMLJobObjective
      def self.build(input)
        data = {}
        data['MetricName'] = input[:metric_name] unless input[:metric_name].nil?
        data
      end
    end

    # Structure Builder for AutoMLOutputDataConfig
    class AutoMLOutputDataConfig
      def self.build(input)
        data = {}
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['S3OutputPath'] = input[:s3_output_path] unless input[:s3_output_path].nil?
        data
      end
    end

    # List Builder for AutoMLInputDataConfig
    class AutoMLInputDataConfig
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AutoMLChannel.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AutoMLChannel
    class AutoMLChannel
      def self.build(input)
        data = {}
        data['DataSource'] = Builders::AutoMLDataSource.build(input[:data_source]) unless input[:data_source].nil?
        data['CompressionType'] = input[:compression_type] unless input[:compression_type].nil?
        data['TargetAttributeName'] = input[:target_attribute_name] unless input[:target_attribute_name].nil?
        data['ContentType'] = input[:content_type] unless input[:content_type].nil?
        data['ChannelType'] = input[:channel_type] unless input[:channel_type].nil?
        data
      end
    end

    # Structure Builder for AutoMLDataSource
    class AutoMLDataSource
      def self.build(input)
        data = {}
        data['S3DataSource'] = Builders::AutoMLS3DataSource.build(input[:s3_data_source]) unless input[:s3_data_source].nil?
        data
      end
    end

    # Structure Builder for AutoMLS3DataSource
    class AutoMLS3DataSource
      def self.build(input)
        data = {}
        data['S3DataType'] = input[:s3_data_type] unless input[:s3_data_type].nil?
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data
      end
    end

    # Operation Builder for CreateCodeRepository
    class CreateCodeRepository
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateCodeRepository'
        data = {}
        data['CodeRepositoryName'] = input[:code_repository_name] unless input[:code_repository_name].nil?
        data['GitConfig'] = Builders::GitConfig.build(input[:git_config]) unless input[:git_config].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for GitConfig
    class GitConfig
      def self.build(input)
        data = {}
        data['RepositoryUrl'] = input[:repository_url] unless input[:repository_url].nil?
        data['Branch'] = input[:branch] unless input[:branch].nil?
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data
      end
    end

    # Operation Builder for CreateCompilationJob
    class CreateCompilationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateCompilationJob'
        data = {}
        data['CompilationJobName'] = input[:compilation_job_name] unless input[:compilation_job_name].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['ModelPackageVersionArn'] = input[:model_package_version_arn] unless input[:model_package_version_arn].nil?
        data['InputConfig'] = Builders::InputConfig.build(input[:input_config]) unless input[:input_config].nil?
        data['OutputConfig'] = Builders::OutputConfig.build(input[:output_config]) unless input[:output_config].nil?
        data['VpcConfig'] = Builders::NeoVpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['StoppingCondition'] = Builders::StoppingCondition.build(input[:stopping_condition]) unless input[:stopping_condition].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NeoVpcConfig
    class NeoVpcConfig
      def self.build(input)
        data = {}
        data['SecurityGroupIds'] = Builders::NeoVpcSecurityGroupIds.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['Subnets'] = Builders::NeoVpcSubnets.build(input[:subnets]) unless input[:subnets].nil?
        data
      end
    end

    # List Builder for NeoVpcSubnets
    class NeoVpcSubnets
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for NeoVpcSecurityGroupIds
    class NeoVpcSecurityGroupIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OutputConfig
    class OutputConfig
      def self.build(input)
        data = {}
        data['S3OutputLocation'] = input[:s3_output_location] unless input[:s3_output_location].nil?
        data['TargetDevice'] = input[:target_device] unless input[:target_device].nil?
        data['TargetPlatform'] = Builders::TargetPlatform.build(input[:target_platform]) unless input[:target_platform].nil?
        data['CompilerOptions'] = input[:compiler_options] unless input[:compiler_options].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # Structure Builder for TargetPlatform
    class TargetPlatform
      def self.build(input)
        data = {}
        data['Os'] = input[:os] unless input[:os].nil?
        data['Arch'] = input[:arch] unless input[:arch].nil?
        data['Accelerator'] = input[:accelerator] unless input[:accelerator].nil?
        data
      end
    end

    # Structure Builder for InputConfig
    class InputConfig
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data['DataInputConfig'] = input[:data_input_config] unless input[:data_input_config].nil?
        data['Framework'] = input[:framework] unless input[:framework].nil?
        data['FrameworkVersion'] = input[:framework_version] unless input[:framework_version].nil?
        data
      end
    end

    # Operation Builder for CreateContext
    class CreateContext
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateContext'
        data = {}
        data['ContextName'] = input[:context_name] unless input[:context_name].nil?
        data['Source'] = Builders::ContextSource.build(input[:source]) unless input[:source].nil?
        data['ContextType'] = input[:context_type] unless input[:context_type].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Properties'] = Builders::LineageEntityParameters.build(input[:properties]) unless input[:properties].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ContextSource
    class ContextSource
      def self.build(input)
        data = {}
        data['SourceUri'] = input[:source_uri] unless input[:source_uri].nil?
        data['SourceType'] = input[:source_type] unless input[:source_type].nil?
        data['SourceId'] = input[:source_id] unless input[:source_id].nil?
        data
      end
    end

    # Operation Builder for CreateDataQualityJobDefinition
    class CreateDataQualityJobDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateDataQualityJobDefinition'
        data = {}
        data['JobDefinitionName'] = input[:job_definition_name] unless input[:job_definition_name].nil?
        data['DataQualityBaselineConfig'] = Builders::DataQualityBaselineConfig.build(input[:data_quality_baseline_config]) unless input[:data_quality_baseline_config].nil?
        data['DataQualityAppSpecification'] = Builders::DataQualityAppSpecification.build(input[:data_quality_app_specification]) unless input[:data_quality_app_specification].nil?
        data['DataQualityJobInput'] = Builders::DataQualityJobInput.build(input[:data_quality_job_input]) unless input[:data_quality_job_input].nil?
        data['DataQualityJobOutputConfig'] = Builders::MonitoringOutputConfig.build(input[:data_quality_job_output_config]) unless input[:data_quality_job_output_config].nil?
        data['JobResources'] = Builders::MonitoringResources.build(input[:job_resources]) unless input[:job_resources].nil?
        data['NetworkConfig'] = Builders::MonitoringNetworkConfig.build(input[:network_config]) unless input[:network_config].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['StoppingCondition'] = Builders::MonitoringStoppingCondition.build(input[:stopping_condition]) unless input[:stopping_condition].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MonitoringStoppingCondition
    class MonitoringStoppingCondition
      def self.build(input)
        data = {}
        data['MaxRuntimeInSeconds'] = input[:max_runtime_in_seconds] unless input[:max_runtime_in_seconds].nil?
        data
      end
    end

    # Structure Builder for MonitoringNetworkConfig
    class MonitoringNetworkConfig
      def self.build(input)
        data = {}
        data['EnableInterContainerTrafficEncryption'] = input[:enable_inter_container_traffic_encryption] unless input[:enable_inter_container_traffic_encryption].nil?
        data['EnableNetworkIsolation'] = input[:enable_network_isolation] unless input[:enable_network_isolation].nil?
        data['VpcConfig'] = Builders::VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data
      end
    end

    # Structure Builder for MonitoringResources
    class MonitoringResources
      def self.build(input)
        data = {}
        data['ClusterConfig'] = Builders::MonitoringClusterConfig.build(input[:cluster_config]) unless input[:cluster_config].nil?
        data
      end
    end

    # Structure Builder for MonitoringClusterConfig
    class MonitoringClusterConfig
      def self.build(input)
        data = {}
        data['InstanceCount'] = input[:instance_count] unless input[:instance_count].nil?
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['VolumeSizeInGB'] = input[:volume_size_in_gb] unless input[:volume_size_in_gb].nil?
        data['VolumeKmsKeyId'] = input[:volume_kms_key_id] unless input[:volume_kms_key_id].nil?
        data
      end
    end

    # Structure Builder for MonitoringOutputConfig
    class MonitoringOutputConfig
      def self.build(input)
        data = {}
        data['MonitoringOutputs'] = Builders::MonitoringOutputs.build(input[:monitoring_outputs]) unless input[:monitoring_outputs].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # List Builder for MonitoringOutputs
    class MonitoringOutputs
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MonitoringOutput.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MonitoringOutput
    class MonitoringOutput
      def self.build(input)
        data = {}
        data['S3Output'] = Builders::MonitoringS3Output.build(input[:s3_output]) unless input[:s3_output].nil?
        data
      end
    end

    # Structure Builder for MonitoringS3Output
    class MonitoringS3Output
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data['LocalPath'] = input[:local_path] unless input[:local_path].nil?
        data['S3UploadMode'] = input[:s3_upload_mode] unless input[:s3_upload_mode].nil?
        data
      end
    end

    # Structure Builder for DataQualityJobInput
    class DataQualityJobInput
      def self.build(input)
        data = {}
        data['EndpointInput'] = Builders::EndpointInput.build(input[:endpoint_input]) unless input[:endpoint_input].nil?
        data
      end
    end

    # Structure Builder for EndpointInput
    class EndpointInput
      def self.build(input)
        data = {}
        data['EndpointName'] = input[:endpoint_name] unless input[:endpoint_name].nil?
        data['LocalPath'] = input[:local_path] unless input[:local_path].nil?
        data['S3InputMode'] = input[:s3_input_mode] unless input[:s3_input_mode].nil?
        data['S3DataDistributionType'] = input[:s3_data_distribution_type] unless input[:s3_data_distribution_type].nil?
        data['FeaturesAttribute'] = input[:features_attribute] unless input[:features_attribute].nil?
        data['InferenceAttribute'] = input[:inference_attribute] unless input[:inference_attribute].nil?
        data['ProbabilityAttribute'] = input[:probability_attribute] unless input[:probability_attribute].nil?
        data['ProbabilityThresholdAttribute'] = Hearth::NumberHelper.serialize(input[:probability_threshold_attribute]) unless input[:probability_threshold_attribute].nil?
        data['StartTimeOffset'] = input[:start_time_offset] unless input[:start_time_offset].nil?
        data['EndTimeOffset'] = input[:end_time_offset] unless input[:end_time_offset].nil?
        data
      end
    end

    # Structure Builder for DataQualityAppSpecification
    class DataQualityAppSpecification
      def self.build(input)
        data = {}
        data['ImageUri'] = input[:image_uri] unless input[:image_uri].nil?
        data['ContainerEntrypoint'] = Builders::ContainerEntrypoint.build(input[:container_entrypoint]) unless input[:container_entrypoint].nil?
        data['ContainerArguments'] = Builders::MonitoringContainerArguments.build(input[:container_arguments]) unless input[:container_arguments].nil?
        data['RecordPreprocessorSourceUri'] = input[:record_preprocessor_source_uri] unless input[:record_preprocessor_source_uri].nil?
        data['PostAnalyticsProcessorSourceUri'] = input[:post_analytics_processor_source_uri] unless input[:post_analytics_processor_source_uri].nil?
        data['Environment'] = Builders::MonitoringEnvironmentMap.build(input[:environment]) unless input[:environment].nil?
        data
      end
    end

    # Map Builder for MonitoringEnvironmentMap
    class MonitoringEnvironmentMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for MonitoringContainerArguments
    class MonitoringContainerArguments
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ContainerEntrypoint
    class ContainerEntrypoint
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DataQualityBaselineConfig
    class DataQualityBaselineConfig
      def self.build(input)
        data = {}
        data['BaseliningJobName'] = input[:baselining_job_name] unless input[:baselining_job_name].nil?
        data['ConstraintsResource'] = Builders::MonitoringConstraintsResource.build(input[:constraints_resource]) unless input[:constraints_resource].nil?
        data['StatisticsResource'] = Builders::MonitoringStatisticsResource.build(input[:statistics_resource]) unless input[:statistics_resource].nil?
        data
      end
    end

    # Structure Builder for MonitoringStatisticsResource
    class MonitoringStatisticsResource
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data
      end
    end

    # Structure Builder for MonitoringConstraintsResource
    class MonitoringConstraintsResource
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data
      end
    end

    # Operation Builder for CreateDeviceFleet
    class CreateDeviceFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateDeviceFleet'
        data = {}
        data['DeviceFleetName'] = input[:device_fleet_name] unless input[:device_fleet_name].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['OutputConfig'] = Builders::EdgeOutputConfig.build(input[:output_config]) unless input[:output_config].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['EnableIotRoleAlias'] = input[:enable_iot_role_alias] unless input[:enable_iot_role_alias].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EdgeOutputConfig
    class EdgeOutputConfig
      def self.build(input)
        data = {}
        data['S3OutputLocation'] = input[:s3_output_location] unless input[:s3_output_location].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['PresetDeploymentType'] = input[:preset_deployment_type] unless input[:preset_deployment_type].nil?
        data['PresetDeploymentConfig'] = input[:preset_deployment_config] unless input[:preset_deployment_config].nil?
        data
      end
    end

    # Operation Builder for CreateDomain
    class CreateDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateDomain'
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['AuthMode'] = input[:auth_mode] unless input[:auth_mode].nil?
        data['DefaultUserSettings'] = Builders::UserSettings.build(input[:default_user_settings]) unless input[:default_user_settings].nil?
        data['SubnetIds'] = Builders::Subnets.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['AppNetworkAccessType'] = input[:app_network_access_type] unless input[:app_network_access_type].nil?
        data['HomeEfsFileSystemKmsKeyId'] = input[:home_efs_file_system_kms_key_id] unless input[:home_efs_file_system_kms_key_id].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['AppSecurityGroupManagement'] = input[:app_security_group_management] unless input[:app_security_group_management].nil?
        data['DomainSettings'] = Builders::DomainSettings.build(input[:domain_settings]) unless input[:domain_settings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DomainSettings
    class DomainSettings
      def self.build(input)
        data = {}
        data['SecurityGroupIds'] = Builders::DomainSecurityGroupIds.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['RStudioServerProDomainSettings'] = Builders::RStudioServerProDomainSettings.build(input[:r_studio_server_pro_domain_settings]) unless input[:r_studio_server_pro_domain_settings].nil?
        data
      end
    end

    # Structure Builder for RStudioServerProDomainSettings
    class RStudioServerProDomainSettings
      def self.build(input)
        data = {}
        data['DomainExecutionRoleArn'] = input[:domain_execution_role_arn] unless input[:domain_execution_role_arn].nil?
        data['RStudioConnectUrl'] = input[:r_studio_connect_url] unless input[:r_studio_connect_url].nil?
        data['RStudioPackageManagerUrl'] = input[:r_studio_package_manager_url] unless input[:r_studio_package_manager_url].nil?
        data['DefaultResourceSpec'] = Builders::ResourceSpec.build(input[:default_resource_spec]) unless input[:default_resource_spec].nil?
        data
      end
    end

    # List Builder for DomainSecurityGroupIds
    class DomainSecurityGroupIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UserSettings
    class UserSettings
      def self.build(input)
        data = {}
        data['ExecutionRole'] = input[:execution_role] unless input[:execution_role].nil?
        data['SecurityGroups'] = Builders::SecurityGroupIds.build(input[:security_groups]) unless input[:security_groups].nil?
        data['SharingSettings'] = Builders::SharingSettings.build(input[:sharing_settings]) unless input[:sharing_settings].nil?
        data['JupyterServerAppSettings'] = Builders::JupyterServerAppSettings.build(input[:jupyter_server_app_settings]) unless input[:jupyter_server_app_settings].nil?
        data['KernelGatewayAppSettings'] = Builders::KernelGatewayAppSettings.build(input[:kernel_gateway_app_settings]) unless input[:kernel_gateway_app_settings].nil?
        data['TensorBoardAppSettings'] = Builders::TensorBoardAppSettings.build(input[:tensor_board_app_settings]) unless input[:tensor_board_app_settings].nil?
        data['RStudioServerProAppSettings'] = Builders::RStudioServerProAppSettings.build(input[:r_studio_server_pro_app_settings]) unless input[:r_studio_server_pro_app_settings].nil?
        data['RSessionAppSettings'] = Builders::RSessionAppSettings.build(input[:r_session_app_settings]) unless input[:r_session_app_settings].nil?
        data
      end
    end

    # Structure Builder for RSessionAppSettings
    class RSessionAppSettings
      def self.build(input)
        data = {}
        data['DefaultResourceSpec'] = Builders::ResourceSpec.build(input[:default_resource_spec]) unless input[:default_resource_spec].nil?
        data['CustomImages'] = Builders::CustomImages.build(input[:custom_images]) unless input[:custom_images].nil?
        data
      end
    end

    # List Builder for CustomImages
    class CustomImages
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CustomImage.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CustomImage
    class CustomImage
      def self.build(input)
        data = {}
        data['ImageName'] = input[:image_name] unless input[:image_name].nil?
        data['ImageVersionNumber'] = input[:image_version_number] unless input[:image_version_number].nil?
        data['AppImageConfigName'] = input[:app_image_config_name] unless input[:app_image_config_name].nil?
        data
      end
    end

    # Structure Builder for RStudioServerProAppSettings
    class RStudioServerProAppSettings
      def self.build(input)
        data = {}
        data['AccessStatus'] = input[:access_status] unless input[:access_status].nil?
        data['UserGroup'] = input[:user_group] unless input[:user_group].nil?
        data
      end
    end

    # Structure Builder for TensorBoardAppSettings
    class TensorBoardAppSettings
      def self.build(input)
        data = {}
        data['DefaultResourceSpec'] = Builders::ResourceSpec.build(input[:default_resource_spec]) unless input[:default_resource_spec].nil?
        data
      end
    end

    # Structure Builder for KernelGatewayAppSettings
    class KernelGatewayAppSettings
      def self.build(input)
        data = {}
        data['DefaultResourceSpec'] = Builders::ResourceSpec.build(input[:default_resource_spec]) unless input[:default_resource_spec].nil?
        data['CustomImages'] = Builders::CustomImages.build(input[:custom_images]) unless input[:custom_images].nil?
        data['LifecycleConfigArns'] = Builders::LifecycleConfigArns.build(input[:lifecycle_config_arns]) unless input[:lifecycle_config_arns].nil?
        data
      end
    end

    # List Builder for LifecycleConfigArns
    class LifecycleConfigArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for JupyterServerAppSettings
    class JupyterServerAppSettings
      def self.build(input)
        data = {}
        data['DefaultResourceSpec'] = Builders::ResourceSpec.build(input[:default_resource_spec]) unless input[:default_resource_spec].nil?
        data['LifecycleConfigArns'] = Builders::LifecycleConfigArns.build(input[:lifecycle_config_arns]) unless input[:lifecycle_config_arns].nil?
        data
      end
    end

    # Structure Builder for SharingSettings
    class SharingSettings
      def self.build(input)
        data = {}
        data['NotebookOutputOption'] = input[:notebook_output_option] unless input[:notebook_output_option].nil?
        data['S3OutputPath'] = input[:s3_output_path] unless input[:s3_output_path].nil?
        data['S3KmsKeyId'] = input[:s3_kms_key_id] unless input[:s3_kms_key_id].nil?
        data
      end
    end

    # List Builder for SecurityGroupIds
    class SecurityGroupIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateEdgePackagingJob
    class CreateEdgePackagingJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateEdgePackagingJob'
        data = {}
        data['EdgePackagingJobName'] = input[:edge_packaging_job_name] unless input[:edge_packaging_job_name].nil?
        data['CompilationJobName'] = input[:compilation_job_name] unless input[:compilation_job_name].nil?
        data['ModelName'] = input[:model_name] unless input[:model_name].nil?
        data['ModelVersion'] = input[:model_version] unless input[:model_version].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['OutputConfig'] = Builders::EdgeOutputConfig.build(input[:output_config]) unless input[:output_config].nil?
        data['ResourceKey'] = input[:resource_key] unless input[:resource_key].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateEndpoint
    class CreateEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateEndpoint'
        data = {}
        data['EndpointName'] = input[:endpoint_name] unless input[:endpoint_name].nil?
        data['EndpointConfigName'] = input[:endpoint_config_name] unless input[:endpoint_config_name].nil?
        data['DeploymentConfig'] = Builders::DeploymentConfig.build(input[:deployment_config]) unless input[:deployment_config].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DeploymentConfig
    class DeploymentConfig
      def self.build(input)
        data = {}
        data['BlueGreenUpdatePolicy'] = Builders::BlueGreenUpdatePolicy.build(input[:blue_green_update_policy]) unless input[:blue_green_update_policy].nil?
        data['AutoRollbackConfiguration'] = Builders::AutoRollbackConfig.build(input[:auto_rollback_configuration]) unless input[:auto_rollback_configuration].nil?
        data
      end
    end

    # Structure Builder for AutoRollbackConfig
    class AutoRollbackConfig
      def self.build(input)
        data = {}
        data['Alarms'] = Builders::AlarmList.build(input[:alarms]) unless input[:alarms].nil?
        data
      end
    end

    # List Builder for AlarmList
    class AlarmList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Alarm.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Alarm
    class Alarm
      def self.build(input)
        data = {}
        data['AlarmName'] = input[:alarm_name] unless input[:alarm_name].nil?
        data
      end
    end

    # Structure Builder for BlueGreenUpdatePolicy
    class BlueGreenUpdatePolicy
      def self.build(input)
        data = {}
        data['TrafficRoutingConfiguration'] = Builders::TrafficRoutingConfig.build(input[:traffic_routing_configuration]) unless input[:traffic_routing_configuration].nil?
        data['TerminationWaitInSeconds'] = input[:termination_wait_in_seconds] unless input[:termination_wait_in_seconds].nil?
        data['MaximumExecutionTimeoutInSeconds'] = input[:maximum_execution_timeout_in_seconds] unless input[:maximum_execution_timeout_in_seconds].nil?
        data
      end
    end

    # Structure Builder for TrafficRoutingConfig
    class TrafficRoutingConfig
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['WaitIntervalInSeconds'] = input[:wait_interval_in_seconds] unless input[:wait_interval_in_seconds].nil?
        data['CanarySize'] = Builders::CapacitySize.build(input[:canary_size]) unless input[:canary_size].nil?
        data['LinearStepSize'] = Builders::CapacitySize.build(input[:linear_step_size]) unless input[:linear_step_size].nil?
        data
      end
    end

    # Structure Builder for CapacitySize
    class CapacitySize
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateEndpointConfig
    class CreateEndpointConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateEndpointConfig'
        data = {}
        data['EndpointConfigName'] = input[:endpoint_config_name] unless input[:endpoint_config_name].nil?
        data['ProductionVariants'] = Builders::ProductionVariantList.build(input[:production_variants]) unless input[:production_variants].nil?
        data['DataCaptureConfig'] = Builders::DataCaptureConfig.build(input[:data_capture_config]) unless input[:data_capture_config].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['AsyncInferenceConfig'] = Builders::AsyncInferenceConfig.build(input[:async_inference_config]) unless input[:async_inference_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AsyncInferenceConfig
    class AsyncInferenceConfig
      def self.build(input)
        data = {}
        data['ClientConfig'] = Builders::AsyncInferenceClientConfig.build(input[:client_config]) unless input[:client_config].nil?
        data['OutputConfig'] = Builders::AsyncInferenceOutputConfig.build(input[:output_config]) unless input[:output_config].nil?
        data
      end
    end

    # Structure Builder for AsyncInferenceOutputConfig
    class AsyncInferenceOutputConfig
      def self.build(input)
        data = {}
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['S3OutputPath'] = input[:s3_output_path] unless input[:s3_output_path].nil?
        data['NotificationConfig'] = Builders::AsyncInferenceNotificationConfig.build(input[:notification_config]) unless input[:notification_config].nil?
        data
      end
    end

    # Structure Builder for AsyncInferenceNotificationConfig
    class AsyncInferenceNotificationConfig
      def self.build(input)
        data = {}
        data['SuccessTopic'] = input[:success_topic] unless input[:success_topic].nil?
        data['ErrorTopic'] = input[:error_topic] unless input[:error_topic].nil?
        data
      end
    end

    # Structure Builder for AsyncInferenceClientConfig
    class AsyncInferenceClientConfig
      def self.build(input)
        data = {}
        data['MaxConcurrentInvocationsPerInstance'] = input[:max_concurrent_invocations_per_instance] unless input[:max_concurrent_invocations_per_instance].nil?
        data
      end
    end

    # Structure Builder for DataCaptureConfig
    class DataCaptureConfig
      def self.build(input)
        data = {}
        data['EnableCapture'] = input[:enable_capture] unless input[:enable_capture].nil?
        data['InitialSamplingPercentage'] = input[:initial_sampling_percentage] unless input[:initial_sampling_percentage].nil?
        data['DestinationS3Uri'] = input[:destination_s3_uri] unless input[:destination_s3_uri].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['CaptureOptions'] = Builders::CaptureOptionList.build(input[:capture_options]) unless input[:capture_options].nil?
        data['CaptureContentTypeHeader'] = Builders::CaptureContentTypeHeader.build(input[:capture_content_type_header]) unless input[:capture_content_type_header].nil?
        data
      end
    end

    # Structure Builder for CaptureContentTypeHeader
    class CaptureContentTypeHeader
      def self.build(input)
        data = {}
        data['CsvContentTypes'] = Builders::CsvContentTypes.build(input[:csv_content_types]) unless input[:csv_content_types].nil?
        data['JsonContentTypes'] = Builders::JsonContentTypes.build(input[:json_content_types]) unless input[:json_content_types].nil?
        data
      end
    end

    # List Builder for JsonContentTypes
    class JsonContentTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CsvContentTypes
    class CsvContentTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CaptureOptionList
    class CaptureOptionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CaptureOption.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CaptureOption
    class CaptureOption
      def self.build(input)
        data = {}
        data['CaptureMode'] = input[:capture_mode] unless input[:capture_mode].nil?
        data
      end
    end

    # List Builder for ProductionVariantList
    class ProductionVariantList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ProductionVariant.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ProductionVariant
    class ProductionVariant
      def self.build(input)
        data = {}
        data['VariantName'] = input[:variant_name] unless input[:variant_name].nil?
        data['ModelName'] = input[:model_name] unless input[:model_name].nil?
        data['InitialInstanceCount'] = input[:initial_instance_count] unless input[:initial_instance_count].nil?
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['InitialVariantWeight'] = Hearth::NumberHelper.serialize(input[:initial_variant_weight]) unless input[:initial_variant_weight].nil?
        data['AcceleratorType'] = input[:accelerator_type] unless input[:accelerator_type].nil?
        data['CoreDumpConfig'] = Builders::ProductionVariantCoreDumpConfig.build(input[:core_dump_config]) unless input[:core_dump_config].nil?
        data['ServerlessConfig'] = Builders::ProductionVariantServerlessConfig.build(input[:serverless_config]) unless input[:serverless_config].nil?
        data
      end
    end

    # Structure Builder for ProductionVariantServerlessConfig
    class ProductionVariantServerlessConfig
      def self.build(input)
        data = {}
        data['MemorySizeInMB'] = input[:memory_size_in_mb] unless input[:memory_size_in_mb].nil?
        data['MaxConcurrency'] = input[:max_concurrency] unless input[:max_concurrency].nil?
        data
      end
    end

    # Structure Builder for ProductionVariantCoreDumpConfig
    class ProductionVariantCoreDumpConfig
      def self.build(input)
        data = {}
        data['DestinationS3Uri'] = input[:destination_s3_uri] unless input[:destination_s3_uri].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # Operation Builder for CreateExperiment
    class CreateExperiment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateExperiment'
        data = {}
        data['ExperimentName'] = input[:experiment_name] unless input[:experiment_name].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateFeatureGroup
    class CreateFeatureGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateFeatureGroup'
        data = {}
        data['FeatureGroupName'] = input[:feature_group_name] unless input[:feature_group_name].nil?
        data['RecordIdentifierFeatureName'] = input[:record_identifier_feature_name] unless input[:record_identifier_feature_name].nil?
        data['EventTimeFeatureName'] = input[:event_time_feature_name] unless input[:event_time_feature_name].nil?
        data['FeatureDefinitions'] = Builders::FeatureDefinitions.build(input[:feature_definitions]) unless input[:feature_definitions].nil?
        data['OnlineStoreConfig'] = Builders::OnlineStoreConfig.build(input[:online_store_config]) unless input[:online_store_config].nil?
        data['OfflineStoreConfig'] = Builders::OfflineStoreConfig.build(input[:offline_store_config]) unless input[:offline_store_config].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for OfflineStoreConfig
    class OfflineStoreConfig
      def self.build(input)
        data = {}
        data['S3StorageConfig'] = Builders::S3StorageConfig.build(input[:s3_storage_config]) unless input[:s3_storage_config].nil?
        data['DisableGlueTableCreation'] = input[:disable_glue_table_creation] unless input[:disable_glue_table_creation].nil?
        data['DataCatalogConfig'] = Builders::DataCatalogConfig.build(input[:data_catalog_config]) unless input[:data_catalog_config].nil?
        data
      end
    end

    # Structure Builder for DataCatalogConfig
    class DataCatalogConfig
      def self.build(input)
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['Catalog'] = input[:catalog] unless input[:catalog].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data
      end
    end

    # Structure Builder for S3StorageConfig
    class S3StorageConfig
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['ResolvedOutputS3Uri'] = input[:resolved_output_s3_uri] unless input[:resolved_output_s3_uri].nil?
        data
      end
    end

    # Structure Builder for OnlineStoreConfig
    class OnlineStoreConfig
      def self.build(input)
        data = {}
        data['SecurityConfig'] = Builders::OnlineStoreSecurityConfig.build(input[:security_config]) unless input[:security_config].nil?
        data['EnableOnlineStore'] = input[:enable_online_store] unless input[:enable_online_store].nil?
        data
      end
    end

    # Structure Builder for OnlineStoreSecurityConfig
    class OnlineStoreSecurityConfig
      def self.build(input)
        data = {}
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # List Builder for FeatureDefinitions
    class FeatureDefinitions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::FeatureDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FeatureDefinition
    class FeatureDefinition
      def self.build(input)
        data = {}
        data['FeatureName'] = input[:feature_name] unless input[:feature_name].nil?
        data['FeatureType'] = input[:feature_type] unless input[:feature_type].nil?
        data
      end
    end

    # Operation Builder for CreateFlowDefinition
    class CreateFlowDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateFlowDefinition'
        data = {}
        data['FlowDefinitionName'] = input[:flow_definition_name] unless input[:flow_definition_name].nil?
        data['HumanLoopRequestSource'] = Builders::HumanLoopRequestSource.build(input[:human_loop_request_source]) unless input[:human_loop_request_source].nil?
        data['HumanLoopActivationConfig'] = Builders::HumanLoopActivationConfig.build(input[:human_loop_activation_config]) unless input[:human_loop_activation_config].nil?
        data['HumanLoopConfig'] = Builders::HumanLoopConfig.build(input[:human_loop_config]) unless input[:human_loop_config].nil?
        data['OutputConfig'] = Builders::FlowDefinitionOutputConfig.build(input[:output_config]) unless input[:output_config].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for FlowDefinitionOutputConfig
    class FlowDefinitionOutputConfig
      def self.build(input)
        data = {}
        data['S3OutputPath'] = input[:s3_output_path] unless input[:s3_output_path].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # Structure Builder for HumanLoopConfig
    class HumanLoopConfig
      def self.build(input)
        data = {}
        data['WorkteamArn'] = input[:workteam_arn] unless input[:workteam_arn].nil?
        data['HumanTaskUiArn'] = input[:human_task_ui_arn] unless input[:human_task_ui_arn].nil?
        data['TaskTitle'] = input[:task_title] unless input[:task_title].nil?
        data['TaskDescription'] = input[:task_description] unless input[:task_description].nil?
        data['TaskCount'] = input[:task_count] unless input[:task_count].nil?
        data['TaskAvailabilityLifetimeInSeconds'] = input[:task_availability_lifetime_in_seconds] unless input[:task_availability_lifetime_in_seconds].nil?
        data['TaskTimeLimitInSeconds'] = input[:task_time_limit_in_seconds] unless input[:task_time_limit_in_seconds].nil?
        data['TaskKeywords'] = Builders::FlowDefinitionTaskKeywords.build(input[:task_keywords]) unless input[:task_keywords].nil?
        data['PublicWorkforceTaskPrice'] = Builders::PublicWorkforceTaskPrice.build(input[:public_workforce_task_price]) unless input[:public_workforce_task_price].nil?
        data
      end
    end

    # Structure Builder for PublicWorkforceTaskPrice
    class PublicWorkforceTaskPrice
      def self.build(input)
        data = {}
        data['AmountInUsd'] = Builders::USD.build(input[:amount_in_usd]) unless input[:amount_in_usd].nil?
        data
      end
    end

    # Structure Builder for USD
    class USD
      def self.build(input)
        data = {}
        data['Dollars'] = input[:dollars] unless input[:dollars].nil?
        data['Cents'] = input[:cents] unless input[:cents].nil?
        data['TenthFractionsOfACent'] = input[:tenth_fractions_of_a_cent] unless input[:tenth_fractions_of_a_cent].nil?
        data
      end
    end

    # List Builder for FlowDefinitionTaskKeywords
    class FlowDefinitionTaskKeywords
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HumanLoopActivationConfig
    class HumanLoopActivationConfig
      def self.build(input)
        data = {}
        data['HumanLoopActivationConditionsConfig'] = Builders::HumanLoopActivationConditionsConfig.build(input[:human_loop_activation_conditions_config]) unless input[:human_loop_activation_conditions_config].nil?
        data
      end
    end

    # Structure Builder for HumanLoopActivationConditionsConfig
    class HumanLoopActivationConditionsConfig
      def self.build(input)
        data = {}
        data['HumanLoopActivationConditions'] = input[:human_loop_activation_conditions] unless input[:human_loop_activation_conditions].nil?
        data
      end
    end

    # Structure Builder for HumanLoopRequestSource
    class HumanLoopRequestSource
      def self.build(input)
        data = {}
        data['AwsManagedHumanLoopRequestSource'] = input[:aws_managed_human_loop_request_source] unless input[:aws_managed_human_loop_request_source].nil?
        data
      end
    end

    # Operation Builder for CreateHumanTaskUi
    class CreateHumanTaskUi
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateHumanTaskUi'
        data = {}
        data['HumanTaskUiName'] = input[:human_task_ui_name] unless input[:human_task_ui_name].nil?
        data['UiTemplate'] = Builders::UiTemplate.build(input[:ui_template]) unless input[:ui_template].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UiTemplate
    class UiTemplate
      def self.build(input)
        data = {}
        data['Content'] = input[:content] unless input[:content].nil?
        data
      end
    end

    # Operation Builder for CreateHyperParameterTuningJob
    class CreateHyperParameterTuningJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateHyperParameterTuningJob'
        data = {}
        data['HyperParameterTuningJobName'] = input[:hyper_parameter_tuning_job_name] unless input[:hyper_parameter_tuning_job_name].nil?
        data['HyperParameterTuningJobConfig'] = Builders::HyperParameterTuningJobConfig.build(input[:hyper_parameter_tuning_job_config]) unless input[:hyper_parameter_tuning_job_config].nil?
        data['TrainingJobDefinition'] = Builders::HyperParameterTrainingJobDefinition.build(input[:training_job_definition]) unless input[:training_job_definition].nil?
        data['TrainingJobDefinitions'] = Builders::HyperParameterTrainingJobDefinitions.build(input[:training_job_definitions]) unless input[:training_job_definitions].nil?
        data['WarmStartConfig'] = Builders::HyperParameterTuningJobWarmStartConfig.build(input[:warm_start_config]) unless input[:warm_start_config].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for HyperParameterTuningJobWarmStartConfig
    class HyperParameterTuningJobWarmStartConfig
      def self.build(input)
        data = {}
        data['ParentHyperParameterTuningJobs'] = Builders::ParentHyperParameterTuningJobs.build(input[:parent_hyper_parameter_tuning_jobs]) unless input[:parent_hyper_parameter_tuning_jobs].nil?
        data['WarmStartType'] = input[:warm_start_type] unless input[:warm_start_type].nil?
        data
      end
    end

    # List Builder for ParentHyperParameterTuningJobs
    class ParentHyperParameterTuningJobs
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ParentHyperParameterTuningJob.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ParentHyperParameterTuningJob
    class ParentHyperParameterTuningJob
      def self.build(input)
        data = {}
        data['HyperParameterTuningJobName'] = input[:hyper_parameter_tuning_job_name] unless input[:hyper_parameter_tuning_job_name].nil?
        data
      end
    end

    # List Builder for HyperParameterTrainingJobDefinitions
    class HyperParameterTrainingJobDefinitions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::HyperParameterTrainingJobDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HyperParameterTrainingJobDefinition
    class HyperParameterTrainingJobDefinition
      def self.build(input)
        data = {}
        data['DefinitionName'] = input[:definition_name] unless input[:definition_name].nil?
        data['TuningObjective'] = Builders::HyperParameterTuningJobObjective.build(input[:tuning_objective]) unless input[:tuning_objective].nil?
        data['HyperParameterRanges'] = Builders::ParameterRanges.build(input[:hyper_parameter_ranges]) unless input[:hyper_parameter_ranges].nil?
        data['StaticHyperParameters'] = Builders::HyperParameters.build(input[:static_hyper_parameters]) unless input[:static_hyper_parameters].nil?
        data['AlgorithmSpecification'] = Builders::HyperParameterAlgorithmSpecification.build(input[:algorithm_specification]) unless input[:algorithm_specification].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['VpcConfig'] = Builders::VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['OutputDataConfig'] = Builders::OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['ResourceConfig'] = Builders::ResourceConfig.build(input[:resource_config]) unless input[:resource_config].nil?
        data['StoppingCondition'] = Builders::StoppingCondition.build(input[:stopping_condition]) unless input[:stopping_condition].nil?
        data['EnableNetworkIsolation'] = input[:enable_network_isolation] unless input[:enable_network_isolation].nil?
        data['EnableInterContainerTrafficEncryption'] = input[:enable_inter_container_traffic_encryption] unless input[:enable_inter_container_traffic_encryption].nil?
        data['EnableManagedSpotTraining'] = input[:enable_managed_spot_training] unless input[:enable_managed_spot_training].nil?
        data['CheckpointConfig'] = Builders::CheckpointConfig.build(input[:checkpoint_config]) unless input[:checkpoint_config].nil?
        data['RetryStrategy'] = Builders::RetryStrategy.build(input[:retry_strategy]) unless input[:retry_strategy].nil?
        data
      end
    end

    # Structure Builder for RetryStrategy
    class RetryStrategy
      def self.build(input)
        data = {}
        data['MaximumRetryAttempts'] = input[:maximum_retry_attempts] unless input[:maximum_retry_attempts].nil?
        data
      end
    end

    # Structure Builder for CheckpointConfig
    class CheckpointConfig
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data['LocalPath'] = input[:local_path] unless input[:local_path].nil?
        data
      end
    end

    # Structure Builder for HyperParameterAlgorithmSpecification
    class HyperParameterAlgorithmSpecification
      def self.build(input)
        data = {}
        data['TrainingImage'] = input[:training_image] unless input[:training_image].nil?
        data['TrainingInputMode'] = input[:training_input_mode] unless input[:training_input_mode].nil?
        data['AlgorithmName'] = input[:algorithm_name] unless input[:algorithm_name].nil?
        data['MetricDefinitions'] = Builders::MetricDefinitionList.build(input[:metric_definitions]) unless input[:metric_definitions].nil?
        data
      end
    end

    # Structure Builder for ParameterRanges
    class ParameterRanges
      def self.build(input)
        data = {}
        data['IntegerParameterRanges'] = Builders::IntegerParameterRanges.build(input[:integer_parameter_ranges]) unless input[:integer_parameter_ranges].nil?
        data['ContinuousParameterRanges'] = Builders::ContinuousParameterRanges.build(input[:continuous_parameter_ranges]) unless input[:continuous_parameter_ranges].nil?
        data['CategoricalParameterRanges'] = Builders::CategoricalParameterRanges.build(input[:categorical_parameter_ranges]) unless input[:categorical_parameter_ranges].nil?
        data
      end
    end

    # List Builder for CategoricalParameterRanges
    class CategoricalParameterRanges
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CategoricalParameterRange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CategoricalParameterRange
    class CategoricalParameterRange
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = Builders::ParameterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for ContinuousParameterRanges
    class ContinuousParameterRanges
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ContinuousParameterRange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ContinuousParameterRange
    class ContinuousParameterRange
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['MinValue'] = input[:min_value] unless input[:min_value].nil?
        data['MaxValue'] = input[:max_value] unless input[:max_value].nil?
        data['ScalingType'] = input[:scaling_type] unless input[:scaling_type].nil?
        data
      end
    end

    # List Builder for IntegerParameterRanges
    class IntegerParameterRanges
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::IntegerParameterRange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for IntegerParameterRange
    class IntegerParameterRange
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['MinValue'] = input[:min_value] unless input[:min_value].nil?
        data['MaxValue'] = input[:max_value] unless input[:max_value].nil?
        data['ScalingType'] = input[:scaling_type] unless input[:scaling_type].nil?
        data
      end
    end

    # Structure Builder for HyperParameterTuningJobConfig
    class HyperParameterTuningJobConfig
      def self.build(input)
        data = {}
        data['Strategy'] = input[:strategy] unless input[:strategy].nil?
        data['HyperParameterTuningJobObjective'] = Builders::HyperParameterTuningJobObjective.build(input[:hyper_parameter_tuning_job_objective]) unless input[:hyper_parameter_tuning_job_objective].nil?
        data['ResourceLimits'] = Builders::ResourceLimits.build(input[:resource_limits]) unless input[:resource_limits].nil?
        data['ParameterRanges'] = Builders::ParameterRanges.build(input[:parameter_ranges]) unless input[:parameter_ranges].nil?
        data['TrainingJobEarlyStoppingType'] = input[:training_job_early_stopping_type] unless input[:training_job_early_stopping_type].nil?
        data['TuningJobCompletionCriteria'] = Builders::TuningJobCompletionCriteria.build(input[:tuning_job_completion_criteria]) unless input[:tuning_job_completion_criteria].nil?
        data
      end
    end

    # Structure Builder for TuningJobCompletionCriteria
    class TuningJobCompletionCriteria
      def self.build(input)
        data = {}
        data['TargetObjectiveMetricValue'] = Hearth::NumberHelper.serialize(input[:target_objective_metric_value]) unless input[:target_objective_metric_value].nil?
        data
      end
    end

    # Structure Builder for ResourceLimits
    class ResourceLimits
      def self.build(input)
        data = {}
        data['MaxNumberOfTrainingJobs'] = input[:max_number_of_training_jobs] unless input[:max_number_of_training_jobs].nil?
        data['MaxParallelTrainingJobs'] = input[:max_parallel_training_jobs] unless input[:max_parallel_training_jobs].nil?
        data
      end
    end

    # Operation Builder for CreateImage
    class CreateImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateImage'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['ImageName'] = input[:image_name] unless input[:image_name].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateImageVersion
    class CreateImageVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateImageVersion'
        data = {}
        data['BaseImage'] = input[:base_image] unless input[:base_image].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['ImageName'] = input[:image_name] unless input[:image_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateInferenceRecommendationsJob
    class CreateInferenceRecommendationsJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateInferenceRecommendationsJob'
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['JobType'] = input[:job_type] unless input[:job_type].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['InputConfig'] = Builders::RecommendationJobInputConfig.build(input[:input_config]) unless input[:input_config].nil?
        data['JobDescription'] = input[:job_description] unless input[:job_description].nil?
        data['StoppingConditions'] = Builders::RecommendationJobStoppingConditions.build(input[:stopping_conditions]) unless input[:stopping_conditions].nil?
        data['OutputConfig'] = Builders::RecommendationJobOutputConfig.build(input[:output_config]) unless input[:output_config].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RecommendationJobOutputConfig
    class RecommendationJobOutputConfig
      def self.build(input)
        data = {}
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['CompiledOutputConfig'] = Builders::RecommendationJobCompiledOutputConfig.build(input[:compiled_output_config]) unless input[:compiled_output_config].nil?
        data
      end
    end

    # Structure Builder for RecommendationJobCompiledOutputConfig
    class RecommendationJobCompiledOutputConfig
      def self.build(input)
        data = {}
        data['S3OutputUri'] = input[:s3_output_uri] unless input[:s3_output_uri].nil?
        data
      end
    end

    # Structure Builder for RecommendationJobStoppingConditions
    class RecommendationJobStoppingConditions
      def self.build(input)
        data = {}
        data['MaxInvocations'] = input[:max_invocations] unless input[:max_invocations].nil?
        data['ModelLatencyThresholds'] = Builders::ModelLatencyThresholds.build(input[:model_latency_thresholds]) unless input[:model_latency_thresholds].nil?
        data
      end
    end

    # List Builder for ModelLatencyThresholds
    class ModelLatencyThresholds
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ModelLatencyThreshold.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ModelLatencyThreshold
    class ModelLatencyThreshold
      def self.build(input)
        data = {}
        data['Percentile'] = input[:percentile] unless input[:percentile].nil?
        data['ValueInMilliseconds'] = input[:value_in_milliseconds] unless input[:value_in_milliseconds].nil?
        data
      end
    end

    # Structure Builder for RecommendationJobInputConfig
    class RecommendationJobInputConfig
      def self.build(input)
        data = {}
        data['ModelPackageVersionArn'] = input[:model_package_version_arn] unless input[:model_package_version_arn].nil?
        data['JobDurationInSeconds'] = input[:job_duration_in_seconds] unless input[:job_duration_in_seconds].nil?
        data['TrafficPattern'] = Builders::TrafficPattern.build(input[:traffic_pattern]) unless input[:traffic_pattern].nil?
        data['ResourceLimit'] = Builders::RecommendationJobResourceLimit.build(input[:resource_limit]) unless input[:resource_limit].nil?
        data['EndpointConfigurations'] = Builders::EndpointInputConfigurations.build(input[:endpoint_configurations]) unless input[:endpoint_configurations].nil?
        data['VolumeKmsKeyId'] = input[:volume_kms_key_id] unless input[:volume_kms_key_id].nil?
        data
      end
    end

    # List Builder for EndpointInputConfigurations
    class EndpointInputConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EndpointInputConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EndpointInputConfiguration
    class EndpointInputConfiguration
      def self.build(input)
        data = {}
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['InferenceSpecificationName'] = input[:inference_specification_name] unless input[:inference_specification_name].nil?
        data['EnvironmentParameterRanges'] = Builders::EnvironmentParameterRanges.build(input[:environment_parameter_ranges]) unless input[:environment_parameter_ranges].nil?
        data
      end
    end

    # Structure Builder for EnvironmentParameterRanges
    class EnvironmentParameterRanges
      def self.build(input)
        data = {}
        data['CategoricalParameterRanges'] = Builders::CategoricalParameters.build(input[:categorical_parameter_ranges]) unless input[:categorical_parameter_ranges].nil?
        data
      end
    end

    # List Builder for CategoricalParameters
    class CategoricalParameters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CategoricalParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CategoricalParameter
    class CategoricalParameter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = Builders::CategoricalParameterRangeValues.build(input[:value]) unless input[:value].nil?
        data
      end
    end

    # List Builder for CategoricalParameterRangeValues
    class CategoricalParameterRangeValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RecommendationJobResourceLimit
    class RecommendationJobResourceLimit
      def self.build(input)
        data = {}
        data['MaxNumberOfTests'] = input[:max_number_of_tests] unless input[:max_number_of_tests].nil?
        data['MaxParallelOfTests'] = input[:max_parallel_of_tests] unless input[:max_parallel_of_tests].nil?
        data
      end
    end

    # Structure Builder for TrafficPattern
    class TrafficPattern
      def self.build(input)
        data = {}
        data['TrafficType'] = input[:traffic_type] unless input[:traffic_type].nil?
        data['Phases'] = Builders::Phases.build(input[:phases]) unless input[:phases].nil?
        data
      end
    end

    # List Builder for Phases
    class Phases
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Phase.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Phase
    class Phase
      def self.build(input)
        data = {}
        data['InitialNumberOfUsers'] = input[:initial_number_of_users] unless input[:initial_number_of_users].nil?
        data['SpawnRate'] = input[:spawn_rate] unless input[:spawn_rate].nil?
        data['DurationInSeconds'] = input[:duration_in_seconds] unless input[:duration_in_seconds].nil?
        data
      end
    end

    # Operation Builder for CreateLabelingJob
    class CreateLabelingJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateLabelingJob'
        data = {}
        data['LabelingJobName'] = input[:labeling_job_name] unless input[:labeling_job_name].nil?
        data['LabelAttributeName'] = input[:label_attribute_name] unless input[:label_attribute_name].nil?
        data['InputConfig'] = Builders::LabelingJobInputConfig.build(input[:input_config]) unless input[:input_config].nil?
        data['OutputConfig'] = Builders::LabelingJobOutputConfig.build(input[:output_config]) unless input[:output_config].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['LabelCategoryConfigS3Uri'] = input[:label_category_config_s3_uri] unless input[:label_category_config_s3_uri].nil?
        data['StoppingConditions'] = Builders::LabelingJobStoppingConditions.build(input[:stopping_conditions]) unless input[:stopping_conditions].nil?
        data['LabelingJobAlgorithmsConfig'] = Builders::LabelingJobAlgorithmsConfig.build(input[:labeling_job_algorithms_config]) unless input[:labeling_job_algorithms_config].nil?
        data['HumanTaskConfig'] = Builders::HumanTaskConfig.build(input[:human_task_config]) unless input[:human_task_config].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for HumanTaskConfig
    class HumanTaskConfig
      def self.build(input)
        data = {}
        data['WorkteamArn'] = input[:workteam_arn] unless input[:workteam_arn].nil?
        data['UiConfig'] = Builders::UiConfig.build(input[:ui_config]) unless input[:ui_config].nil?
        data['PreHumanTaskLambdaArn'] = input[:pre_human_task_lambda_arn] unless input[:pre_human_task_lambda_arn].nil?
        data['TaskKeywords'] = Builders::TaskKeywords.build(input[:task_keywords]) unless input[:task_keywords].nil?
        data['TaskTitle'] = input[:task_title] unless input[:task_title].nil?
        data['TaskDescription'] = input[:task_description] unless input[:task_description].nil?
        data['NumberOfHumanWorkersPerDataObject'] = input[:number_of_human_workers_per_data_object] unless input[:number_of_human_workers_per_data_object].nil?
        data['TaskTimeLimitInSeconds'] = input[:task_time_limit_in_seconds] unless input[:task_time_limit_in_seconds].nil?
        data['TaskAvailabilityLifetimeInSeconds'] = input[:task_availability_lifetime_in_seconds] unless input[:task_availability_lifetime_in_seconds].nil?
        data['MaxConcurrentTaskCount'] = input[:max_concurrent_task_count] unless input[:max_concurrent_task_count].nil?
        data['AnnotationConsolidationConfig'] = Builders::AnnotationConsolidationConfig.build(input[:annotation_consolidation_config]) unless input[:annotation_consolidation_config].nil?
        data['PublicWorkforceTaskPrice'] = Builders::PublicWorkforceTaskPrice.build(input[:public_workforce_task_price]) unless input[:public_workforce_task_price].nil?
        data
      end
    end

    # Structure Builder for AnnotationConsolidationConfig
    class AnnotationConsolidationConfig
      def self.build(input)
        data = {}
        data['AnnotationConsolidationLambdaArn'] = input[:annotation_consolidation_lambda_arn] unless input[:annotation_consolidation_lambda_arn].nil?
        data
      end
    end

    # List Builder for TaskKeywords
    class TaskKeywords
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UiConfig
    class UiConfig
      def self.build(input)
        data = {}
        data['UiTemplateS3Uri'] = input[:ui_template_s3_uri] unless input[:ui_template_s3_uri].nil?
        data['HumanTaskUiArn'] = input[:human_task_ui_arn] unless input[:human_task_ui_arn].nil?
        data
      end
    end

    # Structure Builder for LabelingJobAlgorithmsConfig
    class LabelingJobAlgorithmsConfig
      def self.build(input)
        data = {}
        data['LabelingJobAlgorithmSpecificationArn'] = input[:labeling_job_algorithm_specification_arn] unless input[:labeling_job_algorithm_specification_arn].nil?
        data['InitialActiveLearningModelArn'] = input[:initial_active_learning_model_arn] unless input[:initial_active_learning_model_arn].nil?
        data['LabelingJobResourceConfig'] = Builders::LabelingJobResourceConfig.build(input[:labeling_job_resource_config]) unless input[:labeling_job_resource_config].nil?
        data
      end
    end

    # Structure Builder for LabelingJobResourceConfig
    class LabelingJobResourceConfig
      def self.build(input)
        data = {}
        data['VolumeKmsKeyId'] = input[:volume_kms_key_id] unless input[:volume_kms_key_id].nil?
        data
      end
    end

    # Structure Builder for LabelingJobStoppingConditions
    class LabelingJobStoppingConditions
      def self.build(input)
        data = {}
        data['MaxHumanLabeledObjectCount'] = input[:max_human_labeled_object_count] unless input[:max_human_labeled_object_count].nil?
        data['MaxPercentageOfInputDatasetLabeled'] = input[:max_percentage_of_input_dataset_labeled] unless input[:max_percentage_of_input_dataset_labeled].nil?
        data
      end
    end

    # Structure Builder for LabelingJobOutputConfig
    class LabelingJobOutputConfig
      def self.build(input)
        data = {}
        data['S3OutputPath'] = input[:s3_output_path] unless input[:s3_output_path].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['SnsTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data
      end
    end

    # Structure Builder for LabelingJobInputConfig
    class LabelingJobInputConfig
      def self.build(input)
        data = {}
        data['DataSource'] = Builders::LabelingJobDataSource.build(input[:data_source]) unless input[:data_source].nil?
        data['DataAttributes'] = Builders::LabelingJobDataAttributes.build(input[:data_attributes]) unless input[:data_attributes].nil?
        data
      end
    end

    # Structure Builder for LabelingJobDataAttributes
    class LabelingJobDataAttributes
      def self.build(input)
        data = {}
        data['ContentClassifiers'] = Builders::ContentClassifiers.build(input[:content_classifiers]) unless input[:content_classifiers].nil?
        data
      end
    end

    # List Builder for ContentClassifiers
    class ContentClassifiers
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LabelingJobDataSource
    class LabelingJobDataSource
      def self.build(input)
        data = {}
        data['S3DataSource'] = Builders::LabelingJobS3DataSource.build(input[:s3_data_source]) unless input[:s3_data_source].nil?
        data['SnsDataSource'] = Builders::LabelingJobSnsDataSource.build(input[:sns_data_source]) unless input[:sns_data_source].nil?
        data
      end
    end

    # Structure Builder for LabelingJobSnsDataSource
    class LabelingJobSnsDataSource
      def self.build(input)
        data = {}
        data['SnsTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data
      end
    end

    # Structure Builder for LabelingJobS3DataSource
    class LabelingJobS3DataSource
      def self.build(input)
        data = {}
        data['ManifestS3Uri'] = input[:manifest_s3_uri] unless input[:manifest_s3_uri].nil?
        data
      end
    end

    # Operation Builder for CreateModel
    class CreateModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateModel'
        data = {}
        data['ModelName'] = input[:model_name] unless input[:model_name].nil?
        data['PrimaryContainer'] = Builders::ContainerDefinition.build(input[:primary_container]) unless input[:primary_container].nil?
        data['Containers'] = Builders::ContainerDefinitionList.build(input[:containers]) unless input[:containers].nil?
        data['InferenceExecutionConfig'] = Builders::InferenceExecutionConfig.build(input[:inference_execution_config]) unless input[:inference_execution_config].nil?
        data['ExecutionRoleArn'] = input[:execution_role_arn] unless input[:execution_role_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['VpcConfig'] = Builders::VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['EnableNetworkIsolation'] = input[:enable_network_isolation] unless input[:enable_network_isolation].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for InferenceExecutionConfig
    class InferenceExecutionConfig
      def self.build(input)
        data = {}
        data['Mode'] = input[:mode] unless input[:mode].nil?
        data
      end
    end

    # List Builder for ContainerDefinitionList
    class ContainerDefinitionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ContainerDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ContainerDefinition
    class ContainerDefinition
      def self.build(input)
        data = {}
        data['ContainerHostname'] = input[:container_hostname] unless input[:container_hostname].nil?
        data['Image'] = input[:image] unless input[:image].nil?
        data['ImageConfig'] = Builders::ImageConfig.build(input[:image_config]) unless input[:image_config].nil?
        data['Mode'] = input[:mode] unless input[:mode].nil?
        data['ModelDataUrl'] = input[:model_data_url] unless input[:model_data_url].nil?
        data['Environment'] = Builders::EnvironmentMap.build(input[:environment]) unless input[:environment].nil?
        data['ModelPackageName'] = input[:model_package_name] unless input[:model_package_name].nil?
        data['InferenceSpecificationName'] = input[:inference_specification_name] unless input[:inference_specification_name].nil?
        data['MultiModelConfig'] = Builders::MultiModelConfig.build(input[:multi_model_config]) unless input[:multi_model_config].nil?
        data
      end
    end

    # Structure Builder for MultiModelConfig
    class MultiModelConfig
      def self.build(input)
        data = {}
        data['ModelCacheSetting'] = input[:model_cache_setting] unless input[:model_cache_setting].nil?
        data
      end
    end

    # Structure Builder for ImageConfig
    class ImageConfig
      def self.build(input)
        data = {}
        data['RepositoryAccessMode'] = input[:repository_access_mode] unless input[:repository_access_mode].nil?
        data['RepositoryAuthConfig'] = Builders::RepositoryAuthConfig.build(input[:repository_auth_config]) unless input[:repository_auth_config].nil?
        data
      end
    end

    # Structure Builder for RepositoryAuthConfig
    class RepositoryAuthConfig
      def self.build(input)
        data = {}
        data['RepositoryCredentialsProviderArn'] = input[:repository_credentials_provider_arn] unless input[:repository_credentials_provider_arn].nil?
        data
      end
    end

    # Operation Builder for CreateModelBiasJobDefinition
    class CreateModelBiasJobDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateModelBiasJobDefinition'
        data = {}
        data['JobDefinitionName'] = input[:job_definition_name] unless input[:job_definition_name].nil?
        data['ModelBiasBaselineConfig'] = Builders::ModelBiasBaselineConfig.build(input[:model_bias_baseline_config]) unless input[:model_bias_baseline_config].nil?
        data['ModelBiasAppSpecification'] = Builders::ModelBiasAppSpecification.build(input[:model_bias_app_specification]) unless input[:model_bias_app_specification].nil?
        data['ModelBiasJobInput'] = Builders::ModelBiasJobInput.build(input[:model_bias_job_input]) unless input[:model_bias_job_input].nil?
        data['ModelBiasJobOutputConfig'] = Builders::MonitoringOutputConfig.build(input[:model_bias_job_output_config]) unless input[:model_bias_job_output_config].nil?
        data['JobResources'] = Builders::MonitoringResources.build(input[:job_resources]) unless input[:job_resources].nil?
        data['NetworkConfig'] = Builders::MonitoringNetworkConfig.build(input[:network_config]) unless input[:network_config].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['StoppingCondition'] = Builders::MonitoringStoppingCondition.build(input[:stopping_condition]) unless input[:stopping_condition].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ModelBiasJobInput
    class ModelBiasJobInput
      def self.build(input)
        data = {}
        data['EndpointInput'] = Builders::EndpointInput.build(input[:endpoint_input]) unless input[:endpoint_input].nil?
        data['GroundTruthS3Input'] = Builders::MonitoringGroundTruthS3Input.build(input[:ground_truth_s3_input]) unless input[:ground_truth_s3_input].nil?
        data
      end
    end

    # Structure Builder for MonitoringGroundTruthS3Input
    class MonitoringGroundTruthS3Input
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data
      end
    end

    # Structure Builder for ModelBiasAppSpecification
    class ModelBiasAppSpecification
      def self.build(input)
        data = {}
        data['ImageUri'] = input[:image_uri] unless input[:image_uri].nil?
        data['ConfigUri'] = input[:config_uri] unless input[:config_uri].nil?
        data['Environment'] = Builders::MonitoringEnvironmentMap.build(input[:environment]) unless input[:environment].nil?
        data
      end
    end

    # Structure Builder for ModelBiasBaselineConfig
    class ModelBiasBaselineConfig
      def self.build(input)
        data = {}
        data['BaseliningJobName'] = input[:baselining_job_name] unless input[:baselining_job_name].nil?
        data['ConstraintsResource'] = Builders::MonitoringConstraintsResource.build(input[:constraints_resource]) unless input[:constraints_resource].nil?
        data
      end
    end

    # Operation Builder for CreateModelExplainabilityJobDefinition
    class CreateModelExplainabilityJobDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateModelExplainabilityJobDefinition'
        data = {}
        data['JobDefinitionName'] = input[:job_definition_name] unless input[:job_definition_name].nil?
        data['ModelExplainabilityBaselineConfig'] = Builders::ModelExplainabilityBaselineConfig.build(input[:model_explainability_baseline_config]) unless input[:model_explainability_baseline_config].nil?
        data['ModelExplainabilityAppSpecification'] = Builders::ModelExplainabilityAppSpecification.build(input[:model_explainability_app_specification]) unless input[:model_explainability_app_specification].nil?
        data['ModelExplainabilityJobInput'] = Builders::ModelExplainabilityJobInput.build(input[:model_explainability_job_input]) unless input[:model_explainability_job_input].nil?
        data['ModelExplainabilityJobOutputConfig'] = Builders::MonitoringOutputConfig.build(input[:model_explainability_job_output_config]) unless input[:model_explainability_job_output_config].nil?
        data['JobResources'] = Builders::MonitoringResources.build(input[:job_resources]) unless input[:job_resources].nil?
        data['NetworkConfig'] = Builders::MonitoringNetworkConfig.build(input[:network_config]) unless input[:network_config].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['StoppingCondition'] = Builders::MonitoringStoppingCondition.build(input[:stopping_condition]) unless input[:stopping_condition].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ModelExplainabilityJobInput
    class ModelExplainabilityJobInput
      def self.build(input)
        data = {}
        data['EndpointInput'] = Builders::EndpointInput.build(input[:endpoint_input]) unless input[:endpoint_input].nil?
        data
      end
    end

    # Structure Builder for ModelExplainabilityAppSpecification
    class ModelExplainabilityAppSpecification
      def self.build(input)
        data = {}
        data['ImageUri'] = input[:image_uri] unless input[:image_uri].nil?
        data['ConfigUri'] = input[:config_uri] unless input[:config_uri].nil?
        data['Environment'] = Builders::MonitoringEnvironmentMap.build(input[:environment]) unless input[:environment].nil?
        data
      end
    end

    # Structure Builder for ModelExplainabilityBaselineConfig
    class ModelExplainabilityBaselineConfig
      def self.build(input)
        data = {}
        data['BaseliningJobName'] = input[:baselining_job_name] unless input[:baselining_job_name].nil?
        data['ConstraintsResource'] = Builders::MonitoringConstraintsResource.build(input[:constraints_resource]) unless input[:constraints_resource].nil?
        data
      end
    end

    # Operation Builder for CreateModelPackage
    class CreateModelPackage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateModelPackage'
        data = {}
        data['ModelPackageName'] = input[:model_package_name] unless input[:model_package_name].nil?
        data['ModelPackageGroupName'] = input[:model_package_group_name] unless input[:model_package_group_name].nil?
        data['ModelPackageDescription'] = input[:model_package_description] unless input[:model_package_description].nil?
        data['InferenceSpecification'] = Builders::InferenceSpecification.build(input[:inference_specification]) unless input[:inference_specification].nil?
        data['ValidationSpecification'] = Builders::ModelPackageValidationSpecification.build(input[:validation_specification]) unless input[:validation_specification].nil?
        data['SourceAlgorithmSpecification'] = Builders::SourceAlgorithmSpecification.build(input[:source_algorithm_specification]) unless input[:source_algorithm_specification].nil?
        data['CertifyForMarketplace'] = input[:certify_for_marketplace] unless input[:certify_for_marketplace].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['ModelApprovalStatus'] = input[:model_approval_status] unless input[:model_approval_status].nil?
        data['MetadataProperties'] = Builders::MetadataProperties.build(input[:metadata_properties]) unless input[:metadata_properties].nil?
        data['ModelMetrics'] = Builders::ModelMetrics.build(input[:model_metrics]) unless input[:model_metrics].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['CustomerMetadataProperties'] = Builders::CustomerMetadataMap.build(input[:customer_metadata_properties]) unless input[:customer_metadata_properties].nil?
        data['DriftCheckBaselines'] = Builders::DriftCheckBaselines.build(input[:drift_check_baselines]) unless input[:drift_check_baselines].nil?
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data['Task'] = input[:task] unless input[:task].nil?
        data['SamplePayloadUrl'] = input[:sample_payload_url] unless input[:sample_payload_url].nil?
        data['AdditionalInferenceSpecifications'] = Builders::AdditionalInferenceSpecifications.build(input[:additional_inference_specifications]) unless input[:additional_inference_specifications].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AdditionalInferenceSpecifications
    class AdditionalInferenceSpecifications
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AdditionalInferenceSpecificationDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AdditionalInferenceSpecificationDefinition
    class AdditionalInferenceSpecificationDefinition
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Containers'] = Builders::ModelPackageContainerDefinitionList.build(input[:containers]) unless input[:containers].nil?
        data['SupportedTransformInstanceTypes'] = Builders::TransformInstanceTypes.build(input[:supported_transform_instance_types]) unless input[:supported_transform_instance_types].nil?
        data['SupportedRealtimeInferenceInstanceTypes'] = Builders::RealtimeInferenceInstanceTypes.build(input[:supported_realtime_inference_instance_types]) unless input[:supported_realtime_inference_instance_types].nil?
        data['SupportedContentTypes'] = Builders::ContentTypes.build(input[:supported_content_types]) unless input[:supported_content_types].nil?
        data['SupportedResponseMIMETypes'] = Builders::ResponseMIMETypes.build(input[:supported_response_mime_types]) unless input[:supported_response_mime_types].nil?
        data
      end
    end

    # Structure Builder for DriftCheckBaselines
    class DriftCheckBaselines
      def self.build(input)
        data = {}
        data['Bias'] = Builders::DriftCheckBias.build(input[:bias]) unless input[:bias].nil?
        data['Explainability'] = Builders::DriftCheckExplainability.build(input[:explainability]) unless input[:explainability].nil?
        data['ModelQuality'] = Builders::DriftCheckModelQuality.build(input[:model_quality]) unless input[:model_quality].nil?
        data['ModelDataQuality'] = Builders::DriftCheckModelDataQuality.build(input[:model_data_quality]) unless input[:model_data_quality].nil?
        data
      end
    end

    # Structure Builder for DriftCheckModelDataQuality
    class DriftCheckModelDataQuality
      def self.build(input)
        data = {}
        data['Statistics'] = Builders::MetricsSource.build(input[:statistics]) unless input[:statistics].nil?
        data['Constraints'] = Builders::MetricsSource.build(input[:constraints]) unless input[:constraints].nil?
        data
      end
    end

    # Structure Builder for MetricsSource
    class MetricsSource
      def self.build(input)
        data = {}
        data['ContentType'] = input[:content_type] unless input[:content_type].nil?
        data['ContentDigest'] = input[:content_digest] unless input[:content_digest].nil?
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data
      end
    end

    # Structure Builder for DriftCheckModelQuality
    class DriftCheckModelQuality
      def self.build(input)
        data = {}
        data['Statistics'] = Builders::MetricsSource.build(input[:statistics]) unless input[:statistics].nil?
        data['Constraints'] = Builders::MetricsSource.build(input[:constraints]) unless input[:constraints].nil?
        data
      end
    end

    # Structure Builder for DriftCheckExplainability
    class DriftCheckExplainability
      def self.build(input)
        data = {}
        data['Constraints'] = Builders::MetricsSource.build(input[:constraints]) unless input[:constraints].nil?
        data['ConfigFile'] = Builders::FileSource.build(input[:config_file]) unless input[:config_file].nil?
        data
      end
    end

    # Structure Builder for FileSource
    class FileSource
      def self.build(input)
        data = {}
        data['ContentType'] = input[:content_type] unless input[:content_type].nil?
        data['ContentDigest'] = input[:content_digest] unless input[:content_digest].nil?
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data
      end
    end

    # Structure Builder for DriftCheckBias
    class DriftCheckBias
      def self.build(input)
        data = {}
        data['ConfigFile'] = Builders::FileSource.build(input[:config_file]) unless input[:config_file].nil?
        data['PreTrainingConstraints'] = Builders::MetricsSource.build(input[:pre_training_constraints]) unless input[:pre_training_constraints].nil?
        data['PostTrainingConstraints'] = Builders::MetricsSource.build(input[:post_training_constraints]) unless input[:post_training_constraints].nil?
        data
      end
    end

    # Map Builder for CustomerMetadataMap
    class CustomerMetadataMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ModelMetrics
    class ModelMetrics
      def self.build(input)
        data = {}
        data['ModelQuality'] = Builders::ModelQuality.build(input[:model_quality]) unless input[:model_quality].nil?
        data['ModelDataQuality'] = Builders::ModelDataQuality.build(input[:model_data_quality]) unless input[:model_data_quality].nil?
        data['Bias'] = Builders::Bias.build(input[:bias]) unless input[:bias].nil?
        data['Explainability'] = Builders::Explainability.build(input[:explainability]) unless input[:explainability].nil?
        data
      end
    end

    # Structure Builder for Explainability
    class Explainability
      def self.build(input)
        data = {}
        data['Report'] = Builders::MetricsSource.build(input[:report]) unless input[:report].nil?
        data
      end
    end

    # Structure Builder for Bias
    class Bias
      def self.build(input)
        data = {}
        data['Report'] = Builders::MetricsSource.build(input[:report]) unless input[:report].nil?
        data['PreTrainingReport'] = Builders::MetricsSource.build(input[:pre_training_report]) unless input[:pre_training_report].nil?
        data['PostTrainingReport'] = Builders::MetricsSource.build(input[:post_training_report]) unless input[:post_training_report].nil?
        data
      end
    end

    # Structure Builder for ModelDataQuality
    class ModelDataQuality
      def self.build(input)
        data = {}
        data['Statistics'] = Builders::MetricsSource.build(input[:statistics]) unless input[:statistics].nil?
        data['Constraints'] = Builders::MetricsSource.build(input[:constraints]) unless input[:constraints].nil?
        data
      end
    end

    # Structure Builder for ModelQuality
    class ModelQuality
      def self.build(input)
        data = {}
        data['Statistics'] = Builders::MetricsSource.build(input[:statistics]) unless input[:statistics].nil?
        data['Constraints'] = Builders::MetricsSource.build(input[:constraints]) unless input[:constraints].nil?
        data
      end
    end

    # Structure Builder for SourceAlgorithmSpecification
    class SourceAlgorithmSpecification
      def self.build(input)
        data = {}
        data['SourceAlgorithms'] = Builders::SourceAlgorithmList.build(input[:source_algorithms]) unless input[:source_algorithms].nil?
        data
      end
    end

    # List Builder for SourceAlgorithmList
    class SourceAlgorithmList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SourceAlgorithm.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SourceAlgorithm
    class SourceAlgorithm
      def self.build(input)
        data = {}
        data['ModelDataUrl'] = input[:model_data_url] unless input[:model_data_url].nil?
        data['AlgorithmName'] = input[:algorithm_name] unless input[:algorithm_name].nil?
        data
      end
    end

    # Structure Builder for ModelPackageValidationSpecification
    class ModelPackageValidationSpecification
      def self.build(input)
        data = {}
        data['ValidationRole'] = input[:validation_role] unless input[:validation_role].nil?
        data['ValidationProfiles'] = Builders::ModelPackageValidationProfiles.build(input[:validation_profiles]) unless input[:validation_profiles].nil?
        data
      end
    end

    # List Builder for ModelPackageValidationProfiles
    class ModelPackageValidationProfiles
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ModelPackageValidationProfile.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ModelPackageValidationProfile
    class ModelPackageValidationProfile
      def self.build(input)
        data = {}
        data['ProfileName'] = input[:profile_name] unless input[:profile_name].nil?
        data['TransformJobDefinition'] = Builders::TransformJobDefinition.build(input[:transform_job_definition]) unless input[:transform_job_definition].nil?
        data
      end
    end

    # Operation Builder for CreateModelPackageGroup
    class CreateModelPackageGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateModelPackageGroup'
        data = {}
        data['ModelPackageGroupName'] = input[:model_package_group_name] unless input[:model_package_group_name].nil?
        data['ModelPackageGroupDescription'] = input[:model_package_group_description] unless input[:model_package_group_description].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateModelQualityJobDefinition
    class CreateModelQualityJobDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateModelQualityJobDefinition'
        data = {}
        data['JobDefinitionName'] = input[:job_definition_name] unless input[:job_definition_name].nil?
        data['ModelQualityBaselineConfig'] = Builders::ModelQualityBaselineConfig.build(input[:model_quality_baseline_config]) unless input[:model_quality_baseline_config].nil?
        data['ModelQualityAppSpecification'] = Builders::ModelQualityAppSpecification.build(input[:model_quality_app_specification]) unless input[:model_quality_app_specification].nil?
        data['ModelQualityJobInput'] = Builders::ModelQualityJobInput.build(input[:model_quality_job_input]) unless input[:model_quality_job_input].nil?
        data['ModelQualityJobOutputConfig'] = Builders::MonitoringOutputConfig.build(input[:model_quality_job_output_config]) unless input[:model_quality_job_output_config].nil?
        data['JobResources'] = Builders::MonitoringResources.build(input[:job_resources]) unless input[:job_resources].nil?
        data['NetworkConfig'] = Builders::MonitoringNetworkConfig.build(input[:network_config]) unless input[:network_config].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['StoppingCondition'] = Builders::MonitoringStoppingCondition.build(input[:stopping_condition]) unless input[:stopping_condition].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ModelQualityJobInput
    class ModelQualityJobInput
      def self.build(input)
        data = {}
        data['EndpointInput'] = Builders::EndpointInput.build(input[:endpoint_input]) unless input[:endpoint_input].nil?
        data['GroundTruthS3Input'] = Builders::MonitoringGroundTruthS3Input.build(input[:ground_truth_s3_input]) unless input[:ground_truth_s3_input].nil?
        data
      end
    end

    # Structure Builder for ModelQualityAppSpecification
    class ModelQualityAppSpecification
      def self.build(input)
        data = {}
        data['ImageUri'] = input[:image_uri] unless input[:image_uri].nil?
        data['ContainerEntrypoint'] = Builders::ContainerEntrypoint.build(input[:container_entrypoint]) unless input[:container_entrypoint].nil?
        data['ContainerArguments'] = Builders::MonitoringContainerArguments.build(input[:container_arguments]) unless input[:container_arguments].nil?
        data['RecordPreprocessorSourceUri'] = input[:record_preprocessor_source_uri] unless input[:record_preprocessor_source_uri].nil?
        data['PostAnalyticsProcessorSourceUri'] = input[:post_analytics_processor_source_uri] unless input[:post_analytics_processor_source_uri].nil?
        data['ProblemType'] = input[:problem_type] unless input[:problem_type].nil?
        data['Environment'] = Builders::MonitoringEnvironmentMap.build(input[:environment]) unless input[:environment].nil?
        data
      end
    end

    # Structure Builder for ModelQualityBaselineConfig
    class ModelQualityBaselineConfig
      def self.build(input)
        data = {}
        data['BaseliningJobName'] = input[:baselining_job_name] unless input[:baselining_job_name].nil?
        data['ConstraintsResource'] = Builders::MonitoringConstraintsResource.build(input[:constraints_resource]) unless input[:constraints_resource].nil?
        data
      end
    end

    # Operation Builder for CreateMonitoringSchedule
    class CreateMonitoringSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateMonitoringSchedule'
        data = {}
        data['MonitoringScheduleName'] = input[:monitoring_schedule_name] unless input[:monitoring_schedule_name].nil?
        data['MonitoringScheduleConfig'] = Builders::MonitoringScheduleConfig.build(input[:monitoring_schedule_config]) unless input[:monitoring_schedule_config].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MonitoringScheduleConfig
    class MonitoringScheduleConfig
      def self.build(input)
        data = {}
        data['ScheduleConfig'] = Builders::ScheduleConfig.build(input[:schedule_config]) unless input[:schedule_config].nil?
        data['MonitoringJobDefinition'] = Builders::MonitoringJobDefinition.build(input[:monitoring_job_definition]) unless input[:monitoring_job_definition].nil?
        data['MonitoringJobDefinitionName'] = input[:monitoring_job_definition_name] unless input[:monitoring_job_definition_name].nil?
        data['MonitoringType'] = input[:monitoring_type] unless input[:monitoring_type].nil?
        data
      end
    end

    # Structure Builder for MonitoringJobDefinition
    class MonitoringJobDefinition
      def self.build(input)
        data = {}
        data['BaselineConfig'] = Builders::MonitoringBaselineConfig.build(input[:baseline_config]) unless input[:baseline_config].nil?
        data['MonitoringInputs'] = Builders::MonitoringInputs.build(input[:monitoring_inputs]) unless input[:monitoring_inputs].nil?
        data['MonitoringOutputConfig'] = Builders::MonitoringOutputConfig.build(input[:monitoring_output_config]) unless input[:monitoring_output_config].nil?
        data['MonitoringResources'] = Builders::MonitoringResources.build(input[:monitoring_resources]) unless input[:monitoring_resources].nil?
        data['MonitoringAppSpecification'] = Builders::MonitoringAppSpecification.build(input[:monitoring_app_specification]) unless input[:monitoring_app_specification].nil?
        data['StoppingCondition'] = Builders::MonitoringStoppingCondition.build(input[:stopping_condition]) unless input[:stopping_condition].nil?
        data['Environment'] = Builders::MonitoringEnvironmentMap.build(input[:environment]) unless input[:environment].nil?
        data['NetworkConfig'] = Builders::NetworkConfig.build(input[:network_config]) unless input[:network_config].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Structure Builder for NetworkConfig
    class NetworkConfig
      def self.build(input)
        data = {}
        data['EnableInterContainerTrafficEncryption'] = input[:enable_inter_container_traffic_encryption] unless input[:enable_inter_container_traffic_encryption].nil?
        data['EnableNetworkIsolation'] = input[:enable_network_isolation] unless input[:enable_network_isolation].nil?
        data['VpcConfig'] = Builders::VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data
      end
    end

    # Structure Builder for MonitoringAppSpecification
    class MonitoringAppSpecification
      def self.build(input)
        data = {}
        data['ImageUri'] = input[:image_uri] unless input[:image_uri].nil?
        data['ContainerEntrypoint'] = Builders::ContainerEntrypoint.build(input[:container_entrypoint]) unless input[:container_entrypoint].nil?
        data['ContainerArguments'] = Builders::MonitoringContainerArguments.build(input[:container_arguments]) unless input[:container_arguments].nil?
        data['RecordPreprocessorSourceUri'] = input[:record_preprocessor_source_uri] unless input[:record_preprocessor_source_uri].nil?
        data['PostAnalyticsProcessorSourceUri'] = input[:post_analytics_processor_source_uri] unless input[:post_analytics_processor_source_uri].nil?
        data
      end
    end

    # List Builder for MonitoringInputs
    class MonitoringInputs
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MonitoringInput.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MonitoringInput
    class MonitoringInput
      def self.build(input)
        data = {}
        data['EndpointInput'] = Builders::EndpointInput.build(input[:endpoint_input]) unless input[:endpoint_input].nil?
        data
      end
    end

    # Structure Builder for MonitoringBaselineConfig
    class MonitoringBaselineConfig
      def self.build(input)
        data = {}
        data['BaseliningJobName'] = input[:baselining_job_name] unless input[:baselining_job_name].nil?
        data['ConstraintsResource'] = Builders::MonitoringConstraintsResource.build(input[:constraints_resource]) unless input[:constraints_resource].nil?
        data['StatisticsResource'] = Builders::MonitoringStatisticsResource.build(input[:statistics_resource]) unless input[:statistics_resource].nil?
        data
      end
    end

    # Structure Builder for ScheduleConfig
    class ScheduleConfig
      def self.build(input)
        data = {}
        data['ScheduleExpression'] = input[:schedule_expression] unless input[:schedule_expression].nil?
        data
      end
    end

    # Operation Builder for CreateNotebookInstance
    class CreateNotebookInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateNotebookInstance'
        data = {}
        data['NotebookInstanceName'] = input[:notebook_instance_name] unless input[:notebook_instance_name].nil?
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['SubnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data['SecurityGroupIds'] = Builders::SecurityGroupIds.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['LifecycleConfigName'] = input[:lifecycle_config_name] unless input[:lifecycle_config_name].nil?
        data['DirectInternetAccess'] = input[:direct_internet_access] unless input[:direct_internet_access].nil?
        data['VolumeSizeInGB'] = input[:volume_size_in_gb] unless input[:volume_size_in_gb].nil?
        data['AcceleratorTypes'] = Builders::NotebookInstanceAcceleratorTypes.build(input[:accelerator_types]) unless input[:accelerator_types].nil?
        data['DefaultCodeRepository'] = input[:default_code_repository] unless input[:default_code_repository].nil?
        data['AdditionalCodeRepositories'] = Builders::AdditionalCodeRepositoryNamesOrUrls.build(input[:additional_code_repositories]) unless input[:additional_code_repositories].nil?
        data['RootAccess'] = input[:root_access] unless input[:root_access].nil?
        data['PlatformIdentifier'] = input[:platform_identifier] unless input[:platform_identifier].nil?
        data['InstanceMetadataServiceConfiguration'] = Builders::InstanceMetadataServiceConfiguration.build(input[:instance_metadata_service_configuration]) unless input[:instance_metadata_service_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for InstanceMetadataServiceConfiguration
    class InstanceMetadataServiceConfiguration
      def self.build(input)
        data = {}
        data['MinimumInstanceMetadataServiceVersion'] = input[:minimum_instance_metadata_service_version] unless input[:minimum_instance_metadata_service_version].nil?
        data
      end
    end

    # List Builder for AdditionalCodeRepositoryNamesOrUrls
    class AdditionalCodeRepositoryNamesOrUrls
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for NotebookInstanceAcceleratorTypes
    class NotebookInstanceAcceleratorTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateNotebookInstanceLifecycleConfig
    class CreateNotebookInstanceLifecycleConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateNotebookInstanceLifecycleConfig'
        data = {}
        data['NotebookInstanceLifecycleConfigName'] = input[:notebook_instance_lifecycle_config_name] unless input[:notebook_instance_lifecycle_config_name].nil?
        data['OnCreate'] = Builders::NotebookInstanceLifecycleConfigList.build(input[:on_create]) unless input[:on_create].nil?
        data['OnStart'] = Builders::NotebookInstanceLifecycleConfigList.build(input[:on_start]) unless input[:on_start].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for NotebookInstanceLifecycleConfigList
    class NotebookInstanceLifecycleConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::NotebookInstanceLifecycleHook.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for NotebookInstanceLifecycleHook
    class NotebookInstanceLifecycleHook
      def self.build(input)
        data = {}
        data['Content'] = input[:content] unless input[:content].nil?
        data
      end
    end

    # Operation Builder for CreatePipeline
    class CreatePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreatePipeline'
        data = {}
        data['PipelineName'] = input[:pipeline_name] unless input[:pipeline_name].nil?
        data['PipelineDisplayName'] = input[:pipeline_display_name] unless input[:pipeline_display_name].nil?
        data['PipelineDefinition'] = input[:pipeline_definition] unless input[:pipeline_definition].nil?
        data['PipelineDefinitionS3Location'] = Builders::PipelineDefinitionS3Location.build(input[:pipeline_definition_s3_location]) unless input[:pipeline_definition_s3_location].nil?
        data['PipelineDescription'] = input[:pipeline_description] unless input[:pipeline_description].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['ParallelismConfiguration'] = Builders::ParallelismConfiguration.build(input[:parallelism_configuration]) unless input[:parallelism_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ParallelismConfiguration
    class ParallelismConfiguration
      def self.build(input)
        data = {}
        data['MaxParallelExecutionSteps'] = input[:max_parallel_execution_steps] unless input[:max_parallel_execution_steps].nil?
        data
      end
    end

    # Structure Builder for PipelineDefinitionS3Location
    class PipelineDefinitionS3Location
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['ObjectKey'] = input[:object_key] unless input[:object_key].nil?
        data['VersionId'] = input[:version_id] unless input[:version_id].nil?
        data
      end
    end

    # Operation Builder for CreatePresignedDomainUrl
    class CreatePresignedDomainUrl
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreatePresignedDomainUrl'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['UserProfileName'] = input[:user_profile_name] unless input[:user_profile_name].nil?
        data['SessionExpirationDurationInSeconds'] = input[:session_expiration_duration_in_seconds] unless input[:session_expiration_duration_in_seconds].nil?
        data['ExpiresInSeconds'] = input[:expires_in_seconds] unless input[:expires_in_seconds].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreatePresignedNotebookInstanceUrl
    class CreatePresignedNotebookInstanceUrl
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreatePresignedNotebookInstanceUrl'
        data = {}
        data['NotebookInstanceName'] = input[:notebook_instance_name] unless input[:notebook_instance_name].nil?
        data['SessionExpirationDurationInSeconds'] = input[:session_expiration_duration_in_seconds] unless input[:session_expiration_duration_in_seconds].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateProcessingJob
    class CreateProcessingJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateProcessingJob'
        data = {}
        data['ProcessingInputs'] = Builders::ProcessingInputs.build(input[:processing_inputs]) unless input[:processing_inputs].nil?
        data['ProcessingOutputConfig'] = Builders::ProcessingOutputConfig.build(input[:processing_output_config]) unless input[:processing_output_config].nil?
        data['ProcessingJobName'] = input[:processing_job_name] unless input[:processing_job_name].nil?
        data['ProcessingResources'] = Builders::ProcessingResources.build(input[:processing_resources]) unless input[:processing_resources].nil?
        data['StoppingCondition'] = Builders::ProcessingStoppingCondition.build(input[:stopping_condition]) unless input[:stopping_condition].nil?
        data['AppSpecification'] = Builders::AppSpecification.build(input[:app_specification]) unless input[:app_specification].nil?
        data['Environment'] = Builders::ProcessingEnvironmentMap.build(input[:environment]) unless input[:environment].nil?
        data['NetworkConfig'] = Builders::NetworkConfig.build(input[:network_config]) unless input[:network_config].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['ExperimentConfig'] = Builders::ExperimentConfig.build(input[:experiment_config]) unless input[:experiment_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ExperimentConfig
    class ExperimentConfig
      def self.build(input)
        data = {}
        data['ExperimentName'] = input[:experiment_name] unless input[:experiment_name].nil?
        data['TrialName'] = input[:trial_name] unless input[:trial_name].nil?
        data['TrialComponentDisplayName'] = input[:trial_component_display_name] unless input[:trial_component_display_name].nil?
        data
      end
    end

    # Map Builder for ProcessingEnvironmentMap
    class ProcessingEnvironmentMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for AppSpecification
    class AppSpecification
      def self.build(input)
        data = {}
        data['ImageUri'] = input[:image_uri] unless input[:image_uri].nil?
        data['ContainerEntrypoint'] = Builders::ContainerEntrypoint.build(input[:container_entrypoint]) unless input[:container_entrypoint].nil?
        data['ContainerArguments'] = Builders::ContainerArguments.build(input[:container_arguments]) unless input[:container_arguments].nil?
        data
      end
    end

    # List Builder for ContainerArguments
    class ContainerArguments
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ProcessingStoppingCondition
    class ProcessingStoppingCondition
      def self.build(input)
        data = {}
        data['MaxRuntimeInSeconds'] = input[:max_runtime_in_seconds] unless input[:max_runtime_in_seconds].nil?
        data
      end
    end

    # Structure Builder for ProcessingResources
    class ProcessingResources
      def self.build(input)
        data = {}
        data['ClusterConfig'] = Builders::ProcessingClusterConfig.build(input[:cluster_config]) unless input[:cluster_config].nil?
        data
      end
    end

    # Structure Builder for ProcessingClusterConfig
    class ProcessingClusterConfig
      def self.build(input)
        data = {}
        data['InstanceCount'] = input[:instance_count] unless input[:instance_count].nil?
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['VolumeSizeInGB'] = input[:volume_size_in_gb] unless input[:volume_size_in_gb].nil?
        data['VolumeKmsKeyId'] = input[:volume_kms_key_id] unless input[:volume_kms_key_id].nil?
        data
      end
    end

    # Structure Builder for ProcessingOutputConfig
    class ProcessingOutputConfig
      def self.build(input)
        data = {}
        data['Outputs'] = Builders::ProcessingOutputs.build(input[:outputs]) unless input[:outputs].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # List Builder for ProcessingOutputs
    class ProcessingOutputs
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ProcessingOutput.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ProcessingOutput
    class ProcessingOutput
      def self.build(input)
        data = {}
        data['OutputName'] = input[:output_name] unless input[:output_name].nil?
        data['S3Output'] = Builders::ProcessingS3Output.build(input[:s3_output]) unless input[:s3_output].nil?
        data['FeatureStoreOutput'] = Builders::ProcessingFeatureStoreOutput.build(input[:feature_store_output]) unless input[:feature_store_output].nil?
        data['AppManaged'] = input[:app_managed] unless input[:app_managed].nil?
        data
      end
    end

    # Structure Builder for ProcessingFeatureStoreOutput
    class ProcessingFeatureStoreOutput
      def self.build(input)
        data = {}
        data['FeatureGroupName'] = input[:feature_group_name] unless input[:feature_group_name].nil?
        data
      end
    end

    # Structure Builder for ProcessingS3Output
    class ProcessingS3Output
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data['LocalPath'] = input[:local_path] unless input[:local_path].nil?
        data['S3UploadMode'] = input[:s3_upload_mode] unless input[:s3_upload_mode].nil?
        data
      end
    end

    # List Builder for ProcessingInputs
    class ProcessingInputs
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ProcessingInput.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ProcessingInput
    class ProcessingInput
      def self.build(input)
        data = {}
        data['InputName'] = input[:input_name] unless input[:input_name].nil?
        data['AppManaged'] = input[:app_managed] unless input[:app_managed].nil?
        data['S3Input'] = Builders::ProcessingS3Input.build(input[:s3_input]) unless input[:s3_input].nil?
        data['DatasetDefinition'] = Builders::DatasetDefinition.build(input[:dataset_definition]) unless input[:dataset_definition].nil?
        data
      end
    end

    # Structure Builder for DatasetDefinition
    class DatasetDefinition
      def self.build(input)
        data = {}
        data['AthenaDatasetDefinition'] = Builders::AthenaDatasetDefinition.build(input[:athena_dataset_definition]) unless input[:athena_dataset_definition].nil?
        data['RedshiftDatasetDefinition'] = Builders::RedshiftDatasetDefinition.build(input[:redshift_dataset_definition]) unless input[:redshift_dataset_definition].nil?
        data['LocalPath'] = input[:local_path] unless input[:local_path].nil?
        data['DataDistributionType'] = input[:data_distribution_type] unless input[:data_distribution_type].nil?
        data['InputMode'] = input[:input_mode] unless input[:input_mode].nil?
        data
      end
    end

    # Structure Builder for RedshiftDatasetDefinition
    class RedshiftDatasetDefinition
      def self.build(input)
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['DbUser'] = input[:db_user] unless input[:db_user].nil?
        data['QueryString'] = input[:query_string] unless input[:query_string].nil?
        data['ClusterRoleArn'] = input[:cluster_role_arn] unless input[:cluster_role_arn].nil?
        data['OutputS3Uri'] = input[:output_s3_uri] unless input[:output_s3_uri].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['OutputFormat'] = input[:output_format] unless input[:output_format].nil?
        data['OutputCompression'] = input[:output_compression] unless input[:output_compression].nil?
        data
      end
    end

    # Structure Builder for AthenaDatasetDefinition
    class AthenaDatasetDefinition
      def self.build(input)
        data = {}
        data['Catalog'] = input[:catalog] unless input[:catalog].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['QueryString'] = input[:query_string] unless input[:query_string].nil?
        data['WorkGroup'] = input[:work_group] unless input[:work_group].nil?
        data['OutputS3Uri'] = input[:output_s3_uri] unless input[:output_s3_uri].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['OutputFormat'] = input[:output_format] unless input[:output_format].nil?
        data['OutputCompression'] = input[:output_compression] unless input[:output_compression].nil?
        data
      end
    end

    # Structure Builder for ProcessingS3Input
    class ProcessingS3Input
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data['LocalPath'] = input[:local_path] unless input[:local_path].nil?
        data['S3DataType'] = input[:s3_data_type] unless input[:s3_data_type].nil?
        data['S3InputMode'] = input[:s3_input_mode] unless input[:s3_input_mode].nil?
        data['S3DataDistributionType'] = input[:s3_data_distribution_type] unless input[:s3_data_distribution_type].nil?
        data['S3CompressionType'] = input[:s3_compression_type] unless input[:s3_compression_type].nil?
        data
      end
    end

    # Operation Builder for CreateProject
    class CreateProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateProject'
        data = {}
        data['ProjectName'] = input[:project_name] unless input[:project_name].nil?
        data['ProjectDescription'] = input[:project_description] unless input[:project_description].nil?
        data['ServiceCatalogProvisioningDetails'] = Builders::ServiceCatalogProvisioningDetails.build(input[:service_catalog_provisioning_details]) unless input[:service_catalog_provisioning_details].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ServiceCatalogProvisioningDetails
    class ServiceCatalogProvisioningDetails
      def self.build(input)
        data = {}
        data['ProductId'] = input[:product_id] unless input[:product_id].nil?
        data['ProvisioningArtifactId'] = input[:provisioning_artifact_id] unless input[:provisioning_artifact_id].nil?
        data['PathId'] = input[:path_id] unless input[:path_id].nil?
        data['ProvisioningParameters'] = Builders::ProvisioningParameters.build(input[:provisioning_parameters]) unless input[:provisioning_parameters].nil?
        data
      end
    end

    # List Builder for ProvisioningParameters
    class ProvisioningParameters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ProvisioningParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ProvisioningParameter
    class ProvisioningParameter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateStudioLifecycleConfig
    class CreateStudioLifecycleConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateStudioLifecycleConfig'
        data = {}
        data['StudioLifecycleConfigName'] = input[:studio_lifecycle_config_name] unless input[:studio_lifecycle_config_name].nil?
        data['StudioLifecycleConfigContent'] = input[:studio_lifecycle_config_content] unless input[:studio_lifecycle_config_content].nil?
        data['StudioLifecycleConfigAppType'] = input[:studio_lifecycle_config_app_type] unless input[:studio_lifecycle_config_app_type].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateTrainingJob
    class CreateTrainingJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateTrainingJob'
        data = {}
        data['TrainingJobName'] = input[:training_job_name] unless input[:training_job_name].nil?
        data['HyperParameters'] = Builders::HyperParameters.build(input[:hyper_parameters]) unless input[:hyper_parameters].nil?
        data['AlgorithmSpecification'] = Builders::AlgorithmSpecification.build(input[:algorithm_specification]) unless input[:algorithm_specification].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['OutputDataConfig'] = Builders::OutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['ResourceConfig'] = Builders::ResourceConfig.build(input[:resource_config]) unless input[:resource_config].nil?
        data['VpcConfig'] = Builders::VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['StoppingCondition'] = Builders::StoppingCondition.build(input[:stopping_condition]) unless input[:stopping_condition].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['EnableNetworkIsolation'] = input[:enable_network_isolation] unless input[:enable_network_isolation].nil?
        data['EnableInterContainerTrafficEncryption'] = input[:enable_inter_container_traffic_encryption] unless input[:enable_inter_container_traffic_encryption].nil?
        data['EnableManagedSpotTraining'] = input[:enable_managed_spot_training] unless input[:enable_managed_spot_training].nil?
        data['CheckpointConfig'] = Builders::CheckpointConfig.build(input[:checkpoint_config]) unless input[:checkpoint_config].nil?
        data['DebugHookConfig'] = Builders::DebugHookConfig.build(input[:debug_hook_config]) unless input[:debug_hook_config].nil?
        data['DebugRuleConfigurations'] = Builders::DebugRuleConfigurations.build(input[:debug_rule_configurations]) unless input[:debug_rule_configurations].nil?
        data['TensorBoardOutputConfig'] = Builders::TensorBoardOutputConfig.build(input[:tensor_board_output_config]) unless input[:tensor_board_output_config].nil?
        data['ExperimentConfig'] = Builders::ExperimentConfig.build(input[:experiment_config]) unless input[:experiment_config].nil?
        data['ProfilerConfig'] = Builders::ProfilerConfig.build(input[:profiler_config]) unless input[:profiler_config].nil?
        data['ProfilerRuleConfigurations'] = Builders::ProfilerRuleConfigurations.build(input[:profiler_rule_configurations]) unless input[:profiler_rule_configurations].nil?
        data['Environment'] = Builders::TrainingEnvironmentMap.build(input[:environment]) unless input[:environment].nil?
        data['RetryStrategy'] = Builders::RetryStrategy.build(input[:retry_strategy]) unless input[:retry_strategy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TrainingEnvironmentMap
    class TrainingEnvironmentMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for ProfilerRuleConfigurations
    class ProfilerRuleConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ProfilerRuleConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ProfilerRuleConfiguration
    class ProfilerRuleConfiguration
      def self.build(input)
        data = {}
        data['RuleConfigurationName'] = input[:rule_configuration_name] unless input[:rule_configuration_name].nil?
        data['LocalPath'] = input[:local_path] unless input[:local_path].nil?
        data['S3OutputPath'] = input[:s3_output_path] unless input[:s3_output_path].nil?
        data['RuleEvaluatorImage'] = input[:rule_evaluator_image] unless input[:rule_evaluator_image].nil?
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['VolumeSizeInGB'] = input[:volume_size_in_gb] unless input[:volume_size_in_gb].nil?
        data['RuleParameters'] = Builders::RuleParameters.build(input[:rule_parameters]) unless input[:rule_parameters].nil?
        data
      end
    end

    # Map Builder for RuleParameters
    class RuleParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ProfilerConfig
    class ProfilerConfig
      def self.build(input)
        data = {}
        data['S3OutputPath'] = input[:s3_output_path] unless input[:s3_output_path].nil?
        data['ProfilingIntervalInMilliseconds'] = input[:profiling_interval_in_milliseconds] unless input[:profiling_interval_in_milliseconds].nil?
        data['ProfilingParameters'] = Builders::ProfilingParameters.build(input[:profiling_parameters]) unless input[:profiling_parameters].nil?
        data
      end
    end

    # Map Builder for ProfilingParameters
    class ProfilingParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for TensorBoardOutputConfig
    class TensorBoardOutputConfig
      def self.build(input)
        data = {}
        data['LocalPath'] = input[:local_path] unless input[:local_path].nil?
        data['S3OutputPath'] = input[:s3_output_path] unless input[:s3_output_path].nil?
        data
      end
    end

    # List Builder for DebugRuleConfigurations
    class DebugRuleConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DebugRuleConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DebugRuleConfiguration
    class DebugRuleConfiguration
      def self.build(input)
        data = {}
        data['RuleConfigurationName'] = input[:rule_configuration_name] unless input[:rule_configuration_name].nil?
        data['LocalPath'] = input[:local_path] unless input[:local_path].nil?
        data['S3OutputPath'] = input[:s3_output_path] unless input[:s3_output_path].nil?
        data['RuleEvaluatorImage'] = input[:rule_evaluator_image] unless input[:rule_evaluator_image].nil?
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['VolumeSizeInGB'] = input[:volume_size_in_gb] unless input[:volume_size_in_gb].nil?
        data['RuleParameters'] = Builders::RuleParameters.build(input[:rule_parameters]) unless input[:rule_parameters].nil?
        data
      end
    end

    # Structure Builder for DebugHookConfig
    class DebugHookConfig
      def self.build(input)
        data = {}
        data['LocalPath'] = input[:local_path] unless input[:local_path].nil?
        data['S3OutputPath'] = input[:s3_output_path] unless input[:s3_output_path].nil?
        data['HookParameters'] = Builders::HookParameters.build(input[:hook_parameters]) unless input[:hook_parameters].nil?
        data['CollectionConfigurations'] = Builders::CollectionConfigurations.build(input[:collection_configurations]) unless input[:collection_configurations].nil?
        data
      end
    end

    # List Builder for CollectionConfigurations
    class CollectionConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CollectionConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CollectionConfiguration
    class CollectionConfiguration
      def self.build(input)
        data = {}
        data['CollectionName'] = input[:collection_name] unless input[:collection_name].nil?
        data['CollectionParameters'] = Builders::CollectionParameters.build(input[:collection_parameters]) unless input[:collection_parameters].nil?
        data
      end
    end

    # Map Builder for CollectionParameters
    class CollectionParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Builder for HookParameters
    class HookParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for AlgorithmSpecification
    class AlgorithmSpecification
      def self.build(input)
        data = {}
        data['TrainingImage'] = input[:training_image] unless input[:training_image].nil?
        data['AlgorithmName'] = input[:algorithm_name] unless input[:algorithm_name].nil?
        data['TrainingInputMode'] = input[:training_input_mode] unless input[:training_input_mode].nil?
        data['MetricDefinitions'] = Builders::MetricDefinitionList.build(input[:metric_definitions]) unless input[:metric_definitions].nil?
        data['EnableSageMakerMetricsTimeSeries'] = input[:enable_sage_maker_metrics_time_series] unless input[:enable_sage_maker_metrics_time_series].nil?
        data
      end
    end

    # Operation Builder for CreateTransformJob
    class CreateTransformJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateTransformJob'
        data = {}
        data['TransformJobName'] = input[:transform_job_name] unless input[:transform_job_name].nil?
        data['ModelName'] = input[:model_name] unless input[:model_name].nil?
        data['MaxConcurrentTransforms'] = input[:max_concurrent_transforms] unless input[:max_concurrent_transforms].nil?
        data['ModelClientConfig'] = Builders::ModelClientConfig.build(input[:model_client_config]) unless input[:model_client_config].nil?
        data['MaxPayloadInMB'] = input[:max_payload_in_mb] unless input[:max_payload_in_mb].nil?
        data['BatchStrategy'] = input[:batch_strategy] unless input[:batch_strategy].nil?
        data['Environment'] = Builders::TransformEnvironmentMap.build(input[:environment]) unless input[:environment].nil?
        data['TransformInput'] = Builders::TransformInput.build(input[:transform_input]) unless input[:transform_input].nil?
        data['TransformOutput'] = Builders::TransformOutput.build(input[:transform_output]) unless input[:transform_output].nil?
        data['TransformResources'] = Builders::TransformResources.build(input[:transform_resources]) unless input[:transform_resources].nil?
        data['DataProcessing'] = Builders::DataProcessing.build(input[:data_processing]) unless input[:data_processing].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['ExperimentConfig'] = Builders::ExperimentConfig.build(input[:experiment_config]) unless input[:experiment_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DataProcessing
    class DataProcessing
      def self.build(input)
        data = {}
        data['InputFilter'] = input[:input_filter] unless input[:input_filter].nil?
        data['OutputFilter'] = input[:output_filter] unless input[:output_filter].nil?
        data['JoinSource'] = input[:join_source] unless input[:join_source].nil?
        data
      end
    end

    # Structure Builder for ModelClientConfig
    class ModelClientConfig
      def self.build(input)
        data = {}
        data['InvocationsTimeoutInSeconds'] = input[:invocations_timeout_in_seconds] unless input[:invocations_timeout_in_seconds].nil?
        data['InvocationsMaxRetries'] = input[:invocations_max_retries] unless input[:invocations_max_retries].nil?
        data
      end
    end

    # Operation Builder for CreateTrial
    class CreateTrial
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateTrial'
        data = {}
        data['TrialName'] = input[:trial_name] unless input[:trial_name].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['ExperimentName'] = input[:experiment_name] unless input[:experiment_name].nil?
        data['MetadataProperties'] = Builders::MetadataProperties.build(input[:metadata_properties]) unless input[:metadata_properties].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateTrialComponent
    class CreateTrialComponent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateTrialComponent'
        data = {}
        data['TrialComponentName'] = input[:trial_component_name] unless input[:trial_component_name].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['Status'] = Builders::TrialComponentStatus.build(input[:status]) unless input[:status].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['Parameters'] = Builders::TrialComponentParameters.build(input[:parameters]) unless input[:parameters].nil?
        data['InputArtifacts'] = Builders::TrialComponentArtifacts.build(input[:input_artifacts]) unless input[:input_artifacts].nil?
        data['OutputArtifacts'] = Builders::TrialComponentArtifacts.build(input[:output_artifacts]) unless input[:output_artifacts].nil?
        data['MetadataProperties'] = Builders::MetadataProperties.build(input[:metadata_properties]) unless input[:metadata_properties].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TrialComponentArtifacts
    class TrialComponentArtifacts
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::TrialComponentArtifact.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for TrialComponentArtifact
    class TrialComponentArtifact
      def self.build(input)
        data = {}
        data['MediaType'] = input[:media_type] unless input[:media_type].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Map Builder for TrialComponentParameters
    class TrialComponentParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::TrialComponentParameterValue.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for TrialComponentParameterValue
    class TrialComponentParameterValue
      def self.build(input)
        data = {}
        case input
        when Types::TrialComponentParameterValue::StringValue
          data['StringValue'] = input
        when Types::TrialComponentParameterValue::NumberValue
          data['NumberValue'] = Hearth::NumberHelper.serialize(input)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::TrialComponentParameterValue"
        end

        data
      end
    end

    # Structure Builder for TrialComponentStatus
    class TrialComponentStatus
      def self.build(input)
        data = {}
        data['PrimaryStatus'] = input[:primary_status] unless input[:primary_status].nil?
        data['Message'] = input[:message] unless input[:message].nil?
        data
      end
    end

    # Operation Builder for CreateUserProfile
    class CreateUserProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateUserProfile'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['UserProfileName'] = input[:user_profile_name] unless input[:user_profile_name].nil?
        data['SingleSignOnUserIdentifier'] = input[:single_sign_on_user_identifier] unless input[:single_sign_on_user_identifier].nil?
        data['SingleSignOnUserValue'] = input[:single_sign_on_user_value] unless input[:single_sign_on_user_value].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['UserSettings'] = Builders::UserSettings.build(input[:user_settings]) unless input[:user_settings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateWorkforce
    class CreateWorkforce
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateWorkforce'
        data = {}
        data['CognitoConfig'] = Builders::CognitoConfig.build(input[:cognito_config]) unless input[:cognito_config].nil?
        data['OidcConfig'] = Builders::OidcConfig.build(input[:oidc_config]) unless input[:oidc_config].nil?
        data['SourceIpConfig'] = Builders::SourceIpConfig.build(input[:source_ip_config]) unless input[:source_ip_config].nil?
        data['WorkforceName'] = input[:workforce_name] unless input[:workforce_name].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SourceIpConfig
    class SourceIpConfig
      def self.build(input)
        data = {}
        data['Cidrs'] = Builders::Cidrs.build(input[:cidrs]) unless input[:cidrs].nil?
        data
      end
    end

    # List Builder for Cidrs
    class Cidrs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OidcConfig
    class OidcConfig
      def self.build(input)
        data = {}
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        data['ClientSecret'] = input[:client_secret] unless input[:client_secret].nil?
        data['Issuer'] = input[:issuer] unless input[:issuer].nil?
        data['AuthorizationEndpoint'] = input[:authorization_endpoint] unless input[:authorization_endpoint].nil?
        data['TokenEndpoint'] = input[:token_endpoint] unless input[:token_endpoint].nil?
        data['UserInfoEndpoint'] = input[:user_info_endpoint] unless input[:user_info_endpoint].nil?
        data['LogoutEndpoint'] = input[:logout_endpoint] unless input[:logout_endpoint].nil?
        data['JwksUri'] = input[:jwks_uri] unless input[:jwks_uri].nil?
        data
      end
    end

    # Structure Builder for CognitoConfig
    class CognitoConfig
      def self.build(input)
        data = {}
        data['UserPool'] = input[:user_pool] unless input[:user_pool].nil?
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        data
      end
    end

    # Operation Builder for CreateWorkteam
    class CreateWorkteam
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.CreateWorkteam'
        data = {}
        data['WorkteamName'] = input[:workteam_name] unless input[:workteam_name].nil?
        data['WorkforceName'] = input[:workforce_name] unless input[:workforce_name].nil?
        data['MemberDefinitions'] = Builders::MemberDefinitions.build(input[:member_definitions]) unless input[:member_definitions].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['NotificationConfiguration'] = Builders::NotificationConfiguration.build(input[:notification_configuration]) unless input[:notification_configuration].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NotificationConfiguration
    class NotificationConfiguration
      def self.build(input)
        data = {}
        data['NotificationTopicArn'] = input[:notification_topic_arn] unless input[:notification_topic_arn].nil?
        data
      end
    end

    # List Builder for MemberDefinitions
    class MemberDefinitions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MemberDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MemberDefinition
    class MemberDefinition
      def self.build(input)
        data = {}
        data['CognitoMemberDefinition'] = Builders::CognitoMemberDefinition.build(input[:cognito_member_definition]) unless input[:cognito_member_definition].nil?
        data['OidcMemberDefinition'] = Builders::OidcMemberDefinition.build(input[:oidc_member_definition]) unless input[:oidc_member_definition].nil?
        data
      end
    end

    # Structure Builder for OidcMemberDefinition
    class OidcMemberDefinition
      def self.build(input)
        data = {}
        data['Groups'] = Builders::Groups.build(input[:groups]) unless input[:groups].nil?
        data
      end
    end

    # List Builder for Groups
    class Groups
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CognitoMemberDefinition
    class CognitoMemberDefinition
      def self.build(input)
        data = {}
        data['UserPool'] = input[:user_pool] unless input[:user_pool].nil?
        data['UserGroup'] = input[:user_group] unless input[:user_group].nil?
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        data
      end
    end

    # Operation Builder for DeleteAction
    class DeleteAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteAction'
        data = {}
        data['ActionName'] = input[:action_name] unless input[:action_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAlgorithm
    class DeleteAlgorithm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteAlgorithm'
        data = {}
        data['AlgorithmName'] = input[:algorithm_name] unless input[:algorithm_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApp
    class DeleteApp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteApp'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['UserProfileName'] = input[:user_profile_name] unless input[:user_profile_name].nil?
        data['AppType'] = input[:app_type] unless input[:app_type].nil?
        data['AppName'] = input[:app_name] unless input[:app_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAppImageConfig
    class DeleteAppImageConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteAppImageConfig'
        data = {}
        data['AppImageConfigName'] = input[:app_image_config_name] unless input[:app_image_config_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteArtifact
    class DeleteArtifact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteArtifact'
        data = {}
        data['ArtifactArn'] = input[:artifact_arn] unless input[:artifact_arn].nil?
        data['Source'] = Builders::ArtifactSource.build(input[:source]) unless input[:source].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAssociation
    class DeleteAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteAssociation'
        data = {}
        data['SourceArn'] = input[:source_arn] unless input[:source_arn].nil?
        data['DestinationArn'] = input[:destination_arn] unless input[:destination_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteCodeRepository
    class DeleteCodeRepository
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteCodeRepository'
        data = {}
        data['CodeRepositoryName'] = input[:code_repository_name] unless input[:code_repository_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteContext
    class DeleteContext
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteContext'
        data = {}
        data['ContextName'] = input[:context_name] unless input[:context_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDataQualityJobDefinition
    class DeleteDataQualityJobDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteDataQualityJobDefinition'
        data = {}
        data['JobDefinitionName'] = input[:job_definition_name] unless input[:job_definition_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDeviceFleet
    class DeleteDeviceFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteDeviceFleet'
        data = {}
        data['DeviceFleetName'] = input[:device_fleet_name] unless input[:device_fleet_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDomain
    class DeleteDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteDomain'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['RetentionPolicy'] = Builders::RetentionPolicy.build(input[:retention_policy]) unless input[:retention_policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RetentionPolicy
    class RetentionPolicy
      def self.build(input)
        data = {}
        data['HomeEfsFileSystem'] = input[:home_efs_file_system] unless input[:home_efs_file_system].nil?
        data
      end
    end

    # Operation Builder for DeleteEndpoint
    class DeleteEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteEndpoint'
        data = {}
        data['EndpointName'] = input[:endpoint_name] unless input[:endpoint_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEndpointConfig
    class DeleteEndpointConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteEndpointConfig'
        data = {}
        data['EndpointConfigName'] = input[:endpoint_config_name] unless input[:endpoint_config_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteExperiment
    class DeleteExperiment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteExperiment'
        data = {}
        data['ExperimentName'] = input[:experiment_name] unless input[:experiment_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteFeatureGroup
    class DeleteFeatureGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteFeatureGroup'
        data = {}
        data['FeatureGroupName'] = input[:feature_group_name] unless input[:feature_group_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteFlowDefinition
    class DeleteFlowDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteFlowDefinition'
        data = {}
        data['FlowDefinitionName'] = input[:flow_definition_name] unless input[:flow_definition_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteHumanTaskUi
    class DeleteHumanTaskUi
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteHumanTaskUi'
        data = {}
        data['HumanTaskUiName'] = input[:human_task_ui_name] unless input[:human_task_ui_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteImage
    class DeleteImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteImage'
        data = {}
        data['ImageName'] = input[:image_name] unless input[:image_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteImageVersion
    class DeleteImageVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteImageVersion'
        data = {}
        data['ImageName'] = input[:image_name] unless input[:image_name].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteModel
    class DeleteModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteModel'
        data = {}
        data['ModelName'] = input[:model_name] unless input[:model_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteModelBiasJobDefinition
    class DeleteModelBiasJobDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteModelBiasJobDefinition'
        data = {}
        data['JobDefinitionName'] = input[:job_definition_name] unless input[:job_definition_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteModelExplainabilityJobDefinition
    class DeleteModelExplainabilityJobDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteModelExplainabilityJobDefinition'
        data = {}
        data['JobDefinitionName'] = input[:job_definition_name] unless input[:job_definition_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteModelPackage
    class DeleteModelPackage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteModelPackage'
        data = {}
        data['ModelPackageName'] = input[:model_package_name] unless input[:model_package_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteModelPackageGroup
    class DeleteModelPackageGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteModelPackageGroup'
        data = {}
        data['ModelPackageGroupName'] = input[:model_package_group_name] unless input[:model_package_group_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteModelPackageGroupPolicy
    class DeleteModelPackageGroupPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteModelPackageGroupPolicy'
        data = {}
        data['ModelPackageGroupName'] = input[:model_package_group_name] unless input[:model_package_group_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteModelQualityJobDefinition
    class DeleteModelQualityJobDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteModelQualityJobDefinition'
        data = {}
        data['JobDefinitionName'] = input[:job_definition_name] unless input[:job_definition_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteMonitoringSchedule
    class DeleteMonitoringSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteMonitoringSchedule'
        data = {}
        data['MonitoringScheduleName'] = input[:monitoring_schedule_name] unless input[:monitoring_schedule_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteNotebookInstance
    class DeleteNotebookInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteNotebookInstance'
        data = {}
        data['NotebookInstanceName'] = input[:notebook_instance_name] unless input[:notebook_instance_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteNotebookInstanceLifecycleConfig
    class DeleteNotebookInstanceLifecycleConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteNotebookInstanceLifecycleConfig'
        data = {}
        data['NotebookInstanceLifecycleConfigName'] = input[:notebook_instance_lifecycle_config_name] unless input[:notebook_instance_lifecycle_config_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePipeline
    class DeletePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeletePipeline'
        data = {}
        data['PipelineName'] = input[:pipeline_name] unless input[:pipeline_name].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteProject
    class DeleteProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteProject'
        data = {}
        data['ProjectName'] = input[:project_name] unless input[:project_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteStudioLifecycleConfig
    class DeleteStudioLifecycleConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteStudioLifecycleConfig'
        data = {}
        data['StudioLifecycleConfigName'] = input[:studio_lifecycle_config_name] unless input[:studio_lifecycle_config_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTags
    class DeleteTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteTags'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
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

    # Operation Builder for DeleteTrial
    class DeleteTrial
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteTrial'
        data = {}
        data['TrialName'] = input[:trial_name] unless input[:trial_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTrialComponent
    class DeleteTrialComponent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteTrialComponent'
        data = {}
        data['TrialComponentName'] = input[:trial_component_name] unless input[:trial_component_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteUserProfile
    class DeleteUserProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteUserProfile'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['UserProfileName'] = input[:user_profile_name] unless input[:user_profile_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteWorkforce
    class DeleteWorkforce
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteWorkforce'
        data = {}
        data['WorkforceName'] = input[:workforce_name] unless input[:workforce_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteWorkteam
    class DeleteWorkteam
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeleteWorkteam'
        data = {}
        data['WorkteamName'] = input[:workteam_name] unless input[:workteam_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterDevices
    class DeregisterDevices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DeregisterDevices'
        data = {}
        data['DeviceFleetName'] = input[:device_fleet_name] unless input[:device_fleet_name].nil?
        data['DeviceNames'] = Builders::DeviceNames.build(input[:device_names]) unless input[:device_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DeviceNames
    class DeviceNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeAction
    class DescribeAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeAction'
        data = {}
        data['ActionName'] = input[:action_name] unless input[:action_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAlgorithm
    class DescribeAlgorithm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeAlgorithm'
        data = {}
        data['AlgorithmName'] = input[:algorithm_name] unless input[:algorithm_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeApp
    class DescribeApp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeApp'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['UserProfileName'] = input[:user_profile_name] unless input[:user_profile_name].nil?
        data['AppType'] = input[:app_type] unless input[:app_type].nil?
        data['AppName'] = input[:app_name] unless input[:app_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAppImageConfig
    class DescribeAppImageConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeAppImageConfig'
        data = {}
        data['AppImageConfigName'] = input[:app_image_config_name] unless input[:app_image_config_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeArtifact
    class DescribeArtifact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeArtifact'
        data = {}
        data['ArtifactArn'] = input[:artifact_arn] unless input[:artifact_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAutoMLJob
    class DescribeAutoMLJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeAutoMLJob'
        data = {}
        data['AutoMLJobName'] = input[:auto_ml_job_name] unless input[:auto_ml_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCodeRepository
    class DescribeCodeRepository
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeCodeRepository'
        data = {}
        data['CodeRepositoryName'] = input[:code_repository_name] unless input[:code_repository_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCompilationJob
    class DescribeCompilationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeCompilationJob'
        data = {}
        data['CompilationJobName'] = input[:compilation_job_name] unless input[:compilation_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeContext
    class DescribeContext
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeContext'
        data = {}
        data['ContextName'] = input[:context_name] unless input[:context_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDataQualityJobDefinition
    class DescribeDataQualityJobDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeDataQualityJobDefinition'
        data = {}
        data['JobDefinitionName'] = input[:job_definition_name] unless input[:job_definition_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDevice
    class DescribeDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeDevice'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['DeviceName'] = input[:device_name] unless input[:device_name].nil?
        data['DeviceFleetName'] = input[:device_fleet_name] unless input[:device_fleet_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDeviceFleet
    class DescribeDeviceFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeDeviceFleet'
        data = {}
        data['DeviceFleetName'] = input[:device_fleet_name] unless input[:device_fleet_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDomain
    class DescribeDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeDomain'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEdgePackagingJob
    class DescribeEdgePackagingJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeEdgePackagingJob'
        data = {}
        data['EdgePackagingJobName'] = input[:edge_packaging_job_name] unless input[:edge_packaging_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEndpoint
    class DescribeEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeEndpoint'
        data = {}
        data['EndpointName'] = input[:endpoint_name] unless input[:endpoint_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEndpointConfig
    class DescribeEndpointConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeEndpointConfig'
        data = {}
        data['EndpointConfigName'] = input[:endpoint_config_name] unless input[:endpoint_config_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeExperiment
    class DescribeExperiment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeExperiment'
        data = {}
        data['ExperimentName'] = input[:experiment_name] unless input[:experiment_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFeatureGroup
    class DescribeFeatureGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeFeatureGroup'
        data = {}
        data['FeatureGroupName'] = input[:feature_group_name] unless input[:feature_group_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFlowDefinition
    class DescribeFlowDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeFlowDefinition'
        data = {}
        data['FlowDefinitionName'] = input[:flow_definition_name] unless input[:flow_definition_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeHumanTaskUi
    class DescribeHumanTaskUi
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeHumanTaskUi'
        data = {}
        data['HumanTaskUiName'] = input[:human_task_ui_name] unless input[:human_task_ui_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeHyperParameterTuningJob
    class DescribeHyperParameterTuningJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeHyperParameterTuningJob'
        data = {}
        data['HyperParameterTuningJobName'] = input[:hyper_parameter_tuning_job_name] unless input[:hyper_parameter_tuning_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeImage
    class DescribeImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeImage'
        data = {}
        data['ImageName'] = input[:image_name] unless input[:image_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeImageVersion
    class DescribeImageVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeImageVersion'
        data = {}
        data['ImageName'] = input[:image_name] unless input[:image_name].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeInferenceRecommendationsJob
    class DescribeInferenceRecommendationsJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeInferenceRecommendationsJob'
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLabelingJob
    class DescribeLabelingJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeLabelingJob'
        data = {}
        data['LabelingJobName'] = input[:labeling_job_name] unless input[:labeling_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLineageGroup
    class DescribeLineageGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeLineageGroup'
        data = {}
        data['LineageGroupName'] = input[:lineage_group_name] unless input[:lineage_group_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeModel
    class DescribeModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeModel'
        data = {}
        data['ModelName'] = input[:model_name] unless input[:model_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeModelBiasJobDefinition
    class DescribeModelBiasJobDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeModelBiasJobDefinition'
        data = {}
        data['JobDefinitionName'] = input[:job_definition_name] unless input[:job_definition_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeModelExplainabilityJobDefinition
    class DescribeModelExplainabilityJobDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeModelExplainabilityJobDefinition'
        data = {}
        data['JobDefinitionName'] = input[:job_definition_name] unless input[:job_definition_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeModelPackage
    class DescribeModelPackage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeModelPackage'
        data = {}
        data['ModelPackageName'] = input[:model_package_name] unless input[:model_package_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeModelPackageGroup
    class DescribeModelPackageGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeModelPackageGroup'
        data = {}
        data['ModelPackageGroupName'] = input[:model_package_group_name] unless input[:model_package_group_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeModelQualityJobDefinition
    class DescribeModelQualityJobDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeModelQualityJobDefinition'
        data = {}
        data['JobDefinitionName'] = input[:job_definition_name] unless input[:job_definition_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeMonitoringSchedule
    class DescribeMonitoringSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeMonitoringSchedule'
        data = {}
        data['MonitoringScheduleName'] = input[:monitoring_schedule_name] unless input[:monitoring_schedule_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeNotebookInstance
    class DescribeNotebookInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeNotebookInstance'
        data = {}
        data['NotebookInstanceName'] = input[:notebook_instance_name] unless input[:notebook_instance_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeNotebookInstanceLifecycleConfig
    class DescribeNotebookInstanceLifecycleConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeNotebookInstanceLifecycleConfig'
        data = {}
        data['NotebookInstanceLifecycleConfigName'] = input[:notebook_instance_lifecycle_config_name] unless input[:notebook_instance_lifecycle_config_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePipeline
    class DescribePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribePipeline'
        data = {}
        data['PipelineName'] = input[:pipeline_name] unless input[:pipeline_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePipelineDefinitionForExecution
    class DescribePipelineDefinitionForExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribePipelineDefinitionForExecution'
        data = {}
        data['PipelineExecutionArn'] = input[:pipeline_execution_arn] unless input[:pipeline_execution_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePipelineExecution
    class DescribePipelineExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribePipelineExecution'
        data = {}
        data['PipelineExecutionArn'] = input[:pipeline_execution_arn] unless input[:pipeline_execution_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeProcessingJob
    class DescribeProcessingJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeProcessingJob'
        data = {}
        data['ProcessingJobName'] = input[:processing_job_name] unless input[:processing_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeProject
    class DescribeProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeProject'
        data = {}
        data['ProjectName'] = input[:project_name] unless input[:project_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeStudioLifecycleConfig
    class DescribeStudioLifecycleConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeStudioLifecycleConfig'
        data = {}
        data['StudioLifecycleConfigName'] = input[:studio_lifecycle_config_name] unless input[:studio_lifecycle_config_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSubscribedWorkteam
    class DescribeSubscribedWorkteam
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeSubscribedWorkteam'
        data = {}
        data['WorkteamArn'] = input[:workteam_arn] unless input[:workteam_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTrainingJob
    class DescribeTrainingJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeTrainingJob'
        data = {}
        data['TrainingJobName'] = input[:training_job_name] unless input[:training_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTransformJob
    class DescribeTransformJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeTransformJob'
        data = {}
        data['TransformJobName'] = input[:transform_job_name] unless input[:transform_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTrial
    class DescribeTrial
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeTrial'
        data = {}
        data['TrialName'] = input[:trial_name] unless input[:trial_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTrialComponent
    class DescribeTrialComponent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeTrialComponent'
        data = {}
        data['TrialComponentName'] = input[:trial_component_name] unless input[:trial_component_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeUserProfile
    class DescribeUserProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeUserProfile'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['UserProfileName'] = input[:user_profile_name] unless input[:user_profile_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeWorkforce
    class DescribeWorkforce
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeWorkforce'
        data = {}
        data['WorkforceName'] = input[:workforce_name] unless input[:workforce_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeWorkteam
    class DescribeWorkteam
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DescribeWorkteam'
        data = {}
        data['WorkteamName'] = input[:workteam_name] unless input[:workteam_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisableSagemakerServicecatalogPortfolio
    class DisableSagemakerServicecatalogPortfolio
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DisableSagemakerServicecatalogPortfolio'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateTrialComponent
    class DisassociateTrialComponent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.DisassociateTrialComponent'
        data = {}
        data['TrialComponentName'] = input[:trial_component_name] unless input[:trial_component_name].nil?
        data['TrialName'] = input[:trial_name] unless input[:trial_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableSagemakerServicecatalogPortfolio
    class EnableSagemakerServicecatalogPortfolio
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.EnableSagemakerServicecatalogPortfolio'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDeviceFleetReport
    class GetDeviceFleetReport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.GetDeviceFleetReport'
        data = {}
        data['DeviceFleetName'] = input[:device_fleet_name] unless input[:device_fleet_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLineageGroupPolicy
    class GetLineageGroupPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.GetLineageGroupPolicy'
        data = {}
        data['LineageGroupName'] = input[:lineage_group_name] unless input[:lineage_group_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetModelPackageGroupPolicy
    class GetModelPackageGroupPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.GetModelPackageGroupPolicy'
        data = {}
        data['ModelPackageGroupName'] = input[:model_package_group_name] unless input[:model_package_group_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSagemakerServicecatalogPortfolioStatus
    class GetSagemakerServicecatalogPortfolioStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.GetSagemakerServicecatalogPortfolioStatus'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSearchSuggestions
    class GetSearchSuggestions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.GetSearchSuggestions'
        data = {}
        data['Resource'] = input[:resource] unless input[:resource].nil?
        data['SuggestionQuery'] = Builders::SuggestionQuery.build(input[:suggestion_query]) unless input[:suggestion_query].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SuggestionQuery
    class SuggestionQuery
      def self.build(input)
        data = {}
        data['PropertyNameQuery'] = Builders::PropertyNameQuery.build(input[:property_name_query]) unless input[:property_name_query].nil?
        data
      end
    end

    # Structure Builder for PropertyNameQuery
    class PropertyNameQuery
      def self.build(input)
        data = {}
        data['PropertyNameHint'] = input[:property_name_hint] unless input[:property_name_hint].nil?
        data
      end
    end

    # Operation Builder for ListActions
    class ListActions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListActions'
        data = {}
        data['SourceUri'] = input[:source_uri] unless input[:source_uri].nil?
        data['ActionType'] = input[:action_type] unless input[:action_type].nil?
        data['CreatedAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_after]).to_i unless input[:created_after].nil?
        data['CreatedBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_before]).to_i unless input[:created_before].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAlgorithms
    class ListAlgorithms
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListAlgorithms'
        data = {}
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAppImageConfigs
    class ListAppImageConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListAppImageConfigs'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['ModifiedTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:modified_time_before]).to_i unless input[:modified_time_before].nil?
        data['ModifiedTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:modified_time_after]).to_i unless input[:modified_time_after].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListApps
    class ListApps
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListApps'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['DomainIdEquals'] = input[:domain_id_equals] unless input[:domain_id_equals].nil?
        data['UserProfileNameEquals'] = input[:user_profile_name_equals] unless input[:user_profile_name_equals].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListArtifacts
    class ListArtifacts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListArtifacts'
        data = {}
        data['SourceUri'] = input[:source_uri] unless input[:source_uri].nil?
        data['ArtifactType'] = input[:artifact_type] unless input[:artifact_type].nil?
        data['CreatedAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_after]).to_i unless input[:created_after].nil?
        data['CreatedBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_before]).to_i unless input[:created_before].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAssociations
    class ListAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListAssociations'
        data = {}
        data['SourceArn'] = input[:source_arn] unless input[:source_arn].nil?
        data['DestinationArn'] = input[:destination_arn] unless input[:destination_arn].nil?
        data['SourceType'] = input[:source_type] unless input[:source_type].nil?
        data['DestinationType'] = input[:destination_type] unless input[:destination_type].nil?
        data['AssociationType'] = input[:association_type] unless input[:association_type].nil?
        data['CreatedAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_after]).to_i unless input[:created_after].nil?
        data['CreatedBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_before]).to_i unless input[:created_before].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAutoMLJobs
    class ListAutoMLJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListAutoMLJobs'
        data = {}
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['LastModifiedTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_after]).to_i unless input[:last_modified_time_after].nil?
        data['LastModifiedTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_before]).to_i unless input[:last_modified_time_before].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['StatusEquals'] = input[:status_equals] unless input[:status_equals].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCandidatesForAutoMLJob
    class ListCandidatesForAutoMLJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListCandidatesForAutoMLJob'
        data = {}
        data['AutoMLJobName'] = input[:auto_ml_job_name] unless input[:auto_ml_job_name].nil?
        data['StatusEquals'] = input[:status_equals] unless input[:status_equals].nil?
        data['CandidateNameEquals'] = input[:candidate_name_equals] unless input[:candidate_name_equals].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCodeRepositories
    class ListCodeRepositories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListCodeRepositories'
        data = {}
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['LastModifiedTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_after]).to_i unless input[:last_modified_time_after].nil?
        data['LastModifiedTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_before]).to_i unless input[:last_modified_time_before].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCompilationJobs
    class ListCompilationJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListCompilationJobs'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['LastModifiedTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_after]).to_i unless input[:last_modified_time_after].nil?
        data['LastModifiedTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_before]).to_i unless input[:last_modified_time_before].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['StatusEquals'] = input[:status_equals] unless input[:status_equals].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListContexts
    class ListContexts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListContexts'
        data = {}
        data['SourceUri'] = input[:source_uri] unless input[:source_uri].nil?
        data['ContextType'] = input[:context_type] unless input[:context_type].nil?
        data['CreatedAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_after]).to_i unless input[:created_after].nil?
        data['CreatedBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_before]).to_i unless input[:created_before].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDataQualityJobDefinitions
    class ListDataQualityJobDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListDataQualityJobDefinitions'
        data = {}
        data['EndpointName'] = input[:endpoint_name] unless input[:endpoint_name].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDeviceFleets
    class ListDeviceFleets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListDeviceFleets'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['LastModifiedTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_after]).to_i unless input[:last_modified_time_after].nil?
        data['LastModifiedTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_before]).to_i unless input[:last_modified_time_before].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDevices
    class ListDevices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListDevices'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['LatestHeartbeatAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:latest_heartbeat_after]).to_i unless input[:latest_heartbeat_after].nil?
        data['ModelName'] = input[:model_name] unless input[:model_name].nil?
        data['DeviceFleetName'] = input[:device_fleet_name] unless input[:device_fleet_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDomains
    class ListDomains
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListDomains'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEdgePackagingJobs
    class ListEdgePackagingJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListEdgePackagingJobs'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['LastModifiedTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_after]).to_i unless input[:last_modified_time_after].nil?
        data['LastModifiedTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_before]).to_i unless input[:last_modified_time_before].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['ModelNameContains'] = input[:model_name_contains] unless input[:model_name_contains].nil?
        data['StatusEquals'] = input[:status_equals] unless input[:status_equals].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEndpointConfigs
    class ListEndpointConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListEndpointConfigs'
        data = {}
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEndpoints
    class ListEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListEndpoints'
        data = {}
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['LastModifiedTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_before]).to_i unless input[:last_modified_time_before].nil?
        data['LastModifiedTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_after]).to_i unless input[:last_modified_time_after].nil?
        data['StatusEquals'] = input[:status_equals] unless input[:status_equals].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListExperiments
    class ListExperiments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListExperiments'
        data = {}
        data['CreatedAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_after]).to_i unless input[:created_after].nil?
        data['CreatedBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_before]).to_i unless input[:created_before].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFeatureGroups
    class ListFeatureGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListFeatureGroups'
        data = {}
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['FeatureGroupStatusEquals'] = input[:feature_group_status_equals] unless input[:feature_group_status_equals].nil?
        data['OfflineStoreStatusEquals'] = input[:offline_store_status_equals] unless input[:offline_store_status_equals].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFlowDefinitions
    class ListFlowDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListFlowDefinitions'
        data = {}
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListHumanTaskUis
    class ListHumanTaskUis
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListHumanTaskUis'
        data = {}
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListHyperParameterTuningJobs
    class ListHyperParameterTuningJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListHyperParameterTuningJobs'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['LastModifiedTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_after]).to_i unless input[:last_modified_time_after].nil?
        data['LastModifiedTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_before]).to_i unless input[:last_modified_time_before].nil?
        data['StatusEquals'] = input[:status_equals] unless input[:status_equals].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListImageVersions
    class ListImageVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListImageVersions'
        data = {}
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['ImageName'] = input[:image_name] unless input[:image_name].nil?
        data['LastModifiedTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_after]).to_i unless input[:last_modified_time_after].nil?
        data['LastModifiedTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_before]).to_i unless input[:last_modified_time_before].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListImages
    class ListImages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListImages'
        data = {}
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['LastModifiedTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_after]).to_i unless input[:last_modified_time_after].nil?
        data['LastModifiedTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_before]).to_i unless input[:last_modified_time_before].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListInferenceRecommendationsJobs
    class ListInferenceRecommendationsJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListInferenceRecommendationsJobs'
        data = {}
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['LastModifiedTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_after]).to_i unless input[:last_modified_time_after].nil?
        data['LastModifiedTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_before]).to_i unless input[:last_modified_time_before].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['StatusEquals'] = input[:status_equals] unless input[:status_equals].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListLabelingJobs
    class ListLabelingJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListLabelingJobs'
        data = {}
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['LastModifiedTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_after]).to_i unless input[:last_modified_time_after].nil?
        data['LastModifiedTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_before]).to_i unless input[:last_modified_time_before].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['StatusEquals'] = input[:status_equals] unless input[:status_equals].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListLabelingJobsForWorkteam
    class ListLabelingJobsForWorkteam
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListLabelingJobsForWorkteam'
        data = {}
        data['WorkteamArn'] = input[:workteam_arn] unless input[:workteam_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['JobReferenceCodeContains'] = input[:job_reference_code_contains] unless input[:job_reference_code_contains].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListLineageGroups
    class ListLineageGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListLineageGroups'
        data = {}
        data['CreatedAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_after]).to_i unless input[:created_after].nil?
        data['CreatedBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_before]).to_i unless input[:created_before].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListModelBiasJobDefinitions
    class ListModelBiasJobDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListModelBiasJobDefinitions'
        data = {}
        data['EndpointName'] = input[:endpoint_name] unless input[:endpoint_name].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListModelExplainabilityJobDefinitions
    class ListModelExplainabilityJobDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListModelExplainabilityJobDefinitions'
        data = {}
        data['EndpointName'] = input[:endpoint_name] unless input[:endpoint_name].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListModelMetadata
    class ListModelMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListModelMetadata'
        data = {}
        data['SearchExpression'] = Builders::ModelMetadataSearchExpression.build(input[:search_expression]) unless input[:search_expression].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ModelMetadataSearchExpression
    class ModelMetadataSearchExpression
      def self.build(input)
        data = {}
        data['Filters'] = Builders::ModelMetadataFilters.build(input[:filters]) unless input[:filters].nil?
        data
      end
    end

    # List Builder for ModelMetadataFilters
    class ModelMetadataFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ModelMetadataFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ModelMetadataFilter
    class ModelMetadataFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for ListModelPackageGroups
    class ListModelPackageGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListModelPackageGroups'
        data = {}
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListModelPackages
    class ListModelPackages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListModelPackages'
        data = {}
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['ModelApprovalStatus'] = input[:model_approval_status] unless input[:model_approval_status].nil?
        data['ModelPackageGroupName'] = input[:model_package_group_name] unless input[:model_package_group_name].nil?
        data['ModelPackageType'] = input[:model_package_type] unless input[:model_package_type].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListModelQualityJobDefinitions
    class ListModelQualityJobDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListModelQualityJobDefinitions'
        data = {}
        data['EndpointName'] = input[:endpoint_name] unless input[:endpoint_name].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListModels
    class ListModels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListModels'
        data = {}
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListMonitoringExecutions
    class ListMonitoringExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListMonitoringExecutions'
        data = {}
        data['MonitoringScheduleName'] = input[:monitoring_schedule_name] unless input[:monitoring_schedule_name].nil?
        data['EndpointName'] = input[:endpoint_name] unless input[:endpoint_name].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['ScheduledTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:scheduled_time_before]).to_i unless input[:scheduled_time_before].nil?
        data['ScheduledTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:scheduled_time_after]).to_i unless input[:scheduled_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['LastModifiedTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_before]).to_i unless input[:last_modified_time_before].nil?
        data['LastModifiedTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_after]).to_i unless input[:last_modified_time_after].nil?
        data['StatusEquals'] = input[:status_equals] unless input[:status_equals].nil?
        data['MonitoringJobDefinitionName'] = input[:monitoring_job_definition_name] unless input[:monitoring_job_definition_name].nil?
        data['MonitoringTypeEquals'] = input[:monitoring_type_equals] unless input[:monitoring_type_equals].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListMonitoringSchedules
    class ListMonitoringSchedules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListMonitoringSchedules'
        data = {}
        data['EndpointName'] = input[:endpoint_name] unless input[:endpoint_name].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['LastModifiedTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_before]).to_i unless input[:last_modified_time_before].nil?
        data['LastModifiedTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_after]).to_i unless input[:last_modified_time_after].nil?
        data['StatusEquals'] = input[:status_equals] unless input[:status_equals].nil?
        data['MonitoringJobDefinitionName'] = input[:monitoring_job_definition_name] unless input[:monitoring_job_definition_name].nil?
        data['MonitoringTypeEquals'] = input[:monitoring_type_equals] unless input[:monitoring_type_equals].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListNotebookInstanceLifecycleConfigs
    class ListNotebookInstanceLifecycleConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListNotebookInstanceLifecycleConfigs'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['LastModifiedTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_before]).to_i unless input[:last_modified_time_before].nil?
        data['LastModifiedTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_after]).to_i unless input[:last_modified_time_after].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListNotebookInstances
    class ListNotebookInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListNotebookInstances'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['LastModifiedTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_before]).to_i unless input[:last_modified_time_before].nil?
        data['LastModifiedTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_after]).to_i unless input[:last_modified_time_after].nil?
        data['StatusEquals'] = input[:status_equals] unless input[:status_equals].nil?
        data['NotebookInstanceLifecycleConfigNameContains'] = input[:notebook_instance_lifecycle_config_name_contains] unless input[:notebook_instance_lifecycle_config_name_contains].nil?
        data['DefaultCodeRepositoryContains'] = input[:default_code_repository_contains] unless input[:default_code_repository_contains].nil?
        data['AdditionalCodeRepositoryEquals'] = input[:additional_code_repository_equals] unless input[:additional_code_repository_equals].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPipelineExecutionSteps
    class ListPipelineExecutionSteps
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListPipelineExecutionSteps'
        data = {}
        data['PipelineExecutionArn'] = input[:pipeline_execution_arn] unless input[:pipeline_execution_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPipelineExecutions
    class ListPipelineExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListPipelineExecutions'
        data = {}
        data['PipelineName'] = input[:pipeline_name] unless input[:pipeline_name].nil?
        data['CreatedAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_after]).to_i unless input[:created_after].nil?
        data['CreatedBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_before]).to_i unless input[:created_before].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPipelineParametersForExecution
    class ListPipelineParametersForExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListPipelineParametersForExecution'
        data = {}
        data['PipelineExecutionArn'] = input[:pipeline_execution_arn] unless input[:pipeline_execution_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPipelines
    class ListPipelines
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListPipelines'
        data = {}
        data['PipelineNamePrefix'] = input[:pipeline_name_prefix] unless input[:pipeline_name_prefix].nil?
        data['CreatedAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_after]).to_i unless input[:created_after].nil?
        data['CreatedBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_before]).to_i unless input[:created_before].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListProcessingJobs
    class ListProcessingJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListProcessingJobs'
        data = {}
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['LastModifiedTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_after]).to_i unless input[:last_modified_time_after].nil?
        data['LastModifiedTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_before]).to_i unless input[:last_modified_time_before].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['StatusEquals'] = input[:status_equals] unless input[:status_equals].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListProjects
    class ListProjects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListProjects'
        data = {}
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListStudioLifecycleConfigs
    class ListStudioLifecycleConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListStudioLifecycleConfigs'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['AppTypeEquals'] = input[:app_type_equals] unless input[:app_type_equals].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['ModifiedTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:modified_time_before]).to_i unless input[:modified_time_before].nil?
        data['ModifiedTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:modified_time_after]).to_i unless input[:modified_time_after].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSubscribedWorkteams
    class ListSubscribedWorkteams
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListSubscribedWorkteams'
        data = {}
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTags
    class ListTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListTags'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTrainingJobs
    class ListTrainingJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListTrainingJobs'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['LastModifiedTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_after]).to_i unless input[:last_modified_time_after].nil?
        data['LastModifiedTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_before]).to_i unless input[:last_modified_time_before].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['StatusEquals'] = input[:status_equals] unless input[:status_equals].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTrainingJobsForHyperParameterTuningJob
    class ListTrainingJobsForHyperParameterTuningJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListTrainingJobsForHyperParameterTuningJob'
        data = {}
        data['HyperParameterTuningJobName'] = input[:hyper_parameter_tuning_job_name] unless input[:hyper_parameter_tuning_job_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['StatusEquals'] = input[:status_equals] unless input[:status_equals].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTransformJobs
    class ListTransformJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListTransformJobs'
        data = {}
        data['CreationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['CreationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['LastModifiedTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_after]).to_i unless input[:last_modified_time_after].nil?
        data['LastModifiedTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:last_modified_time_before]).to_i unless input[:last_modified_time_before].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['StatusEquals'] = input[:status_equals] unless input[:status_equals].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTrialComponents
    class ListTrialComponents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListTrialComponents'
        data = {}
        data['ExperimentName'] = input[:experiment_name] unless input[:experiment_name].nil?
        data['TrialName'] = input[:trial_name] unless input[:trial_name].nil?
        data['SourceArn'] = input[:source_arn] unless input[:source_arn].nil?
        data['CreatedAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_after]).to_i unless input[:created_after].nil?
        data['CreatedBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_before]).to_i unless input[:created_before].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTrials
    class ListTrials
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListTrials'
        data = {}
        data['ExperimentName'] = input[:experiment_name] unless input[:experiment_name].nil?
        data['TrialComponentName'] = input[:trial_component_name] unless input[:trial_component_name].nil?
        data['CreatedAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_after]).to_i unless input[:created_after].nil?
        data['CreatedBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_before]).to_i unless input[:created_before].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListUserProfiles
    class ListUserProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListUserProfiles'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['DomainIdEquals'] = input[:domain_id_equals] unless input[:domain_id_equals].nil?
        data['UserProfileNameContains'] = input[:user_profile_name_contains] unless input[:user_profile_name_contains].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListWorkforces
    class ListWorkforces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListWorkforces'
        data = {}
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListWorkteams
    class ListWorkteams
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.ListWorkteams'
        data = {}
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutModelPackageGroupPolicy
    class PutModelPackageGroupPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.PutModelPackageGroupPolicy'
        data = {}
        data['ModelPackageGroupName'] = input[:model_package_group_name] unless input[:model_package_group_name].nil?
        data['ResourcePolicy'] = input[:resource_policy] unless input[:resource_policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for QueryLineage
    class QueryLineage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.QueryLineage'
        data = {}
        data['StartArns'] = Builders::QueryLineageStartArns.build(input[:start_arns]) unless input[:start_arns].nil?
        data['Direction'] = input[:direction] unless input[:direction].nil?
        data['IncludeEdges'] = input[:include_edges] unless input[:include_edges].nil?
        data['Filters'] = Builders::QueryFilters.build(input[:filters]) unless input[:filters].nil?
        data['MaxDepth'] = input[:max_depth] unless input[:max_depth].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for QueryFilters
    class QueryFilters
      def self.build(input)
        data = {}
        data['Types'] = Builders::QueryTypes.build(input[:types]) unless input[:types].nil?
        data['LineageTypes'] = Builders::QueryLineageTypes.build(input[:lineage_types]) unless input[:lineage_types].nil?
        data['CreatedBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_before]).to_i unless input[:created_before].nil?
        data['CreatedAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_after]).to_i unless input[:created_after].nil?
        data['ModifiedBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:modified_before]).to_i unless input[:modified_before].nil?
        data['ModifiedAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:modified_after]).to_i unless input[:modified_after].nil?
        data['Properties'] = Builders::QueryProperties.build(input[:properties]) unless input[:properties].nil?
        data
      end
    end

    # Map Builder for QueryProperties
    class QueryProperties
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for QueryLineageTypes
    class QueryLineageTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for QueryTypes
    class QueryTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for QueryLineageStartArns
    class QueryLineageStartArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for RegisterDevices
    class RegisterDevices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.RegisterDevices'
        data = {}
        data['DeviceFleetName'] = input[:device_fleet_name] unless input[:device_fleet_name].nil?
        data['Devices'] = Builders::Devices.build(input[:devices]) unless input[:devices].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Devices
    class Devices
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Device.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Device
    class Device
      def self.build(input)
        data = {}
        data['DeviceName'] = input[:device_name] unless input[:device_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['IotThingName'] = input[:iot_thing_name] unless input[:iot_thing_name].nil?
        data
      end
    end

    # Operation Builder for RenderUiTemplate
    class RenderUiTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.RenderUiTemplate'
        data = {}
        data['UiTemplate'] = Builders::UiTemplate.build(input[:ui_template]) unless input[:ui_template].nil?
        data['Task'] = Builders::RenderableTask.build(input[:task]) unless input[:task].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['HumanTaskUiArn'] = input[:human_task_ui_arn] unless input[:human_task_ui_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RenderableTask
    class RenderableTask
      def self.build(input)
        data = {}
        data['Input'] = input[:input] unless input[:input].nil?
        data
      end
    end

    # Operation Builder for RetryPipelineExecution
    class RetryPipelineExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.RetryPipelineExecution'
        data = {}
        data['PipelineExecutionArn'] = input[:pipeline_execution_arn] unless input[:pipeline_execution_arn].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['ParallelismConfiguration'] = Builders::ParallelismConfiguration.build(input[:parallelism_configuration]) unless input[:parallelism_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for Search
    class Search
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.Search'
        data = {}
        data['Resource'] = input[:resource] unless input[:resource].nil?
        data['SearchExpression'] = Builders::SearchExpression.build(input[:search_expression]) unless input[:search_expression].nil?
        data['SortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SearchExpression
    class SearchExpression
      def self.build(input)
        data = {}
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data['NestedFilters'] = Builders::NestedFiltersList.build(input[:nested_filters]) unless input[:nested_filters].nil?
        data['SubExpressions'] = Builders::SearchExpressionList.build(input[:sub_expressions]) unless input[:sub_expressions].nil?
        data['Operator'] = input[:operator] unless input[:operator].nil?
        data
      end
    end

    # List Builder for SearchExpressionList
    class SearchExpressionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SearchExpression.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for NestedFiltersList
    class NestedFiltersList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::NestedFilters.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for NestedFilters
    class NestedFilters
      def self.build(input)
        data = {}
        data['NestedPropertyName'] = input[:nested_property_name] unless input[:nested_property_name].nil?
        data['Filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data
      end
    end

    # List Builder for FilterList
    class FilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Filter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Operator'] = input[:operator] unless input[:operator].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for SendPipelineExecutionStepFailure
    class SendPipelineExecutionStepFailure
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.SendPipelineExecutionStepFailure'
        data = {}
        data['CallbackToken'] = input[:callback_token] unless input[:callback_token].nil?
        data['FailureReason'] = input[:failure_reason] unless input[:failure_reason].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SendPipelineExecutionStepSuccess
    class SendPipelineExecutionStepSuccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.SendPipelineExecutionStepSuccess'
        data = {}
        data['CallbackToken'] = input[:callback_token] unless input[:callback_token].nil?
        data['OutputParameters'] = Builders::OutputParameterList.build(input[:output_parameters]) unless input[:output_parameters].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for OutputParameterList
    class OutputParameterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OutputParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OutputParameter
    class OutputParameter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for StartMonitoringSchedule
    class StartMonitoringSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.StartMonitoringSchedule'
        data = {}
        data['MonitoringScheduleName'] = input[:monitoring_schedule_name] unless input[:monitoring_schedule_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartNotebookInstance
    class StartNotebookInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.StartNotebookInstance'
        data = {}
        data['NotebookInstanceName'] = input[:notebook_instance_name] unless input[:notebook_instance_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartPipelineExecution
    class StartPipelineExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.StartPipelineExecution'
        data = {}
        data['PipelineName'] = input[:pipeline_name] unless input[:pipeline_name].nil?
        data['PipelineExecutionDisplayName'] = input[:pipeline_execution_display_name] unless input[:pipeline_execution_display_name].nil?
        data['PipelineParameters'] = Builders::ParameterList.build(input[:pipeline_parameters]) unless input[:pipeline_parameters].nil?
        data['PipelineExecutionDescription'] = input[:pipeline_execution_description] unless input[:pipeline_execution_description].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['ParallelismConfiguration'] = Builders::ParallelismConfiguration.build(input[:parallelism_configuration]) unless input[:parallelism_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ParameterList
    class ParameterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Parameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Parameter
    class Parameter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for StopAutoMLJob
    class StopAutoMLJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.StopAutoMLJob'
        data = {}
        data['AutoMLJobName'] = input[:auto_ml_job_name] unless input[:auto_ml_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopCompilationJob
    class StopCompilationJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.StopCompilationJob'
        data = {}
        data['CompilationJobName'] = input[:compilation_job_name] unless input[:compilation_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopEdgePackagingJob
    class StopEdgePackagingJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.StopEdgePackagingJob'
        data = {}
        data['EdgePackagingJobName'] = input[:edge_packaging_job_name] unless input[:edge_packaging_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopHyperParameterTuningJob
    class StopHyperParameterTuningJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.StopHyperParameterTuningJob'
        data = {}
        data['HyperParameterTuningJobName'] = input[:hyper_parameter_tuning_job_name] unless input[:hyper_parameter_tuning_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopInferenceRecommendationsJob
    class StopInferenceRecommendationsJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.StopInferenceRecommendationsJob'
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopLabelingJob
    class StopLabelingJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.StopLabelingJob'
        data = {}
        data['LabelingJobName'] = input[:labeling_job_name] unless input[:labeling_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopMonitoringSchedule
    class StopMonitoringSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.StopMonitoringSchedule'
        data = {}
        data['MonitoringScheduleName'] = input[:monitoring_schedule_name] unless input[:monitoring_schedule_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopNotebookInstance
    class StopNotebookInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.StopNotebookInstance'
        data = {}
        data['NotebookInstanceName'] = input[:notebook_instance_name] unless input[:notebook_instance_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopPipelineExecution
    class StopPipelineExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.StopPipelineExecution'
        data = {}
        data['PipelineExecutionArn'] = input[:pipeline_execution_arn] unless input[:pipeline_execution_arn].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopProcessingJob
    class StopProcessingJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.StopProcessingJob'
        data = {}
        data['ProcessingJobName'] = input[:processing_job_name] unless input[:processing_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopTrainingJob
    class StopTrainingJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.StopTrainingJob'
        data = {}
        data['TrainingJobName'] = input[:training_job_name] unless input[:training_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopTransformJob
    class StopTransformJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.StopTransformJob'
        data = {}
        data['TransformJobName'] = input[:transform_job_name] unless input[:transform_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAction
    class UpdateAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateAction'
        data = {}
        data['ActionName'] = input[:action_name] unless input[:action_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['Properties'] = Builders::LineageEntityParameters.build(input[:properties]) unless input[:properties].nil?
        data['PropertiesToRemove'] = Builders::ListLineageEntityParameterKey.build(input[:properties_to_remove]) unless input[:properties_to_remove].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ListLineageEntityParameterKey
    class ListLineageEntityParameterKey
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateAppImageConfig
    class UpdateAppImageConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateAppImageConfig'
        data = {}
        data['AppImageConfigName'] = input[:app_image_config_name] unless input[:app_image_config_name].nil?
        data['KernelGatewayImageConfig'] = Builders::KernelGatewayImageConfig.build(input[:kernel_gateway_image_config]) unless input[:kernel_gateway_image_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateArtifact
    class UpdateArtifact
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateArtifact'
        data = {}
        data['ArtifactArn'] = input[:artifact_arn] unless input[:artifact_arn].nil?
        data['ArtifactName'] = input[:artifact_name] unless input[:artifact_name].nil?
        data['Properties'] = Builders::LineageEntityParameters.build(input[:properties]) unless input[:properties].nil?
        data['PropertiesToRemove'] = Builders::ListLineageEntityParameterKey.build(input[:properties_to_remove]) unless input[:properties_to_remove].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateCodeRepository
    class UpdateCodeRepository
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateCodeRepository'
        data = {}
        data['CodeRepositoryName'] = input[:code_repository_name] unless input[:code_repository_name].nil?
        data['GitConfig'] = Builders::GitConfigForUpdate.build(input[:git_config]) unless input[:git_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for GitConfigForUpdate
    class GitConfigForUpdate
      def self.build(input)
        data = {}
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data
      end
    end

    # Operation Builder for UpdateContext
    class UpdateContext
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateContext'
        data = {}
        data['ContextName'] = input[:context_name] unless input[:context_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Properties'] = Builders::LineageEntityParameters.build(input[:properties]) unless input[:properties].nil?
        data['PropertiesToRemove'] = Builders::ListLineageEntityParameterKey.build(input[:properties_to_remove]) unless input[:properties_to_remove].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDeviceFleet
    class UpdateDeviceFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateDeviceFleet'
        data = {}
        data['DeviceFleetName'] = input[:device_fleet_name] unless input[:device_fleet_name].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['OutputConfig'] = Builders::EdgeOutputConfig.build(input[:output_config]) unless input[:output_config].nil?
        data['EnableIotRoleAlias'] = input[:enable_iot_role_alias] unless input[:enable_iot_role_alias].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDevices
    class UpdateDevices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateDevices'
        data = {}
        data['DeviceFleetName'] = input[:device_fleet_name] unless input[:device_fleet_name].nil?
        data['Devices'] = Builders::Devices.build(input[:devices]) unless input[:devices].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDomain
    class UpdateDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateDomain'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['DefaultUserSettings'] = Builders::UserSettings.build(input[:default_user_settings]) unless input[:default_user_settings].nil?
        data['DomainSettingsForUpdate'] = Builders::DomainSettingsForUpdate.build(input[:domain_settings_for_update]) unless input[:domain_settings_for_update].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DomainSettingsForUpdate
    class DomainSettingsForUpdate
      def self.build(input)
        data = {}
        data['RStudioServerProDomainSettingsForUpdate'] = Builders::RStudioServerProDomainSettingsForUpdate.build(input[:r_studio_server_pro_domain_settings_for_update]) unless input[:r_studio_server_pro_domain_settings_for_update].nil?
        data
      end
    end

    # Structure Builder for RStudioServerProDomainSettingsForUpdate
    class RStudioServerProDomainSettingsForUpdate
      def self.build(input)
        data = {}
        data['DomainExecutionRoleArn'] = input[:domain_execution_role_arn] unless input[:domain_execution_role_arn].nil?
        data['DefaultResourceSpec'] = Builders::ResourceSpec.build(input[:default_resource_spec]) unless input[:default_resource_spec].nil?
        data
      end
    end

    # Operation Builder for UpdateEndpoint
    class UpdateEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateEndpoint'
        data = {}
        data['EndpointName'] = input[:endpoint_name] unless input[:endpoint_name].nil?
        data['EndpointConfigName'] = input[:endpoint_config_name] unless input[:endpoint_config_name].nil?
        data['RetainAllVariantProperties'] = input[:retain_all_variant_properties] unless input[:retain_all_variant_properties].nil?
        data['ExcludeRetainedVariantProperties'] = Builders::VariantPropertyList.build(input[:exclude_retained_variant_properties]) unless input[:exclude_retained_variant_properties].nil?
        data['DeploymentConfig'] = Builders::DeploymentConfig.build(input[:deployment_config]) unless input[:deployment_config].nil?
        data['RetainDeploymentConfig'] = input[:retain_deployment_config] unless input[:retain_deployment_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for VariantPropertyList
    class VariantPropertyList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::VariantProperty.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for VariantProperty
    class VariantProperty
      def self.build(input)
        data = {}
        data['VariantPropertyType'] = input[:variant_property_type] unless input[:variant_property_type].nil?
        data
      end
    end

    # Operation Builder for UpdateEndpointWeightsAndCapacities
    class UpdateEndpointWeightsAndCapacities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateEndpointWeightsAndCapacities'
        data = {}
        data['EndpointName'] = input[:endpoint_name] unless input[:endpoint_name].nil?
        data['DesiredWeightsAndCapacities'] = Builders::DesiredWeightAndCapacityList.build(input[:desired_weights_and_capacities]) unless input[:desired_weights_and_capacities].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DesiredWeightAndCapacityList
    class DesiredWeightAndCapacityList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DesiredWeightAndCapacity.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DesiredWeightAndCapacity
    class DesiredWeightAndCapacity
      def self.build(input)
        data = {}
        data['VariantName'] = input[:variant_name] unless input[:variant_name].nil?
        data['DesiredWeight'] = Hearth::NumberHelper.serialize(input[:desired_weight]) unless input[:desired_weight].nil?
        data['DesiredInstanceCount'] = input[:desired_instance_count] unless input[:desired_instance_count].nil?
        data
      end
    end

    # Operation Builder for UpdateExperiment
    class UpdateExperiment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateExperiment'
        data = {}
        data['ExperimentName'] = input[:experiment_name] unless input[:experiment_name].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateImage
    class UpdateImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateImage'
        data = {}
        data['DeleteProperties'] = Builders::ImageDeletePropertyList.build(input[:delete_properties]) unless input[:delete_properties].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['ImageName'] = input[:image_name] unless input[:image_name].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ImageDeletePropertyList
    class ImageDeletePropertyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateModelPackage
    class UpdateModelPackage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateModelPackage'
        data = {}
        data['ModelPackageArn'] = input[:model_package_arn] unless input[:model_package_arn].nil?
        data['ModelApprovalStatus'] = input[:model_approval_status] unless input[:model_approval_status].nil?
        data['ApprovalDescription'] = input[:approval_description] unless input[:approval_description].nil?
        data['CustomerMetadataProperties'] = Builders::CustomerMetadataMap.build(input[:customer_metadata_properties]) unless input[:customer_metadata_properties].nil?
        data['CustomerMetadataPropertiesToRemove'] = Builders::CustomerMetadataKeyList.build(input[:customer_metadata_properties_to_remove]) unless input[:customer_metadata_properties_to_remove].nil?
        data['AdditionalInferenceSpecificationsToAdd'] = Builders::AdditionalInferenceSpecifications.build(input[:additional_inference_specifications_to_add]) unless input[:additional_inference_specifications_to_add].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CustomerMetadataKeyList
    class CustomerMetadataKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateMonitoringSchedule
    class UpdateMonitoringSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateMonitoringSchedule'
        data = {}
        data['MonitoringScheduleName'] = input[:monitoring_schedule_name] unless input[:monitoring_schedule_name].nil?
        data['MonitoringScheduleConfig'] = Builders::MonitoringScheduleConfig.build(input[:monitoring_schedule_config]) unless input[:monitoring_schedule_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateNotebookInstance
    class UpdateNotebookInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateNotebookInstance'
        data = {}
        data['NotebookInstanceName'] = input[:notebook_instance_name] unless input[:notebook_instance_name].nil?
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['LifecycleConfigName'] = input[:lifecycle_config_name] unless input[:lifecycle_config_name].nil?
        data['DisassociateLifecycleConfig'] = input[:disassociate_lifecycle_config] unless input[:disassociate_lifecycle_config].nil?
        data['VolumeSizeInGB'] = input[:volume_size_in_gb] unless input[:volume_size_in_gb].nil?
        data['DefaultCodeRepository'] = input[:default_code_repository] unless input[:default_code_repository].nil?
        data['AdditionalCodeRepositories'] = Builders::AdditionalCodeRepositoryNamesOrUrls.build(input[:additional_code_repositories]) unless input[:additional_code_repositories].nil?
        data['AcceleratorTypes'] = Builders::NotebookInstanceAcceleratorTypes.build(input[:accelerator_types]) unless input[:accelerator_types].nil?
        data['DisassociateAcceleratorTypes'] = input[:disassociate_accelerator_types] unless input[:disassociate_accelerator_types].nil?
        data['DisassociateDefaultCodeRepository'] = input[:disassociate_default_code_repository] unless input[:disassociate_default_code_repository].nil?
        data['DisassociateAdditionalCodeRepositories'] = input[:disassociate_additional_code_repositories] unless input[:disassociate_additional_code_repositories].nil?
        data['RootAccess'] = input[:root_access] unless input[:root_access].nil?
        data['InstanceMetadataServiceConfiguration'] = Builders::InstanceMetadataServiceConfiguration.build(input[:instance_metadata_service_configuration]) unless input[:instance_metadata_service_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateNotebookInstanceLifecycleConfig
    class UpdateNotebookInstanceLifecycleConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateNotebookInstanceLifecycleConfig'
        data = {}
        data['NotebookInstanceLifecycleConfigName'] = input[:notebook_instance_lifecycle_config_name] unless input[:notebook_instance_lifecycle_config_name].nil?
        data['OnCreate'] = Builders::NotebookInstanceLifecycleConfigList.build(input[:on_create]) unless input[:on_create].nil?
        data['OnStart'] = Builders::NotebookInstanceLifecycleConfigList.build(input[:on_start]) unless input[:on_start].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePipeline
    class UpdatePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdatePipeline'
        data = {}
        data['PipelineName'] = input[:pipeline_name] unless input[:pipeline_name].nil?
        data['PipelineDisplayName'] = input[:pipeline_display_name] unless input[:pipeline_display_name].nil?
        data['PipelineDefinition'] = input[:pipeline_definition] unless input[:pipeline_definition].nil?
        data['PipelineDefinitionS3Location'] = Builders::PipelineDefinitionS3Location.build(input[:pipeline_definition_s3_location]) unless input[:pipeline_definition_s3_location].nil?
        data['PipelineDescription'] = input[:pipeline_description] unless input[:pipeline_description].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['ParallelismConfiguration'] = Builders::ParallelismConfiguration.build(input[:parallelism_configuration]) unless input[:parallelism_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePipelineExecution
    class UpdatePipelineExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdatePipelineExecution'
        data = {}
        data['PipelineExecutionArn'] = input[:pipeline_execution_arn] unless input[:pipeline_execution_arn].nil?
        data['PipelineExecutionDescription'] = input[:pipeline_execution_description] unless input[:pipeline_execution_description].nil?
        data['PipelineExecutionDisplayName'] = input[:pipeline_execution_display_name] unless input[:pipeline_execution_display_name].nil?
        data['ParallelismConfiguration'] = Builders::ParallelismConfiguration.build(input[:parallelism_configuration]) unless input[:parallelism_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateProject
    class UpdateProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateProject'
        data = {}
        data['ProjectName'] = input[:project_name] unless input[:project_name].nil?
        data['ProjectDescription'] = input[:project_description] unless input[:project_description].nil?
        data['ServiceCatalogProvisioningUpdateDetails'] = Builders::ServiceCatalogProvisioningUpdateDetails.build(input[:service_catalog_provisioning_update_details]) unless input[:service_catalog_provisioning_update_details].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ServiceCatalogProvisioningUpdateDetails
    class ServiceCatalogProvisioningUpdateDetails
      def self.build(input)
        data = {}
        data['ProvisioningArtifactId'] = input[:provisioning_artifact_id] unless input[:provisioning_artifact_id].nil?
        data['ProvisioningParameters'] = Builders::ProvisioningParameters.build(input[:provisioning_parameters]) unless input[:provisioning_parameters].nil?
        data
      end
    end

    # Operation Builder for UpdateTrainingJob
    class UpdateTrainingJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateTrainingJob'
        data = {}
        data['TrainingJobName'] = input[:training_job_name] unless input[:training_job_name].nil?
        data['ProfilerConfig'] = Builders::ProfilerConfigForUpdate.build(input[:profiler_config]) unless input[:profiler_config].nil?
        data['ProfilerRuleConfigurations'] = Builders::ProfilerRuleConfigurations.build(input[:profiler_rule_configurations]) unless input[:profiler_rule_configurations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ProfilerConfigForUpdate
    class ProfilerConfigForUpdate
      def self.build(input)
        data = {}
        data['S3OutputPath'] = input[:s3_output_path] unless input[:s3_output_path].nil?
        data['ProfilingIntervalInMilliseconds'] = input[:profiling_interval_in_milliseconds] unless input[:profiling_interval_in_milliseconds].nil?
        data['ProfilingParameters'] = Builders::ProfilingParameters.build(input[:profiling_parameters]) unless input[:profiling_parameters].nil?
        data['DisableProfiler'] = input[:disable_profiler] unless input[:disable_profiler].nil?
        data
      end
    end

    # Operation Builder for UpdateTrial
    class UpdateTrial
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateTrial'
        data = {}
        data['TrialName'] = input[:trial_name] unless input[:trial_name].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTrialComponent
    class UpdateTrialComponent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateTrialComponent'
        data = {}
        data['TrialComponentName'] = input[:trial_component_name] unless input[:trial_component_name].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['Status'] = Builders::TrialComponentStatus.build(input[:status]) unless input[:status].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['Parameters'] = Builders::TrialComponentParameters.build(input[:parameters]) unless input[:parameters].nil?
        data['ParametersToRemove'] = Builders::ListTrialComponentKey256.build(input[:parameters_to_remove]) unless input[:parameters_to_remove].nil?
        data['InputArtifacts'] = Builders::TrialComponentArtifacts.build(input[:input_artifacts]) unless input[:input_artifacts].nil?
        data['InputArtifactsToRemove'] = Builders::ListTrialComponentKey256.build(input[:input_artifacts_to_remove]) unless input[:input_artifacts_to_remove].nil?
        data['OutputArtifacts'] = Builders::TrialComponentArtifacts.build(input[:output_artifacts]) unless input[:output_artifacts].nil?
        data['OutputArtifactsToRemove'] = Builders::ListTrialComponentKey256.build(input[:output_artifacts_to_remove]) unless input[:output_artifacts_to_remove].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ListTrialComponentKey256
    class ListTrialComponentKey256
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateUserProfile
    class UpdateUserProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateUserProfile'
        data = {}
        data['DomainId'] = input[:domain_id] unless input[:domain_id].nil?
        data['UserProfileName'] = input[:user_profile_name] unless input[:user_profile_name].nil?
        data['UserSettings'] = Builders::UserSettings.build(input[:user_settings]) unless input[:user_settings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateWorkforce
    class UpdateWorkforce
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateWorkforce'
        data = {}
        data['WorkforceName'] = input[:workforce_name] unless input[:workforce_name].nil?
        data['SourceIpConfig'] = Builders::SourceIpConfig.build(input[:source_ip_config]) unless input[:source_ip_config].nil?
        data['OidcConfig'] = Builders::OidcConfig.build(input[:oidc_config]) unless input[:oidc_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateWorkteam
    class UpdateWorkteam
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'SageMaker.UpdateWorkteam'
        data = {}
        data['WorkteamName'] = input[:workteam_name] unless input[:workteam_name].nil?
        data['MemberDefinitions'] = Builders::MemberDefinitions.build(input[:member_definitions]) unless input[:member_definitions].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['NotificationConfiguration'] = Builders::NotificationConfiguration.build(input[:notification_configuration]) unless input[:notification_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
