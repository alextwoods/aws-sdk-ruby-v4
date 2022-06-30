# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::SageMaker
  module Parsers

    # Operation Parser for AddAssociation
    class AddAssociation
      def self.parse(http_resp)
        data = Types::AddAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.source_arn = map['SourceArn']
        data.destination_arn = map['DestinationArn']
        data
      end
    end

    # Error Parser for ResourceLimitExceeded
    class ResourceLimitExceeded
      def self.parse(http_resp)
        data = Types::ResourceLimitExceeded.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFound
    class ResourceNotFound
      def self.parse(http_resp)
        data = Types::ResourceNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AddTags
    class AddTags
      def self.parse(http_resp)
        data = Types::AddTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
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

    # Operation Parser for AssociateTrialComponent
    class AssociateTrialComponent
      def self.parse(http_resp)
        data = Types::AssociateTrialComponentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trial_component_arn = map['TrialComponentArn']
        data.trial_arn = map['TrialArn']
        data
      end
    end

    # Operation Parser for BatchDescribeModelPackage
    class BatchDescribeModelPackage
      def self.parse(http_resp)
        data = Types::BatchDescribeModelPackageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_package_summaries = (Parsers::ModelPackageSummaries.parse(map['ModelPackageSummaries']) unless map['ModelPackageSummaries'].nil?)
        data.batch_describe_model_package_error_map = (Parsers::BatchDescribeModelPackageErrorMap.parse(map['BatchDescribeModelPackageErrorMap']) unless map['BatchDescribeModelPackageErrorMap'].nil?)
        data
      end
    end

    class BatchDescribeModelPackageErrorMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::BatchDescribeModelPackageError.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchDescribeModelPackageError
      def self.parse(map)
        data = Types::BatchDescribeModelPackageError.new
        data.error_code = map['ErrorCode']
        data.error_response = map['ErrorResponse']
        return data
      end
    end

    class ModelPackageSummaries
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::BatchDescribeModelPackageSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchDescribeModelPackageSummary
      def self.parse(map)
        data = Types::BatchDescribeModelPackageSummary.new
        data.model_package_group_name = map['ModelPackageGroupName']
        data.model_package_version = map['ModelPackageVersion']
        data.model_package_arn = map['ModelPackageArn']
        data.model_package_description = map['ModelPackageDescription']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.inference_specification = (Parsers::InferenceSpecification.parse(map['InferenceSpecification']) unless map['InferenceSpecification'].nil?)
        data.model_package_status = map['ModelPackageStatus']
        data.model_approval_status = map['ModelApprovalStatus']
        return data
      end
    end

    class InferenceSpecification
      def self.parse(map)
        data = Types::InferenceSpecification.new
        data.containers = (Parsers::ModelPackageContainerDefinitionList.parse(map['Containers']) unless map['Containers'].nil?)
        data.supported_transform_instance_types = (Parsers::TransformInstanceTypes.parse(map['SupportedTransformInstanceTypes']) unless map['SupportedTransformInstanceTypes'].nil?)
        data.supported_realtime_inference_instance_types = (Parsers::RealtimeInferenceInstanceTypes.parse(map['SupportedRealtimeInferenceInstanceTypes']) unless map['SupportedRealtimeInferenceInstanceTypes'].nil?)
        data.supported_content_types = (Parsers::ContentTypes.parse(map['SupportedContentTypes']) unless map['SupportedContentTypes'].nil?)
        data.supported_response_mime_types = (Parsers::ResponseMIMETypes.parse(map['SupportedResponseMIMETypes']) unless map['SupportedResponseMIMETypes'].nil?)
        return data
      end
    end

    class ResponseMIMETypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ContentTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class RealtimeInferenceInstanceTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class TransformInstanceTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ModelPackageContainerDefinitionList
      def self.parse(list)
        list.map do |value|
          Parsers::ModelPackageContainerDefinition.parse(value) unless value.nil?
        end
      end
    end

    class ModelPackageContainerDefinition
      def self.parse(map)
        data = Types::ModelPackageContainerDefinition.new
        data.container_hostname = map['ContainerHostname']
        data.image = map['Image']
        data.image_digest = map['ImageDigest']
        data.model_data_url = map['ModelDataUrl']
        data.product_id = map['ProductId']
        data.environment = (Parsers::EnvironmentMap.parse(map['Environment']) unless map['Environment'].nil?)
        data.model_input = (Parsers::ModelInput.parse(map['ModelInput']) unless map['ModelInput'].nil?)
        data.framework = map['Framework']
        data.framework_version = map['FrameworkVersion']
        data.nearest_model_name = map['NearestModelName']
        return data
      end
    end

    class ModelInput
      def self.parse(map)
        data = Types::ModelInput.new
        data.data_input_config = map['DataInputConfig']
        return data
      end
    end

    class EnvironmentMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateAction
    class CreateAction
      def self.parse(http_resp)
        data = Types::CreateActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.action_arn = map['ActionArn']
        data
      end
    end

    # Operation Parser for CreateAlgorithm
    class CreateAlgorithm
      def self.parse(http_resp)
        data = Types::CreateAlgorithmOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.algorithm_arn = map['AlgorithmArn']
        data
      end
    end

    # Operation Parser for CreateApp
    class CreateApp
      def self.parse(http_resp)
        data = Types::CreateAppOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.app_arn = map['AppArn']
        data
      end
    end

    # Error Parser for ResourceInUse
    class ResourceInUse
      def self.parse(http_resp)
        data = Types::ResourceInUse.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateAppImageConfig
    class CreateAppImageConfig
      def self.parse(http_resp)
        data = Types::CreateAppImageConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.app_image_config_arn = map['AppImageConfigArn']
        data
      end
    end

    # Operation Parser for CreateArtifact
    class CreateArtifact
      def self.parse(http_resp)
        data = Types::CreateArtifactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.artifact_arn = map['ArtifactArn']
        data
      end
    end

    # Operation Parser for CreateAutoMLJob
    class CreateAutoMLJob
      def self.parse(http_resp)
        data = Types::CreateAutoMLJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.auto_ml_job_arn = map['AutoMLJobArn']
        data
      end
    end

    # Operation Parser for CreateCodeRepository
    class CreateCodeRepository
      def self.parse(http_resp)
        data = Types::CreateCodeRepositoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.code_repository_arn = map['CodeRepositoryArn']
        data
      end
    end

    # Operation Parser for CreateCompilationJob
    class CreateCompilationJob
      def self.parse(http_resp)
        data = Types::CreateCompilationJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.compilation_job_arn = map['CompilationJobArn']
        data
      end
    end

    # Operation Parser for CreateContext
    class CreateContext
      def self.parse(http_resp)
        data = Types::CreateContextOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.context_arn = map['ContextArn']
        data
      end
    end

    # Operation Parser for CreateDataQualityJobDefinition
    class CreateDataQualityJobDefinition
      def self.parse(http_resp)
        data = Types::CreateDataQualityJobDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_definition_arn = map['JobDefinitionArn']
        data
      end
    end

    # Operation Parser for CreateDeviceFleet
    class CreateDeviceFleet
      def self.parse(http_resp)
        data = Types::CreateDeviceFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateDomain
    class CreateDomain
      def self.parse(http_resp)
        data = Types::CreateDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.domain_arn = map['DomainArn']
        data.url = map['Url']
        data
      end
    end

    # Operation Parser for CreateEdgePackagingJob
    class CreateEdgePackagingJob
      def self.parse(http_resp)
        data = Types::CreateEdgePackagingJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateEndpoint
    class CreateEndpoint
      def self.parse(http_resp)
        data = Types::CreateEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint_arn = map['EndpointArn']
        data
      end
    end

    # Operation Parser for CreateEndpointConfig
    class CreateEndpointConfig
      def self.parse(http_resp)
        data = Types::CreateEndpointConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint_config_arn = map['EndpointConfigArn']
        data
      end
    end

    # Operation Parser for CreateExperiment
    class CreateExperiment
      def self.parse(http_resp)
        data = Types::CreateExperimentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.experiment_arn = map['ExperimentArn']
        data
      end
    end

    # Operation Parser for CreateFeatureGroup
    class CreateFeatureGroup
      def self.parse(http_resp)
        data = Types::CreateFeatureGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.feature_group_arn = map['FeatureGroupArn']
        data
      end
    end

    # Operation Parser for CreateFlowDefinition
    class CreateFlowDefinition
      def self.parse(http_resp)
        data = Types::CreateFlowDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.flow_definition_arn = map['FlowDefinitionArn']
        data
      end
    end

    # Operation Parser for CreateHumanTaskUi
    class CreateHumanTaskUi
      def self.parse(http_resp)
        data = Types::CreateHumanTaskUiOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.human_task_ui_arn = map['HumanTaskUiArn']
        data
      end
    end

    # Operation Parser for CreateHyperParameterTuningJob
    class CreateHyperParameterTuningJob
      def self.parse(http_resp)
        data = Types::CreateHyperParameterTuningJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hyper_parameter_tuning_job_arn = map['HyperParameterTuningJobArn']
        data
      end
    end

    # Operation Parser for CreateImage
    class CreateImage
      def self.parse(http_resp)
        data = Types::CreateImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.image_arn = map['ImageArn']
        data
      end
    end

    # Operation Parser for CreateImageVersion
    class CreateImageVersion
      def self.parse(http_resp)
        data = Types::CreateImageVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.image_version_arn = map['ImageVersionArn']
        data
      end
    end

    # Operation Parser for CreateInferenceRecommendationsJob
    class CreateInferenceRecommendationsJob
      def self.parse(http_resp)
        data = Types::CreateInferenceRecommendationsJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_arn = map['JobArn']
        data
      end
    end

    # Operation Parser for CreateLabelingJob
    class CreateLabelingJob
      def self.parse(http_resp)
        data = Types::CreateLabelingJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.labeling_job_arn = map['LabelingJobArn']
        data
      end
    end

    # Operation Parser for CreateModel
    class CreateModel
      def self.parse(http_resp)
        data = Types::CreateModelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_arn = map['ModelArn']
        data
      end
    end

    # Operation Parser for CreateModelBiasJobDefinition
    class CreateModelBiasJobDefinition
      def self.parse(http_resp)
        data = Types::CreateModelBiasJobDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_definition_arn = map['JobDefinitionArn']
        data
      end
    end

    # Operation Parser for CreateModelExplainabilityJobDefinition
    class CreateModelExplainabilityJobDefinition
      def self.parse(http_resp)
        data = Types::CreateModelExplainabilityJobDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_definition_arn = map['JobDefinitionArn']
        data
      end
    end

    # Operation Parser for CreateModelPackage
    class CreateModelPackage
      def self.parse(http_resp)
        data = Types::CreateModelPackageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_package_arn = map['ModelPackageArn']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateModelPackageGroup
    class CreateModelPackageGroup
      def self.parse(http_resp)
        data = Types::CreateModelPackageGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_package_group_arn = map['ModelPackageGroupArn']
        data
      end
    end

    # Operation Parser for CreateModelQualityJobDefinition
    class CreateModelQualityJobDefinition
      def self.parse(http_resp)
        data = Types::CreateModelQualityJobDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_definition_arn = map['JobDefinitionArn']
        data
      end
    end

    # Operation Parser for CreateMonitoringSchedule
    class CreateMonitoringSchedule
      def self.parse(http_resp)
        data = Types::CreateMonitoringScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.monitoring_schedule_arn = map['MonitoringScheduleArn']
        data
      end
    end

    # Operation Parser for CreateNotebookInstance
    class CreateNotebookInstance
      def self.parse(http_resp)
        data = Types::CreateNotebookInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.notebook_instance_arn = map['NotebookInstanceArn']
        data
      end
    end

    # Operation Parser for CreateNotebookInstanceLifecycleConfig
    class CreateNotebookInstanceLifecycleConfig
      def self.parse(http_resp)
        data = Types::CreateNotebookInstanceLifecycleConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.notebook_instance_lifecycle_config_arn = map['NotebookInstanceLifecycleConfigArn']
        data
      end
    end

    # Operation Parser for CreatePipeline
    class CreatePipeline
      def self.parse(http_resp)
        data = Types::CreatePipelineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_arn = map['PipelineArn']
        data
      end
    end

    # Operation Parser for CreatePresignedDomainUrl
    class CreatePresignedDomainUrl
      def self.parse(http_resp)
        data = Types::CreatePresignedDomainUrlOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.authorized_url = map['AuthorizedUrl']
        data
      end
    end

    # Operation Parser for CreatePresignedNotebookInstanceUrl
    class CreatePresignedNotebookInstanceUrl
      def self.parse(http_resp)
        data = Types::CreatePresignedNotebookInstanceUrlOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.authorized_url = map['AuthorizedUrl']
        data
      end
    end

    # Operation Parser for CreateProcessingJob
    class CreateProcessingJob
      def self.parse(http_resp)
        data = Types::CreateProcessingJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.processing_job_arn = map['ProcessingJobArn']
        data
      end
    end

    # Operation Parser for CreateProject
    class CreateProject
      def self.parse(http_resp)
        data = Types::CreateProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.project_arn = map['ProjectArn']
        data.project_id = map['ProjectId']
        data
      end
    end

    # Operation Parser for CreateStudioLifecycleConfig
    class CreateStudioLifecycleConfig
      def self.parse(http_resp)
        data = Types::CreateStudioLifecycleConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.studio_lifecycle_config_arn = map['StudioLifecycleConfigArn']
        data
      end
    end

    # Operation Parser for CreateTrainingJob
    class CreateTrainingJob
      def self.parse(http_resp)
        data = Types::CreateTrainingJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.training_job_arn = map['TrainingJobArn']
        data
      end
    end

    # Operation Parser for CreateTransformJob
    class CreateTransformJob
      def self.parse(http_resp)
        data = Types::CreateTransformJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.transform_job_arn = map['TransformJobArn']
        data
      end
    end

    # Operation Parser for CreateTrial
    class CreateTrial
      def self.parse(http_resp)
        data = Types::CreateTrialOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trial_arn = map['TrialArn']
        data
      end
    end

    # Operation Parser for CreateTrialComponent
    class CreateTrialComponent
      def self.parse(http_resp)
        data = Types::CreateTrialComponentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trial_component_arn = map['TrialComponentArn']
        data
      end
    end

    # Operation Parser for CreateUserProfile
    class CreateUserProfile
      def self.parse(http_resp)
        data = Types::CreateUserProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_profile_arn = map['UserProfileArn']
        data
      end
    end

    # Operation Parser for CreateWorkforce
    class CreateWorkforce
      def self.parse(http_resp)
        data = Types::CreateWorkforceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.workforce_arn = map['WorkforceArn']
        data
      end
    end

    # Operation Parser for CreateWorkteam
    class CreateWorkteam
      def self.parse(http_resp)
        data = Types::CreateWorkteamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.workteam_arn = map['WorkteamArn']
        data
      end
    end

    # Operation Parser for DeleteAction
    class DeleteAction
      def self.parse(http_resp)
        data = Types::DeleteActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.action_arn = map['ActionArn']
        data
      end
    end

    # Operation Parser for DeleteAlgorithm
    class DeleteAlgorithm
      def self.parse(http_resp)
        data = Types::DeleteAlgorithmOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteApp
    class DeleteApp
      def self.parse(http_resp)
        data = Types::DeleteAppOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteAppImageConfig
    class DeleteAppImageConfig
      def self.parse(http_resp)
        data = Types::DeleteAppImageConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteArtifact
    class DeleteArtifact
      def self.parse(http_resp)
        data = Types::DeleteArtifactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.artifact_arn = map['ArtifactArn']
        data
      end
    end

    # Operation Parser for DeleteAssociation
    class DeleteAssociation
      def self.parse(http_resp)
        data = Types::DeleteAssociationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.source_arn = map['SourceArn']
        data.destination_arn = map['DestinationArn']
        data
      end
    end

    # Operation Parser for DeleteCodeRepository
    class DeleteCodeRepository
      def self.parse(http_resp)
        data = Types::DeleteCodeRepositoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteContext
    class DeleteContext
      def self.parse(http_resp)
        data = Types::DeleteContextOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.context_arn = map['ContextArn']
        data
      end
    end

    # Operation Parser for DeleteDataQualityJobDefinition
    class DeleteDataQualityJobDefinition
      def self.parse(http_resp)
        data = Types::DeleteDataQualityJobDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteDeviceFleet
    class DeleteDeviceFleet
      def self.parse(http_resp)
        data = Types::DeleteDeviceFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteDomain
    class DeleteDomain
      def self.parse(http_resp)
        data = Types::DeleteDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteEndpoint
    class DeleteEndpoint
      def self.parse(http_resp)
        data = Types::DeleteEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteEndpointConfig
    class DeleteEndpointConfig
      def self.parse(http_resp)
        data = Types::DeleteEndpointConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteExperiment
    class DeleteExperiment
      def self.parse(http_resp)
        data = Types::DeleteExperimentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.experiment_arn = map['ExperimentArn']
        data
      end
    end

    # Operation Parser for DeleteFeatureGroup
    class DeleteFeatureGroup
      def self.parse(http_resp)
        data = Types::DeleteFeatureGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteFlowDefinition
    class DeleteFlowDefinition
      def self.parse(http_resp)
        data = Types::DeleteFlowDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteHumanTaskUi
    class DeleteHumanTaskUi
      def self.parse(http_resp)
        data = Types::DeleteHumanTaskUiOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteImage
    class DeleteImage
      def self.parse(http_resp)
        data = Types::DeleteImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteImageVersion
    class DeleteImageVersion
      def self.parse(http_resp)
        data = Types::DeleteImageVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteModel
    class DeleteModel
      def self.parse(http_resp)
        data = Types::DeleteModelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteModelBiasJobDefinition
    class DeleteModelBiasJobDefinition
      def self.parse(http_resp)
        data = Types::DeleteModelBiasJobDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteModelExplainabilityJobDefinition
    class DeleteModelExplainabilityJobDefinition
      def self.parse(http_resp)
        data = Types::DeleteModelExplainabilityJobDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteModelPackage
    class DeleteModelPackage
      def self.parse(http_resp)
        data = Types::DeleteModelPackageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteModelPackageGroup
    class DeleteModelPackageGroup
      def self.parse(http_resp)
        data = Types::DeleteModelPackageGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteModelPackageGroupPolicy
    class DeleteModelPackageGroupPolicy
      def self.parse(http_resp)
        data = Types::DeleteModelPackageGroupPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteModelQualityJobDefinition
    class DeleteModelQualityJobDefinition
      def self.parse(http_resp)
        data = Types::DeleteModelQualityJobDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteMonitoringSchedule
    class DeleteMonitoringSchedule
      def self.parse(http_resp)
        data = Types::DeleteMonitoringScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteNotebookInstance
    class DeleteNotebookInstance
      def self.parse(http_resp)
        data = Types::DeleteNotebookInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteNotebookInstanceLifecycleConfig
    class DeleteNotebookInstanceLifecycleConfig
      def self.parse(http_resp)
        data = Types::DeleteNotebookInstanceLifecycleConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeletePipeline
    class DeletePipeline
      def self.parse(http_resp)
        data = Types::DeletePipelineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_arn = map['PipelineArn']
        data
      end
    end

    # Operation Parser for DeleteProject
    class DeleteProject
      def self.parse(http_resp)
        data = Types::DeleteProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteStudioLifecycleConfig
    class DeleteStudioLifecycleConfig
      def self.parse(http_resp)
        data = Types::DeleteStudioLifecycleConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
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
        data
      end
    end

    # Operation Parser for DeleteTrial
    class DeleteTrial
      def self.parse(http_resp)
        data = Types::DeleteTrialOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trial_arn = map['TrialArn']
        data
      end
    end

    # Operation Parser for DeleteTrialComponent
    class DeleteTrialComponent
      def self.parse(http_resp)
        data = Types::DeleteTrialComponentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trial_component_arn = map['TrialComponentArn']
        data
      end
    end

    # Operation Parser for DeleteUserProfile
    class DeleteUserProfile
      def self.parse(http_resp)
        data = Types::DeleteUserProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteWorkforce
    class DeleteWorkforce
      def self.parse(http_resp)
        data = Types::DeleteWorkforceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteWorkteam
    class DeleteWorkteam
      def self.parse(http_resp)
        data = Types::DeleteWorkteamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.success = map['Success']
        data
      end
    end

    # Operation Parser for DeregisterDevices
    class DeregisterDevices
      def self.parse(http_resp)
        data = Types::DeregisterDevicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeAction
    class DescribeAction
      def self.parse(http_resp)
        data = Types::DescribeActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.action_name = map['ActionName']
        data.action_arn = map['ActionArn']
        data.source = (Parsers::ActionSource.parse(map['Source']) unless map['Source'].nil?)
        data.action_type = map['ActionType']
        data.description = map['Description']
        data.status = map['Status']
        data.properties = (Parsers::LineageEntityParameters.parse(map['Properties']) unless map['Properties'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_modified_by = (Parsers::UserContext.parse(map['LastModifiedBy']) unless map['LastModifiedBy'].nil?)
        data.metadata_properties = (Parsers::MetadataProperties.parse(map['MetadataProperties']) unless map['MetadataProperties'].nil?)
        data.lineage_group_arn = map['LineageGroupArn']
        data
      end
    end

    class MetadataProperties
      def self.parse(map)
        data = Types::MetadataProperties.new
        data.commit_id = map['CommitId']
        data.repository = map['Repository']
        data.generated_by = map['GeneratedBy']
        data.project_id = map['ProjectId']
        return data
      end
    end

    class UserContext
      def self.parse(map)
        data = Types::UserContext.new
        data.user_profile_arn = map['UserProfileArn']
        data.user_profile_name = map['UserProfileName']
        data.domain_id = map['DomainId']
        return data
      end
    end

    class LineageEntityParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ActionSource
      def self.parse(map)
        data = Types::ActionSource.new
        data.source_uri = map['SourceUri']
        data.source_type = map['SourceType']
        data.source_id = map['SourceId']
        return data
      end
    end

    # Operation Parser for DescribeAlgorithm
    class DescribeAlgorithm
      def self.parse(http_resp)
        data = Types::DescribeAlgorithmOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.algorithm_name = map['AlgorithmName']
        data.algorithm_arn = map['AlgorithmArn']
        data.algorithm_description = map['AlgorithmDescription']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.training_specification = (Parsers::TrainingSpecification.parse(map['TrainingSpecification']) unless map['TrainingSpecification'].nil?)
        data.inference_specification = (Parsers::InferenceSpecification.parse(map['InferenceSpecification']) unless map['InferenceSpecification'].nil?)
        data.validation_specification = (Parsers::AlgorithmValidationSpecification.parse(map['ValidationSpecification']) unless map['ValidationSpecification'].nil?)
        data.algorithm_status = map['AlgorithmStatus']
        data.algorithm_status_details = (Parsers::AlgorithmStatusDetails.parse(map['AlgorithmStatusDetails']) unless map['AlgorithmStatusDetails'].nil?)
        data.product_id = map['ProductId']
        data.certify_for_marketplace = map['CertifyForMarketplace']
        data
      end
    end

    class AlgorithmStatusDetails
      def self.parse(map)
        data = Types::AlgorithmStatusDetails.new
        data.validation_statuses = (Parsers::AlgorithmStatusItemList.parse(map['ValidationStatuses']) unless map['ValidationStatuses'].nil?)
        data.image_scan_statuses = (Parsers::AlgorithmStatusItemList.parse(map['ImageScanStatuses']) unless map['ImageScanStatuses'].nil?)
        return data
      end
    end

    class AlgorithmStatusItemList
      def self.parse(list)
        list.map do |value|
          Parsers::AlgorithmStatusItem.parse(value) unless value.nil?
        end
      end
    end

    class AlgorithmStatusItem
      def self.parse(map)
        data = Types::AlgorithmStatusItem.new
        data.name = map['Name']
        data.status = map['Status']
        data.failure_reason = map['FailureReason']
        return data
      end
    end

    class AlgorithmValidationSpecification
      def self.parse(map)
        data = Types::AlgorithmValidationSpecification.new
        data.validation_role = map['ValidationRole']
        data.validation_profiles = (Parsers::AlgorithmValidationProfiles.parse(map['ValidationProfiles']) unless map['ValidationProfiles'].nil?)
        return data
      end
    end

    class AlgorithmValidationProfiles
      def self.parse(list)
        list.map do |value|
          Parsers::AlgorithmValidationProfile.parse(value) unless value.nil?
        end
      end
    end

    class AlgorithmValidationProfile
      def self.parse(map)
        data = Types::AlgorithmValidationProfile.new
        data.profile_name = map['ProfileName']
        data.training_job_definition = (Parsers::TrainingJobDefinition.parse(map['TrainingJobDefinition']) unless map['TrainingJobDefinition'].nil?)
        data.transform_job_definition = (Parsers::TransformJobDefinition.parse(map['TransformJobDefinition']) unless map['TransformJobDefinition'].nil?)
        return data
      end
    end

    class TransformJobDefinition
      def self.parse(map)
        data = Types::TransformJobDefinition.new
        data.max_concurrent_transforms = map['MaxConcurrentTransforms']
        data.max_payload_in_mb = map['MaxPayloadInMB']
        data.batch_strategy = map['BatchStrategy']
        data.environment = (Parsers::TransformEnvironmentMap.parse(map['Environment']) unless map['Environment'].nil?)
        data.transform_input = (Parsers::TransformInput.parse(map['TransformInput']) unless map['TransformInput'].nil?)
        data.transform_output = (Parsers::TransformOutput.parse(map['TransformOutput']) unless map['TransformOutput'].nil?)
        data.transform_resources = (Parsers::TransformResources.parse(map['TransformResources']) unless map['TransformResources'].nil?)
        return data
      end
    end

    class TransformResources
      def self.parse(map)
        data = Types::TransformResources.new
        data.instance_type = map['InstanceType']
        data.instance_count = map['InstanceCount']
        data.volume_kms_key_id = map['VolumeKmsKeyId']
        return data
      end
    end

    class TransformOutput
      def self.parse(map)
        data = Types::TransformOutput.new
        data.s3_output_path = map['S3OutputPath']
        data.accept = map['Accept']
        data.assemble_with = map['AssembleWith']
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    class TransformInput
      def self.parse(map)
        data = Types::TransformInput.new
        data.data_source = (Parsers::TransformDataSource.parse(map['DataSource']) unless map['DataSource'].nil?)
        data.content_type = map['ContentType']
        data.compression_type = map['CompressionType']
        data.split_type = map['SplitType']
        return data
      end
    end

    class TransformDataSource
      def self.parse(map)
        data = Types::TransformDataSource.new
        data.s3_data_source = (Parsers::TransformS3DataSource.parse(map['S3DataSource']) unless map['S3DataSource'].nil?)
        return data
      end
    end

    class TransformS3DataSource
      def self.parse(map)
        data = Types::TransformS3DataSource.new
        data.s3_data_type = map['S3DataType']
        data.s3_uri = map['S3Uri']
        return data
      end
    end

    class TransformEnvironmentMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class TrainingJobDefinition
      def self.parse(map)
        data = Types::TrainingJobDefinition.new
        data.training_input_mode = map['TrainingInputMode']
        data.hyper_parameters = (Parsers::HyperParameters.parse(map['HyperParameters']) unless map['HyperParameters'].nil?)
        data.input_data_config = (Parsers::InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.output_data_config = (Parsers::OutputDataConfig.parse(map['OutputDataConfig']) unless map['OutputDataConfig'].nil?)
        data.resource_config = (Parsers::ResourceConfig.parse(map['ResourceConfig']) unless map['ResourceConfig'].nil?)
        data.stopping_condition = (Parsers::StoppingCondition.parse(map['StoppingCondition']) unless map['StoppingCondition'].nil?)
        return data
      end
    end

    class StoppingCondition
      def self.parse(map)
        data = Types::StoppingCondition.new
        data.max_runtime_in_seconds = map['MaxRuntimeInSeconds']
        data.max_wait_time_in_seconds = map['MaxWaitTimeInSeconds']
        return data
      end
    end

    class ResourceConfig
      def self.parse(map)
        data = Types::ResourceConfig.new
        data.instance_type = map['InstanceType']
        data.instance_count = map['InstanceCount']
        data.volume_size_in_gb = map['VolumeSizeInGB']
        data.volume_kms_key_id = map['VolumeKmsKeyId']
        return data
      end
    end

    class OutputDataConfig
      def self.parse(map)
        data = Types::OutputDataConfig.new
        data.kms_key_id = map['KmsKeyId']
        data.s3_output_path = map['S3OutputPath']
        return data
      end
    end

    class InputDataConfig
      def self.parse(list)
        list.map do |value|
          Parsers::Channel.parse(value) unless value.nil?
        end
      end
    end

    class Channel
      def self.parse(map)
        data = Types::Channel.new
        data.channel_name = map['ChannelName']
        data.data_source = (Parsers::DataSource.parse(map['DataSource']) unless map['DataSource'].nil?)
        data.content_type = map['ContentType']
        data.compression_type = map['CompressionType']
        data.record_wrapper_type = map['RecordWrapperType']
        data.input_mode = map['InputMode']
        data.shuffle_config = (Parsers::ShuffleConfig.parse(map['ShuffleConfig']) unless map['ShuffleConfig'].nil?)
        return data
      end
    end

    class ShuffleConfig
      def self.parse(map)
        data = Types::ShuffleConfig.new
        data.seed = map['Seed']
        return data
      end
    end

    class DataSource
      def self.parse(map)
        data = Types::DataSource.new
        data.s3_data_source = (Parsers::S3DataSource.parse(map['S3DataSource']) unless map['S3DataSource'].nil?)
        data.file_system_data_source = (Parsers::FileSystemDataSource.parse(map['FileSystemDataSource']) unless map['FileSystemDataSource'].nil?)
        return data
      end
    end

    class FileSystemDataSource
      def self.parse(map)
        data = Types::FileSystemDataSource.new
        data.file_system_id = map['FileSystemId']
        data.file_system_access_mode = map['FileSystemAccessMode']
        data.file_system_type = map['FileSystemType']
        data.directory_path = map['DirectoryPath']
        return data
      end
    end

    class S3DataSource
      def self.parse(map)
        data = Types::S3DataSource.new
        data.s3_data_type = map['S3DataType']
        data.s3_uri = map['S3Uri']
        data.s3_data_distribution_type = map['S3DataDistributionType']
        data.attribute_names = (Parsers::AttributeNames.parse(map['AttributeNames']) unless map['AttributeNames'].nil?)
        return data
      end
    end

    class AttributeNames
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
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

    class TrainingSpecification
      def self.parse(map)
        data = Types::TrainingSpecification.new
        data.training_image = map['TrainingImage']
        data.training_image_digest = map['TrainingImageDigest']
        data.supported_hyper_parameters = (Parsers::HyperParameterSpecifications.parse(map['SupportedHyperParameters']) unless map['SupportedHyperParameters'].nil?)
        data.supported_training_instance_types = (Parsers::TrainingInstanceTypes.parse(map['SupportedTrainingInstanceTypes']) unless map['SupportedTrainingInstanceTypes'].nil?)
        data.supports_distributed_training = map['SupportsDistributedTraining']
        data.metric_definitions = (Parsers::MetricDefinitionList.parse(map['MetricDefinitions']) unless map['MetricDefinitions'].nil?)
        data.training_channels = (Parsers::ChannelSpecifications.parse(map['TrainingChannels']) unless map['TrainingChannels'].nil?)
        data.supported_tuning_job_objective_metrics = (Parsers::HyperParameterTuningJobObjectives.parse(map['SupportedTuningJobObjectiveMetrics']) unless map['SupportedTuningJobObjectiveMetrics'].nil?)
        return data
      end
    end

    class HyperParameterTuningJobObjectives
      def self.parse(list)
        list.map do |value|
          Parsers::HyperParameterTuningJobObjective.parse(value) unless value.nil?
        end
      end
    end

    class HyperParameterTuningJobObjective
      def self.parse(map)
        data = Types::HyperParameterTuningJobObjective.new
        data.type = map['Type']
        data.metric_name = map['MetricName']
        return data
      end
    end

    class ChannelSpecifications
      def self.parse(list)
        list.map do |value|
          Parsers::ChannelSpecification.parse(value) unless value.nil?
        end
      end
    end

    class ChannelSpecification
      def self.parse(map)
        data = Types::ChannelSpecification.new
        data.name = map['Name']
        data.description = map['Description']
        data.is_required = map['IsRequired']
        data.supported_content_types = (Parsers::ContentTypes.parse(map['SupportedContentTypes']) unless map['SupportedContentTypes'].nil?)
        data.supported_compression_types = (Parsers::CompressionTypes.parse(map['SupportedCompressionTypes']) unless map['SupportedCompressionTypes'].nil?)
        data.supported_input_modes = (Parsers::InputModes.parse(map['SupportedInputModes']) unless map['SupportedInputModes'].nil?)
        return data
      end
    end

    class InputModes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CompressionTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class MetricDefinitionList
      def self.parse(list)
        list.map do |value|
          Parsers::MetricDefinition.parse(value) unless value.nil?
        end
      end
    end

    class MetricDefinition
      def self.parse(map)
        data = Types::MetricDefinition.new
        data.name = map['Name']
        data.regex = map['Regex']
        return data
      end
    end

    class TrainingInstanceTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class HyperParameterSpecifications
      def self.parse(list)
        list.map do |value|
          Parsers::HyperParameterSpecification.parse(value) unless value.nil?
        end
      end
    end

    class HyperParameterSpecification
      def self.parse(map)
        data = Types::HyperParameterSpecification.new
        data.name = map['Name']
        data.description = map['Description']
        data.type = map['Type']
        data.range = (Parsers::ParameterRange.parse(map['Range']) unless map['Range'].nil?)
        data.is_tunable = map['IsTunable']
        data.is_required = map['IsRequired']
        data.default_value = map['DefaultValue']
        return data
      end
    end

    class ParameterRange
      def self.parse(map)
        data = Types::ParameterRange.new
        data.integer_parameter_range_specification = (Parsers::IntegerParameterRangeSpecification.parse(map['IntegerParameterRangeSpecification']) unless map['IntegerParameterRangeSpecification'].nil?)
        data.continuous_parameter_range_specification = (Parsers::ContinuousParameterRangeSpecification.parse(map['ContinuousParameterRangeSpecification']) unless map['ContinuousParameterRangeSpecification'].nil?)
        data.categorical_parameter_range_specification = (Parsers::CategoricalParameterRangeSpecification.parse(map['CategoricalParameterRangeSpecification']) unless map['CategoricalParameterRangeSpecification'].nil?)
        return data
      end
    end

    class CategoricalParameterRangeSpecification
      def self.parse(map)
        data = Types::CategoricalParameterRangeSpecification.new
        data.values = (Parsers::ParameterValues.parse(map['Values']) unless map['Values'].nil?)
        return data
      end
    end

    class ParameterValues
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ContinuousParameterRangeSpecification
      def self.parse(map)
        data = Types::ContinuousParameterRangeSpecification.new
        data.min_value = map['MinValue']
        data.max_value = map['MaxValue']
        return data
      end
    end

    class IntegerParameterRangeSpecification
      def self.parse(map)
        data = Types::IntegerParameterRangeSpecification.new
        data.min_value = map['MinValue']
        data.max_value = map['MaxValue']
        return data
      end
    end

    # Operation Parser for DescribeApp
    class DescribeApp
      def self.parse(http_resp)
        data = Types::DescribeAppOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.app_arn = map['AppArn']
        data.app_type = map['AppType']
        data.app_name = map['AppName']
        data.domain_id = map['DomainId']
        data.user_profile_name = map['UserProfileName']
        data.status = map['Status']
        data.last_health_check_timestamp = Time.at(map['LastHealthCheckTimestamp'].to_i) if map['LastHealthCheckTimestamp']
        data.last_user_activity_timestamp = Time.at(map['LastUserActivityTimestamp'].to_i) if map['LastUserActivityTimestamp']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.failure_reason = map['FailureReason']
        data.resource_spec = (Parsers::ResourceSpec.parse(map['ResourceSpec']) unless map['ResourceSpec'].nil?)
        data
      end
    end

    class ResourceSpec
      def self.parse(map)
        data = Types::ResourceSpec.new
        data.sage_maker_image_arn = map['SageMakerImageArn']
        data.sage_maker_image_version_arn = map['SageMakerImageVersionArn']
        data.instance_type = map['InstanceType']
        data.lifecycle_config_arn = map['LifecycleConfigArn']
        return data
      end
    end

    # Operation Parser for DescribeAppImageConfig
    class DescribeAppImageConfig
      def self.parse(http_resp)
        data = Types::DescribeAppImageConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.app_image_config_arn = map['AppImageConfigArn']
        data.app_image_config_name = map['AppImageConfigName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.kernel_gateway_image_config = (Parsers::KernelGatewayImageConfig.parse(map['KernelGatewayImageConfig']) unless map['KernelGatewayImageConfig'].nil?)
        data
      end
    end

    class KernelGatewayImageConfig
      def self.parse(map)
        data = Types::KernelGatewayImageConfig.new
        data.kernel_specs = (Parsers::KernelSpecs.parse(map['KernelSpecs']) unless map['KernelSpecs'].nil?)
        data.file_system_config = (Parsers::FileSystemConfig.parse(map['FileSystemConfig']) unless map['FileSystemConfig'].nil?)
        return data
      end
    end

    class FileSystemConfig
      def self.parse(map)
        data = Types::FileSystemConfig.new
        data.mount_path = map['MountPath']
        data.default_uid = map['DefaultUid']
        data.default_gid = map['DefaultGid']
        return data
      end
    end

    class KernelSpecs
      def self.parse(list)
        list.map do |value|
          Parsers::KernelSpec.parse(value) unless value.nil?
        end
      end
    end

    class KernelSpec
      def self.parse(map)
        data = Types::KernelSpec.new
        data.name = map['Name']
        data.display_name = map['DisplayName']
        return data
      end
    end

    # Operation Parser for DescribeArtifact
    class DescribeArtifact
      def self.parse(http_resp)
        data = Types::DescribeArtifactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.artifact_name = map['ArtifactName']
        data.artifact_arn = map['ArtifactArn']
        data.source = (Parsers::ArtifactSource.parse(map['Source']) unless map['Source'].nil?)
        data.artifact_type = map['ArtifactType']
        data.properties = (Parsers::LineageEntityParameters.parse(map['Properties']) unless map['Properties'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_modified_by = (Parsers::UserContext.parse(map['LastModifiedBy']) unless map['LastModifiedBy'].nil?)
        data.metadata_properties = (Parsers::MetadataProperties.parse(map['MetadataProperties']) unless map['MetadataProperties'].nil?)
        data.lineage_group_arn = map['LineageGroupArn']
        data
      end
    end

    class ArtifactSource
      def self.parse(map)
        data = Types::ArtifactSource.new
        data.source_uri = map['SourceUri']
        data.source_types = (Parsers::ArtifactSourceTypes.parse(map['SourceTypes']) unless map['SourceTypes'].nil?)
        return data
      end
    end

    class ArtifactSourceTypes
      def self.parse(list)
        list.map do |value|
          Parsers::ArtifactSourceType.parse(value) unless value.nil?
        end
      end
    end

    class ArtifactSourceType
      def self.parse(map)
        data = Types::ArtifactSourceType.new
        data.source_id_type = map['SourceIdType']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for DescribeAutoMLJob
    class DescribeAutoMLJob
      def self.parse(http_resp)
        data = Types::DescribeAutoMLJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.auto_ml_job_name = map['AutoMLJobName']
        data.auto_ml_job_arn = map['AutoMLJobArn']
        data.input_data_config = (Parsers::AutoMLInputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.output_data_config = (Parsers::AutoMLOutputDataConfig.parse(map['OutputDataConfig']) unless map['OutputDataConfig'].nil?)
        data.role_arn = map['RoleArn']
        data.auto_ml_job_objective = (Parsers::AutoMLJobObjective.parse(map['AutoMLJobObjective']) unless map['AutoMLJobObjective'].nil?)
        data.problem_type = map['ProblemType']
        data.auto_ml_job_config = (Parsers::AutoMLJobConfig.parse(map['AutoMLJobConfig']) unless map['AutoMLJobConfig'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.failure_reason = map['FailureReason']
        data.partial_failure_reasons = (Parsers::AutoMLPartialFailureReasons.parse(map['PartialFailureReasons']) unless map['PartialFailureReasons'].nil?)
        data.best_candidate = (Parsers::AutoMLCandidate.parse(map['BestCandidate']) unless map['BestCandidate'].nil?)
        data.auto_ml_job_status = map['AutoMLJobStatus']
        data.auto_ml_job_secondary_status = map['AutoMLJobSecondaryStatus']
        data.generate_candidate_definitions_only = map['GenerateCandidateDefinitionsOnly']
        data.auto_ml_job_artifacts = (Parsers::AutoMLJobArtifacts.parse(map['AutoMLJobArtifacts']) unless map['AutoMLJobArtifacts'].nil?)
        data.resolved_attributes = (Parsers::ResolvedAttributes.parse(map['ResolvedAttributes']) unless map['ResolvedAttributes'].nil?)
        data.model_deploy_config = (Parsers::ModelDeployConfig.parse(map['ModelDeployConfig']) unless map['ModelDeployConfig'].nil?)
        data.model_deploy_result = (Parsers::ModelDeployResult.parse(map['ModelDeployResult']) unless map['ModelDeployResult'].nil?)
        data
      end
    end

    class ModelDeployResult
      def self.parse(map)
        data = Types::ModelDeployResult.new
        data.endpoint_name = map['EndpointName']
        return data
      end
    end

    class ModelDeployConfig
      def self.parse(map)
        data = Types::ModelDeployConfig.new
        data.auto_generate_endpoint_name = map['AutoGenerateEndpointName']
        data.endpoint_name = map['EndpointName']
        return data
      end
    end

    class ResolvedAttributes
      def self.parse(map)
        data = Types::ResolvedAttributes.new
        data.auto_ml_job_objective = (Parsers::AutoMLJobObjective.parse(map['AutoMLJobObjective']) unless map['AutoMLJobObjective'].nil?)
        data.problem_type = map['ProblemType']
        data.completion_criteria = (Parsers::AutoMLJobCompletionCriteria.parse(map['CompletionCriteria']) unless map['CompletionCriteria'].nil?)
        return data
      end
    end

    class AutoMLJobCompletionCriteria
      def self.parse(map)
        data = Types::AutoMLJobCompletionCriteria.new
        data.max_candidates = map['MaxCandidates']
        data.max_runtime_per_training_job_in_seconds = map['MaxRuntimePerTrainingJobInSeconds']
        data.max_auto_ml_job_runtime_in_seconds = map['MaxAutoMLJobRuntimeInSeconds']
        return data
      end
    end

    class AutoMLJobObjective
      def self.parse(map)
        data = Types::AutoMLJobObjective.new
        data.metric_name = map['MetricName']
        return data
      end
    end

    class AutoMLJobArtifacts
      def self.parse(map)
        data = Types::AutoMLJobArtifacts.new
        data.candidate_definition_notebook_location = map['CandidateDefinitionNotebookLocation']
        data.data_exploration_notebook_location = map['DataExplorationNotebookLocation']
        return data
      end
    end

    class AutoMLCandidate
      def self.parse(map)
        data = Types::AutoMLCandidate.new
        data.candidate_name = map['CandidateName']
        data.final_auto_ml_job_objective_metric = (Parsers::FinalAutoMLJobObjectiveMetric.parse(map['FinalAutoMLJobObjectiveMetric']) unless map['FinalAutoMLJobObjectiveMetric'].nil?)
        data.objective_status = map['ObjectiveStatus']
        data.candidate_steps = (Parsers::CandidateSteps.parse(map['CandidateSteps']) unless map['CandidateSteps'].nil?)
        data.candidate_status = map['CandidateStatus']
        data.inference_containers = (Parsers::AutoMLContainerDefinitions.parse(map['InferenceContainers']) unless map['InferenceContainers'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.failure_reason = map['FailureReason']
        data.candidate_properties = (Parsers::CandidateProperties.parse(map['CandidateProperties']) unless map['CandidateProperties'].nil?)
        return data
      end
    end

    class CandidateProperties
      def self.parse(map)
        data = Types::CandidateProperties.new
        data.candidate_artifact_locations = (Parsers::CandidateArtifactLocations.parse(map['CandidateArtifactLocations']) unless map['CandidateArtifactLocations'].nil?)
        data.candidate_metrics = (Parsers::MetricDataList.parse(map['CandidateMetrics']) unless map['CandidateMetrics'].nil?)
        return data
      end
    end

    class MetricDataList
      def self.parse(list)
        list.map do |value|
          Parsers::MetricDatum.parse(value) unless value.nil?
        end
      end
    end

    class MetricDatum
      def self.parse(map)
        data = Types::MetricDatum.new
        data.metric_name = map['MetricName']
        data.value = Hearth::NumberHelper.deserialize(map['Value'])
        data.set = map['Set']
        data.standard_metric_name = map['StandardMetricName']
        return data
      end
    end

    class CandidateArtifactLocations
      def self.parse(map)
        data = Types::CandidateArtifactLocations.new
        data.explainability = map['Explainability']
        data.model_insights = map['ModelInsights']
        return data
      end
    end

    class AutoMLContainerDefinitions
      def self.parse(list)
        list.map do |value|
          Parsers::AutoMLContainerDefinition.parse(value) unless value.nil?
        end
      end
    end

    class AutoMLContainerDefinition
      def self.parse(map)
        data = Types::AutoMLContainerDefinition.new
        data.image = map['Image']
        data.model_data_url = map['ModelDataUrl']
        data.environment = (Parsers::EnvironmentMap.parse(map['Environment']) unless map['Environment'].nil?)
        return data
      end
    end

    class CandidateSteps
      def self.parse(list)
        list.map do |value|
          Parsers::AutoMLCandidateStep.parse(value) unless value.nil?
        end
      end
    end

    class AutoMLCandidateStep
      def self.parse(map)
        data = Types::AutoMLCandidateStep.new
        data.candidate_step_type = map['CandidateStepType']
        data.candidate_step_arn = map['CandidateStepArn']
        data.candidate_step_name = map['CandidateStepName']
        return data
      end
    end

    class FinalAutoMLJobObjectiveMetric
      def self.parse(map)
        data = Types::FinalAutoMLJobObjectiveMetric.new
        data.type = map['Type']
        data.metric_name = map['MetricName']
        data.value = Hearth::NumberHelper.deserialize(map['Value'])
        return data
      end
    end

    class AutoMLPartialFailureReasons
      def self.parse(list)
        list.map do |value|
          Parsers::AutoMLPartialFailureReason.parse(value) unless value.nil?
        end
      end
    end

    class AutoMLPartialFailureReason
      def self.parse(map)
        data = Types::AutoMLPartialFailureReason.new
        data.partial_failure_message = map['PartialFailureMessage']
        return data
      end
    end

    class AutoMLJobConfig
      def self.parse(map)
        data = Types::AutoMLJobConfig.new
        data.completion_criteria = (Parsers::AutoMLJobCompletionCriteria.parse(map['CompletionCriteria']) unless map['CompletionCriteria'].nil?)
        data.security_config = (Parsers::AutoMLSecurityConfig.parse(map['SecurityConfig']) unless map['SecurityConfig'].nil?)
        data.data_split_config = (Parsers::AutoMLDataSplitConfig.parse(map['DataSplitConfig']) unless map['DataSplitConfig'].nil?)
        data.candidate_generation_config = (Parsers::AutoMLCandidateGenerationConfig.parse(map['CandidateGenerationConfig']) unless map['CandidateGenerationConfig'].nil?)
        return data
      end
    end

    class AutoMLCandidateGenerationConfig
      def self.parse(map)
        data = Types::AutoMLCandidateGenerationConfig.new
        data.feature_specification_s3_uri = map['FeatureSpecificationS3Uri']
        return data
      end
    end

    class AutoMLDataSplitConfig
      def self.parse(map)
        data = Types::AutoMLDataSplitConfig.new
        data.validation_fraction = Hearth::NumberHelper.deserialize(map['ValidationFraction'])
        return data
      end
    end

    class AutoMLSecurityConfig
      def self.parse(map)
        data = Types::AutoMLSecurityConfig.new
        data.volume_kms_key_id = map['VolumeKmsKeyId']
        data.enable_inter_container_traffic_encryption = map['EnableInterContainerTrafficEncryption']
        data.vpc_config = (Parsers::VpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        return data
      end
    end

    class VpcConfig
      def self.parse(map)
        data = Types::VpcConfig.new
        data.security_group_ids = (Parsers::VpcSecurityGroupIds.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        data.subnets = (Parsers::Subnets.parse(map['Subnets']) unless map['Subnets'].nil?)
        return data
      end
    end

    class Subnets
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class VpcSecurityGroupIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class AutoMLOutputDataConfig
      def self.parse(map)
        data = Types::AutoMLOutputDataConfig.new
        data.kms_key_id = map['KmsKeyId']
        data.s3_output_path = map['S3OutputPath']
        return data
      end
    end

    class AutoMLInputDataConfig
      def self.parse(list)
        list.map do |value|
          Parsers::AutoMLChannel.parse(value) unless value.nil?
        end
      end
    end

    class AutoMLChannel
      def self.parse(map)
        data = Types::AutoMLChannel.new
        data.data_source = (Parsers::AutoMLDataSource.parse(map['DataSource']) unless map['DataSource'].nil?)
        data.compression_type = map['CompressionType']
        data.target_attribute_name = map['TargetAttributeName']
        data.content_type = map['ContentType']
        data.channel_type = map['ChannelType']
        return data
      end
    end

    class AutoMLDataSource
      def self.parse(map)
        data = Types::AutoMLDataSource.new
        data.s3_data_source = (Parsers::AutoMLS3DataSource.parse(map['S3DataSource']) unless map['S3DataSource'].nil?)
        return data
      end
    end

    class AutoMLS3DataSource
      def self.parse(map)
        data = Types::AutoMLS3DataSource.new
        data.s3_data_type = map['S3DataType']
        data.s3_uri = map['S3Uri']
        return data
      end
    end

    # Operation Parser for DescribeCodeRepository
    class DescribeCodeRepository
      def self.parse(http_resp)
        data = Types::DescribeCodeRepositoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.code_repository_name = map['CodeRepositoryName']
        data.code_repository_arn = map['CodeRepositoryArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.git_config = (Parsers::GitConfig.parse(map['GitConfig']) unless map['GitConfig'].nil?)
        data
      end
    end

    class GitConfig
      def self.parse(map)
        data = Types::GitConfig.new
        data.repository_url = map['RepositoryUrl']
        data.branch = map['Branch']
        data.secret_arn = map['SecretArn']
        return data
      end
    end

    # Operation Parser for DescribeCompilationJob
    class DescribeCompilationJob
      def self.parse(http_resp)
        data = Types::DescribeCompilationJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.compilation_job_name = map['CompilationJobName']
        data.compilation_job_arn = map['CompilationJobArn']
        data.compilation_job_status = map['CompilationJobStatus']
        data.compilation_start_time = Time.at(map['CompilationStartTime'].to_i) if map['CompilationStartTime']
        data.compilation_end_time = Time.at(map['CompilationEndTime'].to_i) if map['CompilationEndTime']
        data.stopping_condition = (Parsers::StoppingCondition.parse(map['StoppingCondition']) unless map['StoppingCondition'].nil?)
        data.inference_image = map['InferenceImage']
        data.model_package_version_arn = map['ModelPackageVersionArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.failure_reason = map['FailureReason']
        data.model_artifacts = (Parsers::ModelArtifacts.parse(map['ModelArtifacts']) unless map['ModelArtifacts'].nil?)
        data.model_digests = (Parsers::ModelDigests.parse(map['ModelDigests']) unless map['ModelDigests'].nil?)
        data.role_arn = map['RoleArn']
        data.input_config = (Parsers::InputConfig.parse(map['InputConfig']) unless map['InputConfig'].nil?)
        data.output_config = (Parsers::OutputConfig.parse(map['OutputConfig']) unless map['OutputConfig'].nil?)
        data.vpc_config = (Parsers::NeoVpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        data
      end
    end

    class NeoVpcConfig
      def self.parse(map)
        data = Types::NeoVpcConfig.new
        data.security_group_ids = (Parsers::NeoVpcSecurityGroupIds.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        data.subnets = (Parsers::NeoVpcSubnets.parse(map['Subnets']) unless map['Subnets'].nil?)
        return data
      end
    end

    class NeoVpcSubnets
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class NeoVpcSecurityGroupIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class OutputConfig
      def self.parse(map)
        data = Types::OutputConfig.new
        data.s3_output_location = map['S3OutputLocation']
        data.target_device = map['TargetDevice']
        data.target_platform = (Parsers::TargetPlatform.parse(map['TargetPlatform']) unless map['TargetPlatform'].nil?)
        data.compiler_options = map['CompilerOptions']
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    class TargetPlatform
      def self.parse(map)
        data = Types::TargetPlatform.new
        data.os = map['Os']
        data.arch = map['Arch']
        data.accelerator = map['Accelerator']
        return data
      end
    end

    class InputConfig
      def self.parse(map)
        data = Types::InputConfig.new
        data.s3_uri = map['S3Uri']
        data.data_input_config = map['DataInputConfig']
        data.framework = map['Framework']
        data.framework_version = map['FrameworkVersion']
        return data
      end
    end

    class ModelDigests
      def self.parse(map)
        data = Types::ModelDigests.new
        data.artifact_digest = map['ArtifactDigest']
        return data
      end
    end

    class ModelArtifacts
      def self.parse(map)
        data = Types::ModelArtifacts.new
        data.s3_model_artifacts = map['S3ModelArtifacts']
        return data
      end
    end

    # Operation Parser for DescribeContext
    class DescribeContext
      def self.parse(http_resp)
        data = Types::DescribeContextOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.context_name = map['ContextName']
        data.context_arn = map['ContextArn']
        data.source = (Parsers::ContextSource.parse(map['Source']) unless map['Source'].nil?)
        data.context_type = map['ContextType']
        data.description = map['Description']
        data.properties = (Parsers::LineageEntityParameters.parse(map['Properties']) unless map['Properties'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_modified_by = (Parsers::UserContext.parse(map['LastModifiedBy']) unless map['LastModifiedBy'].nil?)
        data.lineage_group_arn = map['LineageGroupArn']
        data
      end
    end

    class ContextSource
      def self.parse(map)
        data = Types::ContextSource.new
        data.source_uri = map['SourceUri']
        data.source_type = map['SourceType']
        data.source_id = map['SourceId']
        return data
      end
    end

    # Operation Parser for DescribeDataQualityJobDefinition
    class DescribeDataQualityJobDefinition
      def self.parse(http_resp)
        data = Types::DescribeDataQualityJobDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_definition_arn = map['JobDefinitionArn']
        data.job_definition_name = map['JobDefinitionName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.data_quality_baseline_config = (Parsers::DataQualityBaselineConfig.parse(map['DataQualityBaselineConfig']) unless map['DataQualityBaselineConfig'].nil?)
        data.data_quality_app_specification = (Parsers::DataQualityAppSpecification.parse(map['DataQualityAppSpecification']) unless map['DataQualityAppSpecification'].nil?)
        data.data_quality_job_input = (Parsers::DataQualityJobInput.parse(map['DataQualityJobInput']) unless map['DataQualityJobInput'].nil?)
        data.data_quality_job_output_config = (Parsers::MonitoringOutputConfig.parse(map['DataQualityJobOutputConfig']) unless map['DataQualityJobOutputConfig'].nil?)
        data.job_resources = (Parsers::MonitoringResources.parse(map['JobResources']) unless map['JobResources'].nil?)
        data.network_config = (Parsers::MonitoringNetworkConfig.parse(map['NetworkConfig']) unless map['NetworkConfig'].nil?)
        data.role_arn = map['RoleArn']
        data.stopping_condition = (Parsers::MonitoringStoppingCondition.parse(map['StoppingCondition']) unless map['StoppingCondition'].nil?)
        data
      end
    end

    class MonitoringStoppingCondition
      def self.parse(map)
        data = Types::MonitoringStoppingCondition.new
        data.max_runtime_in_seconds = map['MaxRuntimeInSeconds']
        return data
      end
    end

    class MonitoringNetworkConfig
      def self.parse(map)
        data = Types::MonitoringNetworkConfig.new
        data.enable_inter_container_traffic_encryption = map['EnableInterContainerTrafficEncryption']
        data.enable_network_isolation = map['EnableNetworkIsolation']
        data.vpc_config = (Parsers::VpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        return data
      end
    end

    class MonitoringResources
      def self.parse(map)
        data = Types::MonitoringResources.new
        data.cluster_config = (Parsers::MonitoringClusterConfig.parse(map['ClusterConfig']) unless map['ClusterConfig'].nil?)
        return data
      end
    end

    class MonitoringClusterConfig
      def self.parse(map)
        data = Types::MonitoringClusterConfig.new
        data.instance_count = map['InstanceCount']
        data.instance_type = map['InstanceType']
        data.volume_size_in_gb = map['VolumeSizeInGB']
        data.volume_kms_key_id = map['VolumeKmsKeyId']
        return data
      end
    end

    class MonitoringOutputConfig
      def self.parse(map)
        data = Types::MonitoringOutputConfig.new
        data.monitoring_outputs = (Parsers::MonitoringOutputs.parse(map['MonitoringOutputs']) unless map['MonitoringOutputs'].nil?)
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    class MonitoringOutputs
      def self.parse(list)
        list.map do |value|
          Parsers::MonitoringOutput.parse(value) unless value.nil?
        end
      end
    end

    class MonitoringOutput
      def self.parse(map)
        data = Types::MonitoringOutput.new
        data.s3_output = (Parsers::MonitoringS3Output.parse(map['S3Output']) unless map['S3Output'].nil?)
        return data
      end
    end

    class MonitoringS3Output
      def self.parse(map)
        data = Types::MonitoringS3Output.new
        data.s3_uri = map['S3Uri']
        data.local_path = map['LocalPath']
        data.s3_upload_mode = map['S3UploadMode']
        return data
      end
    end

    class DataQualityJobInput
      def self.parse(map)
        data = Types::DataQualityJobInput.new
        data.endpoint_input = (Parsers::EndpointInput.parse(map['EndpointInput']) unless map['EndpointInput'].nil?)
        return data
      end
    end

    class EndpointInput
      def self.parse(map)
        data = Types::EndpointInput.new
        data.endpoint_name = map['EndpointName']
        data.local_path = map['LocalPath']
        data.s3_input_mode = map['S3InputMode']
        data.s3_data_distribution_type = map['S3DataDistributionType']
        data.features_attribute = map['FeaturesAttribute']
        data.inference_attribute = map['InferenceAttribute']
        data.probability_attribute = map['ProbabilityAttribute']
        data.probability_threshold_attribute = Hearth::NumberHelper.deserialize(map['ProbabilityThresholdAttribute'])
        data.start_time_offset = map['StartTimeOffset']
        data.end_time_offset = map['EndTimeOffset']
        return data
      end
    end

    class DataQualityAppSpecification
      def self.parse(map)
        data = Types::DataQualityAppSpecification.new
        data.image_uri = map['ImageUri']
        data.container_entrypoint = (Parsers::ContainerEntrypoint.parse(map['ContainerEntrypoint']) unless map['ContainerEntrypoint'].nil?)
        data.container_arguments = (Parsers::MonitoringContainerArguments.parse(map['ContainerArguments']) unless map['ContainerArguments'].nil?)
        data.record_preprocessor_source_uri = map['RecordPreprocessorSourceUri']
        data.post_analytics_processor_source_uri = map['PostAnalyticsProcessorSourceUri']
        data.environment = (Parsers::MonitoringEnvironmentMap.parse(map['Environment']) unless map['Environment'].nil?)
        return data
      end
    end

    class MonitoringEnvironmentMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class MonitoringContainerArguments
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ContainerEntrypoint
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class DataQualityBaselineConfig
      def self.parse(map)
        data = Types::DataQualityBaselineConfig.new
        data.baselining_job_name = map['BaseliningJobName']
        data.constraints_resource = (Parsers::MonitoringConstraintsResource.parse(map['ConstraintsResource']) unless map['ConstraintsResource'].nil?)
        data.statistics_resource = (Parsers::MonitoringStatisticsResource.parse(map['StatisticsResource']) unless map['StatisticsResource'].nil?)
        return data
      end
    end

    class MonitoringStatisticsResource
      def self.parse(map)
        data = Types::MonitoringStatisticsResource.new
        data.s3_uri = map['S3Uri']
        return data
      end
    end

    class MonitoringConstraintsResource
      def self.parse(map)
        data = Types::MonitoringConstraintsResource.new
        data.s3_uri = map['S3Uri']
        return data
      end
    end

    # Operation Parser for DescribeDevice
    class DescribeDevice
      def self.parse(http_resp)
        data = Types::DescribeDeviceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.device_arn = map['DeviceArn']
        data.device_name = map['DeviceName']
        data.description = map['Description']
        data.device_fleet_name = map['DeviceFleetName']
        data.iot_thing_name = map['IotThingName']
        data.registration_time = Time.at(map['RegistrationTime'].to_i) if map['RegistrationTime']
        data.latest_heartbeat = Time.at(map['LatestHeartbeat'].to_i) if map['LatestHeartbeat']
        data.models = (Parsers::EdgeModels.parse(map['Models']) unless map['Models'].nil?)
        data.max_models = map['MaxModels']
        data.next_token = map['NextToken']
        data.agent_version = map['AgentVersion']
        data
      end
    end

    class EdgeModels
      def self.parse(list)
        list.map do |value|
          Parsers::EdgeModel.parse(value) unless value.nil?
        end
      end
    end

    class EdgeModel
      def self.parse(map)
        data = Types::EdgeModel.new
        data.model_name = map['ModelName']
        data.model_version = map['ModelVersion']
        data.latest_sample_time = Time.at(map['LatestSampleTime'].to_i) if map['LatestSampleTime']
        data.latest_inference = Time.at(map['LatestInference'].to_i) if map['LatestInference']
        return data
      end
    end

    # Operation Parser for DescribeDeviceFleet
    class DescribeDeviceFleet
      def self.parse(http_resp)
        data = Types::DescribeDeviceFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.device_fleet_name = map['DeviceFleetName']
        data.device_fleet_arn = map['DeviceFleetArn']
        data.output_config = (Parsers::EdgeOutputConfig.parse(map['OutputConfig']) unless map['OutputConfig'].nil?)
        data.description = map['Description']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.role_arn = map['RoleArn']
        data.iot_role_alias = map['IotRoleAlias']
        data
      end
    end

    class EdgeOutputConfig
      def self.parse(map)
        data = Types::EdgeOutputConfig.new
        data.s3_output_location = map['S3OutputLocation']
        data.kms_key_id = map['KmsKeyId']
        data.preset_deployment_type = map['PresetDeploymentType']
        data.preset_deployment_config = map['PresetDeploymentConfig']
        return data
      end
    end

    # Operation Parser for DescribeDomain
    class DescribeDomain
      def self.parse(http_resp)
        data = Types::DescribeDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.domain_arn = map['DomainArn']
        data.domain_id = map['DomainId']
        data.domain_name = map['DomainName']
        data.home_efs_file_system_id = map['HomeEfsFileSystemId']
        data.single_sign_on_managed_application_instance_id = map['SingleSignOnManagedApplicationInstanceId']
        data.status = map['Status']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.failure_reason = map['FailureReason']
        data.auth_mode = map['AuthMode']
        data.default_user_settings = (Parsers::UserSettings.parse(map['DefaultUserSettings']) unless map['DefaultUserSettings'].nil?)
        data.app_network_access_type = map['AppNetworkAccessType']
        data.home_efs_file_system_kms_key_id = map['HomeEfsFileSystemKmsKeyId']
        data.subnet_ids = (Parsers::Subnets.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.url = map['Url']
        data.vpc_id = map['VpcId']
        data.kms_key_id = map['KmsKeyId']
        data.domain_settings = (Parsers::DomainSettings.parse(map['DomainSettings']) unless map['DomainSettings'].nil?)
        data.app_security_group_management = map['AppSecurityGroupManagement']
        data.security_group_id_for_domain_boundary = map['SecurityGroupIdForDomainBoundary']
        data
      end
    end

    class DomainSettings
      def self.parse(map)
        data = Types::DomainSettings.new
        data.security_group_ids = (Parsers::DomainSecurityGroupIds.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        data.r_studio_server_pro_domain_settings = (Parsers::RStudioServerProDomainSettings.parse(map['RStudioServerProDomainSettings']) unless map['RStudioServerProDomainSettings'].nil?)
        return data
      end
    end

    class RStudioServerProDomainSettings
      def self.parse(map)
        data = Types::RStudioServerProDomainSettings.new
        data.domain_execution_role_arn = map['DomainExecutionRoleArn']
        data.r_studio_connect_url = map['RStudioConnectUrl']
        data.r_studio_package_manager_url = map['RStudioPackageManagerUrl']
        data.default_resource_spec = (Parsers::ResourceSpec.parse(map['DefaultResourceSpec']) unless map['DefaultResourceSpec'].nil?)
        return data
      end
    end

    class DomainSecurityGroupIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class UserSettings
      def self.parse(map)
        data = Types::UserSettings.new
        data.execution_role = map['ExecutionRole']
        data.security_groups = (Parsers::SecurityGroupIds.parse(map['SecurityGroups']) unless map['SecurityGroups'].nil?)
        data.sharing_settings = (Parsers::SharingSettings.parse(map['SharingSettings']) unless map['SharingSettings'].nil?)
        data.jupyter_server_app_settings = (Parsers::JupyterServerAppSettings.parse(map['JupyterServerAppSettings']) unless map['JupyterServerAppSettings'].nil?)
        data.kernel_gateway_app_settings = (Parsers::KernelGatewayAppSettings.parse(map['KernelGatewayAppSettings']) unless map['KernelGatewayAppSettings'].nil?)
        data.tensor_board_app_settings = (Parsers::TensorBoardAppSettings.parse(map['TensorBoardAppSettings']) unless map['TensorBoardAppSettings'].nil?)
        data.r_studio_server_pro_app_settings = (Parsers::RStudioServerProAppSettings.parse(map['RStudioServerProAppSettings']) unless map['RStudioServerProAppSettings'].nil?)
        data.r_session_app_settings = (Parsers::RSessionAppSettings.parse(map['RSessionAppSettings']) unless map['RSessionAppSettings'].nil?)
        return data
      end
    end

    class RSessionAppSettings
      def self.parse(map)
        data = Types::RSessionAppSettings.new
        data.default_resource_spec = (Parsers::ResourceSpec.parse(map['DefaultResourceSpec']) unless map['DefaultResourceSpec'].nil?)
        data.custom_images = (Parsers::CustomImages.parse(map['CustomImages']) unless map['CustomImages'].nil?)
        return data
      end
    end

    class CustomImages
      def self.parse(list)
        list.map do |value|
          Parsers::CustomImage.parse(value) unless value.nil?
        end
      end
    end

    class CustomImage
      def self.parse(map)
        data = Types::CustomImage.new
        data.image_name = map['ImageName']
        data.image_version_number = map['ImageVersionNumber']
        data.app_image_config_name = map['AppImageConfigName']
        return data
      end
    end

    class RStudioServerProAppSettings
      def self.parse(map)
        data = Types::RStudioServerProAppSettings.new
        data.access_status = map['AccessStatus']
        data.user_group = map['UserGroup']
        return data
      end
    end

    class TensorBoardAppSettings
      def self.parse(map)
        data = Types::TensorBoardAppSettings.new
        data.default_resource_spec = (Parsers::ResourceSpec.parse(map['DefaultResourceSpec']) unless map['DefaultResourceSpec'].nil?)
        return data
      end
    end

    class KernelGatewayAppSettings
      def self.parse(map)
        data = Types::KernelGatewayAppSettings.new
        data.default_resource_spec = (Parsers::ResourceSpec.parse(map['DefaultResourceSpec']) unless map['DefaultResourceSpec'].nil?)
        data.custom_images = (Parsers::CustomImages.parse(map['CustomImages']) unless map['CustomImages'].nil?)
        data.lifecycle_config_arns = (Parsers::LifecycleConfigArns.parse(map['LifecycleConfigArns']) unless map['LifecycleConfigArns'].nil?)
        return data
      end
    end

    class LifecycleConfigArns
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class JupyterServerAppSettings
      def self.parse(map)
        data = Types::JupyterServerAppSettings.new
        data.default_resource_spec = (Parsers::ResourceSpec.parse(map['DefaultResourceSpec']) unless map['DefaultResourceSpec'].nil?)
        data.lifecycle_config_arns = (Parsers::LifecycleConfigArns.parse(map['LifecycleConfigArns']) unless map['LifecycleConfigArns'].nil?)
        return data
      end
    end

    class SharingSettings
      def self.parse(map)
        data = Types::SharingSettings.new
        data.notebook_output_option = map['NotebookOutputOption']
        data.s3_output_path = map['S3OutputPath']
        data.s3_kms_key_id = map['S3KmsKeyId']
        return data
      end
    end

    class SecurityGroupIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeEdgePackagingJob
    class DescribeEdgePackagingJob
      def self.parse(http_resp)
        data = Types::DescribeEdgePackagingJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.edge_packaging_job_arn = map['EdgePackagingJobArn']
        data.edge_packaging_job_name = map['EdgePackagingJobName']
        data.compilation_job_name = map['CompilationJobName']
        data.model_name = map['ModelName']
        data.model_version = map['ModelVersion']
        data.role_arn = map['RoleArn']
        data.output_config = (Parsers::EdgeOutputConfig.parse(map['OutputConfig']) unless map['OutputConfig'].nil?)
        data.resource_key = map['ResourceKey']
        data.edge_packaging_job_status = map['EdgePackagingJobStatus']
        data.edge_packaging_job_status_message = map['EdgePackagingJobStatusMessage']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.model_artifact = map['ModelArtifact']
        data.model_signature = map['ModelSignature']
        data.preset_deployment_output = (Parsers::EdgePresetDeploymentOutput.parse(map['PresetDeploymentOutput']) unless map['PresetDeploymentOutput'].nil?)
        data
      end
    end

    class EdgePresetDeploymentOutput
      def self.parse(map)
        data = Types::EdgePresetDeploymentOutput.new
        data.type = map['Type']
        data.artifact = map['Artifact']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        return data
      end
    end

    # Operation Parser for DescribeEndpoint
    class DescribeEndpoint
      def self.parse(http_resp)
        data = Types::DescribeEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint_name = map['EndpointName']
        data.endpoint_arn = map['EndpointArn']
        data.endpoint_config_name = map['EndpointConfigName']
        data.production_variants = (Parsers::ProductionVariantSummaryList.parse(map['ProductionVariants']) unless map['ProductionVariants'].nil?)
        data.data_capture_config = (Parsers::DataCaptureConfigSummary.parse(map['DataCaptureConfig']) unless map['DataCaptureConfig'].nil?)
        data.endpoint_status = map['EndpointStatus']
        data.failure_reason = map['FailureReason']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_deployment_config = (Parsers::DeploymentConfig.parse(map['LastDeploymentConfig']) unless map['LastDeploymentConfig'].nil?)
        data.async_inference_config = (Parsers::AsyncInferenceConfig.parse(map['AsyncInferenceConfig']) unless map['AsyncInferenceConfig'].nil?)
        data.pending_deployment_summary = (Parsers::PendingDeploymentSummary.parse(map['PendingDeploymentSummary']) unless map['PendingDeploymentSummary'].nil?)
        data
      end
    end

    class PendingDeploymentSummary
      def self.parse(map)
        data = Types::PendingDeploymentSummary.new
        data.endpoint_config_name = map['EndpointConfigName']
        data.production_variants = (Parsers::PendingProductionVariantSummaryList.parse(map['ProductionVariants']) unless map['ProductionVariants'].nil?)
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        return data
      end
    end

    class PendingProductionVariantSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::PendingProductionVariantSummary.parse(value) unless value.nil?
        end
      end
    end

    class PendingProductionVariantSummary
      def self.parse(map)
        data = Types::PendingProductionVariantSummary.new
        data.variant_name = map['VariantName']
        data.deployed_images = (Parsers::DeployedImages.parse(map['DeployedImages']) unless map['DeployedImages'].nil?)
        data.current_weight = Hearth::NumberHelper.deserialize(map['CurrentWeight'])
        data.desired_weight = Hearth::NumberHelper.deserialize(map['DesiredWeight'])
        data.current_instance_count = map['CurrentInstanceCount']
        data.desired_instance_count = map['DesiredInstanceCount']
        data.instance_type = map['InstanceType']
        data.accelerator_type = map['AcceleratorType']
        data.variant_status = (Parsers::ProductionVariantStatusList.parse(map['VariantStatus']) unless map['VariantStatus'].nil?)
        data.current_serverless_config = (Parsers::ProductionVariantServerlessConfig.parse(map['CurrentServerlessConfig']) unless map['CurrentServerlessConfig'].nil?)
        data.desired_serverless_config = (Parsers::ProductionVariantServerlessConfig.parse(map['DesiredServerlessConfig']) unless map['DesiredServerlessConfig'].nil?)
        return data
      end
    end

    class ProductionVariantServerlessConfig
      def self.parse(map)
        data = Types::ProductionVariantServerlessConfig.new
        data.memory_size_in_mb = map['MemorySizeInMB']
        data.max_concurrency = map['MaxConcurrency']
        return data
      end
    end

    class ProductionVariantStatusList
      def self.parse(list)
        list.map do |value|
          Parsers::ProductionVariantStatus.parse(value) unless value.nil?
        end
      end
    end

    class ProductionVariantStatus
      def self.parse(map)
        data = Types::ProductionVariantStatus.new
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        return data
      end
    end

    class DeployedImages
      def self.parse(list)
        list.map do |value|
          Parsers::DeployedImage.parse(value) unless value.nil?
        end
      end
    end

    class DeployedImage
      def self.parse(map)
        data = Types::DeployedImage.new
        data.specified_image = map['SpecifiedImage']
        data.resolved_image = map['ResolvedImage']
        data.resolution_time = Time.at(map['ResolutionTime'].to_i) if map['ResolutionTime']
        return data
      end
    end

    class AsyncInferenceConfig
      def self.parse(map)
        data = Types::AsyncInferenceConfig.new
        data.client_config = (Parsers::AsyncInferenceClientConfig.parse(map['ClientConfig']) unless map['ClientConfig'].nil?)
        data.output_config = (Parsers::AsyncInferenceOutputConfig.parse(map['OutputConfig']) unless map['OutputConfig'].nil?)
        return data
      end
    end

    class AsyncInferenceOutputConfig
      def self.parse(map)
        data = Types::AsyncInferenceOutputConfig.new
        data.kms_key_id = map['KmsKeyId']
        data.s3_output_path = map['S3OutputPath']
        data.notification_config = (Parsers::AsyncInferenceNotificationConfig.parse(map['NotificationConfig']) unless map['NotificationConfig'].nil?)
        return data
      end
    end

    class AsyncInferenceNotificationConfig
      def self.parse(map)
        data = Types::AsyncInferenceNotificationConfig.new
        data.success_topic = map['SuccessTopic']
        data.error_topic = map['ErrorTopic']
        return data
      end
    end

    class AsyncInferenceClientConfig
      def self.parse(map)
        data = Types::AsyncInferenceClientConfig.new
        data.max_concurrent_invocations_per_instance = map['MaxConcurrentInvocationsPerInstance']
        return data
      end
    end

    class DeploymentConfig
      def self.parse(map)
        data = Types::DeploymentConfig.new
        data.blue_green_update_policy = (Parsers::BlueGreenUpdatePolicy.parse(map['BlueGreenUpdatePolicy']) unless map['BlueGreenUpdatePolicy'].nil?)
        data.auto_rollback_configuration = (Parsers::AutoRollbackConfig.parse(map['AutoRollbackConfiguration']) unless map['AutoRollbackConfiguration'].nil?)
        return data
      end
    end

    class AutoRollbackConfig
      def self.parse(map)
        data = Types::AutoRollbackConfig.new
        data.alarms = (Parsers::AlarmList.parse(map['Alarms']) unless map['Alarms'].nil?)
        return data
      end
    end

    class AlarmList
      def self.parse(list)
        list.map do |value|
          Parsers::Alarm.parse(value) unless value.nil?
        end
      end
    end

    class Alarm
      def self.parse(map)
        data = Types::Alarm.new
        data.alarm_name = map['AlarmName']
        return data
      end
    end

    class BlueGreenUpdatePolicy
      def self.parse(map)
        data = Types::BlueGreenUpdatePolicy.new
        data.traffic_routing_configuration = (Parsers::TrafficRoutingConfig.parse(map['TrafficRoutingConfiguration']) unless map['TrafficRoutingConfiguration'].nil?)
        data.termination_wait_in_seconds = map['TerminationWaitInSeconds']
        data.maximum_execution_timeout_in_seconds = map['MaximumExecutionTimeoutInSeconds']
        return data
      end
    end

    class TrafficRoutingConfig
      def self.parse(map)
        data = Types::TrafficRoutingConfig.new
        data.type = map['Type']
        data.wait_interval_in_seconds = map['WaitIntervalInSeconds']
        data.canary_size = (Parsers::CapacitySize.parse(map['CanarySize']) unless map['CanarySize'].nil?)
        data.linear_step_size = (Parsers::CapacitySize.parse(map['LinearStepSize']) unless map['LinearStepSize'].nil?)
        return data
      end
    end

    class CapacitySize
      def self.parse(map)
        data = Types::CapacitySize.new
        data.type = map['Type']
        data.value = map['Value']
        return data
      end
    end

    class DataCaptureConfigSummary
      def self.parse(map)
        data = Types::DataCaptureConfigSummary.new
        data.enable_capture = map['EnableCapture']
        data.capture_status = map['CaptureStatus']
        data.current_sampling_percentage = map['CurrentSamplingPercentage']
        data.destination_s3_uri = map['DestinationS3Uri']
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    class ProductionVariantSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::ProductionVariantSummary.parse(value) unless value.nil?
        end
      end
    end

    class ProductionVariantSummary
      def self.parse(map)
        data = Types::ProductionVariantSummary.new
        data.variant_name = map['VariantName']
        data.deployed_images = (Parsers::DeployedImages.parse(map['DeployedImages']) unless map['DeployedImages'].nil?)
        data.current_weight = Hearth::NumberHelper.deserialize(map['CurrentWeight'])
        data.desired_weight = Hearth::NumberHelper.deserialize(map['DesiredWeight'])
        data.current_instance_count = map['CurrentInstanceCount']
        data.desired_instance_count = map['DesiredInstanceCount']
        data.variant_status = (Parsers::ProductionVariantStatusList.parse(map['VariantStatus']) unless map['VariantStatus'].nil?)
        data.current_serverless_config = (Parsers::ProductionVariantServerlessConfig.parse(map['CurrentServerlessConfig']) unless map['CurrentServerlessConfig'].nil?)
        data.desired_serverless_config = (Parsers::ProductionVariantServerlessConfig.parse(map['DesiredServerlessConfig']) unless map['DesiredServerlessConfig'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeEndpointConfig
    class DescribeEndpointConfig
      def self.parse(http_resp)
        data = Types::DescribeEndpointConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint_config_name = map['EndpointConfigName']
        data.endpoint_config_arn = map['EndpointConfigArn']
        data.production_variants = (Parsers::ProductionVariantList.parse(map['ProductionVariants']) unless map['ProductionVariants'].nil?)
        data.data_capture_config = (Parsers::DataCaptureConfig.parse(map['DataCaptureConfig']) unless map['DataCaptureConfig'].nil?)
        data.kms_key_id = map['KmsKeyId']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.async_inference_config = (Parsers::AsyncInferenceConfig.parse(map['AsyncInferenceConfig']) unless map['AsyncInferenceConfig'].nil?)
        data
      end
    end

    class DataCaptureConfig
      def self.parse(map)
        data = Types::DataCaptureConfig.new
        data.enable_capture = map['EnableCapture']
        data.initial_sampling_percentage = map['InitialSamplingPercentage']
        data.destination_s3_uri = map['DestinationS3Uri']
        data.kms_key_id = map['KmsKeyId']
        data.capture_options = (Parsers::CaptureOptionList.parse(map['CaptureOptions']) unless map['CaptureOptions'].nil?)
        data.capture_content_type_header = (Parsers::CaptureContentTypeHeader.parse(map['CaptureContentTypeHeader']) unless map['CaptureContentTypeHeader'].nil?)
        return data
      end
    end

    class CaptureContentTypeHeader
      def self.parse(map)
        data = Types::CaptureContentTypeHeader.new
        data.csv_content_types = (Parsers::CsvContentTypes.parse(map['CsvContentTypes']) unless map['CsvContentTypes'].nil?)
        data.json_content_types = (Parsers::JsonContentTypes.parse(map['JsonContentTypes']) unless map['JsonContentTypes'].nil?)
        return data
      end
    end

    class JsonContentTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CsvContentTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CaptureOptionList
      def self.parse(list)
        list.map do |value|
          Parsers::CaptureOption.parse(value) unless value.nil?
        end
      end
    end

    class CaptureOption
      def self.parse(map)
        data = Types::CaptureOption.new
        data.capture_mode = map['CaptureMode']
        return data
      end
    end

    class ProductionVariantList
      def self.parse(list)
        list.map do |value|
          Parsers::ProductionVariant.parse(value) unless value.nil?
        end
      end
    end

    class ProductionVariant
      def self.parse(map)
        data = Types::ProductionVariant.new
        data.variant_name = map['VariantName']
        data.model_name = map['ModelName']
        data.initial_instance_count = map['InitialInstanceCount']
        data.instance_type = map['InstanceType']
        data.initial_variant_weight = Hearth::NumberHelper.deserialize(map['InitialVariantWeight'])
        data.accelerator_type = map['AcceleratorType']
        data.core_dump_config = (Parsers::ProductionVariantCoreDumpConfig.parse(map['CoreDumpConfig']) unless map['CoreDumpConfig'].nil?)
        data.serverless_config = (Parsers::ProductionVariantServerlessConfig.parse(map['ServerlessConfig']) unless map['ServerlessConfig'].nil?)
        return data
      end
    end

    class ProductionVariantCoreDumpConfig
      def self.parse(map)
        data = Types::ProductionVariantCoreDumpConfig.new
        data.destination_s3_uri = map['DestinationS3Uri']
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    # Operation Parser for DescribeExperiment
    class DescribeExperiment
      def self.parse(http_resp)
        data = Types::DescribeExperimentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.experiment_name = map['ExperimentName']
        data.experiment_arn = map['ExperimentArn']
        data.display_name = map['DisplayName']
        data.source = (Parsers::ExperimentSource.parse(map['Source']) unless map['Source'].nil?)
        data.description = map['Description']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_modified_by = (Parsers::UserContext.parse(map['LastModifiedBy']) unless map['LastModifiedBy'].nil?)
        data
      end
    end

    class ExperimentSource
      def self.parse(map)
        data = Types::ExperimentSource.new
        data.source_arn = map['SourceArn']
        data.source_type = map['SourceType']
        return data
      end
    end

    # Operation Parser for DescribeFeatureGroup
    class DescribeFeatureGroup
      def self.parse(http_resp)
        data = Types::DescribeFeatureGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.feature_group_arn = map['FeatureGroupArn']
        data.feature_group_name = map['FeatureGroupName']
        data.record_identifier_feature_name = map['RecordIdentifierFeatureName']
        data.event_time_feature_name = map['EventTimeFeatureName']
        data.feature_definitions = (Parsers::FeatureDefinitions.parse(map['FeatureDefinitions']) unless map['FeatureDefinitions'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.online_store_config = (Parsers::OnlineStoreConfig.parse(map['OnlineStoreConfig']) unless map['OnlineStoreConfig'].nil?)
        data.offline_store_config = (Parsers::OfflineStoreConfig.parse(map['OfflineStoreConfig']) unless map['OfflineStoreConfig'].nil?)
        data.role_arn = map['RoleArn']
        data.feature_group_status = map['FeatureGroupStatus']
        data.offline_store_status = (Parsers::OfflineStoreStatus.parse(map['OfflineStoreStatus']) unless map['OfflineStoreStatus'].nil?)
        data.failure_reason = map['FailureReason']
        data.description = map['Description']
        data.next_token = map['NextToken']
        data
      end
    end

    class OfflineStoreStatus
      def self.parse(map)
        data = Types::OfflineStoreStatus.new
        data.status = map['Status']
        data.blocked_reason = map['BlockedReason']
        return data
      end
    end

    class OfflineStoreConfig
      def self.parse(map)
        data = Types::OfflineStoreConfig.new
        data.s3_storage_config = (Parsers::S3StorageConfig.parse(map['S3StorageConfig']) unless map['S3StorageConfig'].nil?)
        data.disable_glue_table_creation = map['DisableGlueTableCreation']
        data.data_catalog_config = (Parsers::DataCatalogConfig.parse(map['DataCatalogConfig']) unless map['DataCatalogConfig'].nil?)
        return data
      end
    end

    class DataCatalogConfig
      def self.parse(map)
        data = Types::DataCatalogConfig.new
        data.table_name = map['TableName']
        data.catalog = map['Catalog']
        data.database = map['Database']
        return data
      end
    end

    class S3StorageConfig
      def self.parse(map)
        data = Types::S3StorageConfig.new
        data.s3_uri = map['S3Uri']
        data.kms_key_id = map['KmsKeyId']
        data.resolved_output_s3_uri = map['ResolvedOutputS3Uri']
        return data
      end
    end

    class OnlineStoreConfig
      def self.parse(map)
        data = Types::OnlineStoreConfig.new
        data.security_config = (Parsers::OnlineStoreSecurityConfig.parse(map['SecurityConfig']) unless map['SecurityConfig'].nil?)
        data.enable_online_store = map['EnableOnlineStore']
        return data
      end
    end

    class OnlineStoreSecurityConfig
      def self.parse(map)
        data = Types::OnlineStoreSecurityConfig.new
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    class FeatureDefinitions
      def self.parse(list)
        list.map do |value|
          Parsers::FeatureDefinition.parse(value) unless value.nil?
        end
      end
    end

    class FeatureDefinition
      def self.parse(map)
        data = Types::FeatureDefinition.new
        data.feature_name = map['FeatureName']
        data.feature_type = map['FeatureType']
        return data
      end
    end

    # Operation Parser for DescribeFlowDefinition
    class DescribeFlowDefinition
      def self.parse(http_resp)
        data = Types::DescribeFlowDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.flow_definition_arn = map['FlowDefinitionArn']
        data.flow_definition_name = map['FlowDefinitionName']
        data.flow_definition_status = map['FlowDefinitionStatus']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.human_loop_request_source = (Parsers::HumanLoopRequestSource.parse(map['HumanLoopRequestSource']) unless map['HumanLoopRequestSource'].nil?)
        data.human_loop_activation_config = (Parsers::HumanLoopActivationConfig.parse(map['HumanLoopActivationConfig']) unless map['HumanLoopActivationConfig'].nil?)
        data.human_loop_config = (Parsers::HumanLoopConfig.parse(map['HumanLoopConfig']) unless map['HumanLoopConfig'].nil?)
        data.output_config = (Parsers::FlowDefinitionOutputConfig.parse(map['OutputConfig']) unless map['OutputConfig'].nil?)
        data.role_arn = map['RoleArn']
        data.failure_reason = map['FailureReason']
        data
      end
    end

    class FlowDefinitionOutputConfig
      def self.parse(map)
        data = Types::FlowDefinitionOutputConfig.new
        data.s3_output_path = map['S3OutputPath']
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    class HumanLoopConfig
      def self.parse(map)
        data = Types::HumanLoopConfig.new
        data.workteam_arn = map['WorkteamArn']
        data.human_task_ui_arn = map['HumanTaskUiArn']
        data.task_title = map['TaskTitle']
        data.task_description = map['TaskDescription']
        data.task_count = map['TaskCount']
        data.task_availability_lifetime_in_seconds = map['TaskAvailabilityLifetimeInSeconds']
        data.task_time_limit_in_seconds = map['TaskTimeLimitInSeconds']
        data.task_keywords = (Parsers::FlowDefinitionTaskKeywords.parse(map['TaskKeywords']) unless map['TaskKeywords'].nil?)
        data.public_workforce_task_price = (Parsers::PublicWorkforceTaskPrice.parse(map['PublicWorkforceTaskPrice']) unless map['PublicWorkforceTaskPrice'].nil?)
        return data
      end
    end

    class PublicWorkforceTaskPrice
      def self.parse(map)
        data = Types::PublicWorkforceTaskPrice.new
        data.amount_in_usd = (Parsers::USD.parse(map['AmountInUsd']) unless map['AmountInUsd'].nil?)
        return data
      end
    end

    class USD
      def self.parse(map)
        data = Types::USD.new
        data.dollars = map['Dollars']
        data.cents = map['Cents']
        data.tenth_fractions_of_a_cent = map['TenthFractionsOfACent']
        return data
      end
    end

    class FlowDefinitionTaskKeywords
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class HumanLoopActivationConfig
      def self.parse(map)
        data = Types::HumanLoopActivationConfig.new
        data.human_loop_activation_conditions_config = (Parsers::HumanLoopActivationConditionsConfig.parse(map['HumanLoopActivationConditionsConfig']) unless map['HumanLoopActivationConditionsConfig'].nil?)
        return data
      end
    end

    class HumanLoopActivationConditionsConfig
      def self.parse(map)
        data = Types::HumanLoopActivationConditionsConfig.new
        data.human_loop_activation_conditions = map['HumanLoopActivationConditions']
        return data
      end
    end

    class HumanLoopRequestSource
      def self.parse(map)
        data = Types::HumanLoopRequestSource.new
        data.aws_managed_human_loop_request_source = map['AwsManagedHumanLoopRequestSource']
        return data
      end
    end

    # Operation Parser for DescribeHumanTaskUi
    class DescribeHumanTaskUi
      def self.parse(http_resp)
        data = Types::DescribeHumanTaskUiOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.human_task_ui_arn = map['HumanTaskUiArn']
        data.human_task_ui_name = map['HumanTaskUiName']
        data.human_task_ui_status = map['HumanTaskUiStatus']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.ui_template = (Parsers::UiTemplateInfo.parse(map['UiTemplate']) unless map['UiTemplate'].nil?)
        data
      end
    end

    class UiTemplateInfo
      def self.parse(map)
        data = Types::UiTemplateInfo.new
        data.url = map['Url']
        data.content_sha256 = map['ContentSha256']
        return data
      end
    end

    # Operation Parser for DescribeHyperParameterTuningJob
    class DescribeHyperParameterTuningJob
      def self.parse(http_resp)
        data = Types::DescribeHyperParameterTuningJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hyper_parameter_tuning_job_name = map['HyperParameterTuningJobName']
        data.hyper_parameter_tuning_job_arn = map['HyperParameterTuningJobArn']
        data.hyper_parameter_tuning_job_config = (Parsers::HyperParameterTuningJobConfig.parse(map['HyperParameterTuningJobConfig']) unless map['HyperParameterTuningJobConfig'].nil?)
        data.training_job_definition = (Parsers::HyperParameterTrainingJobDefinition.parse(map['TrainingJobDefinition']) unless map['TrainingJobDefinition'].nil?)
        data.training_job_definitions = (Parsers::HyperParameterTrainingJobDefinitions.parse(map['TrainingJobDefinitions']) unless map['TrainingJobDefinitions'].nil?)
        data.hyper_parameter_tuning_job_status = map['HyperParameterTuningJobStatus']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.hyper_parameter_tuning_end_time = Time.at(map['HyperParameterTuningEndTime'].to_i) if map['HyperParameterTuningEndTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.training_job_status_counters = (Parsers::TrainingJobStatusCounters.parse(map['TrainingJobStatusCounters']) unless map['TrainingJobStatusCounters'].nil?)
        data.objective_status_counters = (Parsers::ObjectiveStatusCounters.parse(map['ObjectiveStatusCounters']) unless map['ObjectiveStatusCounters'].nil?)
        data.best_training_job = (Parsers::HyperParameterTrainingJobSummary.parse(map['BestTrainingJob']) unless map['BestTrainingJob'].nil?)
        data.overall_best_training_job = (Parsers::HyperParameterTrainingJobSummary.parse(map['OverallBestTrainingJob']) unless map['OverallBestTrainingJob'].nil?)
        data.warm_start_config = (Parsers::HyperParameterTuningJobWarmStartConfig.parse(map['WarmStartConfig']) unless map['WarmStartConfig'].nil?)
        data.failure_reason = map['FailureReason']
        data
      end
    end

    class HyperParameterTuningJobWarmStartConfig
      def self.parse(map)
        data = Types::HyperParameterTuningJobWarmStartConfig.new
        data.parent_hyper_parameter_tuning_jobs = (Parsers::ParentHyperParameterTuningJobs.parse(map['ParentHyperParameterTuningJobs']) unless map['ParentHyperParameterTuningJobs'].nil?)
        data.warm_start_type = map['WarmStartType']
        return data
      end
    end

    class ParentHyperParameterTuningJobs
      def self.parse(list)
        list.map do |value|
          Parsers::ParentHyperParameterTuningJob.parse(value) unless value.nil?
        end
      end
    end

    class ParentHyperParameterTuningJob
      def self.parse(map)
        data = Types::ParentHyperParameterTuningJob.new
        data.hyper_parameter_tuning_job_name = map['HyperParameterTuningJobName']
        return data
      end
    end

    class HyperParameterTrainingJobSummary
      def self.parse(map)
        data = Types::HyperParameterTrainingJobSummary.new
        data.training_job_definition_name = map['TrainingJobDefinitionName']
        data.training_job_name = map['TrainingJobName']
        data.training_job_arn = map['TrainingJobArn']
        data.tuning_job_name = map['TuningJobName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.training_start_time = Time.at(map['TrainingStartTime'].to_i) if map['TrainingStartTime']
        data.training_end_time = Time.at(map['TrainingEndTime'].to_i) if map['TrainingEndTime']
        data.training_job_status = map['TrainingJobStatus']
        data.tuned_hyper_parameters = (Parsers::HyperParameters.parse(map['TunedHyperParameters']) unless map['TunedHyperParameters'].nil?)
        data.failure_reason = map['FailureReason']
        data.final_hyper_parameter_tuning_job_objective_metric = (Parsers::FinalHyperParameterTuningJobObjectiveMetric.parse(map['FinalHyperParameterTuningJobObjectiveMetric']) unless map['FinalHyperParameterTuningJobObjectiveMetric'].nil?)
        data.objective_status = map['ObjectiveStatus']
        return data
      end
    end

    class FinalHyperParameterTuningJobObjectiveMetric
      def self.parse(map)
        data = Types::FinalHyperParameterTuningJobObjectiveMetric.new
        data.type = map['Type']
        data.metric_name = map['MetricName']
        data.value = Hearth::NumberHelper.deserialize(map['Value'])
        return data
      end
    end

    class ObjectiveStatusCounters
      def self.parse(map)
        data = Types::ObjectiveStatusCounters.new
        data.succeeded = map['Succeeded']
        data.pending = map['Pending']
        data.failed = map['Failed']
        return data
      end
    end

    class TrainingJobStatusCounters
      def self.parse(map)
        data = Types::TrainingJobStatusCounters.new
        data.completed = map['Completed']
        data.in_progress = map['InProgress']
        data.retryable_error = map['RetryableError']
        data.non_retryable_error = map['NonRetryableError']
        data.stopped = map['Stopped']
        return data
      end
    end

    class HyperParameterTrainingJobDefinitions
      def self.parse(list)
        list.map do |value|
          Parsers::HyperParameterTrainingJobDefinition.parse(value) unless value.nil?
        end
      end
    end

    class HyperParameterTrainingJobDefinition
      def self.parse(map)
        data = Types::HyperParameterTrainingJobDefinition.new
        data.definition_name = map['DefinitionName']
        data.tuning_objective = (Parsers::HyperParameterTuningJobObjective.parse(map['TuningObjective']) unless map['TuningObjective'].nil?)
        data.hyper_parameter_ranges = (Parsers::ParameterRanges.parse(map['HyperParameterRanges']) unless map['HyperParameterRanges'].nil?)
        data.static_hyper_parameters = (Parsers::HyperParameters.parse(map['StaticHyperParameters']) unless map['StaticHyperParameters'].nil?)
        data.algorithm_specification = (Parsers::HyperParameterAlgorithmSpecification.parse(map['AlgorithmSpecification']) unless map['AlgorithmSpecification'].nil?)
        data.role_arn = map['RoleArn']
        data.input_data_config = (Parsers::InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.vpc_config = (Parsers::VpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        data.output_data_config = (Parsers::OutputDataConfig.parse(map['OutputDataConfig']) unless map['OutputDataConfig'].nil?)
        data.resource_config = (Parsers::ResourceConfig.parse(map['ResourceConfig']) unless map['ResourceConfig'].nil?)
        data.stopping_condition = (Parsers::StoppingCondition.parse(map['StoppingCondition']) unless map['StoppingCondition'].nil?)
        data.enable_network_isolation = map['EnableNetworkIsolation']
        data.enable_inter_container_traffic_encryption = map['EnableInterContainerTrafficEncryption']
        data.enable_managed_spot_training = map['EnableManagedSpotTraining']
        data.checkpoint_config = (Parsers::CheckpointConfig.parse(map['CheckpointConfig']) unless map['CheckpointConfig'].nil?)
        data.retry_strategy = (Parsers::RetryStrategy.parse(map['RetryStrategy']) unless map['RetryStrategy'].nil?)
        return data
      end
    end

    class RetryStrategy
      def self.parse(map)
        data = Types::RetryStrategy.new
        data.maximum_retry_attempts = map['MaximumRetryAttempts']
        return data
      end
    end

    class CheckpointConfig
      def self.parse(map)
        data = Types::CheckpointConfig.new
        data.s3_uri = map['S3Uri']
        data.local_path = map['LocalPath']
        return data
      end
    end

    class HyperParameterAlgorithmSpecification
      def self.parse(map)
        data = Types::HyperParameterAlgorithmSpecification.new
        data.training_image = map['TrainingImage']
        data.training_input_mode = map['TrainingInputMode']
        data.algorithm_name = map['AlgorithmName']
        data.metric_definitions = (Parsers::MetricDefinitionList.parse(map['MetricDefinitions']) unless map['MetricDefinitions'].nil?)
        return data
      end
    end

    class ParameterRanges
      def self.parse(map)
        data = Types::ParameterRanges.new
        data.integer_parameter_ranges = (Parsers::IntegerParameterRanges.parse(map['IntegerParameterRanges']) unless map['IntegerParameterRanges'].nil?)
        data.continuous_parameter_ranges = (Parsers::ContinuousParameterRanges.parse(map['ContinuousParameterRanges']) unless map['ContinuousParameterRanges'].nil?)
        data.categorical_parameter_ranges = (Parsers::CategoricalParameterRanges.parse(map['CategoricalParameterRanges']) unless map['CategoricalParameterRanges'].nil?)
        return data
      end
    end

    class CategoricalParameterRanges
      def self.parse(list)
        list.map do |value|
          Parsers::CategoricalParameterRange.parse(value) unless value.nil?
        end
      end
    end

    class CategoricalParameterRange
      def self.parse(map)
        data = Types::CategoricalParameterRange.new
        data.name = map['Name']
        data.values = (Parsers::ParameterValues.parse(map['Values']) unless map['Values'].nil?)
        return data
      end
    end

    class ContinuousParameterRanges
      def self.parse(list)
        list.map do |value|
          Parsers::ContinuousParameterRange.parse(value) unless value.nil?
        end
      end
    end

    class ContinuousParameterRange
      def self.parse(map)
        data = Types::ContinuousParameterRange.new
        data.name = map['Name']
        data.min_value = map['MinValue']
        data.max_value = map['MaxValue']
        data.scaling_type = map['ScalingType']
        return data
      end
    end

    class IntegerParameterRanges
      def self.parse(list)
        list.map do |value|
          Parsers::IntegerParameterRange.parse(value) unless value.nil?
        end
      end
    end

    class IntegerParameterRange
      def self.parse(map)
        data = Types::IntegerParameterRange.new
        data.name = map['Name']
        data.min_value = map['MinValue']
        data.max_value = map['MaxValue']
        data.scaling_type = map['ScalingType']
        return data
      end
    end

    class HyperParameterTuningJobConfig
      def self.parse(map)
        data = Types::HyperParameterTuningJobConfig.new
        data.strategy = map['Strategy']
        data.hyper_parameter_tuning_job_objective = (Parsers::HyperParameterTuningJobObjective.parse(map['HyperParameterTuningJobObjective']) unless map['HyperParameterTuningJobObjective'].nil?)
        data.resource_limits = (Parsers::ResourceLimits.parse(map['ResourceLimits']) unless map['ResourceLimits'].nil?)
        data.parameter_ranges = (Parsers::ParameterRanges.parse(map['ParameterRanges']) unless map['ParameterRanges'].nil?)
        data.training_job_early_stopping_type = map['TrainingJobEarlyStoppingType']
        data.tuning_job_completion_criteria = (Parsers::TuningJobCompletionCriteria.parse(map['TuningJobCompletionCriteria']) unless map['TuningJobCompletionCriteria'].nil?)
        return data
      end
    end

    class TuningJobCompletionCriteria
      def self.parse(map)
        data = Types::TuningJobCompletionCriteria.new
        data.target_objective_metric_value = Hearth::NumberHelper.deserialize(map['TargetObjectiveMetricValue'])
        return data
      end
    end

    class ResourceLimits
      def self.parse(map)
        data = Types::ResourceLimits.new
        data.max_number_of_training_jobs = map['MaxNumberOfTrainingJobs']
        data.max_parallel_training_jobs = map['MaxParallelTrainingJobs']
        return data
      end
    end

    # Operation Parser for DescribeImage
    class DescribeImage
      def self.parse(http_resp)
        data = Types::DescribeImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.description = map['Description']
        data.display_name = map['DisplayName']
        data.failure_reason = map['FailureReason']
        data.image_arn = map['ImageArn']
        data.image_name = map['ImageName']
        data.image_status = map['ImageStatus']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.role_arn = map['RoleArn']
        data
      end
    end

    # Operation Parser for DescribeImageVersion
    class DescribeImageVersion
      def self.parse(http_resp)
        data = Types::DescribeImageVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.base_image = map['BaseImage']
        data.container_image = map['ContainerImage']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.failure_reason = map['FailureReason']
        data.image_arn = map['ImageArn']
        data.image_version_arn = map['ImageVersionArn']
        data.image_version_status = map['ImageVersionStatus']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.version = map['Version']
        data
      end
    end

    # Operation Parser for DescribeInferenceRecommendationsJob
    class DescribeInferenceRecommendationsJob
      def self.parse(http_resp)
        data = Types::DescribeInferenceRecommendationsJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_name = map['JobName']
        data.job_description = map['JobDescription']
        data.job_type = map['JobType']
        data.job_arn = map['JobArn']
        data.role_arn = map['RoleArn']
        data.status = map['Status']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.completion_time = Time.at(map['CompletionTime'].to_i) if map['CompletionTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.failure_reason = map['FailureReason']
        data.input_config = (Parsers::RecommendationJobInputConfig.parse(map['InputConfig']) unless map['InputConfig'].nil?)
        data.stopping_conditions = (Parsers::RecommendationJobStoppingConditions.parse(map['StoppingConditions']) unless map['StoppingConditions'].nil?)
        data.inference_recommendations = (Parsers::InferenceRecommendations.parse(map['InferenceRecommendations']) unless map['InferenceRecommendations'].nil?)
        data
      end
    end

    class InferenceRecommendations
      def self.parse(list)
        list.map do |value|
          Parsers::InferenceRecommendation.parse(value) unless value.nil?
        end
      end
    end

    class InferenceRecommendation
      def self.parse(map)
        data = Types::InferenceRecommendation.new
        data.metrics = (Parsers::RecommendationMetrics.parse(map['Metrics']) unless map['Metrics'].nil?)
        data.endpoint_configuration = (Parsers::EndpointOutputConfiguration.parse(map['EndpointConfiguration']) unless map['EndpointConfiguration'].nil?)
        data.model_configuration = (Parsers::ModelConfiguration.parse(map['ModelConfiguration']) unless map['ModelConfiguration'].nil?)
        return data
      end
    end

    class ModelConfiguration
      def self.parse(map)
        data = Types::ModelConfiguration.new
        data.inference_specification_name = map['InferenceSpecificationName']
        data.environment_parameters = (Parsers::EnvironmentParameters.parse(map['EnvironmentParameters']) unless map['EnvironmentParameters'].nil?)
        return data
      end
    end

    class EnvironmentParameters
      def self.parse(list)
        list.map do |value|
          Parsers::EnvironmentParameter.parse(value) unless value.nil?
        end
      end
    end

    class EnvironmentParameter
      def self.parse(map)
        data = Types::EnvironmentParameter.new
        data.key = map['Key']
        data.value_type = map['ValueType']
        data.value = map['Value']
        return data
      end
    end

    class EndpointOutputConfiguration
      def self.parse(map)
        data = Types::EndpointOutputConfiguration.new
        data.endpoint_name = map['EndpointName']
        data.variant_name = map['VariantName']
        data.instance_type = map['InstanceType']
        data.initial_instance_count = map['InitialInstanceCount']
        return data
      end
    end

    class RecommendationMetrics
      def self.parse(map)
        data = Types::RecommendationMetrics.new
        data.cost_per_hour = Hearth::NumberHelper.deserialize(map['CostPerHour'])
        data.cost_per_inference = Hearth::NumberHelper.deserialize(map['CostPerInference'])
        data.max_invocations = map['MaxInvocations']
        data.model_latency = map['ModelLatency']
        return data
      end
    end

    class RecommendationJobStoppingConditions
      def self.parse(map)
        data = Types::RecommendationJobStoppingConditions.new
        data.max_invocations = map['MaxInvocations']
        data.model_latency_thresholds = (Parsers::ModelLatencyThresholds.parse(map['ModelLatencyThresholds']) unless map['ModelLatencyThresholds'].nil?)
        return data
      end
    end

    class ModelLatencyThresholds
      def self.parse(list)
        list.map do |value|
          Parsers::ModelLatencyThreshold.parse(value) unless value.nil?
        end
      end
    end

    class ModelLatencyThreshold
      def self.parse(map)
        data = Types::ModelLatencyThreshold.new
        data.percentile = map['Percentile']
        data.value_in_milliseconds = map['ValueInMilliseconds']
        return data
      end
    end

    class RecommendationJobInputConfig
      def self.parse(map)
        data = Types::RecommendationJobInputConfig.new
        data.model_package_version_arn = map['ModelPackageVersionArn']
        data.job_duration_in_seconds = map['JobDurationInSeconds']
        data.traffic_pattern = (Parsers::TrafficPattern.parse(map['TrafficPattern']) unless map['TrafficPattern'].nil?)
        data.resource_limit = (Parsers::RecommendationJobResourceLimit.parse(map['ResourceLimit']) unless map['ResourceLimit'].nil?)
        data.endpoint_configurations = (Parsers::EndpointInputConfigurations.parse(map['EndpointConfigurations']) unless map['EndpointConfigurations'].nil?)
        data.volume_kms_key_id = map['VolumeKmsKeyId']
        return data
      end
    end

    class EndpointInputConfigurations
      def self.parse(list)
        list.map do |value|
          Parsers::EndpointInputConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class EndpointInputConfiguration
      def self.parse(map)
        data = Types::EndpointInputConfiguration.new
        data.instance_type = map['InstanceType']
        data.inference_specification_name = map['InferenceSpecificationName']
        data.environment_parameter_ranges = (Parsers::EnvironmentParameterRanges.parse(map['EnvironmentParameterRanges']) unless map['EnvironmentParameterRanges'].nil?)
        return data
      end
    end

    class EnvironmentParameterRanges
      def self.parse(map)
        data = Types::EnvironmentParameterRanges.new
        data.categorical_parameter_ranges = (Parsers::CategoricalParameters.parse(map['CategoricalParameterRanges']) unless map['CategoricalParameterRanges'].nil?)
        return data
      end
    end

    class CategoricalParameters
      def self.parse(list)
        list.map do |value|
          Parsers::CategoricalParameter.parse(value) unless value.nil?
        end
      end
    end

    class CategoricalParameter
      def self.parse(map)
        data = Types::CategoricalParameter.new
        data.name = map['Name']
        data.value = (Parsers::CategoricalParameterRangeValues.parse(map['Value']) unless map['Value'].nil?)
        return data
      end
    end

    class CategoricalParameterRangeValues
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class RecommendationJobResourceLimit
      def self.parse(map)
        data = Types::RecommendationJobResourceLimit.new
        data.max_number_of_tests = map['MaxNumberOfTests']
        data.max_parallel_of_tests = map['MaxParallelOfTests']
        return data
      end
    end

    class TrafficPattern
      def self.parse(map)
        data = Types::TrafficPattern.new
        data.traffic_type = map['TrafficType']
        data.phases = (Parsers::Phases.parse(map['Phases']) unless map['Phases'].nil?)
        return data
      end
    end

    class Phases
      def self.parse(list)
        list.map do |value|
          Parsers::Phase.parse(value) unless value.nil?
        end
      end
    end

    class Phase
      def self.parse(map)
        data = Types::Phase.new
        data.initial_number_of_users = map['InitialNumberOfUsers']
        data.spawn_rate = map['SpawnRate']
        data.duration_in_seconds = map['DurationInSeconds']
        return data
      end
    end

    # Operation Parser for DescribeLabelingJob
    class DescribeLabelingJob
      def self.parse(http_resp)
        data = Types::DescribeLabelingJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.labeling_job_status = map['LabelingJobStatus']
        data.label_counters = (Parsers::LabelCounters.parse(map['LabelCounters']) unless map['LabelCounters'].nil?)
        data.failure_reason = map['FailureReason']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.job_reference_code = map['JobReferenceCode']
        data.labeling_job_name = map['LabelingJobName']
        data.labeling_job_arn = map['LabelingJobArn']
        data.label_attribute_name = map['LabelAttributeName']
        data.input_config = (Parsers::LabelingJobInputConfig.parse(map['InputConfig']) unless map['InputConfig'].nil?)
        data.output_config = (Parsers::LabelingJobOutputConfig.parse(map['OutputConfig']) unless map['OutputConfig'].nil?)
        data.role_arn = map['RoleArn']
        data.label_category_config_s3_uri = map['LabelCategoryConfigS3Uri']
        data.stopping_conditions = (Parsers::LabelingJobStoppingConditions.parse(map['StoppingConditions']) unless map['StoppingConditions'].nil?)
        data.labeling_job_algorithms_config = (Parsers::LabelingJobAlgorithmsConfig.parse(map['LabelingJobAlgorithmsConfig']) unless map['LabelingJobAlgorithmsConfig'].nil?)
        data.human_task_config = (Parsers::HumanTaskConfig.parse(map['HumanTaskConfig']) unless map['HumanTaskConfig'].nil?)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.labeling_job_output = (Parsers::LabelingJobOutput.parse(map['LabelingJobOutput']) unless map['LabelingJobOutput'].nil?)
        data
      end
    end

    class LabelingJobOutput
      def self.parse(map)
        data = Types::LabelingJobOutput.new
        data.output_dataset_s3_uri = map['OutputDatasetS3Uri']
        data.final_active_learning_model_arn = map['FinalActiveLearningModelArn']
        return data
      end
    end

    class HumanTaskConfig
      def self.parse(map)
        data = Types::HumanTaskConfig.new
        data.workteam_arn = map['WorkteamArn']
        data.ui_config = (Parsers::UiConfig.parse(map['UiConfig']) unless map['UiConfig'].nil?)
        data.pre_human_task_lambda_arn = map['PreHumanTaskLambdaArn']
        data.task_keywords = (Parsers::TaskKeywords.parse(map['TaskKeywords']) unless map['TaskKeywords'].nil?)
        data.task_title = map['TaskTitle']
        data.task_description = map['TaskDescription']
        data.number_of_human_workers_per_data_object = map['NumberOfHumanWorkersPerDataObject']
        data.task_time_limit_in_seconds = map['TaskTimeLimitInSeconds']
        data.task_availability_lifetime_in_seconds = map['TaskAvailabilityLifetimeInSeconds']
        data.max_concurrent_task_count = map['MaxConcurrentTaskCount']
        data.annotation_consolidation_config = (Parsers::AnnotationConsolidationConfig.parse(map['AnnotationConsolidationConfig']) unless map['AnnotationConsolidationConfig'].nil?)
        data.public_workforce_task_price = (Parsers::PublicWorkforceTaskPrice.parse(map['PublicWorkforceTaskPrice']) unless map['PublicWorkforceTaskPrice'].nil?)
        return data
      end
    end

    class AnnotationConsolidationConfig
      def self.parse(map)
        data = Types::AnnotationConsolidationConfig.new
        data.annotation_consolidation_lambda_arn = map['AnnotationConsolidationLambdaArn']
        return data
      end
    end

    class TaskKeywords
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class UiConfig
      def self.parse(map)
        data = Types::UiConfig.new
        data.ui_template_s3_uri = map['UiTemplateS3Uri']
        data.human_task_ui_arn = map['HumanTaskUiArn']
        return data
      end
    end

    class LabelingJobAlgorithmsConfig
      def self.parse(map)
        data = Types::LabelingJobAlgorithmsConfig.new
        data.labeling_job_algorithm_specification_arn = map['LabelingJobAlgorithmSpecificationArn']
        data.initial_active_learning_model_arn = map['InitialActiveLearningModelArn']
        data.labeling_job_resource_config = (Parsers::LabelingJobResourceConfig.parse(map['LabelingJobResourceConfig']) unless map['LabelingJobResourceConfig'].nil?)
        return data
      end
    end

    class LabelingJobResourceConfig
      def self.parse(map)
        data = Types::LabelingJobResourceConfig.new
        data.volume_kms_key_id = map['VolumeKmsKeyId']
        return data
      end
    end

    class LabelingJobStoppingConditions
      def self.parse(map)
        data = Types::LabelingJobStoppingConditions.new
        data.max_human_labeled_object_count = map['MaxHumanLabeledObjectCount']
        data.max_percentage_of_input_dataset_labeled = map['MaxPercentageOfInputDatasetLabeled']
        return data
      end
    end

    class LabelingJobOutputConfig
      def self.parse(map)
        data = Types::LabelingJobOutputConfig.new
        data.s3_output_path = map['S3OutputPath']
        data.kms_key_id = map['KmsKeyId']
        data.sns_topic_arn = map['SnsTopicArn']
        return data
      end
    end

    class LabelingJobInputConfig
      def self.parse(map)
        data = Types::LabelingJobInputConfig.new
        data.data_source = (Parsers::LabelingJobDataSource.parse(map['DataSource']) unless map['DataSource'].nil?)
        data.data_attributes = (Parsers::LabelingJobDataAttributes.parse(map['DataAttributes']) unless map['DataAttributes'].nil?)
        return data
      end
    end

    class LabelingJobDataAttributes
      def self.parse(map)
        data = Types::LabelingJobDataAttributes.new
        data.content_classifiers = (Parsers::ContentClassifiers.parse(map['ContentClassifiers']) unless map['ContentClassifiers'].nil?)
        return data
      end
    end

    class ContentClassifiers
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class LabelingJobDataSource
      def self.parse(map)
        data = Types::LabelingJobDataSource.new
        data.s3_data_source = (Parsers::LabelingJobS3DataSource.parse(map['S3DataSource']) unless map['S3DataSource'].nil?)
        data.sns_data_source = (Parsers::LabelingJobSnsDataSource.parse(map['SnsDataSource']) unless map['SnsDataSource'].nil?)
        return data
      end
    end

    class LabelingJobSnsDataSource
      def self.parse(map)
        data = Types::LabelingJobSnsDataSource.new
        data.sns_topic_arn = map['SnsTopicArn']
        return data
      end
    end

    class LabelingJobS3DataSource
      def self.parse(map)
        data = Types::LabelingJobS3DataSource.new
        data.manifest_s3_uri = map['ManifestS3Uri']
        return data
      end
    end

    class LabelCounters
      def self.parse(map)
        data = Types::LabelCounters.new
        data.total_labeled = map['TotalLabeled']
        data.human_labeled = map['HumanLabeled']
        data.machine_labeled = map['MachineLabeled']
        data.failed_non_retryable_error = map['FailedNonRetryableError']
        data.unlabeled = map['Unlabeled']
        return data
      end
    end

    # Operation Parser for DescribeLineageGroup
    class DescribeLineageGroup
      def self.parse(http_resp)
        data = Types::DescribeLineageGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.lineage_group_name = map['LineageGroupName']
        data.lineage_group_arn = map['LineageGroupArn']
        data.display_name = map['DisplayName']
        data.description = map['Description']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_modified_by = (Parsers::UserContext.parse(map['LastModifiedBy']) unless map['LastModifiedBy'].nil?)
        data
      end
    end

    # Operation Parser for DescribeModel
    class DescribeModel
      def self.parse(http_resp)
        data = Types::DescribeModelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_name = map['ModelName']
        data.primary_container = (Parsers::ContainerDefinition.parse(map['PrimaryContainer']) unless map['PrimaryContainer'].nil?)
        data.containers = (Parsers::ContainerDefinitionList.parse(map['Containers']) unless map['Containers'].nil?)
        data.inference_execution_config = (Parsers::InferenceExecutionConfig.parse(map['InferenceExecutionConfig']) unless map['InferenceExecutionConfig'].nil?)
        data.execution_role_arn = map['ExecutionRoleArn']
        data.vpc_config = (Parsers::VpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.model_arn = map['ModelArn']
        data.enable_network_isolation = map['EnableNetworkIsolation']
        data
      end
    end

    class InferenceExecutionConfig
      def self.parse(map)
        data = Types::InferenceExecutionConfig.new
        data.mode = map['Mode']
        return data
      end
    end

    class ContainerDefinitionList
      def self.parse(list)
        list.map do |value|
          Parsers::ContainerDefinition.parse(value) unless value.nil?
        end
      end
    end

    class ContainerDefinition
      def self.parse(map)
        data = Types::ContainerDefinition.new
        data.container_hostname = map['ContainerHostname']
        data.image = map['Image']
        data.image_config = (Parsers::ImageConfig.parse(map['ImageConfig']) unless map['ImageConfig'].nil?)
        data.mode = map['Mode']
        data.model_data_url = map['ModelDataUrl']
        data.environment = (Parsers::EnvironmentMap.parse(map['Environment']) unless map['Environment'].nil?)
        data.model_package_name = map['ModelPackageName']
        data.inference_specification_name = map['InferenceSpecificationName']
        data.multi_model_config = (Parsers::MultiModelConfig.parse(map['MultiModelConfig']) unless map['MultiModelConfig'].nil?)
        return data
      end
    end

    class MultiModelConfig
      def self.parse(map)
        data = Types::MultiModelConfig.new
        data.model_cache_setting = map['ModelCacheSetting']
        return data
      end
    end

    class ImageConfig
      def self.parse(map)
        data = Types::ImageConfig.new
        data.repository_access_mode = map['RepositoryAccessMode']
        data.repository_auth_config = (Parsers::RepositoryAuthConfig.parse(map['RepositoryAuthConfig']) unless map['RepositoryAuthConfig'].nil?)
        return data
      end
    end

    class RepositoryAuthConfig
      def self.parse(map)
        data = Types::RepositoryAuthConfig.new
        data.repository_credentials_provider_arn = map['RepositoryCredentialsProviderArn']
        return data
      end
    end

    # Operation Parser for DescribeModelBiasJobDefinition
    class DescribeModelBiasJobDefinition
      def self.parse(http_resp)
        data = Types::DescribeModelBiasJobDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_definition_arn = map['JobDefinitionArn']
        data.job_definition_name = map['JobDefinitionName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.model_bias_baseline_config = (Parsers::ModelBiasBaselineConfig.parse(map['ModelBiasBaselineConfig']) unless map['ModelBiasBaselineConfig'].nil?)
        data.model_bias_app_specification = (Parsers::ModelBiasAppSpecification.parse(map['ModelBiasAppSpecification']) unless map['ModelBiasAppSpecification'].nil?)
        data.model_bias_job_input = (Parsers::ModelBiasJobInput.parse(map['ModelBiasJobInput']) unless map['ModelBiasJobInput'].nil?)
        data.model_bias_job_output_config = (Parsers::MonitoringOutputConfig.parse(map['ModelBiasJobOutputConfig']) unless map['ModelBiasJobOutputConfig'].nil?)
        data.job_resources = (Parsers::MonitoringResources.parse(map['JobResources']) unless map['JobResources'].nil?)
        data.network_config = (Parsers::MonitoringNetworkConfig.parse(map['NetworkConfig']) unless map['NetworkConfig'].nil?)
        data.role_arn = map['RoleArn']
        data.stopping_condition = (Parsers::MonitoringStoppingCondition.parse(map['StoppingCondition']) unless map['StoppingCondition'].nil?)
        data
      end
    end

    class ModelBiasJobInput
      def self.parse(map)
        data = Types::ModelBiasJobInput.new
        data.endpoint_input = (Parsers::EndpointInput.parse(map['EndpointInput']) unless map['EndpointInput'].nil?)
        data.ground_truth_s3_input = (Parsers::MonitoringGroundTruthS3Input.parse(map['GroundTruthS3Input']) unless map['GroundTruthS3Input'].nil?)
        return data
      end
    end

    class MonitoringGroundTruthS3Input
      def self.parse(map)
        data = Types::MonitoringGroundTruthS3Input.new
        data.s3_uri = map['S3Uri']
        return data
      end
    end

    class ModelBiasAppSpecification
      def self.parse(map)
        data = Types::ModelBiasAppSpecification.new
        data.image_uri = map['ImageUri']
        data.config_uri = map['ConfigUri']
        data.environment = (Parsers::MonitoringEnvironmentMap.parse(map['Environment']) unless map['Environment'].nil?)
        return data
      end
    end

    class ModelBiasBaselineConfig
      def self.parse(map)
        data = Types::ModelBiasBaselineConfig.new
        data.baselining_job_name = map['BaseliningJobName']
        data.constraints_resource = (Parsers::MonitoringConstraintsResource.parse(map['ConstraintsResource']) unless map['ConstraintsResource'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeModelExplainabilityJobDefinition
    class DescribeModelExplainabilityJobDefinition
      def self.parse(http_resp)
        data = Types::DescribeModelExplainabilityJobDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_definition_arn = map['JobDefinitionArn']
        data.job_definition_name = map['JobDefinitionName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.model_explainability_baseline_config = (Parsers::ModelExplainabilityBaselineConfig.parse(map['ModelExplainabilityBaselineConfig']) unless map['ModelExplainabilityBaselineConfig'].nil?)
        data.model_explainability_app_specification = (Parsers::ModelExplainabilityAppSpecification.parse(map['ModelExplainabilityAppSpecification']) unless map['ModelExplainabilityAppSpecification'].nil?)
        data.model_explainability_job_input = (Parsers::ModelExplainabilityJobInput.parse(map['ModelExplainabilityJobInput']) unless map['ModelExplainabilityJobInput'].nil?)
        data.model_explainability_job_output_config = (Parsers::MonitoringOutputConfig.parse(map['ModelExplainabilityJobOutputConfig']) unless map['ModelExplainabilityJobOutputConfig'].nil?)
        data.job_resources = (Parsers::MonitoringResources.parse(map['JobResources']) unless map['JobResources'].nil?)
        data.network_config = (Parsers::MonitoringNetworkConfig.parse(map['NetworkConfig']) unless map['NetworkConfig'].nil?)
        data.role_arn = map['RoleArn']
        data.stopping_condition = (Parsers::MonitoringStoppingCondition.parse(map['StoppingCondition']) unless map['StoppingCondition'].nil?)
        data
      end
    end

    class ModelExplainabilityJobInput
      def self.parse(map)
        data = Types::ModelExplainabilityJobInput.new
        data.endpoint_input = (Parsers::EndpointInput.parse(map['EndpointInput']) unless map['EndpointInput'].nil?)
        return data
      end
    end

    class ModelExplainabilityAppSpecification
      def self.parse(map)
        data = Types::ModelExplainabilityAppSpecification.new
        data.image_uri = map['ImageUri']
        data.config_uri = map['ConfigUri']
        data.environment = (Parsers::MonitoringEnvironmentMap.parse(map['Environment']) unless map['Environment'].nil?)
        return data
      end
    end

    class ModelExplainabilityBaselineConfig
      def self.parse(map)
        data = Types::ModelExplainabilityBaselineConfig.new
        data.baselining_job_name = map['BaseliningJobName']
        data.constraints_resource = (Parsers::MonitoringConstraintsResource.parse(map['ConstraintsResource']) unless map['ConstraintsResource'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeModelPackage
    class DescribeModelPackage
      def self.parse(http_resp)
        data = Types::DescribeModelPackageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_package_name = map['ModelPackageName']
        data.model_package_group_name = map['ModelPackageGroupName']
        data.model_package_version = map['ModelPackageVersion']
        data.model_package_arn = map['ModelPackageArn']
        data.model_package_description = map['ModelPackageDescription']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.inference_specification = (Parsers::InferenceSpecification.parse(map['InferenceSpecification']) unless map['InferenceSpecification'].nil?)
        data.source_algorithm_specification = (Parsers::SourceAlgorithmSpecification.parse(map['SourceAlgorithmSpecification']) unless map['SourceAlgorithmSpecification'].nil?)
        data.validation_specification = (Parsers::ModelPackageValidationSpecification.parse(map['ValidationSpecification']) unless map['ValidationSpecification'].nil?)
        data.model_package_status = map['ModelPackageStatus']
        data.model_package_status_details = (Parsers::ModelPackageStatusDetails.parse(map['ModelPackageStatusDetails']) unless map['ModelPackageStatusDetails'].nil?)
        data.certify_for_marketplace = map['CertifyForMarketplace']
        data.model_approval_status = map['ModelApprovalStatus']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.metadata_properties = (Parsers::MetadataProperties.parse(map['MetadataProperties']) unless map['MetadataProperties'].nil?)
        data.model_metrics = (Parsers::ModelMetrics.parse(map['ModelMetrics']) unless map['ModelMetrics'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_modified_by = (Parsers::UserContext.parse(map['LastModifiedBy']) unless map['LastModifiedBy'].nil?)
        data.approval_description = map['ApprovalDescription']
        data.customer_metadata_properties = (Parsers::CustomerMetadataMap.parse(map['CustomerMetadataProperties']) unless map['CustomerMetadataProperties'].nil?)
        data.drift_check_baselines = (Parsers::DriftCheckBaselines.parse(map['DriftCheckBaselines']) unless map['DriftCheckBaselines'].nil?)
        data.domain = map['Domain']
        data.task = map['Task']
        data.sample_payload_url = map['SamplePayloadUrl']
        data.additional_inference_specifications = (Parsers::AdditionalInferenceSpecifications.parse(map['AdditionalInferenceSpecifications']) unless map['AdditionalInferenceSpecifications'].nil?)
        data
      end
    end

    class AdditionalInferenceSpecifications
      def self.parse(list)
        list.map do |value|
          Parsers::AdditionalInferenceSpecificationDefinition.parse(value) unless value.nil?
        end
      end
    end

    class AdditionalInferenceSpecificationDefinition
      def self.parse(map)
        data = Types::AdditionalInferenceSpecificationDefinition.new
        data.name = map['Name']
        data.description = map['Description']
        data.containers = (Parsers::ModelPackageContainerDefinitionList.parse(map['Containers']) unless map['Containers'].nil?)
        data.supported_transform_instance_types = (Parsers::TransformInstanceTypes.parse(map['SupportedTransformInstanceTypes']) unless map['SupportedTransformInstanceTypes'].nil?)
        data.supported_realtime_inference_instance_types = (Parsers::RealtimeInferenceInstanceTypes.parse(map['SupportedRealtimeInferenceInstanceTypes']) unless map['SupportedRealtimeInferenceInstanceTypes'].nil?)
        data.supported_content_types = (Parsers::ContentTypes.parse(map['SupportedContentTypes']) unless map['SupportedContentTypes'].nil?)
        data.supported_response_mime_types = (Parsers::ResponseMIMETypes.parse(map['SupportedResponseMIMETypes']) unless map['SupportedResponseMIMETypes'].nil?)
        return data
      end
    end

    class DriftCheckBaselines
      def self.parse(map)
        data = Types::DriftCheckBaselines.new
        data.bias = (Parsers::DriftCheckBias.parse(map['Bias']) unless map['Bias'].nil?)
        data.explainability = (Parsers::DriftCheckExplainability.parse(map['Explainability']) unless map['Explainability'].nil?)
        data.model_quality = (Parsers::DriftCheckModelQuality.parse(map['ModelQuality']) unless map['ModelQuality'].nil?)
        data.model_data_quality = (Parsers::DriftCheckModelDataQuality.parse(map['ModelDataQuality']) unless map['ModelDataQuality'].nil?)
        return data
      end
    end

    class DriftCheckModelDataQuality
      def self.parse(map)
        data = Types::DriftCheckModelDataQuality.new
        data.statistics = (Parsers::MetricsSource.parse(map['Statistics']) unless map['Statistics'].nil?)
        data.constraints = (Parsers::MetricsSource.parse(map['Constraints']) unless map['Constraints'].nil?)
        return data
      end
    end

    class MetricsSource
      def self.parse(map)
        data = Types::MetricsSource.new
        data.content_type = map['ContentType']
        data.content_digest = map['ContentDigest']
        data.s3_uri = map['S3Uri']
        return data
      end
    end

    class DriftCheckModelQuality
      def self.parse(map)
        data = Types::DriftCheckModelQuality.new
        data.statistics = (Parsers::MetricsSource.parse(map['Statistics']) unless map['Statistics'].nil?)
        data.constraints = (Parsers::MetricsSource.parse(map['Constraints']) unless map['Constraints'].nil?)
        return data
      end
    end

    class DriftCheckExplainability
      def self.parse(map)
        data = Types::DriftCheckExplainability.new
        data.constraints = (Parsers::MetricsSource.parse(map['Constraints']) unless map['Constraints'].nil?)
        data.config_file = (Parsers::FileSource.parse(map['ConfigFile']) unless map['ConfigFile'].nil?)
        return data
      end
    end

    class FileSource
      def self.parse(map)
        data = Types::FileSource.new
        data.content_type = map['ContentType']
        data.content_digest = map['ContentDigest']
        data.s3_uri = map['S3Uri']
        return data
      end
    end

    class DriftCheckBias
      def self.parse(map)
        data = Types::DriftCheckBias.new
        data.config_file = (Parsers::FileSource.parse(map['ConfigFile']) unless map['ConfigFile'].nil?)
        data.pre_training_constraints = (Parsers::MetricsSource.parse(map['PreTrainingConstraints']) unless map['PreTrainingConstraints'].nil?)
        data.post_training_constraints = (Parsers::MetricsSource.parse(map['PostTrainingConstraints']) unless map['PostTrainingConstraints'].nil?)
        return data
      end
    end

    class CustomerMetadataMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ModelMetrics
      def self.parse(map)
        data = Types::ModelMetrics.new
        data.model_quality = (Parsers::ModelQuality.parse(map['ModelQuality']) unless map['ModelQuality'].nil?)
        data.model_data_quality = (Parsers::ModelDataQuality.parse(map['ModelDataQuality']) unless map['ModelDataQuality'].nil?)
        data.bias = (Parsers::Bias.parse(map['Bias']) unless map['Bias'].nil?)
        data.explainability = (Parsers::Explainability.parse(map['Explainability']) unless map['Explainability'].nil?)
        return data
      end
    end

    class Explainability
      def self.parse(map)
        data = Types::Explainability.new
        data.report = (Parsers::MetricsSource.parse(map['Report']) unless map['Report'].nil?)
        return data
      end
    end

    class Bias
      def self.parse(map)
        data = Types::Bias.new
        data.report = (Parsers::MetricsSource.parse(map['Report']) unless map['Report'].nil?)
        data.pre_training_report = (Parsers::MetricsSource.parse(map['PreTrainingReport']) unless map['PreTrainingReport'].nil?)
        data.post_training_report = (Parsers::MetricsSource.parse(map['PostTrainingReport']) unless map['PostTrainingReport'].nil?)
        return data
      end
    end

    class ModelDataQuality
      def self.parse(map)
        data = Types::ModelDataQuality.new
        data.statistics = (Parsers::MetricsSource.parse(map['Statistics']) unless map['Statistics'].nil?)
        data.constraints = (Parsers::MetricsSource.parse(map['Constraints']) unless map['Constraints'].nil?)
        return data
      end
    end

    class ModelQuality
      def self.parse(map)
        data = Types::ModelQuality.new
        data.statistics = (Parsers::MetricsSource.parse(map['Statistics']) unless map['Statistics'].nil?)
        data.constraints = (Parsers::MetricsSource.parse(map['Constraints']) unless map['Constraints'].nil?)
        return data
      end
    end

    class ModelPackageStatusDetails
      def self.parse(map)
        data = Types::ModelPackageStatusDetails.new
        data.validation_statuses = (Parsers::ModelPackageStatusItemList.parse(map['ValidationStatuses']) unless map['ValidationStatuses'].nil?)
        data.image_scan_statuses = (Parsers::ModelPackageStatusItemList.parse(map['ImageScanStatuses']) unless map['ImageScanStatuses'].nil?)
        return data
      end
    end

    class ModelPackageStatusItemList
      def self.parse(list)
        list.map do |value|
          Parsers::ModelPackageStatusItem.parse(value) unless value.nil?
        end
      end
    end

    class ModelPackageStatusItem
      def self.parse(map)
        data = Types::ModelPackageStatusItem.new
        data.name = map['Name']
        data.status = map['Status']
        data.failure_reason = map['FailureReason']
        return data
      end
    end

    class ModelPackageValidationSpecification
      def self.parse(map)
        data = Types::ModelPackageValidationSpecification.new
        data.validation_role = map['ValidationRole']
        data.validation_profiles = (Parsers::ModelPackageValidationProfiles.parse(map['ValidationProfiles']) unless map['ValidationProfiles'].nil?)
        return data
      end
    end

    class ModelPackageValidationProfiles
      def self.parse(list)
        list.map do |value|
          Parsers::ModelPackageValidationProfile.parse(value) unless value.nil?
        end
      end
    end

    class ModelPackageValidationProfile
      def self.parse(map)
        data = Types::ModelPackageValidationProfile.new
        data.profile_name = map['ProfileName']
        data.transform_job_definition = (Parsers::TransformJobDefinition.parse(map['TransformJobDefinition']) unless map['TransformJobDefinition'].nil?)
        return data
      end
    end

    class SourceAlgorithmSpecification
      def self.parse(map)
        data = Types::SourceAlgorithmSpecification.new
        data.source_algorithms = (Parsers::SourceAlgorithmList.parse(map['SourceAlgorithms']) unless map['SourceAlgorithms'].nil?)
        return data
      end
    end

    class SourceAlgorithmList
      def self.parse(list)
        list.map do |value|
          Parsers::SourceAlgorithm.parse(value) unless value.nil?
        end
      end
    end

    class SourceAlgorithm
      def self.parse(map)
        data = Types::SourceAlgorithm.new
        data.model_data_url = map['ModelDataUrl']
        data.algorithm_name = map['AlgorithmName']
        return data
      end
    end

    # Operation Parser for DescribeModelPackageGroup
    class DescribeModelPackageGroup
      def self.parse(http_resp)
        data = Types::DescribeModelPackageGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_package_group_name = map['ModelPackageGroupName']
        data.model_package_group_arn = map['ModelPackageGroupArn']
        data.model_package_group_description = map['ModelPackageGroupDescription']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.model_package_group_status = map['ModelPackageGroupStatus']
        data
      end
    end

    # Operation Parser for DescribeModelQualityJobDefinition
    class DescribeModelQualityJobDefinition
      def self.parse(http_resp)
        data = Types::DescribeModelQualityJobDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_definition_arn = map['JobDefinitionArn']
        data.job_definition_name = map['JobDefinitionName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.model_quality_baseline_config = (Parsers::ModelQualityBaselineConfig.parse(map['ModelQualityBaselineConfig']) unless map['ModelQualityBaselineConfig'].nil?)
        data.model_quality_app_specification = (Parsers::ModelQualityAppSpecification.parse(map['ModelQualityAppSpecification']) unless map['ModelQualityAppSpecification'].nil?)
        data.model_quality_job_input = (Parsers::ModelQualityJobInput.parse(map['ModelQualityJobInput']) unless map['ModelQualityJobInput'].nil?)
        data.model_quality_job_output_config = (Parsers::MonitoringOutputConfig.parse(map['ModelQualityJobOutputConfig']) unless map['ModelQualityJobOutputConfig'].nil?)
        data.job_resources = (Parsers::MonitoringResources.parse(map['JobResources']) unless map['JobResources'].nil?)
        data.network_config = (Parsers::MonitoringNetworkConfig.parse(map['NetworkConfig']) unless map['NetworkConfig'].nil?)
        data.role_arn = map['RoleArn']
        data.stopping_condition = (Parsers::MonitoringStoppingCondition.parse(map['StoppingCondition']) unless map['StoppingCondition'].nil?)
        data
      end
    end

    class ModelQualityJobInput
      def self.parse(map)
        data = Types::ModelQualityJobInput.new
        data.endpoint_input = (Parsers::EndpointInput.parse(map['EndpointInput']) unless map['EndpointInput'].nil?)
        data.ground_truth_s3_input = (Parsers::MonitoringGroundTruthS3Input.parse(map['GroundTruthS3Input']) unless map['GroundTruthS3Input'].nil?)
        return data
      end
    end

    class ModelQualityAppSpecification
      def self.parse(map)
        data = Types::ModelQualityAppSpecification.new
        data.image_uri = map['ImageUri']
        data.container_entrypoint = (Parsers::ContainerEntrypoint.parse(map['ContainerEntrypoint']) unless map['ContainerEntrypoint'].nil?)
        data.container_arguments = (Parsers::MonitoringContainerArguments.parse(map['ContainerArguments']) unless map['ContainerArguments'].nil?)
        data.record_preprocessor_source_uri = map['RecordPreprocessorSourceUri']
        data.post_analytics_processor_source_uri = map['PostAnalyticsProcessorSourceUri']
        data.problem_type = map['ProblemType']
        data.environment = (Parsers::MonitoringEnvironmentMap.parse(map['Environment']) unless map['Environment'].nil?)
        return data
      end
    end

    class ModelQualityBaselineConfig
      def self.parse(map)
        data = Types::ModelQualityBaselineConfig.new
        data.baselining_job_name = map['BaseliningJobName']
        data.constraints_resource = (Parsers::MonitoringConstraintsResource.parse(map['ConstraintsResource']) unless map['ConstraintsResource'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeMonitoringSchedule
    class DescribeMonitoringSchedule
      def self.parse(http_resp)
        data = Types::DescribeMonitoringScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.monitoring_schedule_arn = map['MonitoringScheduleArn']
        data.monitoring_schedule_name = map['MonitoringScheduleName']
        data.monitoring_schedule_status = map['MonitoringScheduleStatus']
        data.monitoring_type = map['MonitoringType']
        data.failure_reason = map['FailureReason']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.monitoring_schedule_config = (Parsers::MonitoringScheduleConfig.parse(map['MonitoringScheduleConfig']) unless map['MonitoringScheduleConfig'].nil?)
        data.endpoint_name = map['EndpointName']
        data.last_monitoring_execution_summary = (Parsers::MonitoringExecutionSummary.parse(map['LastMonitoringExecutionSummary']) unless map['LastMonitoringExecutionSummary'].nil?)
        data
      end
    end

    class MonitoringExecutionSummary
      def self.parse(map)
        data = Types::MonitoringExecutionSummary.new
        data.monitoring_schedule_name = map['MonitoringScheduleName']
        data.scheduled_time = Time.at(map['ScheduledTime'].to_i) if map['ScheduledTime']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.monitoring_execution_status = map['MonitoringExecutionStatus']
        data.processing_job_arn = map['ProcessingJobArn']
        data.endpoint_name = map['EndpointName']
        data.failure_reason = map['FailureReason']
        data.monitoring_job_definition_name = map['MonitoringJobDefinitionName']
        data.monitoring_type = map['MonitoringType']
        return data
      end
    end

    class MonitoringScheduleConfig
      def self.parse(map)
        data = Types::MonitoringScheduleConfig.new
        data.schedule_config = (Parsers::ScheduleConfig.parse(map['ScheduleConfig']) unless map['ScheduleConfig'].nil?)
        data.monitoring_job_definition = (Parsers::MonitoringJobDefinition.parse(map['MonitoringJobDefinition']) unless map['MonitoringJobDefinition'].nil?)
        data.monitoring_job_definition_name = map['MonitoringJobDefinitionName']
        data.monitoring_type = map['MonitoringType']
        return data
      end
    end

    class MonitoringJobDefinition
      def self.parse(map)
        data = Types::MonitoringJobDefinition.new
        data.baseline_config = (Parsers::MonitoringBaselineConfig.parse(map['BaselineConfig']) unless map['BaselineConfig'].nil?)
        data.monitoring_inputs = (Parsers::MonitoringInputs.parse(map['MonitoringInputs']) unless map['MonitoringInputs'].nil?)
        data.monitoring_output_config = (Parsers::MonitoringOutputConfig.parse(map['MonitoringOutputConfig']) unless map['MonitoringOutputConfig'].nil?)
        data.monitoring_resources = (Parsers::MonitoringResources.parse(map['MonitoringResources']) unless map['MonitoringResources'].nil?)
        data.monitoring_app_specification = (Parsers::MonitoringAppSpecification.parse(map['MonitoringAppSpecification']) unless map['MonitoringAppSpecification'].nil?)
        data.stopping_condition = (Parsers::MonitoringStoppingCondition.parse(map['StoppingCondition']) unless map['StoppingCondition'].nil?)
        data.environment = (Parsers::MonitoringEnvironmentMap.parse(map['Environment']) unless map['Environment'].nil?)
        data.network_config = (Parsers::NetworkConfig.parse(map['NetworkConfig']) unless map['NetworkConfig'].nil?)
        data.role_arn = map['RoleArn']
        return data
      end
    end

    class NetworkConfig
      def self.parse(map)
        data = Types::NetworkConfig.new
        data.enable_inter_container_traffic_encryption = map['EnableInterContainerTrafficEncryption']
        data.enable_network_isolation = map['EnableNetworkIsolation']
        data.vpc_config = (Parsers::VpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        return data
      end
    end

    class MonitoringAppSpecification
      def self.parse(map)
        data = Types::MonitoringAppSpecification.new
        data.image_uri = map['ImageUri']
        data.container_entrypoint = (Parsers::ContainerEntrypoint.parse(map['ContainerEntrypoint']) unless map['ContainerEntrypoint'].nil?)
        data.container_arguments = (Parsers::MonitoringContainerArguments.parse(map['ContainerArguments']) unless map['ContainerArguments'].nil?)
        data.record_preprocessor_source_uri = map['RecordPreprocessorSourceUri']
        data.post_analytics_processor_source_uri = map['PostAnalyticsProcessorSourceUri']
        return data
      end
    end

    class MonitoringInputs
      def self.parse(list)
        list.map do |value|
          Parsers::MonitoringInput.parse(value) unless value.nil?
        end
      end
    end

    class MonitoringInput
      def self.parse(map)
        data = Types::MonitoringInput.new
        data.endpoint_input = (Parsers::EndpointInput.parse(map['EndpointInput']) unless map['EndpointInput'].nil?)
        return data
      end
    end

    class MonitoringBaselineConfig
      def self.parse(map)
        data = Types::MonitoringBaselineConfig.new
        data.baselining_job_name = map['BaseliningJobName']
        data.constraints_resource = (Parsers::MonitoringConstraintsResource.parse(map['ConstraintsResource']) unless map['ConstraintsResource'].nil?)
        data.statistics_resource = (Parsers::MonitoringStatisticsResource.parse(map['StatisticsResource']) unless map['StatisticsResource'].nil?)
        return data
      end
    end

    class ScheduleConfig
      def self.parse(map)
        data = Types::ScheduleConfig.new
        data.schedule_expression = map['ScheduleExpression']
        return data
      end
    end

    # Operation Parser for DescribeNotebookInstance
    class DescribeNotebookInstance
      def self.parse(http_resp)
        data = Types::DescribeNotebookInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.notebook_instance_arn = map['NotebookInstanceArn']
        data.notebook_instance_name = map['NotebookInstanceName']
        data.notebook_instance_status = map['NotebookInstanceStatus']
        data.failure_reason = map['FailureReason']
        data.url = map['Url']
        data.instance_type = map['InstanceType']
        data.subnet_id = map['SubnetId']
        data.security_groups = (Parsers::SecurityGroupIds.parse(map['SecurityGroups']) unless map['SecurityGroups'].nil?)
        data.role_arn = map['RoleArn']
        data.kms_key_id = map['KmsKeyId']
        data.network_interface_id = map['NetworkInterfaceId']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.notebook_instance_lifecycle_config_name = map['NotebookInstanceLifecycleConfigName']
        data.direct_internet_access = map['DirectInternetAccess']
        data.volume_size_in_gb = map['VolumeSizeInGB']
        data.accelerator_types = (Parsers::NotebookInstanceAcceleratorTypes.parse(map['AcceleratorTypes']) unless map['AcceleratorTypes'].nil?)
        data.default_code_repository = map['DefaultCodeRepository']
        data.additional_code_repositories = (Parsers::AdditionalCodeRepositoryNamesOrUrls.parse(map['AdditionalCodeRepositories']) unless map['AdditionalCodeRepositories'].nil?)
        data.root_access = map['RootAccess']
        data.platform_identifier = map['PlatformIdentifier']
        data.instance_metadata_service_configuration = (Parsers::InstanceMetadataServiceConfiguration.parse(map['InstanceMetadataServiceConfiguration']) unless map['InstanceMetadataServiceConfiguration'].nil?)
        data
      end
    end

    class InstanceMetadataServiceConfiguration
      def self.parse(map)
        data = Types::InstanceMetadataServiceConfiguration.new
        data.minimum_instance_metadata_service_version = map['MinimumInstanceMetadataServiceVersion']
        return data
      end
    end

    class AdditionalCodeRepositoryNamesOrUrls
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class NotebookInstanceAcceleratorTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeNotebookInstanceLifecycleConfig
    class DescribeNotebookInstanceLifecycleConfig
      def self.parse(http_resp)
        data = Types::DescribeNotebookInstanceLifecycleConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.notebook_instance_lifecycle_config_arn = map['NotebookInstanceLifecycleConfigArn']
        data.notebook_instance_lifecycle_config_name = map['NotebookInstanceLifecycleConfigName']
        data.on_create = (Parsers::NotebookInstanceLifecycleConfigList.parse(map['OnCreate']) unless map['OnCreate'].nil?)
        data.on_start = (Parsers::NotebookInstanceLifecycleConfigList.parse(map['OnStart']) unless map['OnStart'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data
      end
    end

    class NotebookInstanceLifecycleConfigList
      def self.parse(list)
        list.map do |value|
          Parsers::NotebookInstanceLifecycleHook.parse(value) unless value.nil?
        end
      end
    end

    class NotebookInstanceLifecycleHook
      def self.parse(map)
        data = Types::NotebookInstanceLifecycleHook.new
        data.content = map['Content']
        return data
      end
    end

    # Operation Parser for DescribePipeline
    class DescribePipeline
      def self.parse(http_resp)
        data = Types::DescribePipelineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_arn = map['PipelineArn']
        data.pipeline_name = map['PipelineName']
        data.pipeline_display_name = map['PipelineDisplayName']
        data.pipeline_definition = map['PipelineDefinition']
        data.pipeline_description = map['PipelineDescription']
        data.role_arn = map['RoleArn']
        data.pipeline_status = map['PipelineStatus']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_run_time = Time.at(map['LastRunTime'].to_i) if map['LastRunTime']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.last_modified_by = (Parsers::UserContext.parse(map['LastModifiedBy']) unless map['LastModifiedBy'].nil?)
        data.parallelism_configuration = (Parsers::ParallelismConfiguration.parse(map['ParallelismConfiguration']) unless map['ParallelismConfiguration'].nil?)
        data
      end
    end

    class ParallelismConfiguration
      def self.parse(map)
        data = Types::ParallelismConfiguration.new
        data.max_parallel_execution_steps = map['MaxParallelExecutionSteps']
        return data
      end
    end

    # Operation Parser for DescribePipelineDefinitionForExecution
    class DescribePipelineDefinitionForExecution
      def self.parse(http_resp)
        data = Types::DescribePipelineDefinitionForExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_definition = map['PipelineDefinition']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data
      end
    end

    # Operation Parser for DescribePipelineExecution
    class DescribePipelineExecution
      def self.parse(http_resp)
        data = Types::DescribePipelineExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_arn = map['PipelineArn']
        data.pipeline_execution_arn = map['PipelineExecutionArn']
        data.pipeline_execution_display_name = map['PipelineExecutionDisplayName']
        data.pipeline_execution_status = map['PipelineExecutionStatus']
        data.pipeline_execution_description = map['PipelineExecutionDescription']
        data.pipeline_experiment_config = (Parsers::PipelineExperimentConfig.parse(map['PipelineExperimentConfig']) unless map['PipelineExperimentConfig'].nil?)
        data.failure_reason = map['FailureReason']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.last_modified_by = (Parsers::UserContext.parse(map['LastModifiedBy']) unless map['LastModifiedBy'].nil?)
        data.parallelism_configuration = (Parsers::ParallelismConfiguration.parse(map['ParallelismConfiguration']) unless map['ParallelismConfiguration'].nil?)
        data
      end
    end

    class PipelineExperimentConfig
      def self.parse(map)
        data = Types::PipelineExperimentConfig.new
        data.experiment_name = map['ExperimentName']
        data.trial_name = map['TrialName']
        return data
      end
    end

    # Operation Parser for DescribeProcessingJob
    class DescribeProcessingJob
      def self.parse(http_resp)
        data = Types::DescribeProcessingJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.processing_inputs = (Parsers::ProcessingInputs.parse(map['ProcessingInputs']) unless map['ProcessingInputs'].nil?)
        data.processing_output_config = (Parsers::ProcessingOutputConfig.parse(map['ProcessingOutputConfig']) unless map['ProcessingOutputConfig'].nil?)
        data.processing_job_name = map['ProcessingJobName']
        data.processing_resources = (Parsers::ProcessingResources.parse(map['ProcessingResources']) unless map['ProcessingResources'].nil?)
        data.stopping_condition = (Parsers::ProcessingStoppingCondition.parse(map['StoppingCondition']) unless map['StoppingCondition'].nil?)
        data.app_specification = (Parsers::AppSpecification.parse(map['AppSpecification']) unless map['AppSpecification'].nil?)
        data.environment = (Parsers::ProcessingEnvironmentMap.parse(map['Environment']) unless map['Environment'].nil?)
        data.network_config = (Parsers::NetworkConfig.parse(map['NetworkConfig']) unless map['NetworkConfig'].nil?)
        data.role_arn = map['RoleArn']
        data.experiment_config = (Parsers::ExperimentConfig.parse(map['ExperimentConfig']) unless map['ExperimentConfig'].nil?)
        data.processing_job_arn = map['ProcessingJobArn']
        data.processing_job_status = map['ProcessingJobStatus']
        data.exit_message = map['ExitMessage']
        data.failure_reason = map['FailureReason']
        data.processing_end_time = Time.at(map['ProcessingEndTime'].to_i) if map['ProcessingEndTime']
        data.processing_start_time = Time.at(map['ProcessingStartTime'].to_i) if map['ProcessingStartTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.monitoring_schedule_arn = map['MonitoringScheduleArn']
        data.auto_ml_job_arn = map['AutoMLJobArn']
        data.training_job_arn = map['TrainingJobArn']
        data
      end
    end

    class ExperimentConfig
      def self.parse(map)
        data = Types::ExperimentConfig.new
        data.experiment_name = map['ExperimentName']
        data.trial_name = map['TrialName']
        data.trial_component_display_name = map['TrialComponentDisplayName']
        return data
      end
    end

    class ProcessingEnvironmentMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class AppSpecification
      def self.parse(map)
        data = Types::AppSpecification.new
        data.image_uri = map['ImageUri']
        data.container_entrypoint = (Parsers::ContainerEntrypoint.parse(map['ContainerEntrypoint']) unless map['ContainerEntrypoint'].nil?)
        data.container_arguments = (Parsers::ContainerArguments.parse(map['ContainerArguments']) unless map['ContainerArguments'].nil?)
        return data
      end
    end

    class ContainerArguments
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ProcessingStoppingCondition
      def self.parse(map)
        data = Types::ProcessingStoppingCondition.new
        data.max_runtime_in_seconds = map['MaxRuntimeInSeconds']
        return data
      end
    end

    class ProcessingResources
      def self.parse(map)
        data = Types::ProcessingResources.new
        data.cluster_config = (Parsers::ProcessingClusterConfig.parse(map['ClusterConfig']) unless map['ClusterConfig'].nil?)
        return data
      end
    end

    class ProcessingClusterConfig
      def self.parse(map)
        data = Types::ProcessingClusterConfig.new
        data.instance_count = map['InstanceCount']
        data.instance_type = map['InstanceType']
        data.volume_size_in_gb = map['VolumeSizeInGB']
        data.volume_kms_key_id = map['VolumeKmsKeyId']
        return data
      end
    end

    class ProcessingOutputConfig
      def self.parse(map)
        data = Types::ProcessingOutputConfig.new
        data.outputs = (Parsers::ProcessingOutputs.parse(map['Outputs']) unless map['Outputs'].nil?)
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    class ProcessingOutputs
      def self.parse(list)
        list.map do |value|
          Parsers::ProcessingOutput.parse(value) unless value.nil?
        end
      end
    end

    class ProcessingOutput
      def self.parse(map)
        data = Types::ProcessingOutput.new
        data.output_name = map['OutputName']
        data.s3_output = (Parsers::ProcessingS3Output.parse(map['S3Output']) unless map['S3Output'].nil?)
        data.feature_store_output = (Parsers::ProcessingFeatureStoreOutput.parse(map['FeatureStoreOutput']) unless map['FeatureStoreOutput'].nil?)
        data.app_managed = map['AppManaged']
        return data
      end
    end

    class ProcessingFeatureStoreOutput
      def self.parse(map)
        data = Types::ProcessingFeatureStoreOutput.new
        data.feature_group_name = map['FeatureGroupName']
        return data
      end
    end

    class ProcessingS3Output
      def self.parse(map)
        data = Types::ProcessingS3Output.new
        data.s3_uri = map['S3Uri']
        data.local_path = map['LocalPath']
        data.s3_upload_mode = map['S3UploadMode']
        return data
      end
    end

    class ProcessingInputs
      def self.parse(list)
        list.map do |value|
          Parsers::ProcessingInput.parse(value) unless value.nil?
        end
      end
    end

    class ProcessingInput
      def self.parse(map)
        data = Types::ProcessingInput.new
        data.input_name = map['InputName']
        data.app_managed = map['AppManaged']
        data.s3_input = (Parsers::ProcessingS3Input.parse(map['S3Input']) unless map['S3Input'].nil?)
        data.dataset_definition = (Parsers::DatasetDefinition.parse(map['DatasetDefinition']) unless map['DatasetDefinition'].nil?)
        return data
      end
    end

    class DatasetDefinition
      def self.parse(map)
        data = Types::DatasetDefinition.new
        data.athena_dataset_definition = (Parsers::AthenaDatasetDefinition.parse(map['AthenaDatasetDefinition']) unless map['AthenaDatasetDefinition'].nil?)
        data.redshift_dataset_definition = (Parsers::RedshiftDatasetDefinition.parse(map['RedshiftDatasetDefinition']) unless map['RedshiftDatasetDefinition'].nil?)
        data.local_path = map['LocalPath']
        data.data_distribution_type = map['DataDistributionType']
        data.input_mode = map['InputMode']
        return data
      end
    end

    class RedshiftDatasetDefinition
      def self.parse(map)
        data = Types::RedshiftDatasetDefinition.new
        data.cluster_id = map['ClusterId']
        data.database = map['Database']
        data.db_user = map['DbUser']
        data.query_string = map['QueryString']
        data.cluster_role_arn = map['ClusterRoleArn']
        data.output_s3_uri = map['OutputS3Uri']
        data.kms_key_id = map['KmsKeyId']
        data.output_format = map['OutputFormat']
        data.output_compression = map['OutputCompression']
        return data
      end
    end

    class AthenaDatasetDefinition
      def self.parse(map)
        data = Types::AthenaDatasetDefinition.new
        data.catalog = map['Catalog']
        data.database = map['Database']
        data.query_string = map['QueryString']
        data.work_group = map['WorkGroup']
        data.output_s3_uri = map['OutputS3Uri']
        data.kms_key_id = map['KmsKeyId']
        data.output_format = map['OutputFormat']
        data.output_compression = map['OutputCompression']
        return data
      end
    end

    class ProcessingS3Input
      def self.parse(map)
        data = Types::ProcessingS3Input.new
        data.s3_uri = map['S3Uri']
        data.local_path = map['LocalPath']
        data.s3_data_type = map['S3DataType']
        data.s3_input_mode = map['S3InputMode']
        data.s3_data_distribution_type = map['S3DataDistributionType']
        data.s3_compression_type = map['S3CompressionType']
        return data
      end
    end

    # Operation Parser for DescribeProject
    class DescribeProject
      def self.parse(http_resp)
        data = Types::DescribeProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.project_arn = map['ProjectArn']
        data.project_name = map['ProjectName']
        data.project_id = map['ProjectId']
        data.project_description = map['ProjectDescription']
        data.service_catalog_provisioning_details = (Parsers::ServiceCatalogProvisioningDetails.parse(map['ServiceCatalogProvisioningDetails']) unless map['ServiceCatalogProvisioningDetails'].nil?)
        data.service_catalog_provisioned_product_details = (Parsers::ServiceCatalogProvisionedProductDetails.parse(map['ServiceCatalogProvisionedProductDetails']) unless map['ServiceCatalogProvisionedProductDetails'].nil?)
        data.project_status = map['ProjectStatus']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_modified_by = (Parsers::UserContext.parse(map['LastModifiedBy']) unless map['LastModifiedBy'].nil?)
        data
      end
    end

    class ServiceCatalogProvisionedProductDetails
      def self.parse(map)
        data = Types::ServiceCatalogProvisionedProductDetails.new
        data.provisioned_product_id = map['ProvisionedProductId']
        data.provisioned_product_status_message = map['ProvisionedProductStatusMessage']
        return data
      end
    end

    class ServiceCatalogProvisioningDetails
      def self.parse(map)
        data = Types::ServiceCatalogProvisioningDetails.new
        data.product_id = map['ProductId']
        data.provisioning_artifact_id = map['ProvisioningArtifactId']
        data.path_id = map['PathId']
        data.provisioning_parameters = (Parsers::ProvisioningParameters.parse(map['ProvisioningParameters']) unless map['ProvisioningParameters'].nil?)
        return data
      end
    end

    class ProvisioningParameters
      def self.parse(list)
        list.map do |value|
          Parsers::ProvisioningParameter.parse(value) unless value.nil?
        end
      end
    end

    class ProvisioningParameter
      def self.parse(map)
        data = Types::ProvisioningParameter.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for DescribeStudioLifecycleConfig
    class DescribeStudioLifecycleConfig
      def self.parse(http_resp)
        data = Types::DescribeStudioLifecycleConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.studio_lifecycle_config_arn = map['StudioLifecycleConfigArn']
        data.studio_lifecycle_config_name = map['StudioLifecycleConfigName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.studio_lifecycle_config_content = map['StudioLifecycleConfigContent']
        data.studio_lifecycle_config_app_type = map['StudioLifecycleConfigAppType']
        data
      end
    end

    # Operation Parser for DescribeSubscribedWorkteam
    class DescribeSubscribedWorkteam
      def self.parse(http_resp)
        data = Types::DescribeSubscribedWorkteamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.subscribed_workteam = (Parsers::SubscribedWorkteam.parse(map['SubscribedWorkteam']) unless map['SubscribedWorkteam'].nil?)
        data
      end
    end

    class SubscribedWorkteam
      def self.parse(map)
        data = Types::SubscribedWorkteam.new
        data.workteam_arn = map['WorkteamArn']
        data.marketplace_title = map['MarketplaceTitle']
        data.seller_name = map['SellerName']
        data.marketplace_description = map['MarketplaceDescription']
        data.listing_id = map['ListingId']
        return data
      end
    end

    # Operation Parser for DescribeTrainingJob
    class DescribeTrainingJob
      def self.parse(http_resp)
        data = Types::DescribeTrainingJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.training_job_name = map['TrainingJobName']
        data.training_job_arn = map['TrainingJobArn']
        data.tuning_job_arn = map['TuningJobArn']
        data.labeling_job_arn = map['LabelingJobArn']
        data.auto_ml_job_arn = map['AutoMLJobArn']
        data.model_artifacts = (Parsers::ModelArtifacts.parse(map['ModelArtifacts']) unless map['ModelArtifacts'].nil?)
        data.training_job_status = map['TrainingJobStatus']
        data.secondary_status = map['SecondaryStatus']
        data.failure_reason = map['FailureReason']
        data.hyper_parameters = (Parsers::HyperParameters.parse(map['HyperParameters']) unless map['HyperParameters'].nil?)
        data.algorithm_specification = (Parsers::AlgorithmSpecification.parse(map['AlgorithmSpecification']) unless map['AlgorithmSpecification'].nil?)
        data.role_arn = map['RoleArn']
        data.input_data_config = (Parsers::InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.output_data_config = (Parsers::OutputDataConfig.parse(map['OutputDataConfig']) unless map['OutputDataConfig'].nil?)
        data.resource_config = (Parsers::ResourceConfig.parse(map['ResourceConfig']) unless map['ResourceConfig'].nil?)
        data.vpc_config = (Parsers::VpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        data.stopping_condition = (Parsers::StoppingCondition.parse(map['StoppingCondition']) unless map['StoppingCondition'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.training_start_time = Time.at(map['TrainingStartTime'].to_i) if map['TrainingStartTime']
        data.training_end_time = Time.at(map['TrainingEndTime'].to_i) if map['TrainingEndTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.secondary_status_transitions = (Parsers::SecondaryStatusTransitions.parse(map['SecondaryStatusTransitions']) unless map['SecondaryStatusTransitions'].nil?)
        data.final_metric_data_list = (Parsers::FinalMetricDataList.parse(map['FinalMetricDataList']) unless map['FinalMetricDataList'].nil?)
        data.enable_network_isolation = map['EnableNetworkIsolation']
        data.enable_inter_container_traffic_encryption = map['EnableInterContainerTrafficEncryption']
        data.enable_managed_spot_training = map['EnableManagedSpotTraining']
        data.checkpoint_config = (Parsers::CheckpointConfig.parse(map['CheckpointConfig']) unless map['CheckpointConfig'].nil?)
        data.training_time_in_seconds = map['TrainingTimeInSeconds']
        data.billable_time_in_seconds = map['BillableTimeInSeconds']
        data.debug_hook_config = (Parsers::DebugHookConfig.parse(map['DebugHookConfig']) unless map['DebugHookConfig'].nil?)
        data.experiment_config = (Parsers::ExperimentConfig.parse(map['ExperimentConfig']) unless map['ExperimentConfig'].nil?)
        data.debug_rule_configurations = (Parsers::DebugRuleConfigurations.parse(map['DebugRuleConfigurations']) unless map['DebugRuleConfigurations'].nil?)
        data.tensor_board_output_config = (Parsers::TensorBoardOutputConfig.parse(map['TensorBoardOutputConfig']) unless map['TensorBoardOutputConfig'].nil?)
        data.debug_rule_evaluation_statuses = (Parsers::DebugRuleEvaluationStatuses.parse(map['DebugRuleEvaluationStatuses']) unless map['DebugRuleEvaluationStatuses'].nil?)
        data.profiler_config = (Parsers::ProfilerConfig.parse(map['ProfilerConfig']) unless map['ProfilerConfig'].nil?)
        data.profiler_rule_configurations = (Parsers::ProfilerRuleConfigurations.parse(map['ProfilerRuleConfigurations']) unless map['ProfilerRuleConfigurations'].nil?)
        data.profiler_rule_evaluation_statuses = (Parsers::ProfilerRuleEvaluationStatuses.parse(map['ProfilerRuleEvaluationStatuses']) unless map['ProfilerRuleEvaluationStatuses'].nil?)
        data.profiling_status = map['ProfilingStatus']
        data.retry_strategy = (Parsers::RetryStrategy.parse(map['RetryStrategy']) unless map['RetryStrategy'].nil?)
        data.environment = (Parsers::TrainingEnvironmentMap.parse(map['Environment']) unless map['Environment'].nil?)
        data
      end
    end

    class TrainingEnvironmentMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ProfilerRuleEvaluationStatuses
      def self.parse(list)
        list.map do |value|
          Parsers::ProfilerRuleEvaluationStatus.parse(value) unless value.nil?
        end
      end
    end

    class ProfilerRuleEvaluationStatus
      def self.parse(map)
        data = Types::ProfilerRuleEvaluationStatus.new
        data.rule_configuration_name = map['RuleConfigurationName']
        data.rule_evaluation_job_arn = map['RuleEvaluationJobArn']
        data.rule_evaluation_status = map['RuleEvaluationStatus']
        data.status_details = map['StatusDetails']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    class ProfilerRuleConfigurations
      def self.parse(list)
        list.map do |value|
          Parsers::ProfilerRuleConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class ProfilerRuleConfiguration
      def self.parse(map)
        data = Types::ProfilerRuleConfiguration.new
        data.rule_configuration_name = map['RuleConfigurationName']
        data.local_path = map['LocalPath']
        data.s3_output_path = map['S3OutputPath']
        data.rule_evaluator_image = map['RuleEvaluatorImage']
        data.instance_type = map['InstanceType']
        data.volume_size_in_gb = map['VolumeSizeInGB']
        data.rule_parameters = (Parsers::RuleParameters.parse(map['RuleParameters']) unless map['RuleParameters'].nil?)
        return data
      end
    end

    class RuleParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ProfilerConfig
      def self.parse(map)
        data = Types::ProfilerConfig.new
        data.s3_output_path = map['S3OutputPath']
        data.profiling_interval_in_milliseconds = map['ProfilingIntervalInMilliseconds']
        data.profiling_parameters = (Parsers::ProfilingParameters.parse(map['ProfilingParameters']) unless map['ProfilingParameters'].nil?)
        return data
      end
    end

    class ProfilingParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class DebugRuleEvaluationStatuses
      def self.parse(list)
        list.map do |value|
          Parsers::DebugRuleEvaluationStatus.parse(value) unless value.nil?
        end
      end
    end

    class DebugRuleEvaluationStatus
      def self.parse(map)
        data = Types::DebugRuleEvaluationStatus.new
        data.rule_configuration_name = map['RuleConfigurationName']
        data.rule_evaluation_job_arn = map['RuleEvaluationJobArn']
        data.rule_evaluation_status = map['RuleEvaluationStatus']
        data.status_details = map['StatusDetails']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    class TensorBoardOutputConfig
      def self.parse(map)
        data = Types::TensorBoardOutputConfig.new
        data.local_path = map['LocalPath']
        data.s3_output_path = map['S3OutputPath']
        return data
      end
    end

    class DebugRuleConfigurations
      def self.parse(list)
        list.map do |value|
          Parsers::DebugRuleConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class DebugRuleConfiguration
      def self.parse(map)
        data = Types::DebugRuleConfiguration.new
        data.rule_configuration_name = map['RuleConfigurationName']
        data.local_path = map['LocalPath']
        data.s3_output_path = map['S3OutputPath']
        data.rule_evaluator_image = map['RuleEvaluatorImage']
        data.instance_type = map['InstanceType']
        data.volume_size_in_gb = map['VolumeSizeInGB']
        data.rule_parameters = (Parsers::RuleParameters.parse(map['RuleParameters']) unless map['RuleParameters'].nil?)
        return data
      end
    end

    class DebugHookConfig
      def self.parse(map)
        data = Types::DebugHookConfig.new
        data.local_path = map['LocalPath']
        data.s3_output_path = map['S3OutputPath']
        data.hook_parameters = (Parsers::HookParameters.parse(map['HookParameters']) unless map['HookParameters'].nil?)
        data.collection_configurations = (Parsers::CollectionConfigurations.parse(map['CollectionConfigurations']) unless map['CollectionConfigurations'].nil?)
        return data
      end
    end

    class CollectionConfigurations
      def self.parse(list)
        list.map do |value|
          Parsers::CollectionConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class CollectionConfiguration
      def self.parse(map)
        data = Types::CollectionConfiguration.new
        data.collection_name = map['CollectionName']
        data.collection_parameters = (Parsers::CollectionParameters.parse(map['CollectionParameters']) unless map['CollectionParameters'].nil?)
        return data
      end
    end

    class CollectionParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class HookParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class FinalMetricDataList
      def self.parse(list)
        list.map do |value|
          Parsers::MetricData.parse(value) unless value.nil?
        end
      end
    end

    class MetricData
      def self.parse(map)
        data = Types::MetricData.new
        data.metric_name = map['MetricName']
        data.value = Hearth::NumberHelper.deserialize(map['Value'])
        data.timestamp = Time.at(map['Timestamp'].to_i) if map['Timestamp']
        return data
      end
    end

    class SecondaryStatusTransitions
      def self.parse(list)
        list.map do |value|
          Parsers::SecondaryStatusTransition.parse(value) unless value.nil?
        end
      end
    end

    class SecondaryStatusTransition
      def self.parse(map)
        data = Types::SecondaryStatusTransition.new
        data.status = map['Status']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.status_message = map['StatusMessage']
        return data
      end
    end

    class AlgorithmSpecification
      def self.parse(map)
        data = Types::AlgorithmSpecification.new
        data.training_image = map['TrainingImage']
        data.algorithm_name = map['AlgorithmName']
        data.training_input_mode = map['TrainingInputMode']
        data.metric_definitions = (Parsers::MetricDefinitionList.parse(map['MetricDefinitions']) unless map['MetricDefinitions'].nil?)
        data.enable_sage_maker_metrics_time_series = map['EnableSageMakerMetricsTimeSeries']
        return data
      end
    end

    # Operation Parser for DescribeTransformJob
    class DescribeTransformJob
      def self.parse(http_resp)
        data = Types::DescribeTransformJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.transform_job_name = map['TransformJobName']
        data.transform_job_arn = map['TransformJobArn']
        data.transform_job_status = map['TransformJobStatus']
        data.failure_reason = map['FailureReason']
        data.model_name = map['ModelName']
        data.max_concurrent_transforms = map['MaxConcurrentTransforms']
        data.model_client_config = (Parsers::ModelClientConfig.parse(map['ModelClientConfig']) unless map['ModelClientConfig'].nil?)
        data.max_payload_in_mb = map['MaxPayloadInMB']
        data.batch_strategy = map['BatchStrategy']
        data.environment = (Parsers::TransformEnvironmentMap.parse(map['Environment']) unless map['Environment'].nil?)
        data.transform_input = (Parsers::TransformInput.parse(map['TransformInput']) unless map['TransformInput'].nil?)
        data.transform_output = (Parsers::TransformOutput.parse(map['TransformOutput']) unless map['TransformOutput'].nil?)
        data.transform_resources = (Parsers::TransformResources.parse(map['TransformResources']) unless map['TransformResources'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.transform_start_time = Time.at(map['TransformStartTime'].to_i) if map['TransformStartTime']
        data.transform_end_time = Time.at(map['TransformEndTime'].to_i) if map['TransformEndTime']
        data.labeling_job_arn = map['LabelingJobArn']
        data.auto_ml_job_arn = map['AutoMLJobArn']
        data.data_processing = (Parsers::DataProcessing.parse(map['DataProcessing']) unless map['DataProcessing'].nil?)
        data.experiment_config = (Parsers::ExperimentConfig.parse(map['ExperimentConfig']) unless map['ExperimentConfig'].nil?)
        data
      end
    end

    class DataProcessing
      def self.parse(map)
        data = Types::DataProcessing.new
        data.input_filter = map['InputFilter']
        data.output_filter = map['OutputFilter']
        data.join_source = map['JoinSource']
        return data
      end
    end

    class ModelClientConfig
      def self.parse(map)
        data = Types::ModelClientConfig.new
        data.invocations_timeout_in_seconds = map['InvocationsTimeoutInSeconds']
        data.invocations_max_retries = map['InvocationsMaxRetries']
        return data
      end
    end

    # Operation Parser for DescribeTrial
    class DescribeTrial
      def self.parse(http_resp)
        data = Types::DescribeTrialOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trial_name = map['TrialName']
        data.trial_arn = map['TrialArn']
        data.display_name = map['DisplayName']
        data.experiment_name = map['ExperimentName']
        data.source = (Parsers::TrialSource.parse(map['Source']) unless map['Source'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_modified_by = (Parsers::UserContext.parse(map['LastModifiedBy']) unless map['LastModifiedBy'].nil?)
        data.metadata_properties = (Parsers::MetadataProperties.parse(map['MetadataProperties']) unless map['MetadataProperties'].nil?)
        data
      end
    end

    class TrialSource
      def self.parse(map)
        data = Types::TrialSource.new
        data.source_arn = map['SourceArn']
        data.source_type = map['SourceType']
        return data
      end
    end

    # Operation Parser for DescribeTrialComponent
    class DescribeTrialComponent
      def self.parse(http_resp)
        data = Types::DescribeTrialComponentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trial_component_name = map['TrialComponentName']
        data.trial_component_arn = map['TrialComponentArn']
        data.display_name = map['DisplayName']
        data.source = (Parsers::TrialComponentSource.parse(map['Source']) unless map['Source'].nil?)
        data.status = (Parsers::TrialComponentStatus.parse(map['Status']) unless map['Status'].nil?)
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_modified_by = (Parsers::UserContext.parse(map['LastModifiedBy']) unless map['LastModifiedBy'].nil?)
        data.parameters = (Parsers::TrialComponentParameters.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.input_artifacts = (Parsers::TrialComponentArtifacts.parse(map['InputArtifacts']) unless map['InputArtifacts'].nil?)
        data.output_artifacts = (Parsers::TrialComponentArtifacts.parse(map['OutputArtifacts']) unless map['OutputArtifacts'].nil?)
        data.metadata_properties = (Parsers::MetadataProperties.parse(map['MetadataProperties']) unless map['MetadataProperties'].nil?)
        data.metrics = (Parsers::TrialComponentMetricSummaries.parse(map['Metrics']) unless map['Metrics'].nil?)
        data.lineage_group_arn = map['LineageGroupArn']
        data
      end
    end

    class TrialComponentMetricSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::TrialComponentMetricSummary.parse(value) unless value.nil?
        end
      end
    end

    class TrialComponentMetricSummary
      def self.parse(map)
        data = Types::TrialComponentMetricSummary.new
        data.metric_name = map['MetricName']
        data.source_arn = map['SourceArn']
        data.time_stamp = Time.at(map['TimeStamp'].to_i) if map['TimeStamp']
        data.max = Hearth::NumberHelper.deserialize(map['Max'])
        data.min = Hearth::NumberHelper.deserialize(map['Min'])
        data.last = Hearth::NumberHelper.deserialize(map['Last'])
        data.count = map['Count']
        data.avg = Hearth::NumberHelper.deserialize(map['Avg'])
        data.std_dev = Hearth::NumberHelper.deserialize(map['StdDev'])
        return data
      end
    end

    class TrialComponentArtifacts
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::TrialComponentArtifact.parse(value) unless value.nil?
        end
        data
      end
    end

    class TrialComponentArtifact
      def self.parse(map)
        data = Types::TrialComponentArtifact.new
        data.media_type = map['MediaType']
        data.value = map['Value']
        return data
      end
    end

    class TrialComponentParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::TrialComponentParameterValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class TrialComponentParameterValue
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'StringValue'
          value = value
          Types::TrialComponentParameterValue::StringValue.new(value) if value
        when 'NumberValue'
          value = Hearth::NumberHelper.deserialize(value)
          Types::TrialComponentParameterValue::NumberValue.new(value) if value
        else
          Types::TrialComponentParameterValue::Unknown.new({name: key, value: value})
        end
      end
    end

    class TrialComponentStatus
      def self.parse(map)
        data = Types::TrialComponentStatus.new
        data.primary_status = map['PrimaryStatus']
        data.message = map['Message']
        return data
      end
    end

    class TrialComponentSource
      def self.parse(map)
        data = Types::TrialComponentSource.new
        data.source_arn = map['SourceArn']
        data.source_type = map['SourceType']
        return data
      end
    end

    # Operation Parser for DescribeUserProfile
    class DescribeUserProfile
      def self.parse(http_resp)
        data = Types::DescribeUserProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.domain_id = map['DomainId']
        data.user_profile_arn = map['UserProfileArn']
        data.user_profile_name = map['UserProfileName']
        data.home_efs_file_system_uid = map['HomeEfsFileSystemUid']
        data.status = map['Status']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.failure_reason = map['FailureReason']
        data.single_sign_on_user_identifier = map['SingleSignOnUserIdentifier']
        data.single_sign_on_user_value = map['SingleSignOnUserValue']
        data.user_settings = (Parsers::UserSettings.parse(map['UserSettings']) unless map['UserSettings'].nil?)
        data
      end
    end

    # Operation Parser for DescribeWorkforce
    class DescribeWorkforce
      def self.parse(http_resp)
        data = Types::DescribeWorkforceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.workforce = (Parsers::Workforce.parse(map['Workforce']) unless map['Workforce'].nil?)
        data
      end
    end

    class Workforce
      def self.parse(map)
        data = Types::Workforce.new
        data.workforce_name = map['WorkforceName']
        data.workforce_arn = map['WorkforceArn']
        data.last_updated_date = Time.at(map['LastUpdatedDate'].to_i) if map['LastUpdatedDate']
        data.source_ip_config = (Parsers::SourceIpConfig.parse(map['SourceIpConfig']) unless map['SourceIpConfig'].nil?)
        data.sub_domain = map['SubDomain']
        data.cognito_config = (Parsers::CognitoConfig.parse(map['CognitoConfig']) unless map['CognitoConfig'].nil?)
        data.oidc_config = (Parsers::OidcConfigForResponse.parse(map['OidcConfig']) unless map['OidcConfig'].nil?)
        data.create_date = Time.at(map['CreateDate'].to_i) if map['CreateDate']
        return data
      end
    end

    class OidcConfigForResponse
      def self.parse(map)
        data = Types::OidcConfigForResponse.new
        data.client_id = map['ClientId']
        data.issuer = map['Issuer']
        data.authorization_endpoint = map['AuthorizationEndpoint']
        data.token_endpoint = map['TokenEndpoint']
        data.user_info_endpoint = map['UserInfoEndpoint']
        data.logout_endpoint = map['LogoutEndpoint']
        data.jwks_uri = map['JwksUri']
        return data
      end
    end

    class CognitoConfig
      def self.parse(map)
        data = Types::CognitoConfig.new
        data.user_pool = map['UserPool']
        data.client_id = map['ClientId']
        return data
      end
    end

    class SourceIpConfig
      def self.parse(map)
        data = Types::SourceIpConfig.new
        data.cidrs = (Parsers::Cidrs.parse(map['Cidrs']) unless map['Cidrs'].nil?)
        return data
      end
    end

    class Cidrs
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeWorkteam
    class DescribeWorkteam
      def self.parse(http_resp)
        data = Types::DescribeWorkteamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.workteam = (Parsers::Workteam.parse(map['Workteam']) unless map['Workteam'].nil?)
        data
      end
    end

    class Workteam
      def self.parse(map)
        data = Types::Workteam.new
        data.workteam_name = map['WorkteamName']
        data.member_definitions = (Parsers::MemberDefinitions.parse(map['MemberDefinitions']) unless map['MemberDefinitions'].nil?)
        data.workteam_arn = map['WorkteamArn']
        data.workforce_arn = map['WorkforceArn']
        data.product_listing_ids = (Parsers::ProductListings.parse(map['ProductListingIds']) unless map['ProductListingIds'].nil?)
        data.description = map['Description']
        data.sub_domain = map['SubDomain']
        data.create_date = Time.at(map['CreateDate'].to_i) if map['CreateDate']
        data.last_updated_date = Time.at(map['LastUpdatedDate'].to_i) if map['LastUpdatedDate']
        data.notification_configuration = (Parsers::NotificationConfiguration.parse(map['NotificationConfiguration']) unless map['NotificationConfiguration'].nil?)
        return data
      end
    end

    class NotificationConfiguration
      def self.parse(map)
        data = Types::NotificationConfiguration.new
        data.notification_topic_arn = map['NotificationTopicArn']
        return data
      end
    end

    class ProductListings
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class MemberDefinitions
      def self.parse(list)
        list.map do |value|
          Parsers::MemberDefinition.parse(value) unless value.nil?
        end
      end
    end

    class MemberDefinition
      def self.parse(map)
        data = Types::MemberDefinition.new
        data.cognito_member_definition = (Parsers::CognitoMemberDefinition.parse(map['CognitoMemberDefinition']) unless map['CognitoMemberDefinition'].nil?)
        data.oidc_member_definition = (Parsers::OidcMemberDefinition.parse(map['OidcMemberDefinition']) unless map['OidcMemberDefinition'].nil?)
        return data
      end
    end

    class OidcMemberDefinition
      def self.parse(map)
        data = Types::OidcMemberDefinition.new
        data.groups = (Parsers::Groups.parse(map['Groups']) unless map['Groups'].nil?)
        return data
      end
    end

    class Groups
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CognitoMemberDefinition
      def self.parse(map)
        data = Types::CognitoMemberDefinition.new
        data.user_pool = map['UserPool']
        data.user_group = map['UserGroup']
        data.client_id = map['ClientId']
        return data
      end
    end

    # Operation Parser for DisableSagemakerServicecatalogPortfolio
    class DisableSagemakerServicecatalogPortfolio
      def self.parse(http_resp)
        data = Types::DisableSagemakerServicecatalogPortfolioOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateTrialComponent
    class DisassociateTrialComponent
      def self.parse(http_resp)
        data = Types::DisassociateTrialComponentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trial_component_arn = map['TrialComponentArn']
        data.trial_arn = map['TrialArn']
        data
      end
    end

    # Operation Parser for EnableSagemakerServicecatalogPortfolio
    class EnableSagemakerServicecatalogPortfolio
      def self.parse(http_resp)
        data = Types::EnableSagemakerServicecatalogPortfolioOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for GetDeviceFleetReport
    class GetDeviceFleetReport
      def self.parse(http_resp)
        data = Types::GetDeviceFleetReportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.device_fleet_arn = map['DeviceFleetArn']
        data.device_fleet_name = map['DeviceFleetName']
        data.output_config = (Parsers::EdgeOutputConfig.parse(map['OutputConfig']) unless map['OutputConfig'].nil?)
        data.description = map['Description']
        data.report_generated = Time.at(map['ReportGenerated'].to_i) if map['ReportGenerated']
        data.device_stats = (Parsers::DeviceStats.parse(map['DeviceStats']) unless map['DeviceStats'].nil?)
        data.agent_versions = (Parsers::AgentVersions.parse(map['AgentVersions']) unless map['AgentVersions'].nil?)
        data.model_stats = (Parsers::EdgeModelStats.parse(map['ModelStats']) unless map['ModelStats'].nil?)
        data
      end
    end

    class EdgeModelStats
      def self.parse(list)
        list.map do |value|
          Parsers::EdgeModelStat.parse(value) unless value.nil?
        end
      end
    end

    class EdgeModelStat
      def self.parse(map)
        data = Types::EdgeModelStat.new
        data.model_name = map['ModelName']
        data.model_version = map['ModelVersion']
        data.offline_device_count = map['OfflineDeviceCount']
        data.connected_device_count = map['ConnectedDeviceCount']
        data.active_device_count = map['ActiveDeviceCount']
        data.sampling_device_count = map['SamplingDeviceCount']
        return data
      end
    end

    class AgentVersions
      def self.parse(list)
        list.map do |value|
          Parsers::AgentVersion.parse(value) unless value.nil?
        end
      end
    end

    class AgentVersion
      def self.parse(map)
        data = Types::AgentVersion.new
        data.version = map['Version']
        data.agent_count = map['AgentCount']
        return data
      end
    end

    class DeviceStats
      def self.parse(map)
        data = Types::DeviceStats.new
        data.connected_device_count = map['ConnectedDeviceCount']
        data.registered_device_count = map['RegisteredDeviceCount']
        return data
      end
    end

    # Operation Parser for GetLineageGroupPolicy
    class GetLineageGroupPolicy
      def self.parse(http_resp)
        data = Types::GetLineageGroupPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.lineage_group_arn = map['LineageGroupArn']
        data.resource_policy = map['ResourcePolicy']
        data
      end
    end

    # Operation Parser for GetModelPackageGroupPolicy
    class GetModelPackageGroupPolicy
      def self.parse(http_resp)
        data = Types::GetModelPackageGroupPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_policy = map['ResourcePolicy']
        data
      end
    end

    # Operation Parser for GetSagemakerServicecatalogPortfolioStatus
    class GetSagemakerServicecatalogPortfolioStatus
      def self.parse(http_resp)
        data = Types::GetSagemakerServicecatalogPortfolioStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for GetSearchSuggestions
    class GetSearchSuggestions
      def self.parse(http_resp)
        data = Types::GetSearchSuggestionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.property_name_suggestions = (Parsers::PropertyNameSuggestionList.parse(map['PropertyNameSuggestions']) unless map['PropertyNameSuggestions'].nil?)
        data
      end
    end

    class PropertyNameSuggestionList
      def self.parse(list)
        list.map do |value|
          Parsers::PropertyNameSuggestion.parse(value) unless value.nil?
        end
      end
    end

    class PropertyNameSuggestion
      def self.parse(map)
        data = Types::PropertyNameSuggestion.new
        data.property_name = map['PropertyName']
        return data
      end
    end

    # Operation Parser for ListActions
    class ListActions
      def self.parse(http_resp)
        data = Types::ListActionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.action_summaries = (Parsers::ActionSummaries.parse(map['ActionSummaries']) unless map['ActionSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ActionSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::ActionSummary.parse(value) unless value.nil?
        end
      end
    end

    class ActionSummary
      def self.parse(map)
        data = Types::ActionSummary.new
        data.action_arn = map['ActionArn']
        data.action_name = map['ActionName']
        data.source = (Parsers::ActionSource.parse(map['Source']) unless map['Source'].nil?)
        data.action_type = map['ActionType']
        data.status = map['Status']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for ListAlgorithms
    class ListAlgorithms
      def self.parse(http_resp)
        data = Types::ListAlgorithmsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.algorithm_summary_list = (Parsers::AlgorithmSummaryList.parse(map['AlgorithmSummaryList']) unless map['AlgorithmSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AlgorithmSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::AlgorithmSummary.parse(value) unless value.nil?
        end
      end
    end

    class AlgorithmSummary
      def self.parse(map)
        data = Types::AlgorithmSummary.new
        data.algorithm_name = map['AlgorithmName']
        data.algorithm_arn = map['AlgorithmArn']
        data.algorithm_description = map['AlgorithmDescription']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.algorithm_status = map['AlgorithmStatus']
        return data
      end
    end

    # Operation Parser for ListAppImageConfigs
    class ListAppImageConfigs
      def self.parse(http_resp)
        data = Types::ListAppImageConfigsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.app_image_configs = (Parsers::AppImageConfigList.parse(map['AppImageConfigs']) unless map['AppImageConfigs'].nil?)
        data
      end
    end

    class AppImageConfigList
      def self.parse(list)
        list.map do |value|
          Parsers::AppImageConfigDetails.parse(value) unless value.nil?
        end
      end
    end

    class AppImageConfigDetails
      def self.parse(map)
        data = Types::AppImageConfigDetails.new
        data.app_image_config_arn = map['AppImageConfigArn']
        data.app_image_config_name = map['AppImageConfigName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.kernel_gateway_image_config = (Parsers::KernelGatewayImageConfig.parse(map['KernelGatewayImageConfig']) unless map['KernelGatewayImageConfig'].nil?)
        return data
      end
    end

    # Operation Parser for ListApps
    class ListApps
      def self.parse(http_resp)
        data = Types::ListAppsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.apps = (Parsers::AppList.parse(map['Apps']) unless map['Apps'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AppList
      def self.parse(list)
        list.map do |value|
          Parsers::AppDetails.parse(value) unless value.nil?
        end
      end
    end

    class AppDetails
      def self.parse(map)
        data = Types::AppDetails.new
        data.domain_id = map['DomainId']
        data.user_profile_name = map['UserProfileName']
        data.app_type = map['AppType']
        data.app_name = map['AppName']
        data.status = map['Status']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        return data
      end
    end

    # Operation Parser for ListArtifacts
    class ListArtifacts
      def self.parse(http_resp)
        data = Types::ListArtifactsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.artifact_summaries = (Parsers::ArtifactSummaries.parse(map['ArtifactSummaries']) unless map['ArtifactSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ArtifactSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::ArtifactSummary.parse(value) unless value.nil?
        end
      end
    end

    class ArtifactSummary
      def self.parse(map)
        data = Types::ArtifactSummary.new
        data.artifact_arn = map['ArtifactArn']
        data.artifact_name = map['ArtifactName']
        data.source = (Parsers::ArtifactSource.parse(map['Source']) unless map['Source'].nil?)
        data.artifact_type = map['ArtifactType']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for ListAssociations
    class ListAssociations
      def self.parse(http_resp)
        data = Types::ListAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.association_summaries = (Parsers::AssociationSummaries.parse(map['AssociationSummaries']) unless map['AssociationSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AssociationSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::AssociationSummary.parse(value) unless value.nil?
        end
      end
    end

    class AssociationSummary
      def self.parse(map)
        data = Types::AssociationSummary.new
        data.source_arn = map['SourceArn']
        data.destination_arn = map['DestinationArn']
        data.source_type = map['SourceType']
        data.destination_type = map['DestinationType']
        data.association_type = map['AssociationType']
        data.source_name = map['SourceName']
        data.destination_name = map['DestinationName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        return data
      end
    end

    # Operation Parser for ListAutoMLJobs
    class ListAutoMLJobs
      def self.parse(http_resp)
        data = Types::ListAutoMLJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.auto_ml_job_summaries = (Parsers::AutoMLJobSummaries.parse(map['AutoMLJobSummaries']) unless map['AutoMLJobSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AutoMLJobSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::AutoMLJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class AutoMLJobSummary
      def self.parse(map)
        data = Types::AutoMLJobSummary.new
        data.auto_ml_job_name = map['AutoMLJobName']
        data.auto_ml_job_arn = map['AutoMLJobArn']
        data.auto_ml_job_status = map['AutoMLJobStatus']
        data.auto_ml_job_secondary_status = map['AutoMLJobSecondaryStatus']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.failure_reason = map['FailureReason']
        data.partial_failure_reasons = (Parsers::AutoMLPartialFailureReasons.parse(map['PartialFailureReasons']) unless map['PartialFailureReasons'].nil?)
        return data
      end
    end

    # Operation Parser for ListCandidatesForAutoMLJob
    class ListCandidatesForAutoMLJob
      def self.parse(http_resp)
        data = Types::ListCandidatesForAutoMLJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.candidates = (Parsers::AutoMLCandidates.parse(map['Candidates']) unless map['Candidates'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AutoMLCandidates
      def self.parse(list)
        list.map do |value|
          Parsers::AutoMLCandidate.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListCodeRepositories
    class ListCodeRepositories
      def self.parse(http_resp)
        data = Types::ListCodeRepositoriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.code_repository_summary_list = (Parsers::CodeRepositorySummaryList.parse(map['CodeRepositorySummaryList']) unless map['CodeRepositorySummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CodeRepositorySummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::CodeRepositorySummary.parse(value) unless value.nil?
        end
      end
    end

    class CodeRepositorySummary
      def self.parse(map)
        data = Types::CodeRepositorySummary.new
        data.code_repository_name = map['CodeRepositoryName']
        data.code_repository_arn = map['CodeRepositoryArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.git_config = (Parsers::GitConfig.parse(map['GitConfig']) unless map['GitConfig'].nil?)
        return data
      end
    end

    # Operation Parser for ListCompilationJobs
    class ListCompilationJobs
      def self.parse(http_resp)
        data = Types::ListCompilationJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.compilation_job_summaries = (Parsers::CompilationJobSummaries.parse(map['CompilationJobSummaries']) unless map['CompilationJobSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CompilationJobSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::CompilationJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class CompilationJobSummary
      def self.parse(map)
        data = Types::CompilationJobSummary.new
        data.compilation_job_name = map['CompilationJobName']
        data.compilation_job_arn = map['CompilationJobArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.compilation_start_time = Time.at(map['CompilationStartTime'].to_i) if map['CompilationStartTime']
        data.compilation_end_time = Time.at(map['CompilationEndTime'].to_i) if map['CompilationEndTime']
        data.compilation_target_device = map['CompilationTargetDevice']
        data.compilation_target_platform_os = map['CompilationTargetPlatformOs']
        data.compilation_target_platform_arch = map['CompilationTargetPlatformArch']
        data.compilation_target_platform_accelerator = map['CompilationTargetPlatformAccelerator']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.compilation_job_status = map['CompilationJobStatus']
        return data
      end
    end

    # Operation Parser for ListContexts
    class ListContexts
      def self.parse(http_resp)
        data = Types::ListContextsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.context_summaries = (Parsers::ContextSummaries.parse(map['ContextSummaries']) unless map['ContextSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ContextSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::ContextSummary.parse(value) unless value.nil?
        end
      end
    end

    class ContextSummary
      def self.parse(map)
        data = Types::ContextSummary.new
        data.context_arn = map['ContextArn']
        data.context_name = map['ContextName']
        data.source = (Parsers::ContextSource.parse(map['Source']) unless map['Source'].nil?)
        data.context_type = map['ContextType']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for ListDataQualityJobDefinitions
    class ListDataQualityJobDefinitions
      def self.parse(http_resp)
        data = Types::ListDataQualityJobDefinitionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_definition_summaries = (Parsers::MonitoringJobDefinitionSummaryList.parse(map['JobDefinitionSummaries']) unless map['JobDefinitionSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MonitoringJobDefinitionSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::MonitoringJobDefinitionSummary.parse(value) unless value.nil?
        end
      end
    end

    class MonitoringJobDefinitionSummary
      def self.parse(map)
        data = Types::MonitoringJobDefinitionSummary.new
        data.monitoring_job_definition_name = map['MonitoringJobDefinitionName']
        data.monitoring_job_definition_arn = map['MonitoringJobDefinitionArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.endpoint_name = map['EndpointName']
        return data
      end
    end

    # Operation Parser for ListDeviceFleets
    class ListDeviceFleets
      def self.parse(http_resp)
        data = Types::ListDeviceFleetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.device_fleet_summaries = (Parsers::DeviceFleetSummaries.parse(map['DeviceFleetSummaries']) unless map['DeviceFleetSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DeviceFleetSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::DeviceFleetSummary.parse(value) unless value.nil?
        end
      end
    end

    class DeviceFleetSummary
      def self.parse(map)
        data = Types::DeviceFleetSummary.new
        data.device_fleet_arn = map['DeviceFleetArn']
        data.device_fleet_name = map['DeviceFleetName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for ListDevices
    class ListDevices
      def self.parse(http_resp)
        data = Types::ListDevicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.device_summaries = (Parsers::DeviceSummaries.parse(map['DeviceSummaries']) unless map['DeviceSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DeviceSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::DeviceSummary.parse(value) unless value.nil?
        end
      end
    end

    class DeviceSummary
      def self.parse(map)
        data = Types::DeviceSummary.new
        data.device_name = map['DeviceName']
        data.device_arn = map['DeviceArn']
        data.description = map['Description']
        data.device_fleet_name = map['DeviceFleetName']
        data.iot_thing_name = map['IotThingName']
        data.registration_time = Time.at(map['RegistrationTime'].to_i) if map['RegistrationTime']
        data.latest_heartbeat = Time.at(map['LatestHeartbeat'].to_i) if map['LatestHeartbeat']
        data.models = (Parsers::EdgeModelSummaries.parse(map['Models']) unless map['Models'].nil?)
        data.agent_version = map['AgentVersion']
        return data
      end
    end

    class EdgeModelSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::EdgeModelSummary.parse(value) unless value.nil?
        end
      end
    end

    class EdgeModelSummary
      def self.parse(map)
        data = Types::EdgeModelSummary.new
        data.model_name = map['ModelName']
        data.model_version = map['ModelVersion']
        return data
      end
    end

    # Operation Parser for ListDomains
    class ListDomains
      def self.parse(http_resp)
        data = Types::ListDomainsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.domains = (Parsers::DomainList.parse(map['Domains']) unless map['Domains'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DomainList
      def self.parse(list)
        list.map do |value|
          Parsers::DomainDetails.parse(value) unless value.nil?
        end
      end
    end

    class DomainDetails
      def self.parse(map)
        data = Types::DomainDetails.new
        data.domain_arn = map['DomainArn']
        data.domain_id = map['DomainId']
        data.domain_name = map['DomainName']
        data.status = map['Status']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.url = map['Url']
        return data
      end
    end

    # Operation Parser for ListEdgePackagingJobs
    class ListEdgePackagingJobs
      def self.parse(http_resp)
        data = Types::ListEdgePackagingJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.edge_packaging_job_summaries = (Parsers::EdgePackagingJobSummaries.parse(map['EdgePackagingJobSummaries']) unless map['EdgePackagingJobSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EdgePackagingJobSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::EdgePackagingJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class EdgePackagingJobSummary
      def self.parse(map)
        data = Types::EdgePackagingJobSummary.new
        data.edge_packaging_job_arn = map['EdgePackagingJobArn']
        data.edge_packaging_job_name = map['EdgePackagingJobName']
        data.edge_packaging_job_status = map['EdgePackagingJobStatus']
        data.compilation_job_name = map['CompilationJobName']
        data.model_name = map['ModelName']
        data.model_version = map['ModelVersion']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for ListEndpointConfigs
    class ListEndpointConfigs
      def self.parse(http_resp)
        data = Types::ListEndpointConfigsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint_configs = (Parsers::EndpointConfigSummaryList.parse(map['EndpointConfigs']) unless map['EndpointConfigs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EndpointConfigSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::EndpointConfigSummary.parse(value) unless value.nil?
        end
      end
    end

    class EndpointConfigSummary
      def self.parse(map)
        data = Types::EndpointConfigSummary.new
        data.endpoint_config_name = map['EndpointConfigName']
        data.endpoint_config_arn = map['EndpointConfigArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        return data
      end
    end

    # Operation Parser for ListEndpoints
    class ListEndpoints
      def self.parse(http_resp)
        data = Types::ListEndpointsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoints = (Parsers::EndpointSummaryList.parse(map['Endpoints']) unless map['Endpoints'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EndpointSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::EndpointSummary.parse(value) unless value.nil?
        end
      end
    end

    class EndpointSummary
      def self.parse(map)
        data = Types::EndpointSummary.new
        data.endpoint_name = map['EndpointName']
        data.endpoint_arn = map['EndpointArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.endpoint_status = map['EndpointStatus']
        return data
      end
    end

    # Operation Parser for ListExperiments
    class ListExperiments
      def self.parse(http_resp)
        data = Types::ListExperimentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.experiment_summaries = (Parsers::ExperimentSummaries.parse(map['ExperimentSummaries']) unless map['ExperimentSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ExperimentSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::ExperimentSummary.parse(value) unless value.nil?
        end
      end
    end

    class ExperimentSummary
      def self.parse(map)
        data = Types::ExperimentSummary.new
        data.experiment_arn = map['ExperimentArn']
        data.experiment_name = map['ExperimentName']
        data.display_name = map['DisplayName']
        data.experiment_source = (Parsers::ExperimentSource.parse(map['ExperimentSource']) unless map['ExperimentSource'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for ListFeatureGroups
    class ListFeatureGroups
      def self.parse(http_resp)
        data = Types::ListFeatureGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.feature_group_summaries = (Parsers::FeatureGroupSummaries.parse(map['FeatureGroupSummaries']) unless map['FeatureGroupSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class FeatureGroupSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::FeatureGroupSummary.parse(value) unless value.nil?
        end
      end
    end

    class FeatureGroupSummary
      def self.parse(map)
        data = Types::FeatureGroupSummary.new
        data.feature_group_name = map['FeatureGroupName']
        data.feature_group_arn = map['FeatureGroupArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.feature_group_status = map['FeatureGroupStatus']
        data.offline_store_status = (Parsers::OfflineStoreStatus.parse(map['OfflineStoreStatus']) unless map['OfflineStoreStatus'].nil?)
        return data
      end
    end

    # Operation Parser for ListFlowDefinitions
    class ListFlowDefinitions
      def self.parse(http_resp)
        data = Types::ListFlowDefinitionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.flow_definition_summaries = (Parsers::FlowDefinitionSummaries.parse(map['FlowDefinitionSummaries']) unless map['FlowDefinitionSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class FlowDefinitionSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::FlowDefinitionSummary.parse(value) unless value.nil?
        end
      end
    end

    class FlowDefinitionSummary
      def self.parse(map)
        data = Types::FlowDefinitionSummary.new
        data.flow_definition_name = map['FlowDefinitionName']
        data.flow_definition_arn = map['FlowDefinitionArn']
        data.flow_definition_status = map['FlowDefinitionStatus']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.failure_reason = map['FailureReason']
        return data
      end
    end

    # Operation Parser for ListHumanTaskUis
    class ListHumanTaskUis
      def self.parse(http_resp)
        data = Types::ListHumanTaskUisOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.human_task_ui_summaries = (Parsers::HumanTaskUiSummaries.parse(map['HumanTaskUiSummaries']) unless map['HumanTaskUiSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class HumanTaskUiSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::HumanTaskUiSummary.parse(value) unless value.nil?
        end
      end
    end

    class HumanTaskUiSummary
      def self.parse(map)
        data = Types::HumanTaskUiSummary.new
        data.human_task_ui_name = map['HumanTaskUiName']
        data.human_task_ui_arn = map['HumanTaskUiArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        return data
      end
    end

    # Operation Parser for ListHyperParameterTuningJobs
    class ListHyperParameterTuningJobs
      def self.parse(http_resp)
        data = Types::ListHyperParameterTuningJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hyper_parameter_tuning_job_summaries = (Parsers::HyperParameterTuningJobSummaries.parse(map['HyperParameterTuningJobSummaries']) unless map['HyperParameterTuningJobSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class HyperParameterTuningJobSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::HyperParameterTuningJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class HyperParameterTuningJobSummary
      def self.parse(map)
        data = Types::HyperParameterTuningJobSummary.new
        data.hyper_parameter_tuning_job_name = map['HyperParameterTuningJobName']
        data.hyper_parameter_tuning_job_arn = map['HyperParameterTuningJobArn']
        data.hyper_parameter_tuning_job_status = map['HyperParameterTuningJobStatus']
        data.strategy = map['Strategy']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.hyper_parameter_tuning_end_time = Time.at(map['HyperParameterTuningEndTime'].to_i) if map['HyperParameterTuningEndTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.training_job_status_counters = (Parsers::TrainingJobStatusCounters.parse(map['TrainingJobStatusCounters']) unless map['TrainingJobStatusCounters'].nil?)
        data.objective_status_counters = (Parsers::ObjectiveStatusCounters.parse(map['ObjectiveStatusCounters']) unless map['ObjectiveStatusCounters'].nil?)
        data.resource_limits = (Parsers::ResourceLimits.parse(map['ResourceLimits']) unless map['ResourceLimits'].nil?)
        return data
      end
    end

    # Operation Parser for ListImageVersions
    class ListImageVersions
      def self.parse(http_resp)
        data = Types::ListImageVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.image_versions = (Parsers::ImageVersions.parse(map['ImageVersions']) unless map['ImageVersions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ImageVersions
      def self.parse(list)
        list.map do |value|
          Parsers::ImageVersion.parse(value) unless value.nil?
        end
      end
    end

    class ImageVersion
      def self.parse(map)
        data = Types::ImageVersion.new
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.failure_reason = map['FailureReason']
        data.image_arn = map['ImageArn']
        data.image_version_arn = map['ImageVersionArn']
        data.image_version_status = map['ImageVersionStatus']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for ListImages
    class ListImages
      def self.parse(http_resp)
        data = Types::ListImagesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.images = (Parsers::Images.parse(map['Images']) unless map['Images'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Images
      def self.parse(list)
        list.map do |value|
          Parsers::Image.parse(value) unless value.nil?
        end
      end
    end

    class Image
      def self.parse(map)
        data = Types::Image.new
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.description = map['Description']
        data.display_name = map['DisplayName']
        data.failure_reason = map['FailureReason']
        data.image_arn = map['ImageArn']
        data.image_name = map['ImageName']
        data.image_status = map['ImageStatus']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for ListInferenceRecommendationsJobs
    class ListInferenceRecommendationsJobs
      def self.parse(http_resp)
        data = Types::ListInferenceRecommendationsJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.inference_recommendations_jobs = (Parsers::InferenceRecommendationsJobs.parse(map['InferenceRecommendationsJobs']) unless map['InferenceRecommendationsJobs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InferenceRecommendationsJobs
      def self.parse(list)
        list.map do |value|
          Parsers::InferenceRecommendationsJob.parse(value) unless value.nil?
        end
      end
    end

    class InferenceRecommendationsJob
      def self.parse(map)
        data = Types::InferenceRecommendationsJob.new
        data.job_name = map['JobName']
        data.job_description = map['JobDescription']
        data.job_type = map['JobType']
        data.job_arn = map['JobArn']
        data.status = map['Status']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.completion_time = Time.at(map['CompletionTime'].to_i) if map['CompletionTime']
        data.role_arn = map['RoleArn']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.failure_reason = map['FailureReason']
        return data
      end
    end

    # Operation Parser for ListLabelingJobs
    class ListLabelingJobs
      def self.parse(http_resp)
        data = Types::ListLabelingJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.labeling_job_summary_list = (Parsers::LabelingJobSummaryList.parse(map['LabelingJobSummaryList']) unless map['LabelingJobSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LabelingJobSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::LabelingJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class LabelingJobSummary
      def self.parse(map)
        data = Types::LabelingJobSummary.new
        data.labeling_job_name = map['LabelingJobName']
        data.labeling_job_arn = map['LabelingJobArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.labeling_job_status = map['LabelingJobStatus']
        data.label_counters = (Parsers::LabelCounters.parse(map['LabelCounters']) unless map['LabelCounters'].nil?)
        data.workteam_arn = map['WorkteamArn']
        data.pre_human_task_lambda_arn = map['PreHumanTaskLambdaArn']
        data.annotation_consolidation_lambda_arn = map['AnnotationConsolidationLambdaArn']
        data.failure_reason = map['FailureReason']
        data.labeling_job_output = (Parsers::LabelingJobOutput.parse(map['LabelingJobOutput']) unless map['LabelingJobOutput'].nil?)
        data.input_config = (Parsers::LabelingJobInputConfig.parse(map['InputConfig']) unless map['InputConfig'].nil?)
        return data
      end
    end

    # Operation Parser for ListLabelingJobsForWorkteam
    class ListLabelingJobsForWorkteam
      def self.parse(http_resp)
        data = Types::ListLabelingJobsForWorkteamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.labeling_job_summary_list = (Parsers::LabelingJobForWorkteamSummaryList.parse(map['LabelingJobSummaryList']) unless map['LabelingJobSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LabelingJobForWorkteamSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::LabelingJobForWorkteamSummary.parse(value) unless value.nil?
        end
      end
    end

    class LabelingJobForWorkteamSummary
      def self.parse(map)
        data = Types::LabelingJobForWorkteamSummary.new
        data.labeling_job_name = map['LabelingJobName']
        data.job_reference_code = map['JobReferenceCode']
        data.work_requester_account_id = map['WorkRequesterAccountId']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.label_counters = (Parsers::LabelCountersForWorkteam.parse(map['LabelCounters']) unless map['LabelCounters'].nil?)
        data.number_of_human_workers_per_data_object = map['NumberOfHumanWorkersPerDataObject']
        return data
      end
    end

    class LabelCountersForWorkteam
      def self.parse(map)
        data = Types::LabelCountersForWorkteam.new
        data.human_labeled = map['HumanLabeled']
        data.pending_human = map['PendingHuman']
        data.total = map['Total']
        return data
      end
    end

    # Operation Parser for ListLineageGroups
    class ListLineageGroups
      def self.parse(http_resp)
        data = Types::ListLineageGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.lineage_group_summaries = (Parsers::LineageGroupSummaries.parse(map['LineageGroupSummaries']) unless map['LineageGroupSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LineageGroupSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::LineageGroupSummary.parse(value) unless value.nil?
        end
      end
    end

    class LineageGroupSummary
      def self.parse(map)
        data = Types::LineageGroupSummary.new
        data.lineage_group_arn = map['LineageGroupArn']
        data.lineage_group_name = map['LineageGroupName']
        data.display_name = map['DisplayName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for ListModelBiasJobDefinitions
    class ListModelBiasJobDefinitions
      def self.parse(http_resp)
        data = Types::ListModelBiasJobDefinitionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_definition_summaries = (Parsers::MonitoringJobDefinitionSummaryList.parse(map['JobDefinitionSummaries']) unless map['JobDefinitionSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListModelExplainabilityJobDefinitions
    class ListModelExplainabilityJobDefinitions
      def self.parse(http_resp)
        data = Types::ListModelExplainabilityJobDefinitionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_definition_summaries = (Parsers::MonitoringJobDefinitionSummaryList.parse(map['JobDefinitionSummaries']) unless map['JobDefinitionSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListModelMetadata
    class ListModelMetadata
      def self.parse(http_resp)
        data = Types::ListModelMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_metadata_summaries = (Parsers::ModelMetadataSummaries.parse(map['ModelMetadataSummaries']) unless map['ModelMetadataSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ModelMetadataSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::ModelMetadataSummary.parse(value) unless value.nil?
        end
      end
    end

    class ModelMetadataSummary
      def self.parse(map)
        data = Types::ModelMetadataSummary.new
        data.domain = map['Domain']
        data.framework = map['Framework']
        data.task = map['Task']
        data.model = map['Model']
        data.framework_version = map['FrameworkVersion']
        return data
      end
    end

    # Operation Parser for ListModelPackageGroups
    class ListModelPackageGroups
      def self.parse(http_resp)
        data = Types::ListModelPackageGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_package_group_summary_list = (Parsers::ModelPackageGroupSummaryList.parse(map['ModelPackageGroupSummaryList']) unless map['ModelPackageGroupSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ModelPackageGroupSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::ModelPackageGroupSummary.parse(value) unless value.nil?
        end
      end
    end

    class ModelPackageGroupSummary
      def self.parse(map)
        data = Types::ModelPackageGroupSummary.new
        data.model_package_group_name = map['ModelPackageGroupName']
        data.model_package_group_arn = map['ModelPackageGroupArn']
        data.model_package_group_description = map['ModelPackageGroupDescription']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.model_package_group_status = map['ModelPackageGroupStatus']
        return data
      end
    end

    # Operation Parser for ListModelPackages
    class ListModelPackages
      def self.parse(http_resp)
        data = Types::ListModelPackagesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_package_summary_list = (Parsers::ModelPackageSummaryList.parse(map['ModelPackageSummaryList']) unless map['ModelPackageSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ModelPackageSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::ModelPackageSummary.parse(value) unless value.nil?
        end
      end
    end

    class ModelPackageSummary
      def self.parse(map)
        data = Types::ModelPackageSummary.new
        data.model_package_name = map['ModelPackageName']
        data.model_package_group_name = map['ModelPackageGroupName']
        data.model_package_version = map['ModelPackageVersion']
        data.model_package_arn = map['ModelPackageArn']
        data.model_package_description = map['ModelPackageDescription']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.model_package_status = map['ModelPackageStatus']
        data.model_approval_status = map['ModelApprovalStatus']
        return data
      end
    end

    # Operation Parser for ListModelQualityJobDefinitions
    class ListModelQualityJobDefinitions
      def self.parse(http_resp)
        data = Types::ListModelQualityJobDefinitionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_definition_summaries = (Parsers::MonitoringJobDefinitionSummaryList.parse(map['JobDefinitionSummaries']) unless map['JobDefinitionSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListModels
    class ListModels
      def self.parse(http_resp)
        data = Types::ListModelsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.models = (Parsers::ModelSummaryList.parse(map['Models']) unless map['Models'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ModelSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::ModelSummary.parse(value) unless value.nil?
        end
      end
    end

    class ModelSummary
      def self.parse(map)
        data = Types::ModelSummary.new
        data.model_name = map['ModelName']
        data.model_arn = map['ModelArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        return data
      end
    end

    # Operation Parser for ListMonitoringExecutions
    class ListMonitoringExecutions
      def self.parse(http_resp)
        data = Types::ListMonitoringExecutionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.monitoring_execution_summaries = (Parsers::MonitoringExecutionSummaryList.parse(map['MonitoringExecutionSummaries']) unless map['MonitoringExecutionSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MonitoringExecutionSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::MonitoringExecutionSummary.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListMonitoringSchedules
    class ListMonitoringSchedules
      def self.parse(http_resp)
        data = Types::ListMonitoringSchedulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.monitoring_schedule_summaries = (Parsers::MonitoringScheduleSummaryList.parse(map['MonitoringScheduleSummaries']) unless map['MonitoringScheduleSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MonitoringScheduleSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::MonitoringScheduleSummary.parse(value) unless value.nil?
        end
      end
    end

    class MonitoringScheduleSummary
      def self.parse(map)
        data = Types::MonitoringScheduleSummary.new
        data.monitoring_schedule_name = map['MonitoringScheduleName']
        data.monitoring_schedule_arn = map['MonitoringScheduleArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.monitoring_schedule_status = map['MonitoringScheduleStatus']
        data.endpoint_name = map['EndpointName']
        data.monitoring_job_definition_name = map['MonitoringJobDefinitionName']
        data.monitoring_type = map['MonitoringType']
        return data
      end
    end

    # Operation Parser for ListNotebookInstanceLifecycleConfigs
    class ListNotebookInstanceLifecycleConfigs
      def self.parse(http_resp)
        data = Types::ListNotebookInstanceLifecycleConfigsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.notebook_instance_lifecycle_configs = (Parsers::NotebookInstanceLifecycleConfigSummaryList.parse(map['NotebookInstanceLifecycleConfigs']) unless map['NotebookInstanceLifecycleConfigs'].nil?)
        data
      end
    end

    class NotebookInstanceLifecycleConfigSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::NotebookInstanceLifecycleConfigSummary.parse(value) unless value.nil?
        end
      end
    end

    class NotebookInstanceLifecycleConfigSummary
      def self.parse(map)
        data = Types::NotebookInstanceLifecycleConfigSummary.new
        data.notebook_instance_lifecycle_config_name = map['NotebookInstanceLifecycleConfigName']
        data.notebook_instance_lifecycle_config_arn = map['NotebookInstanceLifecycleConfigArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for ListNotebookInstances
    class ListNotebookInstances
      def self.parse(http_resp)
        data = Types::ListNotebookInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.notebook_instances = (Parsers::NotebookInstanceSummaryList.parse(map['NotebookInstances']) unless map['NotebookInstances'].nil?)
        data
      end
    end

    class NotebookInstanceSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::NotebookInstanceSummary.parse(value) unless value.nil?
        end
      end
    end

    class NotebookInstanceSummary
      def self.parse(map)
        data = Types::NotebookInstanceSummary.new
        data.notebook_instance_name = map['NotebookInstanceName']
        data.notebook_instance_arn = map['NotebookInstanceArn']
        data.notebook_instance_status = map['NotebookInstanceStatus']
        data.url = map['Url']
        data.instance_type = map['InstanceType']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.notebook_instance_lifecycle_config_name = map['NotebookInstanceLifecycleConfigName']
        data.default_code_repository = map['DefaultCodeRepository']
        data.additional_code_repositories = (Parsers::AdditionalCodeRepositoryNamesOrUrls.parse(map['AdditionalCodeRepositories']) unless map['AdditionalCodeRepositories'].nil?)
        return data
      end
    end

    # Operation Parser for ListPipelineExecutionSteps
    class ListPipelineExecutionSteps
      def self.parse(http_resp)
        data = Types::ListPipelineExecutionStepsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_execution_steps = (Parsers::PipelineExecutionStepList.parse(map['PipelineExecutionSteps']) unless map['PipelineExecutionSteps'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PipelineExecutionStepList
      def self.parse(list)
        list.map do |value|
          Parsers::PipelineExecutionStep.parse(value) unless value.nil?
        end
      end
    end

    class PipelineExecutionStep
      def self.parse(map)
        data = Types::PipelineExecutionStep.new
        data.step_name = map['StepName']
        data.step_display_name = map['StepDisplayName']
        data.step_description = map['StepDescription']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.step_status = map['StepStatus']
        data.cache_hit_result = (Parsers::CacheHitResult.parse(map['CacheHitResult']) unless map['CacheHitResult'].nil?)
        data.attempt_count = map['AttemptCount']
        data.failure_reason = map['FailureReason']
        data.metadata = (Parsers::PipelineExecutionStepMetadata.parse(map['Metadata']) unless map['Metadata'].nil?)
        return data
      end
    end

    class PipelineExecutionStepMetadata
      def self.parse(map)
        data = Types::PipelineExecutionStepMetadata.new
        data.training_job = (Parsers::TrainingJobStepMetadata.parse(map['TrainingJob']) unless map['TrainingJob'].nil?)
        data.processing_job = (Parsers::ProcessingJobStepMetadata.parse(map['ProcessingJob']) unless map['ProcessingJob'].nil?)
        data.transform_job = (Parsers::TransformJobStepMetadata.parse(map['TransformJob']) unless map['TransformJob'].nil?)
        data.tuning_job = (Parsers::TuningJobStepMetaData.parse(map['TuningJob']) unless map['TuningJob'].nil?)
        data.model = (Parsers::ModelStepMetadata.parse(map['Model']) unless map['Model'].nil?)
        data.register_model = (Parsers::RegisterModelStepMetadata.parse(map['RegisterModel']) unless map['RegisterModel'].nil?)
        data.condition = (Parsers::ConditionStepMetadata.parse(map['Condition']) unless map['Condition'].nil?)
        data.callback = (Parsers::CallbackStepMetadata.parse(map['Callback']) unless map['Callback'].nil?)
        data.lambda = (Parsers::LambdaStepMetadata.parse(map['Lambda']) unless map['Lambda'].nil?)
        data.quality_check = (Parsers::QualityCheckStepMetadata.parse(map['QualityCheck']) unless map['QualityCheck'].nil?)
        data.clarify_check = (Parsers::ClarifyCheckStepMetadata.parse(map['ClarifyCheck']) unless map['ClarifyCheck'].nil?)
        data.emr = (Parsers::EMRStepMetadata.parse(map['EMR']) unless map['EMR'].nil?)
        data.fail = (Parsers::FailStepMetadata.parse(map['Fail']) unless map['Fail'].nil?)
        return data
      end
    end

    class FailStepMetadata
      def self.parse(map)
        data = Types::FailStepMetadata.new
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class EMRStepMetadata
      def self.parse(map)
        data = Types::EMRStepMetadata.new
        data.cluster_id = map['ClusterId']
        data.step_id = map['StepId']
        data.step_name = map['StepName']
        data.log_file_path = map['LogFilePath']
        return data
      end
    end

    class ClarifyCheckStepMetadata
      def self.parse(map)
        data = Types::ClarifyCheckStepMetadata.new
        data.check_type = map['CheckType']
        data.baseline_used_for_drift_check_constraints = map['BaselineUsedForDriftCheckConstraints']
        data.calculated_baseline_constraints = map['CalculatedBaselineConstraints']
        data.model_package_group_name = map['ModelPackageGroupName']
        data.violation_report = map['ViolationReport']
        data.check_job_arn = map['CheckJobArn']
        data.skip_check = map['SkipCheck']
        data.register_new_baseline = map['RegisterNewBaseline']
        return data
      end
    end

    class QualityCheckStepMetadata
      def self.parse(map)
        data = Types::QualityCheckStepMetadata.new
        data.check_type = map['CheckType']
        data.baseline_used_for_drift_check_statistics = map['BaselineUsedForDriftCheckStatistics']
        data.baseline_used_for_drift_check_constraints = map['BaselineUsedForDriftCheckConstraints']
        data.calculated_baseline_statistics = map['CalculatedBaselineStatistics']
        data.calculated_baseline_constraints = map['CalculatedBaselineConstraints']
        data.model_package_group_name = map['ModelPackageGroupName']
        data.violation_report = map['ViolationReport']
        data.check_job_arn = map['CheckJobArn']
        data.skip_check = map['SkipCheck']
        data.register_new_baseline = map['RegisterNewBaseline']
        return data
      end
    end

    class LambdaStepMetadata
      def self.parse(map)
        data = Types::LambdaStepMetadata.new
        data.arn = map['Arn']
        data.output_parameters = (Parsers::OutputParameterList.parse(map['OutputParameters']) unless map['OutputParameters'].nil?)
        return data
      end
    end

    class OutputParameterList
      def self.parse(list)
        list.map do |value|
          Parsers::OutputParameter.parse(value) unless value.nil?
        end
      end
    end

    class OutputParameter
      def self.parse(map)
        data = Types::OutputParameter.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    class CallbackStepMetadata
      def self.parse(map)
        data = Types::CallbackStepMetadata.new
        data.callback_token = map['CallbackToken']
        data.sqs_queue_url = map['SqsQueueUrl']
        data.output_parameters = (Parsers::OutputParameterList.parse(map['OutputParameters']) unless map['OutputParameters'].nil?)
        return data
      end
    end

    class ConditionStepMetadata
      def self.parse(map)
        data = Types::ConditionStepMetadata.new
        data.outcome = map['Outcome']
        return data
      end
    end

    class RegisterModelStepMetadata
      def self.parse(map)
        data = Types::RegisterModelStepMetadata.new
        data.arn = map['Arn']
        return data
      end
    end

    class ModelStepMetadata
      def self.parse(map)
        data = Types::ModelStepMetadata.new
        data.arn = map['Arn']
        return data
      end
    end

    class TuningJobStepMetaData
      def self.parse(map)
        data = Types::TuningJobStepMetaData.new
        data.arn = map['Arn']
        return data
      end
    end

    class TransformJobStepMetadata
      def self.parse(map)
        data = Types::TransformJobStepMetadata.new
        data.arn = map['Arn']
        return data
      end
    end

    class ProcessingJobStepMetadata
      def self.parse(map)
        data = Types::ProcessingJobStepMetadata.new
        data.arn = map['Arn']
        return data
      end
    end

    class TrainingJobStepMetadata
      def self.parse(map)
        data = Types::TrainingJobStepMetadata.new
        data.arn = map['Arn']
        return data
      end
    end

    class CacheHitResult
      def self.parse(map)
        data = Types::CacheHitResult.new
        data.source_pipeline_execution_arn = map['SourcePipelineExecutionArn']
        return data
      end
    end

    # Operation Parser for ListPipelineExecutions
    class ListPipelineExecutions
      def self.parse(http_resp)
        data = Types::ListPipelineExecutionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_execution_summaries = (Parsers::PipelineExecutionSummaryList.parse(map['PipelineExecutionSummaries']) unless map['PipelineExecutionSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PipelineExecutionSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::PipelineExecutionSummary.parse(value) unless value.nil?
        end
      end
    end

    class PipelineExecutionSummary
      def self.parse(map)
        data = Types::PipelineExecutionSummary.new
        data.pipeline_execution_arn = map['PipelineExecutionArn']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.pipeline_execution_status = map['PipelineExecutionStatus']
        data.pipeline_execution_description = map['PipelineExecutionDescription']
        data.pipeline_execution_display_name = map['PipelineExecutionDisplayName']
        data.pipeline_execution_failure_reason = map['PipelineExecutionFailureReason']
        return data
      end
    end

    # Operation Parser for ListPipelineParametersForExecution
    class ListPipelineParametersForExecution
      def self.parse(http_resp)
        data = Types::ListPipelineParametersForExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_parameters = (Parsers::ParameterList.parse(map['PipelineParameters']) unless map['PipelineParameters'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ParameterList
      def self.parse(list)
        list.map do |value|
          Parsers::Parameter.parse(value) unless value.nil?
        end
      end
    end

    class Parameter
      def self.parse(map)
        data = Types::Parameter.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for ListPipelines
    class ListPipelines
      def self.parse(http_resp)
        data = Types::ListPipelinesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_summaries = (Parsers::PipelineSummaryList.parse(map['PipelineSummaries']) unless map['PipelineSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PipelineSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::PipelineSummary.parse(value) unless value.nil?
        end
      end
    end

    class PipelineSummary
      def self.parse(map)
        data = Types::PipelineSummary.new
        data.pipeline_arn = map['PipelineArn']
        data.pipeline_name = map['PipelineName']
        data.pipeline_display_name = map['PipelineDisplayName']
        data.pipeline_description = map['PipelineDescription']
        data.role_arn = map['RoleArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_execution_time = Time.at(map['LastExecutionTime'].to_i) if map['LastExecutionTime']
        return data
      end
    end

    # Operation Parser for ListProcessingJobs
    class ListProcessingJobs
      def self.parse(http_resp)
        data = Types::ListProcessingJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.processing_job_summaries = (Parsers::ProcessingJobSummaries.parse(map['ProcessingJobSummaries']) unless map['ProcessingJobSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ProcessingJobSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::ProcessingJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class ProcessingJobSummary
      def self.parse(map)
        data = Types::ProcessingJobSummary.new
        data.processing_job_name = map['ProcessingJobName']
        data.processing_job_arn = map['ProcessingJobArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.processing_end_time = Time.at(map['ProcessingEndTime'].to_i) if map['ProcessingEndTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.processing_job_status = map['ProcessingJobStatus']
        data.failure_reason = map['FailureReason']
        data.exit_message = map['ExitMessage']
        return data
      end
    end

    # Operation Parser for ListProjects
    class ListProjects
      def self.parse(http_resp)
        data = Types::ListProjectsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.project_summary_list = (Parsers::ProjectSummaryList.parse(map['ProjectSummaryList']) unless map['ProjectSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ProjectSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::ProjectSummary.parse(value) unless value.nil?
        end
      end
    end

    class ProjectSummary
      def self.parse(map)
        data = Types::ProjectSummary.new
        data.project_name = map['ProjectName']
        data.project_description = map['ProjectDescription']
        data.project_arn = map['ProjectArn']
        data.project_id = map['ProjectId']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.project_status = map['ProjectStatus']
        return data
      end
    end

    # Operation Parser for ListStudioLifecycleConfigs
    class ListStudioLifecycleConfigs
      def self.parse(http_resp)
        data = Types::ListStudioLifecycleConfigsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.studio_lifecycle_configs = (Parsers::StudioLifecycleConfigsList.parse(map['StudioLifecycleConfigs']) unless map['StudioLifecycleConfigs'].nil?)
        data
      end
    end

    class StudioLifecycleConfigsList
      def self.parse(list)
        list.map do |value|
          Parsers::StudioLifecycleConfigDetails.parse(value) unless value.nil?
        end
      end
    end

    class StudioLifecycleConfigDetails
      def self.parse(map)
        data = Types::StudioLifecycleConfigDetails.new
        data.studio_lifecycle_config_arn = map['StudioLifecycleConfigArn']
        data.studio_lifecycle_config_name = map['StudioLifecycleConfigName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.studio_lifecycle_config_app_type = map['StudioLifecycleConfigAppType']
        return data
      end
    end

    # Operation Parser for ListSubscribedWorkteams
    class ListSubscribedWorkteams
      def self.parse(http_resp)
        data = Types::ListSubscribedWorkteamsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.subscribed_workteams = (Parsers::SubscribedWorkteams.parse(map['SubscribedWorkteams']) unless map['SubscribedWorkteams'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SubscribedWorkteams
      def self.parse(list)
        list.map do |value|
          Parsers::SubscribedWorkteam.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListTags
    class ListTags
      def self.parse(http_resp)
        data = Types::ListTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListTrainingJobs
    class ListTrainingJobs
      def self.parse(http_resp)
        data = Types::ListTrainingJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.training_job_summaries = (Parsers::TrainingJobSummaries.parse(map['TrainingJobSummaries']) unless map['TrainingJobSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TrainingJobSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::TrainingJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class TrainingJobSummary
      def self.parse(map)
        data = Types::TrainingJobSummary.new
        data.training_job_name = map['TrainingJobName']
        data.training_job_arn = map['TrainingJobArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.training_end_time = Time.at(map['TrainingEndTime'].to_i) if map['TrainingEndTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.training_job_status = map['TrainingJobStatus']
        return data
      end
    end

    # Operation Parser for ListTrainingJobsForHyperParameterTuningJob
    class ListTrainingJobsForHyperParameterTuningJob
      def self.parse(http_resp)
        data = Types::ListTrainingJobsForHyperParameterTuningJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.training_job_summaries = (Parsers::HyperParameterTrainingJobSummaries.parse(map['TrainingJobSummaries']) unless map['TrainingJobSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class HyperParameterTrainingJobSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::HyperParameterTrainingJobSummary.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListTransformJobs
    class ListTransformJobs
      def self.parse(http_resp)
        data = Types::ListTransformJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.transform_job_summaries = (Parsers::TransformJobSummaries.parse(map['TransformJobSummaries']) unless map['TransformJobSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TransformJobSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::TransformJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class TransformJobSummary
      def self.parse(map)
        data = Types::TransformJobSummary.new
        data.transform_job_name = map['TransformJobName']
        data.transform_job_arn = map['TransformJobArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.transform_end_time = Time.at(map['TransformEndTime'].to_i) if map['TransformEndTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.transform_job_status = map['TransformJobStatus']
        data.failure_reason = map['FailureReason']
        return data
      end
    end

    # Operation Parser for ListTrialComponents
    class ListTrialComponents
      def self.parse(http_resp)
        data = Types::ListTrialComponentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trial_component_summaries = (Parsers::TrialComponentSummaries.parse(map['TrialComponentSummaries']) unless map['TrialComponentSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TrialComponentSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::TrialComponentSummary.parse(value) unless value.nil?
        end
      end
    end

    class TrialComponentSummary
      def self.parse(map)
        data = Types::TrialComponentSummary.new
        data.trial_component_name = map['TrialComponentName']
        data.trial_component_arn = map['TrialComponentArn']
        data.display_name = map['DisplayName']
        data.trial_component_source = (Parsers::TrialComponentSource.parse(map['TrialComponentSource']) unless map['TrialComponentSource'].nil?)
        data.status = (Parsers::TrialComponentStatus.parse(map['Status']) unless map['Status'].nil?)
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_modified_by = (Parsers::UserContext.parse(map['LastModifiedBy']) unless map['LastModifiedBy'].nil?)
        return data
      end
    end

    # Operation Parser for ListTrials
    class ListTrials
      def self.parse(http_resp)
        data = Types::ListTrialsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trial_summaries = (Parsers::TrialSummaries.parse(map['TrialSummaries']) unless map['TrialSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TrialSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::TrialSummary.parse(value) unless value.nil?
        end
      end
    end

    class TrialSummary
      def self.parse(map)
        data = Types::TrialSummary.new
        data.trial_arn = map['TrialArn']
        data.trial_name = map['TrialName']
        data.display_name = map['DisplayName']
        data.trial_source = (Parsers::TrialSource.parse(map['TrialSource']) unless map['TrialSource'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for ListUserProfiles
    class ListUserProfiles
      def self.parse(http_resp)
        data = Types::ListUserProfilesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_profiles = (Parsers::UserProfileList.parse(map['UserProfiles']) unless map['UserProfiles'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class UserProfileList
      def self.parse(list)
        list.map do |value|
          Parsers::UserProfileDetails.parse(value) unless value.nil?
        end
      end
    end

    class UserProfileDetails
      def self.parse(map)
        data = Types::UserProfileDetails.new
        data.domain_id = map['DomainId']
        data.user_profile_name = map['UserProfileName']
        data.status = map['Status']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for ListWorkforces
    class ListWorkforces
      def self.parse(http_resp)
        data = Types::ListWorkforcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.workforces = (Parsers::Workforces.parse(map['Workforces']) unless map['Workforces'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Workforces
      def self.parse(list)
        list.map do |value|
          Parsers::Workforce.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListWorkteams
    class ListWorkteams
      def self.parse(http_resp)
        data = Types::ListWorkteamsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.workteams = (Parsers::Workteams.parse(map['Workteams']) unless map['Workteams'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Workteams
      def self.parse(list)
        list.map do |value|
          Parsers::Workteam.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for PutModelPackageGroupPolicy
    class PutModelPackageGroupPolicy
      def self.parse(http_resp)
        data = Types::PutModelPackageGroupPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_package_group_arn = map['ModelPackageGroupArn']
        data
      end
    end

    # Operation Parser for QueryLineage
    class QueryLineage
      def self.parse(http_resp)
        data = Types::QueryLineageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vertices = (Parsers::Vertices.parse(map['Vertices']) unless map['Vertices'].nil?)
        data.edges = (Parsers::Edges.parse(map['Edges']) unless map['Edges'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Edges
      def self.parse(list)
        list.map do |value|
          Parsers::Edge.parse(value) unless value.nil?
        end
      end
    end

    class Edge
      def self.parse(map)
        data = Types::Edge.new
        data.source_arn = map['SourceArn']
        data.destination_arn = map['DestinationArn']
        data.association_type = map['AssociationType']
        return data
      end
    end

    class Vertices
      def self.parse(list)
        list.map do |value|
          Parsers::Vertex.parse(value) unless value.nil?
        end
      end
    end

    class Vertex
      def self.parse(map)
        data = Types::Vertex.new
        data.arn = map['Arn']
        data.type = map['Type']
        data.lineage_type = map['LineageType']
        return data
      end
    end

    # Operation Parser for RegisterDevices
    class RegisterDevices
      def self.parse(http_resp)
        data = Types::RegisterDevicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RenderUiTemplate
    class RenderUiTemplate
      def self.parse(http_resp)
        data = Types::RenderUiTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rendered_content = map['RenderedContent']
        data.errors = (Parsers::RenderingErrorList.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class RenderingErrorList
      def self.parse(list)
        list.map do |value|
          Parsers::RenderingError.parse(value) unless value.nil?
        end
      end
    end

    class RenderingError
      def self.parse(map)
        data = Types::RenderingError.new
        data.code = map['Code']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for RetryPipelineExecution
    class RetryPipelineExecution
      def self.parse(http_resp)
        data = Types::RetryPipelineExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_execution_arn = map['PipelineExecutionArn']
        data
      end
    end

    # Operation Parser for Search
    class Search
      def self.parse(http_resp)
        data = Types::SearchOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.results = (Parsers::SearchResultsList.parse(map['Results']) unless map['Results'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SearchResultsList
      def self.parse(list)
        list.map do |value|
          Parsers::SearchRecord.parse(value) unless value.nil?
        end
      end
    end

    class SearchRecord
      def self.parse(map)
        data = Types::SearchRecord.new
        data.training_job = (Parsers::TrainingJob.parse(map['TrainingJob']) unless map['TrainingJob'].nil?)
        data.experiment = (Parsers::Experiment.parse(map['Experiment']) unless map['Experiment'].nil?)
        data.trial = (Parsers::Trial.parse(map['Trial']) unless map['Trial'].nil?)
        data.trial_component = (Parsers::TrialComponent.parse(map['TrialComponent']) unless map['TrialComponent'].nil?)
        data.endpoint = (Parsers::Endpoint.parse(map['Endpoint']) unless map['Endpoint'].nil?)
        data.model_package = (Parsers::ModelPackage.parse(map['ModelPackage']) unless map['ModelPackage'].nil?)
        data.model_package_group = (Parsers::ModelPackageGroup.parse(map['ModelPackageGroup']) unless map['ModelPackageGroup'].nil?)
        data.pipeline = (Parsers::Pipeline.parse(map['Pipeline']) unless map['Pipeline'].nil?)
        data.pipeline_execution = (Parsers::PipelineExecution.parse(map['PipelineExecution']) unless map['PipelineExecution'].nil?)
        data.feature_group = (Parsers::FeatureGroup.parse(map['FeatureGroup']) unless map['FeatureGroup'].nil?)
        data.project = (Parsers::Project.parse(map['Project']) unless map['Project'].nil?)
        return data
      end
    end

    class Project
      def self.parse(map)
        data = Types::Project.new
        data.project_arn = map['ProjectArn']
        data.project_name = map['ProjectName']
        data.project_id = map['ProjectId']
        data.project_description = map['ProjectDescription']
        data.service_catalog_provisioning_details = (Parsers::ServiceCatalogProvisioningDetails.parse(map['ServiceCatalogProvisioningDetails']) unless map['ServiceCatalogProvisioningDetails'].nil?)
        data.service_catalog_provisioned_product_details = (Parsers::ServiceCatalogProvisionedProductDetails.parse(map['ServiceCatalogProvisionedProductDetails']) unless map['ServiceCatalogProvisionedProductDetails'].nil?)
        data.project_status = map['ProjectStatus']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_modified_by = (Parsers::UserContext.parse(map['LastModifiedBy']) unless map['LastModifiedBy'].nil?)
        return data
      end
    end

    class FeatureGroup
      def self.parse(map)
        data = Types::FeatureGroup.new
        data.feature_group_arn = map['FeatureGroupArn']
        data.feature_group_name = map['FeatureGroupName']
        data.record_identifier_feature_name = map['RecordIdentifierFeatureName']
        data.event_time_feature_name = map['EventTimeFeatureName']
        data.feature_definitions = (Parsers::FeatureDefinitions.parse(map['FeatureDefinitions']) unless map['FeatureDefinitions'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.online_store_config = (Parsers::OnlineStoreConfig.parse(map['OnlineStoreConfig']) unless map['OnlineStoreConfig'].nil?)
        data.offline_store_config = (Parsers::OfflineStoreConfig.parse(map['OfflineStoreConfig']) unless map['OfflineStoreConfig'].nil?)
        data.role_arn = map['RoleArn']
        data.feature_group_status = map['FeatureGroupStatus']
        data.offline_store_status = (Parsers::OfflineStoreStatus.parse(map['OfflineStoreStatus']) unless map['OfflineStoreStatus'].nil?)
        data.failure_reason = map['FailureReason']
        data.description = map['Description']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class PipelineExecution
      def self.parse(map)
        data = Types::PipelineExecution.new
        data.pipeline_arn = map['PipelineArn']
        data.pipeline_execution_arn = map['PipelineExecutionArn']
        data.pipeline_execution_display_name = map['PipelineExecutionDisplayName']
        data.pipeline_execution_status = map['PipelineExecutionStatus']
        data.pipeline_execution_description = map['PipelineExecutionDescription']
        data.pipeline_experiment_config = (Parsers::PipelineExperimentConfig.parse(map['PipelineExperimentConfig']) unless map['PipelineExperimentConfig'].nil?)
        data.failure_reason = map['FailureReason']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.last_modified_by = (Parsers::UserContext.parse(map['LastModifiedBy']) unless map['LastModifiedBy'].nil?)
        data.parallelism_configuration = (Parsers::ParallelismConfiguration.parse(map['ParallelismConfiguration']) unless map['ParallelismConfiguration'].nil?)
        data.pipeline_parameters = (Parsers::ParameterList.parse(map['PipelineParameters']) unless map['PipelineParameters'].nil?)
        return data
      end
    end

    class Pipeline
      def self.parse(map)
        data = Types::Pipeline.new
        data.pipeline_arn = map['PipelineArn']
        data.pipeline_name = map['PipelineName']
        data.pipeline_display_name = map['PipelineDisplayName']
        data.pipeline_description = map['PipelineDescription']
        data.role_arn = map['RoleArn']
        data.pipeline_status = map['PipelineStatus']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_run_time = Time.at(map['LastRunTime'].to_i) if map['LastRunTime']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.last_modified_by = (Parsers::UserContext.parse(map['LastModifiedBy']) unless map['LastModifiedBy'].nil?)
        data.parallelism_configuration = (Parsers::ParallelismConfiguration.parse(map['ParallelismConfiguration']) unless map['ParallelismConfiguration'].nil?)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class ModelPackageGroup
      def self.parse(map)
        data = Types::ModelPackageGroup.new
        data.model_package_group_name = map['ModelPackageGroupName']
        data.model_package_group_arn = map['ModelPackageGroupArn']
        data.model_package_group_description = map['ModelPackageGroupDescription']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.model_package_group_status = map['ModelPackageGroupStatus']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class ModelPackage
      def self.parse(map)
        data = Types::ModelPackage.new
        data.model_package_name = map['ModelPackageName']
        data.model_package_group_name = map['ModelPackageGroupName']
        data.model_package_version = map['ModelPackageVersion']
        data.model_package_arn = map['ModelPackageArn']
        data.model_package_description = map['ModelPackageDescription']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.inference_specification = (Parsers::InferenceSpecification.parse(map['InferenceSpecification']) unless map['InferenceSpecification'].nil?)
        data.source_algorithm_specification = (Parsers::SourceAlgorithmSpecification.parse(map['SourceAlgorithmSpecification']) unless map['SourceAlgorithmSpecification'].nil?)
        data.validation_specification = (Parsers::ModelPackageValidationSpecification.parse(map['ValidationSpecification']) unless map['ValidationSpecification'].nil?)
        data.model_package_status = map['ModelPackageStatus']
        data.model_package_status_details = (Parsers::ModelPackageStatusDetails.parse(map['ModelPackageStatusDetails']) unless map['ModelPackageStatusDetails'].nil?)
        data.certify_for_marketplace = map['CertifyForMarketplace']
        data.model_approval_status = map['ModelApprovalStatus']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.metadata_properties = (Parsers::MetadataProperties.parse(map['MetadataProperties']) unless map['MetadataProperties'].nil?)
        data.model_metrics = (Parsers::ModelMetrics.parse(map['ModelMetrics']) unless map['ModelMetrics'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_modified_by = (Parsers::UserContext.parse(map['LastModifiedBy']) unless map['LastModifiedBy'].nil?)
        data.approval_description = map['ApprovalDescription']
        data.domain = map['Domain']
        data.task = map['Task']
        data.sample_payload_url = map['SamplePayloadUrl']
        data.additional_inference_specifications = (Parsers::AdditionalInferenceSpecifications.parse(map['AdditionalInferenceSpecifications']) unless map['AdditionalInferenceSpecifications'].nil?)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.customer_metadata_properties = (Parsers::CustomerMetadataMap.parse(map['CustomerMetadataProperties']) unless map['CustomerMetadataProperties'].nil?)
        data.drift_check_baselines = (Parsers::DriftCheckBaselines.parse(map['DriftCheckBaselines']) unless map['DriftCheckBaselines'].nil?)
        return data
      end
    end

    class Endpoint
      def self.parse(map)
        data = Types::Endpoint.new
        data.endpoint_name = map['EndpointName']
        data.endpoint_arn = map['EndpointArn']
        data.endpoint_config_name = map['EndpointConfigName']
        data.production_variants = (Parsers::ProductionVariantSummaryList.parse(map['ProductionVariants']) unless map['ProductionVariants'].nil?)
        data.data_capture_config = (Parsers::DataCaptureConfigSummary.parse(map['DataCaptureConfig']) unless map['DataCaptureConfig'].nil?)
        data.endpoint_status = map['EndpointStatus']
        data.failure_reason = map['FailureReason']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.monitoring_schedules = (Parsers::MonitoringScheduleList.parse(map['MonitoringSchedules']) unless map['MonitoringSchedules'].nil?)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class MonitoringScheduleList
      def self.parse(list)
        list.map do |value|
          Parsers::MonitoringSchedule.parse(value) unless value.nil?
        end
      end
    end

    class MonitoringSchedule
      def self.parse(map)
        data = Types::MonitoringSchedule.new
        data.monitoring_schedule_arn = map['MonitoringScheduleArn']
        data.monitoring_schedule_name = map['MonitoringScheduleName']
        data.monitoring_schedule_status = map['MonitoringScheduleStatus']
        data.monitoring_type = map['MonitoringType']
        data.failure_reason = map['FailureReason']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.monitoring_schedule_config = (Parsers::MonitoringScheduleConfig.parse(map['MonitoringScheduleConfig']) unless map['MonitoringScheduleConfig'].nil?)
        data.endpoint_name = map['EndpointName']
        data.last_monitoring_execution_summary = (Parsers::MonitoringExecutionSummary.parse(map['LastMonitoringExecutionSummary']) unless map['LastMonitoringExecutionSummary'].nil?)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class TrialComponent
      def self.parse(map)
        data = Types::TrialComponent.new
        data.trial_component_name = map['TrialComponentName']
        data.display_name = map['DisplayName']
        data.trial_component_arn = map['TrialComponentArn']
        data.source = (Parsers::TrialComponentSource.parse(map['Source']) unless map['Source'].nil?)
        data.status = (Parsers::TrialComponentStatus.parse(map['Status']) unless map['Status'].nil?)
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_modified_by = (Parsers::UserContext.parse(map['LastModifiedBy']) unless map['LastModifiedBy'].nil?)
        data.parameters = (Parsers::TrialComponentParameters.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.input_artifacts = (Parsers::TrialComponentArtifacts.parse(map['InputArtifacts']) unless map['InputArtifacts'].nil?)
        data.output_artifacts = (Parsers::TrialComponentArtifacts.parse(map['OutputArtifacts']) unless map['OutputArtifacts'].nil?)
        data.metrics = (Parsers::TrialComponentMetricSummaries.parse(map['Metrics']) unless map['Metrics'].nil?)
        data.metadata_properties = (Parsers::MetadataProperties.parse(map['MetadataProperties']) unless map['MetadataProperties'].nil?)
        data.source_detail = (Parsers::TrialComponentSourceDetail.parse(map['SourceDetail']) unless map['SourceDetail'].nil?)
        data.lineage_group_arn = map['LineageGroupArn']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.parents = (Parsers::Parents.parse(map['Parents']) unless map['Parents'].nil?)
        return data
      end
    end

    class Parents
      def self.parse(list)
        list.map do |value|
          Parsers::Parent.parse(value) unless value.nil?
        end
      end
    end

    class Parent
      def self.parse(map)
        data = Types::Parent.new
        data.trial_name = map['TrialName']
        data.experiment_name = map['ExperimentName']
        return data
      end
    end

    class TrialComponentSourceDetail
      def self.parse(map)
        data = Types::TrialComponentSourceDetail.new
        data.source_arn = map['SourceArn']
        data.training_job = (Parsers::TrainingJob.parse(map['TrainingJob']) unless map['TrainingJob'].nil?)
        data.processing_job = (Parsers::ProcessingJob.parse(map['ProcessingJob']) unless map['ProcessingJob'].nil?)
        data.transform_job = (Parsers::TransformJob.parse(map['TransformJob']) unless map['TransformJob'].nil?)
        return data
      end
    end

    class TransformJob
      def self.parse(map)
        data = Types::TransformJob.new
        data.transform_job_name = map['TransformJobName']
        data.transform_job_arn = map['TransformJobArn']
        data.transform_job_status = map['TransformJobStatus']
        data.failure_reason = map['FailureReason']
        data.model_name = map['ModelName']
        data.max_concurrent_transforms = map['MaxConcurrentTransforms']
        data.model_client_config = (Parsers::ModelClientConfig.parse(map['ModelClientConfig']) unless map['ModelClientConfig'].nil?)
        data.max_payload_in_mb = map['MaxPayloadInMB']
        data.batch_strategy = map['BatchStrategy']
        data.environment = (Parsers::TransformEnvironmentMap.parse(map['Environment']) unless map['Environment'].nil?)
        data.transform_input = (Parsers::TransformInput.parse(map['TransformInput']) unless map['TransformInput'].nil?)
        data.transform_output = (Parsers::TransformOutput.parse(map['TransformOutput']) unless map['TransformOutput'].nil?)
        data.transform_resources = (Parsers::TransformResources.parse(map['TransformResources']) unless map['TransformResources'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.transform_start_time = Time.at(map['TransformStartTime'].to_i) if map['TransformStartTime']
        data.transform_end_time = Time.at(map['TransformEndTime'].to_i) if map['TransformEndTime']
        data.labeling_job_arn = map['LabelingJobArn']
        data.auto_ml_job_arn = map['AutoMLJobArn']
        data.data_processing = (Parsers::DataProcessing.parse(map['DataProcessing']) unless map['DataProcessing'].nil?)
        data.experiment_config = (Parsers::ExperimentConfig.parse(map['ExperimentConfig']) unless map['ExperimentConfig'].nil?)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class ProcessingJob
      def self.parse(map)
        data = Types::ProcessingJob.new
        data.processing_inputs = (Parsers::ProcessingInputs.parse(map['ProcessingInputs']) unless map['ProcessingInputs'].nil?)
        data.processing_output_config = (Parsers::ProcessingOutputConfig.parse(map['ProcessingOutputConfig']) unless map['ProcessingOutputConfig'].nil?)
        data.processing_job_name = map['ProcessingJobName']
        data.processing_resources = (Parsers::ProcessingResources.parse(map['ProcessingResources']) unless map['ProcessingResources'].nil?)
        data.stopping_condition = (Parsers::ProcessingStoppingCondition.parse(map['StoppingCondition']) unless map['StoppingCondition'].nil?)
        data.app_specification = (Parsers::AppSpecification.parse(map['AppSpecification']) unless map['AppSpecification'].nil?)
        data.environment = (Parsers::ProcessingEnvironmentMap.parse(map['Environment']) unless map['Environment'].nil?)
        data.network_config = (Parsers::NetworkConfig.parse(map['NetworkConfig']) unless map['NetworkConfig'].nil?)
        data.role_arn = map['RoleArn']
        data.experiment_config = (Parsers::ExperimentConfig.parse(map['ExperimentConfig']) unless map['ExperimentConfig'].nil?)
        data.processing_job_arn = map['ProcessingJobArn']
        data.processing_job_status = map['ProcessingJobStatus']
        data.exit_message = map['ExitMessage']
        data.failure_reason = map['FailureReason']
        data.processing_end_time = Time.at(map['ProcessingEndTime'].to_i) if map['ProcessingEndTime']
        data.processing_start_time = Time.at(map['ProcessingStartTime'].to_i) if map['ProcessingStartTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.monitoring_schedule_arn = map['MonitoringScheduleArn']
        data.auto_ml_job_arn = map['AutoMLJobArn']
        data.training_job_arn = map['TrainingJobArn']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class TrainingJob
      def self.parse(map)
        data = Types::TrainingJob.new
        data.training_job_name = map['TrainingJobName']
        data.training_job_arn = map['TrainingJobArn']
        data.tuning_job_arn = map['TuningJobArn']
        data.labeling_job_arn = map['LabelingJobArn']
        data.auto_ml_job_arn = map['AutoMLJobArn']
        data.model_artifacts = (Parsers::ModelArtifacts.parse(map['ModelArtifacts']) unless map['ModelArtifacts'].nil?)
        data.training_job_status = map['TrainingJobStatus']
        data.secondary_status = map['SecondaryStatus']
        data.failure_reason = map['FailureReason']
        data.hyper_parameters = (Parsers::HyperParameters.parse(map['HyperParameters']) unless map['HyperParameters'].nil?)
        data.algorithm_specification = (Parsers::AlgorithmSpecification.parse(map['AlgorithmSpecification']) unless map['AlgorithmSpecification'].nil?)
        data.role_arn = map['RoleArn']
        data.input_data_config = (Parsers::InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.output_data_config = (Parsers::OutputDataConfig.parse(map['OutputDataConfig']) unless map['OutputDataConfig'].nil?)
        data.resource_config = (Parsers::ResourceConfig.parse(map['ResourceConfig']) unless map['ResourceConfig'].nil?)
        data.vpc_config = (Parsers::VpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        data.stopping_condition = (Parsers::StoppingCondition.parse(map['StoppingCondition']) unless map['StoppingCondition'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.training_start_time = Time.at(map['TrainingStartTime'].to_i) if map['TrainingStartTime']
        data.training_end_time = Time.at(map['TrainingEndTime'].to_i) if map['TrainingEndTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.secondary_status_transitions = (Parsers::SecondaryStatusTransitions.parse(map['SecondaryStatusTransitions']) unless map['SecondaryStatusTransitions'].nil?)
        data.final_metric_data_list = (Parsers::FinalMetricDataList.parse(map['FinalMetricDataList']) unless map['FinalMetricDataList'].nil?)
        data.enable_network_isolation = map['EnableNetworkIsolation']
        data.enable_inter_container_traffic_encryption = map['EnableInterContainerTrafficEncryption']
        data.enable_managed_spot_training = map['EnableManagedSpotTraining']
        data.checkpoint_config = (Parsers::CheckpointConfig.parse(map['CheckpointConfig']) unless map['CheckpointConfig'].nil?)
        data.training_time_in_seconds = map['TrainingTimeInSeconds']
        data.billable_time_in_seconds = map['BillableTimeInSeconds']
        data.debug_hook_config = (Parsers::DebugHookConfig.parse(map['DebugHookConfig']) unless map['DebugHookConfig'].nil?)
        data.experiment_config = (Parsers::ExperimentConfig.parse(map['ExperimentConfig']) unless map['ExperimentConfig'].nil?)
        data.debug_rule_configurations = (Parsers::DebugRuleConfigurations.parse(map['DebugRuleConfigurations']) unless map['DebugRuleConfigurations'].nil?)
        data.tensor_board_output_config = (Parsers::TensorBoardOutputConfig.parse(map['TensorBoardOutputConfig']) unless map['TensorBoardOutputConfig'].nil?)
        data.debug_rule_evaluation_statuses = (Parsers::DebugRuleEvaluationStatuses.parse(map['DebugRuleEvaluationStatuses']) unless map['DebugRuleEvaluationStatuses'].nil?)
        data.environment = (Parsers::TrainingEnvironmentMap.parse(map['Environment']) unless map['Environment'].nil?)
        data.retry_strategy = (Parsers::RetryStrategy.parse(map['RetryStrategy']) unless map['RetryStrategy'].nil?)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class Trial
      def self.parse(map)
        data = Types::Trial.new
        data.trial_name = map['TrialName']
        data.trial_arn = map['TrialArn']
        data.display_name = map['DisplayName']
        data.experiment_name = map['ExperimentName']
        data.source = (Parsers::TrialSource.parse(map['Source']) unless map['Source'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_modified_by = (Parsers::UserContext.parse(map['LastModifiedBy']) unless map['LastModifiedBy'].nil?)
        data.metadata_properties = (Parsers::MetadataProperties.parse(map['MetadataProperties']) unless map['MetadataProperties'].nil?)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.trial_component_summaries = (Parsers::TrialComponentSimpleSummaries.parse(map['TrialComponentSummaries']) unless map['TrialComponentSummaries'].nil?)
        return data
      end
    end

    class TrialComponentSimpleSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::TrialComponentSimpleSummary.parse(value) unless value.nil?
        end
      end
    end

    class TrialComponentSimpleSummary
      def self.parse(map)
        data = Types::TrialComponentSimpleSummary.new
        data.trial_component_name = map['TrialComponentName']
        data.trial_component_arn = map['TrialComponentArn']
        data.trial_component_source = (Parsers::TrialComponentSource.parse(map['TrialComponentSource']) unless map['TrialComponentSource'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        return data
      end
    end

    class Experiment
      def self.parse(map)
        data = Types::Experiment.new
        data.experiment_name = map['ExperimentName']
        data.experiment_arn = map['ExperimentArn']
        data.display_name = map['DisplayName']
        data.source = (Parsers::ExperimentSource.parse(map['Source']) unless map['Source'].nil?)
        data.description = map['Description']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.created_by = (Parsers::UserContext.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.last_modified_by = (Parsers::UserContext.parse(map['LastModifiedBy']) unless map['LastModifiedBy'].nil?)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Operation Parser for SendPipelineExecutionStepFailure
    class SendPipelineExecutionStepFailure
      def self.parse(http_resp)
        data = Types::SendPipelineExecutionStepFailureOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_execution_arn = map['PipelineExecutionArn']
        data
      end
    end

    # Operation Parser for SendPipelineExecutionStepSuccess
    class SendPipelineExecutionStepSuccess
      def self.parse(http_resp)
        data = Types::SendPipelineExecutionStepSuccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_execution_arn = map['PipelineExecutionArn']
        data
      end
    end

    # Operation Parser for StartMonitoringSchedule
    class StartMonitoringSchedule
      def self.parse(http_resp)
        data = Types::StartMonitoringScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartNotebookInstance
    class StartNotebookInstance
      def self.parse(http_resp)
        data = Types::StartNotebookInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartPipelineExecution
    class StartPipelineExecution
      def self.parse(http_resp)
        data = Types::StartPipelineExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_execution_arn = map['PipelineExecutionArn']
        data
      end
    end

    # Operation Parser for StopAutoMLJob
    class StopAutoMLJob
      def self.parse(http_resp)
        data = Types::StopAutoMLJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopCompilationJob
    class StopCompilationJob
      def self.parse(http_resp)
        data = Types::StopCompilationJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopEdgePackagingJob
    class StopEdgePackagingJob
      def self.parse(http_resp)
        data = Types::StopEdgePackagingJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopHyperParameterTuningJob
    class StopHyperParameterTuningJob
      def self.parse(http_resp)
        data = Types::StopHyperParameterTuningJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopInferenceRecommendationsJob
    class StopInferenceRecommendationsJob
      def self.parse(http_resp)
        data = Types::StopInferenceRecommendationsJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopLabelingJob
    class StopLabelingJob
      def self.parse(http_resp)
        data = Types::StopLabelingJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopMonitoringSchedule
    class StopMonitoringSchedule
      def self.parse(http_resp)
        data = Types::StopMonitoringScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopNotebookInstance
    class StopNotebookInstance
      def self.parse(http_resp)
        data = Types::StopNotebookInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopPipelineExecution
    class StopPipelineExecution
      def self.parse(http_resp)
        data = Types::StopPipelineExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_execution_arn = map['PipelineExecutionArn']
        data
      end
    end

    # Operation Parser for StopProcessingJob
    class StopProcessingJob
      def self.parse(http_resp)
        data = Types::StopProcessingJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopTrainingJob
    class StopTrainingJob
      def self.parse(http_resp)
        data = Types::StopTrainingJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopTransformJob
    class StopTransformJob
      def self.parse(http_resp)
        data = Types::StopTransformJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateAction
    class UpdateAction
      def self.parse(http_resp)
        data = Types::UpdateActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.action_arn = map['ActionArn']
        data
      end
    end

    # Operation Parser for UpdateAppImageConfig
    class UpdateAppImageConfig
      def self.parse(http_resp)
        data = Types::UpdateAppImageConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.app_image_config_arn = map['AppImageConfigArn']
        data
      end
    end

    # Operation Parser for UpdateArtifact
    class UpdateArtifact
      def self.parse(http_resp)
        data = Types::UpdateArtifactOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.artifact_arn = map['ArtifactArn']
        data
      end
    end

    # Operation Parser for UpdateCodeRepository
    class UpdateCodeRepository
      def self.parse(http_resp)
        data = Types::UpdateCodeRepositoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.code_repository_arn = map['CodeRepositoryArn']
        data
      end
    end

    # Operation Parser for UpdateContext
    class UpdateContext
      def self.parse(http_resp)
        data = Types::UpdateContextOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.context_arn = map['ContextArn']
        data
      end
    end

    # Operation Parser for UpdateDeviceFleet
    class UpdateDeviceFleet
      def self.parse(http_resp)
        data = Types::UpdateDeviceFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateDevices
    class UpdateDevices
      def self.parse(http_resp)
        data = Types::UpdateDevicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateDomain
    class UpdateDomain
      def self.parse(http_resp)
        data = Types::UpdateDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.domain_arn = map['DomainArn']
        data
      end
    end

    # Operation Parser for UpdateEndpoint
    class UpdateEndpoint
      def self.parse(http_resp)
        data = Types::UpdateEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint_arn = map['EndpointArn']
        data
      end
    end

    # Operation Parser for UpdateEndpointWeightsAndCapacities
    class UpdateEndpointWeightsAndCapacities
      def self.parse(http_resp)
        data = Types::UpdateEndpointWeightsAndCapacitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint_arn = map['EndpointArn']
        data
      end
    end

    # Operation Parser for UpdateExperiment
    class UpdateExperiment
      def self.parse(http_resp)
        data = Types::UpdateExperimentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.experiment_arn = map['ExperimentArn']
        data
      end
    end

    # Operation Parser for UpdateImage
    class UpdateImage
      def self.parse(http_resp)
        data = Types::UpdateImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.image_arn = map['ImageArn']
        data
      end
    end

    # Operation Parser for UpdateModelPackage
    class UpdateModelPackage
      def self.parse(http_resp)
        data = Types::UpdateModelPackageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_package_arn = map['ModelPackageArn']
        data
      end
    end

    # Operation Parser for UpdateMonitoringSchedule
    class UpdateMonitoringSchedule
      def self.parse(http_resp)
        data = Types::UpdateMonitoringScheduleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.monitoring_schedule_arn = map['MonitoringScheduleArn']
        data
      end
    end

    # Operation Parser for UpdateNotebookInstance
    class UpdateNotebookInstance
      def self.parse(http_resp)
        data = Types::UpdateNotebookInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateNotebookInstanceLifecycleConfig
    class UpdateNotebookInstanceLifecycleConfig
      def self.parse(http_resp)
        data = Types::UpdateNotebookInstanceLifecycleConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdatePipeline
    class UpdatePipeline
      def self.parse(http_resp)
        data = Types::UpdatePipelineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_arn = map['PipelineArn']
        data
      end
    end

    # Operation Parser for UpdatePipelineExecution
    class UpdatePipelineExecution
      def self.parse(http_resp)
        data = Types::UpdatePipelineExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_execution_arn = map['PipelineExecutionArn']
        data
      end
    end

    # Operation Parser for UpdateProject
    class UpdateProject
      def self.parse(http_resp)
        data = Types::UpdateProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.project_arn = map['ProjectArn']
        data
      end
    end

    # Operation Parser for UpdateTrainingJob
    class UpdateTrainingJob
      def self.parse(http_resp)
        data = Types::UpdateTrainingJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.training_job_arn = map['TrainingJobArn']
        data
      end
    end

    # Operation Parser for UpdateTrial
    class UpdateTrial
      def self.parse(http_resp)
        data = Types::UpdateTrialOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trial_arn = map['TrialArn']
        data
      end
    end

    # Operation Parser for UpdateTrialComponent
    class UpdateTrialComponent
      def self.parse(http_resp)
        data = Types::UpdateTrialComponentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.trial_component_arn = map['TrialComponentArn']
        data
      end
    end

    # Operation Parser for UpdateUserProfile
    class UpdateUserProfile
      def self.parse(http_resp)
        data = Types::UpdateUserProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_profile_arn = map['UserProfileArn']
        data
      end
    end

    # Operation Parser for UpdateWorkforce
    class UpdateWorkforce
      def self.parse(http_resp)
        data = Types::UpdateWorkforceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.workforce = (Parsers::Workforce.parse(map['Workforce']) unless map['Workforce'].nil?)
        data
      end
    end

    # Operation Parser for UpdateWorkteam
    class UpdateWorkteam
      def self.parse(http_resp)
        data = Types::UpdateWorkteamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.workteam = (Parsers::Workteam.parse(map['Workteam']) unless map['Workteam'].nil?)
        data
      end
    end
  end
end
